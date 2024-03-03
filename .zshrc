# Exports
export XDG_CONFIG_HOME="$HOME"/.config
export PATH="/Users/sassoonkuyumcian/.local/bin:$PATH"

# Source
source ~/.alias
source ~/.env
source ~/.config/zsh/git-prompt.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Eval
eval "$(zoxide init --cmd cd zsh)"

# Must be at end of .zshrc
# See: https://github.com/zsh-users/zsh-syntax-highlighting?tab=readme-ov-file#why-must-zsh-syntax-highlightingzsh-be-sourced-at-the-end-of-the-zshrc-file
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
