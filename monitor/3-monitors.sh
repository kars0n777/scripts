#!/bin/sh
xrandr --output DisplayPort-0 --off --output DisplayPort-1 --off --output DisplayPort-2 --mode 1920x1080 --rotate normal --output HDMI-A-0 --mode 1920x1080_75.00 --rotate normal

xrandr --output DVI-D-0 --mode 1920x1080 --pos 0x0 --rotate normal

xrandr --output DisplayPort-2 --mode 1920x1080 --rate 165.00 --pos 1920x0 

xrandr --newmode "1920x1080_75.00"  220.75  1920 2064 2264 2608  1080 1083 1088 1130 -hsync +vsync
xrandr --addmode HDMI-A-0 "1920x1080_75.00"
xrandr --output HDMI-A-0 --mode 1920x1080_75.00 --rate 75 --pos 3840x0 

