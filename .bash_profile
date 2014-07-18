if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
export PATH="$HOME/.rbenv/bin:$HOME/.composer/vendor/bin:$PATH"
eval "$(rbenv init -)"
