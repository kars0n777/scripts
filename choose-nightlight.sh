#!/bin/sh
choice="daylight\nnightlight\n"
chosen=$(echo -e "$choice" | dmenu -i -p "daylight or nightlight:" -fn "mononoki Nerd Font:size=10" -nb "#282a36" -nf "#ff79c6" -sb "#282a36" -sf "#bd93f9")
case "$chosen" in
	daylight) sct 0 ;;
	nightlight) sct 5000 ;;
esac	
