alias ls='ls -GF'
alias ll='ls -lGF'

source ~/.git-completion.sh
source ~/.git-prompt.sh

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

