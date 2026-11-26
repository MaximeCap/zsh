# ~/.config/zsh/.zprofile
# Runs after /etc/zprofile (macOS path_helper), which pushes system paths
# in front of anything set in .zshenv. Re-prepend our own dirs here.

# Homebrew
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv zsh)"
fi

# Personal binaries/scripts (uv python, claude, ...) take precedence
typeset -U path PATH
path=("$HOME/.local/bin" $path)
export PATH
