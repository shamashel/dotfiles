# neovim
alias vim="nvim"

# listing
alias ls="ls -aG"

# dotfile editing
alias nvimrc="$EDITOR ~/dotfiles/nvimrc"
alias zshrc="$EDITOR ~/dotfiles/zshrc"

#clear
c() {
  clear;
  print ${(pl:$LINES::\n:):-};
}

alias clear="c"