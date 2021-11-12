#!/usr/bin/env bash
set -euo pipefail

xrandr --output HDMI-0 --auto
xrandr --output HDMI-A-0 --mode 1920x1080 --right-of eDP --primary
/home/jzdoot/.config/polybar/./launch.sh
