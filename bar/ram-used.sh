#!/bin/sh
echo "$(free -h | grep "Mem" | awk '{print " " $3}')  "
