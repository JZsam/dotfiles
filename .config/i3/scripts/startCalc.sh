#!/usr/bin/env bash
set -euo pipefail

st -c calc -e ccalc & sleep .1
i3-msg '[class="calc"] move scratchpad; scratchpad show;sticky enable; resize shrink width 310 px or 310 ppt; resize shrink height 550 px or 550 ppt; scratchpad show'
