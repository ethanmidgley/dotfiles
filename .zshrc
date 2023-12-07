# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set color theme
ZSH_THEME="cloud"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Enable plugins
plugins=(git node nvm golang kubectl)

source $ZSH/oh-my-zsh.sh
source ~/.local/bin/bashmarks.sh

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


# Add nvm to the path 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set alias
alias vi="nvim"
alias vim="nvim"
alias ide="tmux split-window -v -p 30;  tmux split-window -h -p 50;"
alias k="kubectl"
alias get_idf=". $HOME/Code/esp/esp-idf/export.sh"

# Tmux shortcuts
function ta() {
  tmux attach-session -t "$1"
} 

function trm() {
  tmux kill-session -t "$1"
} 

alias tls="tmux ls"

alias gcc="gcc-13"



# Display custom terminal art depending if it git repository
if git rev-parse --git-dir > /dev/null 2>&1; then
	echo -e; onefetch;
else
	echo -e; neofetch;
fi

