#!/bin/sh

COUNT="$(dunstctl count waiting)"
IS_PAUSED="$(dunstctl is-paused)"

if [ "$IS_PAUSED" == "true" ]; then
    echo "<sup>$(dunstctl count waiting)</sup>"
else
    echo ""
fi
