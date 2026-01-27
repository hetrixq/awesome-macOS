# PATH
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# Editors
export EDITOR="/opt/homebrew/bin/nano"
export VISUAL="/opt/homebrew/bin/nano"

# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_MAKE_JOBS=$(sysctl -n hw.ncpu)

# Zsh completion
autoload -U compinit
compinit

# Case-insensitive autocompletion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Colorful prompt
export PS1='%F{green}%B%n@%m%b%f:%F{blue}%~%f$ '

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt inc_append_history
setopt appendhistory
setopt share_history

# Ignore duplicates and commands starting with space
setopt hist_ignore_all_dups
setopt hist_ignore_space

# Aliases for common commands
alias grep="grep --color=auto"
alias cat="bat"
alias htop="btop"

# Enable correction for commands
setopt correct
setopt correct_all

# Display time for long-running commands
REPORTTIME=5
setopt notify

source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
