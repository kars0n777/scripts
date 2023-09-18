#!/bin/sh
# Gives dmenu a list of selected symbols used in math/cs + misc.
# Will then show selected character in dunst if it is running

# Must have xclip installed to even show menu.
xclip -h >/dev/null || exit

chosen=$(grep -v "#" ~/scripts/symbols.txt | dmenu -i -l 20 -fn Monospace-18)

[ "$chosen" != "" ] || exit

c=$(echo "$chosen" | sed "s/ .*//")
echo "$c" | tr -d '\n' | xclip -selection clipboard
notify-send "'$c' copied to clipboard." &

s=$(echo "$chosen" | sed "s/.*; //" | awk '{print $1}')
echo "$s" | tr -d '\n' | xclip
notify-send "'$s' copied to primary." &

