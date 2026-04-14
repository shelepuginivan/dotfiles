#!/usr/bin/env zsh

# ───────────────────────────────────────────────────────────────┤ 1. Ansible │
export ANSIBLE_HOME="$XDG_CONFIG_HOME/ansible"
export ANSIBLE_GALAXY_CACHE_DIR="$XDG_CACHE_HOME/ansible/galaxy_cache"

# ────────────────────────────────────────────────────┤ 2. Bun, Node.js, etc. │
export BUN_INSTALL="$XDG_CONFIG_HOME/bun"
export PATH="$PATH:$BUN_INSTALL/bin"
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# ────────────────────────────────────────────────────────────────┤ 3. Docker │
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# ────────────────────────────────────────────────────────────────────┤ 4. Go │
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin"

# ───────────────────────────────────────────────────────────────────┤ 5. Lua │
export LUA_LS_DIR="$XDG_CONFIG_HOME/lua-ls"
export PATH="$PATH:$LUA_LS_DIR/bin"

# ────────────────────────────────────────────────────────────────┤ 6. Python │
export PYTHON_HISTORY="$XDG_STATE_HOME/python/history"
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/python"
export PYTHONUSERBASE="$XDG_DATA_HOME/python"

# ──────────────────────────────────────────────────────────────────┤ 7. Rust │
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export PATH="$PATH:$CARGO_HOME/bin"

# ──────────────────────────────────────────────────────────────────┤ 8. Misc │
export QRCP_OUTPUT="$HOME/Downloads"
export NUGET_PACKAGES="$XDG_CACHE_HOME/nuget_packages"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME/java"
