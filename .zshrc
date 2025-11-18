# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set color theme
ZSH_THEME="cloud"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Enable plugins
plugins=(git node nvm golang kubectl dotenv zoxide)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#
export REACT_EDITOR=nvim

# add flutter sdk to path
export PATH=~/Code/Library/flutter/bin:$PATH

# add psql to path
export PATH=/opt/homebrew/opt/libpq/bin:$PATH

export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOBIN
# export PATH=$PATH:$GOROOT/bin


# Add elixir version manager to path
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"

# Add nvm to the path 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set alias
alias vi="nvim"
alias vim="nvim"

alias g="git"
alias t="taskell"

alias k="kubectl"
alias kn='kubectl config set-context --current --namespace'

# Tmux shortcuts
function ta() {
  tmux attach-session -t "$1"
} 

function trm() {
  tmux kill-session -t "$1"
} 

alias tasks="taskell ~/Desktop/.tasks.md"

alias tls="tmux ls"
alias ct="~/.ssh/cafe_tunnel.sh"
alias tunnel_home="sshuttle -r external 0.0.0.0/0 -vv"

alias gcc="gcc-14 -Wall -pedantic"

export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk@17/include"

alias venv="source env/bin/activate"
alias venv-c="python3.14 -m venv env"

[ -f "/Users/ethan/.ghcup/env" ] && source "/Users/ethan/.ghcup/env" # ghcup-env
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# Display custom terminal art depending if it git repository
if git rev-parse --git-dir > /dev/null 2>&1; then
	echo -e; onefetch;
else
	echo -e; fastfetch;
fi

. "/Users/ethan/.deno/env"
