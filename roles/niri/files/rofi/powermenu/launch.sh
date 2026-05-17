#!/bin/sh

CONFIG="$HOME/.config/rofi/powermenu/config.rasi"

POWEROFF="󰐥"
REBOOT="󰜉"
LOCK="󰍁"
SUSPEND="󰒲"
LOGOUT="󰍃"

OPTS="$POWEROFF\n$REBOOT\n$LOCK\n$SUSPEND\n$LOGOUT"

REPLY="$(echo -e "$OPTS" | rofi -dmenu -config "$CONFIG")"

case "$REPLY" in
    "$POWEROFF")
        poweroff
        ;;
    "$REBOOT")
        reboot
        ;;
    "$LOCK")
        hyprlock
        ;;
    "$SUSPEND")
        systemctl suspend
        ;;
    "$LOGOUT")
        niri msg action quit --skip-confirmation
        ;;
esac
