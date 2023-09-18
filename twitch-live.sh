#!/bin/sh
wtwitch c | grep : | sed '1d' | head -n -2 | awk '{print $1}' | sed 's/\[0m\://' 
