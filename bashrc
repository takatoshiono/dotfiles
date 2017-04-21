alias ls='ls -GF'
alias ll='ls -lGF'
alias ssh='TERM=xterm-256color ssh'

PS1='[\u@\h \W$]\$ '

PATH="$HOME"/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH

EDITOR=/usr/bin/vi
export EDITOR

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export GOPATH=$HOME

# ghq + peco
function ghq-peco () {
  selected_dir=$(ghq list -p | peco)
  [ -n "$selected_dir" ] && cd $selected_dir
}
bind '"\C-]":"ghq-peco\n"'
