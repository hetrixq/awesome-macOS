# PATH
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# Editors
export EDITOR="/opt/homebrew/bin/nano"
export VISUAL="/opt/homebrew/bin/nano"

# Homebrew
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_MAKE_JOBS=$(sysctl -n hw.ncpu)

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

# Do not suggest _* as autocorrect targets
CORRECT_IGNORE='_*'

# Display time for long-running commands
REPORTTIME=5
setopt notify

# Zsh completion
autoload -U compinit
compinit

# Case-insensitive autocompletion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Hide internal _* functions from command completion
zstyle ':completion:*:commands' ignored-patterns '_*'

source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enter in selection menu: accept highlighted item and run immediately
_autocomplete_accept_and_run() {
  zle .accept-line   # 1) accept selection and exit menuselect
  zle .accept-line   # 2) execute
}
zle -N autocomplete-accept-and-run _autocomplete_accept_and_run
bindkey -M menuselect '^M' autocomplete-accept-and-run
bindkey -M menuselect '^J' autocomplete-accept-and-run

# Tab shows the list immediately and lets you cycle choices
setopt AUTO_LIST        # show list on ambiguous completion
setopt AUTO_MENU        # enable menu right away
zstyle ':completion:*' menu select

# 1st Tab opens menu, next Tabs cycle through options
bindkey '^I' menu-complete

# Treat leading dot as a path so ".zs<Tab>" completes files like ".zshrc"
zstyle ':completion:*' special-dirs true

# If a word contains a slash OR starts with a dot, prefer file completion
zstyle ':completion:*' completer _complete _files
