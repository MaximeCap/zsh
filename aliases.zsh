alias zl="zoxide query -l | fzf"

alias ls="eza --icons -lah --git"
alias ll="ls"
alias tree="eza --icons --tree"
alias lg="lazygit"

compdef eza=ls

if command -v bat >/dev/null 2>&1; then
  alias cat='bat'
fi

alias vim=nvim

alias grep="rg --color=auto"
alias diff="diff --color=auto"
alias df="df -h"

alias glog='PAGER="less -F -X" git log'
alias galog='PAGER="less -F -X" git log --all --decorate --oneline --graph'
