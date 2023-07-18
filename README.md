## Install

Clone repository

```
git clone git@github.com:takatoshiono/dotfiles.git ~/.dotfiles
```

Dry mode

```
~/.dotfiles/install.rb
```

Do it

```
~/.dotfiles/install.rb --do-it
```

Force mode

```
~/.dotfiles/install.rb --do-it --force
```

## Homebrew

Install [Homebrew](http://brew.sh/) and run:
```
cd ~/.dotfiles
brew bundle
```

## Vim

### Plugin

- Install [vim-plug](https://github.com/junegunn/vim-plug).
- Launch vim and run `:PlugInstall`

## zsh

### default shell

Add this to the `/etc/shells`

```
/usr/local/bin/zsh
```

and

```
$ chsh -s /usr/local/bin/zsh
```

### Local settings

#### zshrc

If you have environment specific settings, save it in `zshrc.d/local.zsh` which is not version controlled.

e.g.:
- GOPRIVATE environment variable

#### gitconfig

If you have environment specific settings, save it in `gitconfig.local` which is not version controlled.

e.g.:
```
[url "ssh://git@github.com/your-organization-private"]
	insteadOf = https://github.com/your-organization-private
```
