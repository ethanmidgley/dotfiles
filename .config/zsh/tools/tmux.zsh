# ===== TMUX SHORTCUTS =====
alias tls="tmux ls"

function ta() {
  tmux attach-session -t "$1"
} 

function trm() {
  tmux kill-session -t "$1"
} 
