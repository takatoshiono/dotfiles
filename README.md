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
