#! /usr/bin/env bash
set -euo pipefail
# making the array
declare -a option=(
"bash"
"fish"
"lua"
"pwsh"
"python"
)

# The choice
choice=$(printf '%s\n' "${option[@]}" | rofi -dmenu -p shell)
# this opens the file
cfg=$(printf '%s\n' "${choice}" | awk '{print $NF}')
st -e "$cfg"
