#!/usr/bin/env bash
set -euo pipefail

st -c music -e ncmpcpp & sleep .1
i3-msg '[class="music"] floating enable; sticky enable; resize grow width 180 px or 180 ppt; resize grow height 200 px or 200 ppt; move scratchpad'
#i3-msg '[class="music"] move scratchpad; scratchpad show;sticky enable; scratchpad show'
