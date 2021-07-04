# Mike's Dotfiles

Originally cloned from [22a's Dotfiles repo](https://github.com/22a/dotfiles), modified for my own preferences.

## Install

When installing, you have 2 main options:

1. Just install the dotfiles (assumes you already have all the needed apps)
    - Run `install_dotfiles.sh` under the root of the project
    - Assumes the following are installed:
        + python3
        + [neovim](https://github.com/neovim/neovim) (installed via pip3 in fresh install)
        + [vim-plug](https://github.com/junegunn/vim-plug)
        + zsh (should be installed by default on macos)
        + [zplug](https://github.com/zplug/zplug)
        + [tmux](https://github.com/tmux/tmux)

2. Install everything
    - Run `install_fresh.sh` under the root of this project
    - Installs the apps listed under dotfile install as well as all apps included in `Brewfile`

## Post-Install

After running the script, update iTerm and vscode to use MesloLGS NF in order to view all icons (if icons were selected during powerlevel10k install).

Alternatively, install Fira Code Nerd Font via the following steps:
1. Run `tap "homebrew/cask-fonts"` (Ignore if doing fresh install)
2. Run `brew install --cask font-fira-code-nerd-font` (Ignore if doing fresh install)
3. Update iTerm to use "FireCode Nerd Font"
4. Append the following to your vscode settings.json:
    ```json
    "terminal.external.osxExec": "iTerm.app",
    "terminal.integrated.defaultProfile.osx": "/usr/local/bin/zsh",
    "terminal.integrated.fontFamily": "FiraCode Nerd Font",
    "editor.fontFamily": "FiraCode Nerd Font",
    "editor.fontLigatures": true
    ```

You're done! Now, your terminal should look cool, vim should be actually usable, and vscode should show font ligatures!