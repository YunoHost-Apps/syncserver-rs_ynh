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
		ynh_script_progression "Seeding the databases..."
		# syncstorage db
		diesel --database-url "mysql://$db_user:${db_pwd}@localhost/$db_name" migration --migration-dir syncstorage-mysql/migrations run

		# tokenserver db
		diesel --database-url "mysql://$db_user:${db_pwd}@localhost/$db_name_tokenserver" migration --migration-dir tokenserver-db/migrations run

		ynh_mysql_db_shell "$db_name_tokenserver" <<< "INSERT INTO services (id, service, pattern) VALUES (1, 'sync-1.5', '{node}/1.5/{uid}');"

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

		ynh_script_progression "Building syncserver"
		ynh_hide_warnings ynh_exec_as_app \
			cargo install --path ./syncserver --locked --root "$install_dir" --no-default-features --features=syncstorage-db/mysql --features=py_verifier --force
	popd

	ynh_safe_rm "$install_dir/.cargo"
	ynh_safe_rm "$install_dir/.rustup"
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
