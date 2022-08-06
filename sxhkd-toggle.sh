#!/bin/sh
if pgrep -x "sxhkd" > /dev/null
then
	killall sxhkd & notify-send "sxhkd off"
else
	sxhkd & notify-send "sxhkd on"
fi

