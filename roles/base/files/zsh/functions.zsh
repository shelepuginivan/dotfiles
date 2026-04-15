#!/usr/bin/env zsh

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
