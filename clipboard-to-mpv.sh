#!/bin/sh
mpv "$(xclip -o)" & notify-send "sending clipboard to mpv"
