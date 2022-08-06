#!/bin/sh
if pgrep -x "trayer" > /dev/null
then
	killall trayer 
else
	trayer --width 20 --transparent true --alpha 52 --tint '#282a36' --align center --distance 540
fi

