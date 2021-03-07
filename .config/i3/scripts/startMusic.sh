#!/usr/bin/env bash
set -euo pipefail

st -c music -e ncmpcpp & sleep .1
i3-msg '[class="music"] move scratchpad; scratchpad show;sticky enable; scratchpad show'
