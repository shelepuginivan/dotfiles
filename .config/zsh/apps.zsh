#!/usr/bin/env zsh

# ────────────────────────────────────────────────────┤ 1. Bun, Node.js, etc. │
export BUN_INSTALL="$XDG_CONFIG_HOME/bun"
export PATH="$PATH:$BUN_INSTALL/bin"
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"


# ────────────────────────────────────────────────────────────────┤ 2. Docker │
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"


# ────────────────────────────────────────────────────────────────────┤ 3. Go │
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"


# ───────────────────────────────────────────────────────────────────┤ 4. Lua │
export LUA_LS_DIR="$XDG_CONFIG_HOME/lua-ls"
export PATH="$PATH:$LUA_LS_DIR/bin"


# ────────────────────────────────────────────────────────────────┤ 5. Python │
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"


# ──────────────────────────────────────────────────────────────────┤ 6. Rust │
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export PATH="$PATH:$CARGO_HOME/bin"


# ──────────────────────────────────────────────────────────────────┤ 7. Wine │
export WINEPREFIX="$XDG_DATA_HOME/wineprefixes/default"
