#!/bin/sh
#
# trying to do xinput list then get the number form id=
# and then run xinput set-button-map $id 3 2 1 to swap
# button 1 with button 3
#

xinput list | grep "CORSAIR" | head -n 1 |sed -r "s/⎜   ↳ Corsair CORSAIR M55 RGB PRO Gaming Mouse//g"
