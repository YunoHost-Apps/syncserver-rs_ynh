#!/usr/bin/env bash

export RUST_LOG=info
export RUST_BACKTRACE=full

source __INSTALL_DIR__/venv/bin/activate

__INSTALL_DIR__/bin/syncserver --config __INSTALL_DIR__/config.toml