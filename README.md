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

## Homebrew

* Install [Homebrew](http://brew.sh/).

```
$ cd ~/.dotfiles
$ brew bundle
```

## Vim

### Plugin

Launch `vim and run `:PluginInstall`

To install from command line: `vim +PluginInstall +qall`

### vimproc

```
$ cd ~/.vim/bundle/vimproc
$ make
```

### deoplete

deoplete needs vim-hug-neovim-rpc and this.

```
$ pip3 install neovim
```

## zsh

### Install oh-my-zsh

https://github.com/robbyrussell/oh-my-zsh

### Setting zsh as default shell

Add following line

/etc/shells:
```
/usr/local/bin/zsh
```

and

```
$ chsh -s /usr/local/bin/zsh
```

## Others

* Install [rbenv](https://github.com/sstephenson/rbenv), [rbenv-update](https://github.com/rkh/rbenv-update)
* Install [nvm](https://github.com/creationix/nvm)
