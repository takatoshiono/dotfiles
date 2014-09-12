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

### Install MacVim-Kaoriya

https://code.google.com/p/macvim-kaoriya/

After install, create symlinks.

```
$ ~/.dotfiles/install.rb --do-it
```

日本語文字コード自動判別とか便利なのでこれ使ってるけど、ほんとは homebrew でサクッと入れてシンボリックリンクも作ってもらいたい

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

