#! /bin/bash

xrandr --output HDMI-A-0 --off
i3lock i3lock -i ~/.config/i3/i3lock/0188.png -fen; xrandr --output HDMI-A-0 --mode 1920x1080 --right-of eDP & sleep .2
/home/jzdoot/.config/polybar/./launch.sh
