#!/bin/sh
echo "$(top -bn2 | grep '%Cpu' | tail -1 | grep -P '(....|...) id,'| awk '{print " " 100-$8 "%"}')  "
