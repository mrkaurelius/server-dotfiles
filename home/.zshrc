export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="aussiegeek"

plugins=(git debian colored-man-pages tmux)

fpath=($HOME/.homesick/repos/homeshick/completions $fpath)
source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

export PATH=$HOME/scripts:$PATH
export PATH=$HOME/.local/bin:$PATH

alias duls='du -sh * | sort -hr'
alias free='free -hm'

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
