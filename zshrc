# Aliases
source ~/.aliases

print ${(pl:$LINES::\n:):-}

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# zplug directory created by brew
export ZPLUG_HOME=~/.zplug

source $ZPLUG_HOME/init.zsh
export ZSH=~/.zplug/repos/robbyrussell/oh-my-zsh

zplug "mafredri/zsh-async"
zplug "modules/completion", from:prezto
zplug "paulirish/git-open", as:plugin
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "rupa/z", use:z.sh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug romkatv/powerlevel10k, as:theme, depth:1

if ! zplug check --verbose; then
  echo "Installing zplug plugins..."
  zplug install
fi

zplug load


# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  /opt/homebrew/{bin,sbin}
  $HOME/bin
  $path
)

# set zsh command history file
HISTFILE=~/.zhistory
# let it grow big
HISTSIZE=10000000
SAVEHIST=$HISTSIZE

# ZSH uses the KEYTIMEOUT parameter to determine how long to wait for additional characters in sequence. Default is 40 (400 ms).
KEYTIMEOUT=1 # 10 ms

# use rg for fzf
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob \!.git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# source fzf binary, completions, and keybindings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# activate rbenv
eval "$(rbenv init -)"

# activate nvm + load completion
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# source yarn globals
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
