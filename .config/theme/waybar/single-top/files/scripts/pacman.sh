#!/bin/sh
# Check pacman updates.
# Depends on pacman-contrib.

UPDATE_LIST="$(checkupdates --nocolor --nosync)"
UPDATES="Updates: $(printf $UPDATE_LIST | wc -l)"

if [ -z "$UPDATE_LIST" ]; then
    UPDATE_LIST="Arch-chan is happy!"
    UPDATES="Up to date!"
fi

echo "{\"text\":\"  $UPDATES\",\"tooltip\":\"$UPDATE_LIST\"}"
