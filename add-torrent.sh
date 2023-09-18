#!/bin/sh
transmission-remote --add "$@" && notify-send "Transmission-daemon" "Torrent added." 
