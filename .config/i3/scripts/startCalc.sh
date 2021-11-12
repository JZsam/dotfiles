#!/usr/bin/env bash
echo $(pgrep calc -u $UID)
if [ $(pgrep calc -u $UID) != undefined ]; then
    i3-msg '[class="(?i)calc"] scratchpad show'
    echo"then"
else
st -c calc -e ccalc & sleep .5
i3-msg '[class="calc"] floating enable; sticky enable; move scratchpad'
i3-msg '[class="calc"] scratchpad show'
echo "else"
fi
