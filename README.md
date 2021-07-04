# Mike's Dotfiles

Originally cloned from [22a's Dotfiles repo](https://github.com/22a/dotfiles), modified for my own preferences.

## Install

When installing, you have 2 main options:

1. Just install the dotfiles (assumes you already have all the needed apps)
    - Run `install_dotfiles.sh` under the root of the project
    - Assumes the following are installed:
        1. python3
        2. [neovim](https://github.com/neovim/neovim) (installed via pip3 in fresh install)
        3. [vim-plug](https://github.com/junegunn/vim-plug)
        4. zsh (should be installed by default)
        5. [zplug](https://github.com/zplug/zplug)
        6. [tmux](https://github.com/tmux/tmux)

2. Install everything
    - Run `install_fresh.sh` under the root of this project
    - Installs the apps listed under dotfile install as well as all apps included in `Brewfile`