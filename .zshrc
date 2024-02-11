export ZSH="$HOME/.oh-my-zsh"
export PROFILE_PATH="$HOME/repos/dotfiles/profile"

ZSH_THEME="sass"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  brew
  sudo
)

source $ZSH/oh-my-zsh.sh
source ~/.alias
source ~/.env
source ~/.secret_env

eval "$(pyenv init - --no-rehash)"
eval "$(pyenv virtualenv-init - --no-rehash)"

[ -f $(brew --prefix)/etc/profile.d/autojump.sh ] && . $(brew --prefix)/etc/profile.d/autojump.sh

# iTerm 2
DISABLE_AUTO_TITLE="true"
precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}

# Autojump
[[ -s /Users/kumuycians/.autojump/etc/profile.d/autojump.sh ]] && source /Users/kumuycians/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# thefuck
eval $(thefuck --alias)

# eksctl
fpath=($fpath ~/.zsh/completion)

# starship
export STARSHIP_CONFIG=~/.config/starship.toml
