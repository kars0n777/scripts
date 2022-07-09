#!/bin/sh

# script based from rxwrobs lynx scripts
# needs "w3m-urlencode.sh" script linked to ~/.local/bin
# to work

url="https://lite.duckduckgo.com/lite?kd=-1&kp=-1&q=$(w3m-urlencode.sh "$*")"
exec w3m "$url"
