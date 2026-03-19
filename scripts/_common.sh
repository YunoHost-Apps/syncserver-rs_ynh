#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================

myynh_build() {
	ynh_exec_as_app python -m venv "$install_dir/venv" --upgrade-deps
	ynh_hide_warnings ynh_exec_as_app "$install_dir/venv/bin/pip" install -U poetry

	pushd "$install_dir/build"
		ynh_print_info "Seeding the databases..."
		# syncstorage db
		./diesel --database-url "mysql://$db_user:${db_pwd}@localhost/$db_name" migration --migration-dir syncstorage-mysql/migrations run

		# tokenserver db
		./diesel --database-url "mysql://$db_user:${db_pwd}@localhost/$db_name_tokenserver" migration --migration-dir tokenserver-mysql/migrations run

		ynh_print_info "Preparing the syncserver sources"
		ynh_hide_warnings ynh_exec_as_app \
			VIRTUAL_ENV="$install_dir/venv" \
			"$install_dir/venv/bin/poetry" config virtualenvs.in-project true
		ynh_hide_warnings ynh_exec_as_app \
			VIRTUAL_ENV="$install_dir/venv" \
			"$install_dir/venv/bin/poetry" env use "$install_dir/venv/bin/python"
		ynh_hide_warnings ynh_exec_as_app \
			VIRTUAL_ENV="$install_dir/venv" \
			"$install_dir/venv/bin/poetry" install

		pushd "tools/tokenserver"
			ynh_print_info "Preparing the tokenserver sources"
			ynh_hide_warnings ynh_exec_as_app \
				VIRTUAL_ENV="$install_dir/venv" \
				"$install_dir/venv/bin/poetry" config virtualenvs.in-project true
			ynh_hide_warnings ynh_exec_as_app \
				VIRTUAL_ENV="$install_dir/venv" \
				"$install_dir/venv/bin/poetry" env use "$install_dir/venv/bin/python"
			ynh_hide_warnings ynh_exec_as_app \
				VIRTUAL_ENV="$install_dir/venv" \
				"$install_dir/venv/bin/poetry" install
			# Add a node on install only
			if [[ -z ${YNH_APP_UPGRADE_TYPE:-} ]]
			then
				ynh_hide_warnings ynh_exec_as_app \
					SYNC_TOKENSERVER__DATABASE_URL="mysql://$db_user:${db_pwd}@localhost/$db_name_tokenserver" \
					VIRTUAL_ENV="$install_dir/venv" \
					"$install_dir/venv/bin/poetry" run python add_node.py "https://${domain%%+(/)}" 10
			fi
		popd
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
