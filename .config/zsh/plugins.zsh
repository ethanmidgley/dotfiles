# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set color theme
ZSH_THEME="cloud"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Enable plugins
plugins=(node nvm golang kubectl dotenv zoxide)

source $ZSH/oh-my-zsh.sh
