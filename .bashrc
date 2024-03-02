#
# ~/.bashrc
#
export BASH_SILENCE_DEPRECATION_WARNING=1

source ~/.alias
source ~/.env
source ~/.secret_env

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# ~~~~~~~~~~~~~~~~~ Prompt ~~~~~~~~~~~~~~~~~~~~~~~

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_FETCH_REMOTE_STATUS=0
    GIT_PROMPT_IGNORE_SUBMODULES=1
    GIT_PROMPT_ONLY_IN_REPO=1
    GIT_PROMPT_WITH_VIRTUAL_ENV=0
    source "$HOME/.bash-git-prompt/gitprompt.sh"
fi

# ~~~~~~~~~~~~~~~~~ Zoxide & FZF ~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if [[ "$OSTYPE" == "darwin"* ]]; then
	source "$HOME/.fzf.bash"

	# brew bash completion
	[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"
else
	#	source /usr/share/fzf/key-bindings.bash
	#	source /usr/share/fzf/completion.bash
	[ -f $HOME/.fzf.bash ] && source $HOME/.fzf.bash
fi

# zoxide
eval "$(zoxide init --cmd cd bash)"

export PYENV_ROOT="$HOME/.pyenv"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
