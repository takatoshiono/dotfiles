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
      bash_profile bashrc gitignore gitmodules gvimrc hgrc screenrc vimrc
    ).each do |resource|
      copy resource
    end
  end

  private

  def copy(resource)
    options = '-s'
    options << 'f' if @force
    do_command "ln -#{options} ~/.dotfiles/#{resource} ~/.#{resource}"
  end

  def do_command(command)
    puts command
    system command if @do_it
  end
end

DotfileInstaller.new.execute

