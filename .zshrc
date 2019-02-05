export ZSH="/Users/tom.price/.oh-my-zsh"
export SSH_KEY_PATH="~/.ssh/rsa_id"

ZSH_THEME="mh"

plugins=(
  git
  dirhistory
  docker
  npm
  web-search
  yarn
  z
)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

alias srcz="source ~/.zshrc"
alias zshrc="code ~/.zshrc"

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
