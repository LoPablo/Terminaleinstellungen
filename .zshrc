

PROMPT="%F{green}%B%n@%m%f:%F{blue}%~%f%b > "

setopt share_history
setopt inc_append_history

export LSCOLORS="ExFxCxDxBxegedabagacad"
export CLICOLOR=1
export HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

alias ls='ls -alh'
alias venv="source .venv/bin/activate"
alias createvenv="python3 -m venv .venv"

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[^?' backward-kill-word


