#!/usr/bin/env bash
set -euo pipefail

st -e protonvpn-cli d & sleep .1
i3-msg [title="protonvpn-cli"] focus
i3-msg floating enable
i3-msg sticky enable
