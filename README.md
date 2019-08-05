### Usage

Edit the following line in `dotfiles/.zshrc` to set the path to dotfiles:
```
export DOTFILES="<path_to_this_repo>/dotfiles"
```

Run the following command to do a full install on a new Mac:
```
./setup.sh
```

Run the following separately if need be:
```
./setup_brew_only.sh  # brew bundle install
./setup_config_only.sh  # git, vim, etc (more to add later) dotfiles
./setup_zsh_only.sh  # zsh and zshrc setup
```

```
 <O> <O>
  |   |
 / \ / \
```
