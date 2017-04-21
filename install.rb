#!/usr/bin/env ruby

require 'getoptlong'

class DotfileInstaller
  do_it = false
  force = false

  def initialize
    opts = GetoptLong.new(
      ['--do-it', GetoptLong::NO_ARGUMENT],
      ['--force', GetoptLong::NO_ARGUMENT]
    )

    opts.each do |opt, arg|
      case opt
      when '--do-it'
        @do_it = true
      when '--force'
        @force = true
      end
    end
  end

  def execute
    %w(
      oh-my-zsh vim bash_profile bashrc ctags editorconfig gitconfig gitignore globalrc gvimrc hgrc gemrc my.cnf screenrc tmux.conf vimrc zshrc
    ).each do |resource|
      copy resource
    end
  end

  private

  def copy(resource)
    options = '-s'

    target = File.expand_path("~/.#{resource}")
    source = File.expand_path("~/.dotfiles/#{resource}")

    if File.exists?(target)
      if @force
        options << 'f'
      else
        puts "exists #{target}"
        return
      end
    end

    do_command "ln #{options} #{source} #{target}"
  end

  def do_command(command)
    puts command
    system command if @do_it
  end
end

DotfileInstaller.new.execute

