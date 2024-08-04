#!/usr/bin/env zsh


# ───────────────────────────────────────────────────────────┤ 1. Auto Notify │
export AUTO_NOTIFY_TITLE="%command"
export AUTO_NOTIFY_BODY="Time: %elapsed"s", exit code: %exit_code"
export AUTO_NOTIFY_EXPIRE_TIME=5000
export AUTO_NOTIFY_WHITELIST=(
    "apt"
    "curl"
    "docker"
    "ffmpeg"
    "gcc"
    "go"
    "make"
    "npm"
    "wget"
    "yarn"
    "ytdl"
    "yt-dlp"
)


# ──────────────────────────────────────────────┤ 2. History Substring Search │
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
