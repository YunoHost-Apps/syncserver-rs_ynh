#!/usr/bin/env bash

export RUST_LOG=info
export RUST_BACKTRACE=full

source __INSTALL_DIR__/venv/bin/activate

LD_LIBRARY_PATH="`__INSTALL_DIR__/.uv/uv python find --no-project 3.13 --resolve-links | rev | cut -d/ -f3- | rev`/lib" __INSTALL_DIR__/syncserver --config __INSTALL_DIR__/config.toml