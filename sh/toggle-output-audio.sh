#!/bin/sh
STATUS="$(pactl list | grep Mute | sed -n 1p;pactl list | grep Mute | sed -n 2p)"

if [ "$STATUS" = "	Mute: no
	Mute: no" ];
then
	pactl set-sink-mute @DEFAULT_SINK@ toggle; notify-send "婢 muted"
fi

if [ "$STATUS" = "	Mute: yes
	Mute: no" ];
then
	pactl set-sink-mute @DEFAULT_SINK@ toggle; notify-send "墳 unmuted"
fi

if [ "$STATUS" = "	Mute: no
	Mute: yes" ];
then
	pactl set-sink-mute @DEFAULT_SINK@ toggle; notify-send "墳 unmuted"
fi

if [ "$STATUS" = "	Mute: yes 
	Mute: yes" ];
then
	pactl set-sink-mute @DEFAULT_SINK@ toggle; notify-send "墳 unmuted"
fi
