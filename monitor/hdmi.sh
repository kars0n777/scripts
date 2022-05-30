#!/bin/sh
xrandr --output DisplayPort-0 --off --output DisplayPort-1 --off --output DisplayPort-2 --off --output DVI-D-0 --off 

xrandr --newmode "1920x1080_75.00"  220.75  1920 2064 2264 2608  1080 1083 1088 1130 -hsync +vsync
xrandr --addmode HDMI-A-0 "1920x1080_75.00"
xrandr --output HDMI-A-0 --mode 1920x1080_75.00 --rate 75
