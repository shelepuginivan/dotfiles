#!/bin/sh

if checkupdates --nocolor; then
    pkexec --disable-internal-agent /usr/bin/paru -Syu --noconfirm
    notify-send "Updated!" "All packages are up to date!"
fi

pkill -RTMIN+8 waybar
