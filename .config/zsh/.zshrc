# --- Common ---
export BROWSER="firefox"
export EDITOR="nvim"
export GTK_THEME="Adwaita:dark"
export LESSHISTFILE="-"
export MANPAGER="nvim +Man!"
export TERMINAL="alacritty"

# --- XDG user directories ---
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# --- Directories ---
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
# export WGETRC=$XDG_CONFIG_HOME/wget/wgetrc

# --- PATH ---
export PATH="$PATH:$HOME/Apps"

# --- zsh & Oh My Zsh settings ---
export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_STATE_HOME/zsh/.zsh_history"
HYPHEN_INSENSITIVE="true"
ZSH_THEME="robbyrussell"
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/zcompcache"

source "$ZDOTDIR/plugins.zsh"    # plugins are required to be loaded before oh-my-zsh
source "$ZSH/oh-my-zsh.sh"
source "$ZDOTDIR/apps.zsh"
source "$ZDOTDIR/alias.zsh"
