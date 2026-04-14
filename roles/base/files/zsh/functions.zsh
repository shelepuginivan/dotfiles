#!/usr/bin/env zsh

# Install a plugin from GitHub.
function plugin() {
    PLUGIN_NAME="$(echo $1 | cut -d '/' -f 2)"

    if [ ! -d "$ZDOTDIR/plugins/$PLUGIN_NAME" ]; then
        git clone "https://github.com/$1.git" "$ZDOTDIR/plugins/$PLUGIN_NAME"
    fi

    for PLUGIN_FILE in "$ZDOTDIR/plugins/$PLUGIN_NAME/"*.plugin.zsh; do
        # Precompile plugins for performance.
        if [ ! -f "$PLUGIN_FILE.zwc" ]; then
            zcompile "$PLUGIN_FILE" && echo "Compiled plugin $PLUGIN_NAME"
        fi

        source "$PLUGIN_FILE"
    done
}

# Shred all files in the current directory recursively, then remove all
# subdirectories.
function shreddir() {
    # Use first argument if specified, fallback to current working directory.
    SHRED_DIR="${1:-$(pwd)}"

    if [ "$SHRED_DIR" = "/" ]; then
        echo "refusing to shred root"
        return 1
    fi

    if [ "$SHRED_DIR" = "$HOME" ]; then
        echo "refusing to shred $HOME"
        return 1
    fi

    # Scary!
    find "$SHRED_DIR" \
        -type f \
        -exec sh -c "echo 'shredding {}' && shred --iterations=10 --zero --remove=wipesync '{}'" \;

    find "$SHRED_DIR" -type d -delete
}

# Spawn N terminals in the current directory and disown them.
function term() {
    for i in $(seq 1 ${1:-1}); do
        $TERM -e $SHELL & disown
    done
}
