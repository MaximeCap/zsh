# Bootstrap Zinit on first use, then load the declared Zsh plugins.
ZINIT_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/zinit/zinit.git"

if [[ ! -r "$ZINIT_HOME/zinit.zsh" ]]; then
  command mkdir -p "${ZINIT_HOME:h}"
  command git clone --depth 1 https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

if [[ -r "$ZINIT_HOME/zinit.zsh" ]]; then
  source "$ZINIT_HOME/zinit.zsh"

  # Filter zsh's native completions with fzf and suggest from shell history.
  zinit light Aloxaf/fzf-tab
  zinit light zsh-users/zsh-autosuggestions
else
  print -u2 'zsh: Zinit is unavailable; skipping plugins.'
fi

unset ZINIT_HOME

# Keep fzf's own ** completion trigger available for opt-in use.
export FZF_COMPLETION_TRIGGER='**'
