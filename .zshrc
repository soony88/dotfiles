# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/Users/kuyumcians/.oh-my-zsh"

ZSH_THEME="af-magic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  brew
  git
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias zshe="vim ~/.zshrc"
alias zshs="source ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias docker_clean_images='docker rmi -f $(docker images -q)'
alias docker_clean_volumes='docker volume rm $(docker volume ls -qf dangling=true)'
alias docker_clean_containers='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
alias g="git"
alias f="fuck"
alias test="echo \"Jingle\""

# Functions
function init_aws_creds() {
  export AWS_ACCESS_KEY_ID=$(aws --profile $1 configure get aws_access_key_id)
  export AWS_SECRET_ACCESS_KEY=$(aws --profile $1 configure get aws_secret_access_key)
  export AWS_DEFAULT_REGION=ap-southeast-2
  echo "Exported AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_DEFAULT_REGION"
}

# Env
eval $(thefuck --alias)
export PATH="/usr/local/sbin:$PATH"
