#! /usr/bin/env bash

walls=$(nsxiv -t -o -r -b ~/pictures/wallpapers/xinit | xargs)  # running nsxiv in thumbnail mode.
wallpaper=$(printf "%s" "$walls" | awk '{w = 1; for (--w; w >=0; w--){printf "%s\t",$(NF-w)}print ""}') # Only print the last marked Wallpaper
feh --bg-fill $wallpaper
