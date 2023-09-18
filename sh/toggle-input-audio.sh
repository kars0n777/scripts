#!/bin/sh
STATUS="$(pactl list | sed -n '/^Source/,/^$/p' | grep Mute | sed -n 1p)"

if [ "$STATUS" = "	Mute: no" ];
then
	pactl set-source-mute @DEFAULT_SOURCE@ toggle; notify-send " muted"
fi

if [ "$STATUS" = "	Mute: yes" ];
then
	pactl set-source-mute @DEFAULT_SOURCE@ toggle; notify-send " unmuted"
fi

