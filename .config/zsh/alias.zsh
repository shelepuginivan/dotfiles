#!/usr/bin/env zsh

alias cal="ncal -M -b"
alias cat="bat"
alias clip="xclip -selection clipboard"
alias cls="clear"
alias gshortlog="git shortlog -s"
alias l="eza -lah"
alias mcube="musikcube"
alias mdpdf="md-to-pdf"
alias open="xdg-open"
alias pass="gopass"
alias py="python3"
alias tree="eza --tree"
alias reload="source $HOME/.zshenv"
alias sv="sudoedit"
alias v="nvim"
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget/wget-hsts"
alias ytdl="yt-dlp"
alias zshconfig="$EDITOR $ZDOTDIR"

# --- git ---
alias g="git"
alias ga="git add"
alias gc="git commit --verbose"
alias gcl="git clone --recurse-submodules"
alias gco="git checkout"
alias gd="git diff"
alias gds="git diff --staged"
alias grh="git reset"
alias gl="git pull"
alias glog='git log --oneline --decorate --graph'
alias gst="git status"
alias gr="git remote"
alias grs="git restore"


# --- dotfiles management ---
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias dfa="git --git-dir=$HOME/.dotfiles --work-tree=$HOME add"
alias dfst="git --git-dir=$HOME/.dotfiles --work-tree=$HOME status"
alias dfc="git --git-dir=$HOME/.dotfiles --work-tree=$HOME commit -v"
alias dfd="git --git-dir=$HOME/.dotfiles --work-tree=$HOME diff"
alias dfp="git --git-dir=$HOME/.dotfiles --work-tree=$HOME push"
