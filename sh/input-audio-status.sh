#!/bin/sh
STATUS="$(pactl list | sed -n '/^Source/,/^$/p' | grep Mute | sed -n 2p)"

if [ "$STATUS" = "	Mute: no" ];
then
	echo " ON  "
fi

if [ "$STATUS" = "	Mute: yes" ];
then
	echo " OFF  "
fi
