#!/usr/bin/env zsh

# --- bun ---
export BUN_INSTALL="$XDG_CONFIG_HOME/bun"
export PATH="$PATH:$BUN_INSTALL/bin"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# --- Docker ---
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# --- Go ---
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"

# --- Lua Language Server ---
export LUA_LS_DIR="$XDG_CONFIG_HOME/lua-ls"
export PATH="$PATH:$LUA_LS_DIR/bin"

# --- nvm ---
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# --- npm ---
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# --- Python ---
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"

# --- Rust ---
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export PATH="$PATH:$CARGO_HOME/bin"

# --- wine ---
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
