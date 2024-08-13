#!/bin/sh

if systemctl --user --quiet is-active waybar; then
    systemctl --user restart waybar.service
fi

