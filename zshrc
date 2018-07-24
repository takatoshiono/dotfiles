# path
export PATH=$HOME/bin:$PATH

# terminal color
export CLICOLOR=1

# alias
alias ll='ls -l'
alias vi='vim'

# Golang
export GOPATH=$HOME

# peco
function peco-src () {
    local selected_dir=$(ghq list --full-path | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

# prompt
export GIT_PS1_SHOWCOLORHINTS=1
git_prompt_sh=/usr/local/etc/bash_completion.d/git-prompt.sh
if [ -e $git_prompt_sh ]; then
    source $git_prompt_sh
    precmd () { __git_ps1 "%F{cyan}%c%f" " $ " " (%s)" }
else
    PS1='%F{cyan}%c%f \$ '
fi

# completion
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
fpath=(/usr/local/share/zsh/site-functions $fpath)
autoload -U compinit
compinit -u

# history
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=500000
SAVEHIST=500000
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

# rbenv
if [[ -d $HOME/.rbenv ]]; then
    export PATH=$HOME/.rbenv/bin:$PATH
    eval "$(rbenv init -)"
fi

# local environment dependent settings
source $HOME/.dotfiles/zshrc.d/local.zsh
