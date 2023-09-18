#!/bin/sh
FILE=~/.newsboat/cache.db.lock
if test -f "$FILE"; 
then
    rm ~/.newsboat/cache.db.lock && newsboat 
else
	newsboat
fi
