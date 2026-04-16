#!/usr/bin/env zsh


# ────────────────────────────────────────────────────────┤ 1. Common env vars │
export BROWSER="zen-browser"
export EDITOR="nvim"
export LC_ALL="en_US.UTF-8"
export LESSHISTFILE="-"
export MANPAGER="nvim +Man!"
export TERMINAL="alacritty"
export PATH="$PATH:$HOME/.local/bin:$GOPATH/bin:$CARGO_HOME/bin"
export HISTFILE="$XDG_STATE_HOME/zsh/.zsh_history"
export HISTSIZE=5000
export SAVEHIST=5000


# ───────────────────────────────────────────────────────────────┤ 2. Bindings │
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
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


# ────────────────────────────────────────────────────────────────┤ 3. Options │
unsetopt BEEP
setopt APPEND_HISTORY
setopt AUTO_CD
setopt GLOB_DOTS
setopt NOMATCH
setopt MENU_COMPLETE
setopt EXTENDED_GLOB
setopt INTERACTIVE_COMMENTS
setopt PROMPT_SUBST


# ────────────────────────────────────────────────────────────┤ 4. Completions │
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' menu yes select
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"


# ────────────────────────────────────────────────────────────────┤ 5. Plugins │

# Order matters.
plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-history-substring-search
)

for plugin in "${plugins[@]}"; do
    source "/usr/share/zsh/plugins/$plugin/$plugin.zsh"
done

export HISTORY_SUBSTRING_SEARCH_PREFIXED=true
