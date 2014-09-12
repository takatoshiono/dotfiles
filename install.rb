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
    setup_dotfiles
  end

  private

  def setup_dotfiles
    %w(
      vim bash_profile bashrc gitignore gvimrc hgrc screenrc vimrc
    ).each do |resource|
      symlink_to_home resource
    end
  end

  def symlink_to_home(resource)
    target = File.expand_path("~/.#{resource}")
    source = File.expand_path("~/.dotfiles/#{resource}")

    symlink source target
  end

  def symlink(source target)
    options = '-s'

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

