#!/bin/sh
ffmpeg -f \
-framerate 60 \
x11grab -s 1920x1080 \
-i :0.0 ~/videos/ffmpeg/$(date --rfc-3339=seconds | sed -e 's/\ /-/g' | sed -e 's/\:/-/g').mkv
