# path
export PATH=$HOME/bin:$PATH

# homebrew
export HOMEBREW_DIR=/opt/homebrew
if [ ! -d $HOMEBREW_DIR ]; then
    export HOMEBREW_DIR=/usr/local
fi

# terminal color
export CLICOLOR=1

# alias
alias ll='ls -l'
alias vi='vim'

# editor
export EDITOR=vim

# Golang
export GOPATH=$HOME

# Keymaps
bindkey -e # Emacs mode

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
git_prompt_sh=$HOMEBREW_DIR/etc/bash_completion.d/git-prompt.sh
if [ -e $git_prompt_sh ]; then
    source $git_prompt_sh
    precmd () { __git_ps1 "%F{cyan}%c%f" " $ " " (%s)" }
else
    PS1='%F{cyan}%c%f \$ '
fi

# completion
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select
fpath=($HOMEBREW_DIR/share/zsh/site-functions $fpath)
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

# google-cloud-sdk
if [[ -d $HOMEBREW_DIR/Caskroom/google-cloud-sdk ]]; then
    source $HOMEBREW_DIR/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
    source $HOMEBREW_DIR/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
fi

# direnv
if [ -e `which direnv` ]; then
    eval "$(direnv hook zsh)"
fi

# local environment dependent settings
local_zsh=$HOME/.dotfiles/zshrc.d/local.zsh
[[ -e $local_zsh ]] && source $local_zsh

