#!/bin/sh
mullvad reconnect && xmodmap ~/.Xmodmap && notify-send "After Hibernation Script Ran"
