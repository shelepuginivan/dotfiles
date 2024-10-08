#!/usr/bin/env zsh


# ────────────────────────────────────────────────────────────────┤ 1. Common │
alias cat="bat"
alias clip="wl-copy"
alias copy="wl-copy"
alias cls="clear"
alias l="eza -lah"
alias md="mkdir -p"
alias o="xdg-open"
alias open="xdg-open"
alias py="python3"
alias tree="eza --tree"
alias rd="rmdir"
alias reload="source $HOME/.zshenv"
alias sv="sudoedit"
alias t="tmux"
alias ta="tmux attach-session"
alias v="nvim"
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget/wget-hsts"
alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"
alias ytdl="yt-dlp"
alias zshconfig="$EDITOR $ZDOTDIR"


# ────────────────────────────────────────────────────────────┤ 2. Filesystem │
alias cdc="cd $HOME/Code"
alias cddoc="cd $HOME/Documents"
alias cdd="cd $HOME/Downloads"
alias cdm="cd $HOME/Music"
alias cdp="cd $HOME/Pictures"
alias cds="cd $HOME/Pictures/Screenshots"
alias cdv="cd $HOME/Videos"
alias cdr="cd $HOME/Videos/Records"
alias cdconf="cd $XDG_CONFIG_HOME"


# ───────────────────────────────────────────────────────────────────┤ 3. git │
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gc="git commit --verbose"
alias gcl="git clone --recurse-submodules"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcontrib="git shortlog -s"
alias gd="git diff"
alias gds="git diff --staged"
alias gl="git pull"
alias glog="git log --oneline --decorate --graph"
alias gp="git push"
alias gr="git remote"
alias grm="git rm -r"
alias grh="git reset"
alias grs="git restore"
alias gst="git status"


# ──────────────────────────────────────────────────────────────┤ 4. Dotfiles │
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias dots="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias dfa="git --git-dir=$HOME/.dotfiles --work-tree=$HOME add"
alias dfst="git --git-dir=$HOME/.dotfiles --work-tree=$HOME status"
alias dfc="git --git-dir=$HOME/.dotfiles --work-tree=$HOME commit -v"
alias dfd="git --git-dir=$HOME/.dotfiles --work-tree=$HOME diff"
alias dfp="git --git-dir=$HOME/.dotfiles --work-tree=$HOME push"
