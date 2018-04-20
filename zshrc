# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Change custom folder from $ZSH/custom
ZSH_CUSTOM=$HOME/.dotfiles/zshrc.d

plugins=(nvm pyenv rbenv)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:$PATH
