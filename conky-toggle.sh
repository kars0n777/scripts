#!/bin/sh
if pgrep -x "conky" > /dev/null
then
	killall conky 
else
	conky 
fi
