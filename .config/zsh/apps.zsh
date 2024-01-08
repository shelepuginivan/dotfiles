# --- bun ---
export BUN_INSTALL="$XDG_CONFIG_HOME/bun"
export PATH="$PATH:$BUN_INSTALL/bin"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

# --- Cargo ---
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export PATH="$PATH:$CARGO_HOME/bin"

# --- Go ---
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$GOPATH/bin"

# --- Lua Language Server ---
export LUA_LS_DIR="$XDG_CONFIG_HOME/lua-ls"
export PATH="$PATH:$LUA_LS_DIR/bin"

# --- nvm ---
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
