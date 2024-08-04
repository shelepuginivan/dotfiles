#!/usr/bin/env zsh


# ────────────────────────────────────────────────────────────────┤ 1. Common │
alias cat="bat"
alias clip="wl-copy"
alias copy="wl-copy"
alias cls="clear"
alias l="eza -lah"
alias mcube="musikcube"
alias md="mkdir -p"
alias o="xdg-open"
alias open="xdg-open"
alias pass="gopass"
alias py="python3"
alias tree="eza --tree"
alias rd="rmdir"
alias reload="source $HOME/.zshenv"
alias sv="sudoedit"
alias t="tmux"
alias ta="tmux attach-session"
alias v="nvim"
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget/wget-hsts"
alias ytdl="yt-dlp"
alias zshconfig="$EDITOR $ZDOTDIR"


# ───────────────────────────────────────────────────────────────────┤ 2. git │
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit --verbose"
alias gcl="git clone --recurse-submodules"
alias gco="git checkout"
alias gcontrib="git shortlog -s"
alias gd="git diff"
alias gds="git diff --staged"
alias gl="git pull"
alias glog="git log --oneline --decorate --graph"
alias gp="git push"
alias gr="git remote"
alias grh="git reset"
alias grs="git restore"
alias gst="git status"


# ──────────────────────────────────────────────────────────────┤ 3. Dotfiles │
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias dots="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias dfa="git --git-dir=$HOME/.dotfiles --work-tree=$HOME add"
alias dfst="git --git-dir=$HOME/.dotfiles --work-tree=$HOME status"
alias dfc="git --git-dir=$HOME/.dotfiles --work-tree=$HOME commit -v"
alias dfd="git --git-dir=$HOME/.dotfiles --work-tree=$HOME diff"
alias dfp="git --git-dir=$HOME/.dotfiles --work-tree=$HOME push"
