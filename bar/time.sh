#!/bin/sh
echo "$(date '+ %r' | sed 's/$(date '+:%S')//')  "
