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
alias zshconfig="vim ~/.zshrc"
alias vim="nvim"
alias pgd="ping 8.8.8.8"
alias xo="xdg-open"
alias ip="ip -c"
alias dfe="df -hTt ext4"
alias aptcs="apt-cache pkgnames | fzf | xargs apt show"


source "$HOME/.homesick/repos/homeshick/homeshick.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
