export ZSH="/Users/kuyumcians/.oh-my-zsh"
export DOTFILES="/Users/kuyumcians/repos/dotfiles/dotfiles"

ZSH_THEME="af-magic"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  autojump
  brew
  docker
  git
  kubectl
  osx
  pip
  python
  sudo
)

source $ZSH/oh-my-zsh.sh
source $DOTFILES/.alias
source $DOTFILES/.func
source $DOTFILES/.env
