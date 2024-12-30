#!/bin/sh

if systemctl --user --quiet is-active dunst; then
    systemctl --user restart dunst.service
fi
