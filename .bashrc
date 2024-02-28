#
# ~/.bashrc
#

source ~/.alias
source ~/.env
source ~/.secret_env

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ~~~~~~~~~~~~~~~~ Tool Setup ~~~~~~~~~~~~~~~~~


# ~~~~~~~~~~~~~~~~~ Prompt ~~~~~~~~~~~~~~~~~~~~~~~

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source "$HOME/.bash-git-prompt/gitprompt.sh"
fi

# ~~~~~~~~~~~~~~~~~ Source ~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
