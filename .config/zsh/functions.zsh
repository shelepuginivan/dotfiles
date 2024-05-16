#!/usr/bin/env zsh

function plugin() {
    PLUGIN_NAME="$(echo $1 | cut -d '/' -f 2)"

    if [ ! -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ]; then
        git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
    fi

    for PLUGIN_FILE in "$ZDOTDIR/plugins/$PLUGIN_NAME/"*.plugin.zsh; do
        source "$PLUGIN_FILE"
    done
}
