# Exports
export XDG_CONFIG_HOME="$HOME"/.config
export PATH="$HOME/.local/bin:$PATH"

# Source
[ -f ~/.alias ]      && source ~/.alias
[ -f ~/.env ]        && source ~/.env
[ -f ~/.secret_env ] && source ~/.secret_env

[ -f ~/.config/zsh/git-prompt.zsh ] && source ~/.config/zsh/git-prompt.zsh
[ -f ~/.config/zsh/.fzf.zsh ]       && source ~/.config/zsh/.fzf.zsh

# Eval
eval "$(zoxide init --cmd cd zsh)"

# Must be at end of .zshrc
# See: https://github.com/zsh-users/zsh-syntax-highlighting?tab=readme-ov-file#why-must-zsh-syntax-highlightingzsh-be-sourced-at-the-end-of-the-zshrc-file
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
