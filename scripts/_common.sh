#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================

myynh_build() {

	pushd "$install_dir/build"
		ynh_print_info "Creating venv..."
		ynh_safe_rm "$install_dir/venv"
		ynh_exec_as_app env UV_PYTHON_INSTALL_DIR="$install_dir/.python_runtime" "$install_dir/.uv/uv" venv --python 3.13 --seed --clear "$install_dir/venv"
		ynh_exec_as_app "$install_dir/venv/bin/pip" install -r requirements.txt
		ynh_exec_as_app "$install_dir/venv/bin/pip" install -r requirements-tokenserver.txt
		ynh_print_info "Seeding the databases..."
		./diesel --version
		# syncstorage db
		./diesel --database-url "postgres://$db_user:${db_pwd}@localhost/$db_name" migration --migration-dir syncstorage-postgres/migrations list
		./diesel --database-url "postgres://$db_user:${db_pwd}@localhost/$db_name" migration --migration-dir syncstorage-postgres/migrations run
		./diesel --database-url "postgres://$db_user:${db_pwd}@localhost/$db_name" migration --migration-dir syncstorage-postgres/migrations list

		# tokenserver db
		./diesel --database-url "postgres://$db_user:${db_pwd}@localhost/$db_name_tokenserver" migration --migration-dir tokenserver-postgres/migrations list
		./diesel --database-url "postgres://$db_user:${db_pwd}@localhost/$db_name_tokenserver" migration --migration-dir tokenserver-postgres/migrations run
		./diesel --database-url "postgres://$db_user:${db_pwd}@localhost/$db_name_tokenserver" migration --migration-dir tokenserver-postgres/migrations list

		if [[ -z ${YNH_APP_UPGRADE_TYPE:-} ]] || ynh_app_upgrading_from_version_before 0.23.3~ynh9
		then
			# Add a node on install only
			pushd "tools/tokenserver"
				ynh_hide_warnings ynh_exec_as_app \
					SYNC_TOKENSERVER__DATABASE_URL="postgres://$db_user:${db_pwd}@localhost/$db_name_tokenserver" \
						$install_dir/venv/bin/python add_node.py "https://${domain%%+(/)}" 10
			popd
		fi
	popd

	ynh_safe_rm "$install_dir/.cache"
	ynh_safe_rm "$install_dir/.local"
	ynh_safe_rm "$install_dir/build"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
