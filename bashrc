alias ls='ls -GF'
alias ll='ls -lGF'
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias mvim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/mvim "$@"'
alias ssh='TERM=xterm-256color ssh'

source ~/.git-completion.sh
source ~/.git-prompt.sh

PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

PATH="$HOME"/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH

EDITOR=/usr/bin/vi
export EDITOR

source ~/perl5/perlbrew/etc/bashrc

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export GOPATH=$HOME

# ghq + peco
function ghq-peco () {
  selected_dir=$(ghq list -p | peco)
  [ -n "$selected_dir" ] && cd $selected_dir
}
bind '"\C-]":"ghq-peco\n"'
