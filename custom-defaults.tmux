#!/usr/bin/env bash

# Get the directory where this script is located
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Source the tmux configuration file
tmux source-file "${CURRENT_DIR}/settings.conf"
