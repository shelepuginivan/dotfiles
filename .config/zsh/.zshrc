#!/usr/bin/env zsh


# ────────────────────────────────────────────────────────────────┤ 1. Common │
export BROWSER="firefox"
export EDITOR="nvim"
export LC_ALL="en_US.UTF-8"
export LESSHISTFILE="-"
export MANPAGER="nvim +Man!"
export TERMINAL="alacritty"
export PATH="$HOME/.local/bin:$PATH"


# ────────────────────────────────────────────────────┤ 2. XDG Base Directory │
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"


# ──────────────────────────────────────────────────────────┤ 3. ZSH settings │
bindkey -e
bindkey "^[[H"    beginning-of-line
bindkey "^[[1;5H" beginning-of-line
bindkey "^[[F"    end-of-line
bindkey "^[[1;5F" end-of-line
bindkey "^[[3~"   delete-char
bindkey "^[[3;5~" kill-word
bindkey "^H"      backward-kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
unsetopt BEEP
setopt APPEND_HISTORY
setopt AUTO_CD
setopt GLOB_DOTS
setopt NOMATCH
setopt MENU_COMPLETE
setopt EXTENDED_GLOB
setopt INTERACTIVE_COMMENTS
setopt PROMPT_SUBST
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_STATE_HOME/zsh/.zsh_history"
HISTSIZE=2000
SAVEHIST=2000


# ────────────────────────────────────────────────────────────┤ 4. Completion │
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' menu yes select
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"


# ───────────────────────────────────────────────────────────────┤ 5. Sources │
source "$ZDOTDIR/alias.zsh"
source "$ZDOTDIR/apps.zsh"
source "$ZDOTDIR/functions.zsh"
source "$ZDOTDIR/plugins.zsh"
source "$ZDOTDIR/prompt.zsh"


# ───────────────────────────────────────────────────────────────┤ 6. Plugins │
plugin "MichaelAquilina/zsh-auto-notify"
plugin "zsh-users/zsh-autosuggestions"
plugin "zsh-users/zsh-syntax-highlighting"
plugin "zsh-users/zsh-history-substring-search"
