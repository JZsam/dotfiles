#!/usr/bin/env bash
set -euo pipefail

st -e sudo protonvpn c -f & sleep .1
i3-msg [title="sudo"] focus
i3-msg floating enable
i3-msg sticky enable
