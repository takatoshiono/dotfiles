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

### Setup

```
$ git submodule init
$ git submodule update
```

### Install Vim plugins

Launch vim and run :PluginInstall

To install from command line: vim +PluginInstall +qall

see also: https://github.com/gmarik/Vundle.vim

#### Make vimproc

```
$ cd ~/.vim/bundle/vimproc
$ make
```

### Install from homebrew

```
$ bundle install --path=vendor/bundle
$ brewdle install
```

