#!/bin/sh

STATUS="$(pactl list | sed -n '/^Source/,/^$/p' | grep Mute | sed '1d;3d')"

if [ "$STATUS" = "	Mute: no" ];
then
	echo " ON  "
fi

if [ "$STATUS" = "	Mute: yes" ];
then
	echo " OFF  "
fi
