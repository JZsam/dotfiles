#!/usr/bin/env bash
set -euo pipefail

st -e protonvpn-cli c & sleep .5
i3-msg [title="protonvpn-cli"] focus
i3-msg floating enable
i3-msg sticky enable
