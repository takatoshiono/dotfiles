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

- Install [vim-plug](https://github.com/junegunn/vim-plug).
- Launch `vim and run `:PlugInstall`

### deoplete

deoplete needs vim-hug-neovim-rpc and this.

```
$ pip3 install neovim
```

## zsh

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

### local settings

Save environment dependent settings in the `zshrc.d/local.zsh`.

## Others

* Install [rbenv](https://github.com/sstephenson/rbenv), [rbenv-update](https://github.com/rkh/rbenv-update)
* Install [nvm](https://github.com/creationix/nvm)
