#!/usr/bin/env bash
# set -euo pipefail

echo $(pgrep -x keepassxc -u $UID)
if [ $(pgrep -x keepassxc -u $UID) != undefined ]; then
	i3-msg '[class="(?i)keepassxc"] scratchpad show'
	echo then 
else
	echo else
	keepassxc & sleep 1
	i3-msg '[class="(?i)keepassxc"] floating enable; sticky enable; move scratchpad'
	i3-msg '[class="(?i)keepassxc"] scratchpad show'
fi
#  ; resize shrink width 400 px or 400 ppt; resize shrink hight 200 px or 200 ppt
