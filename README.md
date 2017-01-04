## Install

Clone repository

```
$ git clone git@github.com:takatoshiono/dotfiles.git ~/.dotfiles
```

Dry mode

```
$ ~/.dotfiles/install.rb
```

Do it!

```
$ ~/.dotfiles/install.rb --do-it
```

Force mode

```
$ ~/.dotfiles/install.rb --do-it --force
```

## Setup

```
$ git submodule init
$ git submodule update
```

## Homebrew

* Install [Homebrew](http://brew.sh/).
* Install [homebrew-bundle](https://github.com/Homebrew/homebrew-bundle).
* Install all of the dependencies.

```
$ brew bundle
```

## Install Vim plugins

Launch vim and run :PluginInstall

To install from command line: vim +PluginInstall +qall

see also: https://github.com/gmarik/Vundle.vim

### Make vimproc

```
$ cd ~/.vim/bundle/vimproc
$ make
```

### Others

* Setting zsh as default shell
  * Add `/usr/local/bin/zsh` to `/etc/shells`
  * `chpass -s /usr/local/bin/zsh`
* Install [ghq](https://github.com/motemen/ghq)
* Install [rbenv](https://github.com/sstephenson/rbenv), [rbenv-update](https://github.com/rkh/rbenv-update)
* Install [nvm](https://github.com/creationix/nvm) and [configure](https://github.com/neovim/neovim/wiki/FAQ#where-should-i-put-my-config-vimrc)

