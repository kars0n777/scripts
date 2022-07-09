#!/bin/sh

# script based from rxwrobs lynx scripts
# needs "w3m-urlencode.sh" script linked to ~/.local/bin
# to work

url="https://wiby.me/?q=$(w3m-urlencode.sh "$*")"
exec w3m "$url"
