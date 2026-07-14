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
		# syncstorage db
		./diesel --database-url "mysql://$db_user:${db_pwd}@localhost/$db_name" migration --migration-dir syncstorage-mysql/migrations list
		./diesel --database-url "mysql://$db_user:${db_pwd}@localhost/$db_name" migration --migration-dir syncstorage-mysql/migrations run

		# tokenserver db
		./diesel --database-url "mysql://$db_user:${db_pwd}@localhost/$db_name_tokenserver" migration --migration-dir tokenserver-mysql/migrations list
		./diesel --database-url "mysql://$db_user:${db_pwd}@localhost/$db_name_tokenserver" migration --migration-dir tokenserver-mysql/migrations run

		if [[ -z ${YNH_APP_UPGRADE_TYPE:-} ]]
		then
		# Add a node on install only
		pushd "tools/tokenserver"
			ynh_hide_warnings ynh_exec_as_app \
				SYNC_TOKENSERVER__DATABASE_URL="mysql://$db_user:${db_pwd}@localhost/$db_name_tokenserver" \
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
