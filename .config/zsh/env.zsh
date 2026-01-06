# ===== GLOBAL GO INSTALLS =====
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# ===== OPENJDK 17 (BREW) =====
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"

# ===== FLUTTER =====
export PATH=~/Code/Library/flutter/bin:$PATH

# ===== PSQL =====
export PATH=/opt/homebrew/opt/libpq/bin:$PATH

# ===== EDITORS =====
export EDITOR=nvim
export REACT_EDITOR=nvim
