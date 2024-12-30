#!/bin/sh
# Check pacman updates.
# Depends on pacman-contrib.

UPDATE_LIST="$(checkupdates --nocolor --nosync)"
UPDATES="Updates: $(echo "$UPDATE_LIST" | wc -l)"

if [ -z "$UPDATE_LIST" ]; then
    UPDATE_LIST="Arch-chan is happy!"
    UPDATES="Up to date!"
fi

printf "{\"text\":\"  $UPDATES\",\"tooltip\":\"$UPDATE_LIST\"}" | sed ':a;N;$!ba;s/\n/\\n/g'
