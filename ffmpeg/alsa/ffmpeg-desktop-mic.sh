#!/bin/sh
ffmpeg \
-framerate 60 \
-f x11grab \
-s 1920x1080 \
-i :0.0 \
-f alsa \
-i default ~/videos/ffmpeg/$(date --rfc-3339=seconds | sed -e 's/\ /-/g' | sed -e 's/\:/-/g').mkv
