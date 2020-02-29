export ZSH="$HOME/.oh-my-zsh"
export PROFILE_PATH="$HOME/repos/dotfiles/profile"

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
source $PROFILE_PATH/.alias
source $PROFILE_PATH/.func
source $PROFILE_PATH/.env
