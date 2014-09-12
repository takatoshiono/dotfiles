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
    setup_macvim_kaoriya
    setup_dotfiles
  end

  private

  def setup_macvim_kaoriya
    # MEMO: ふつうの MacVim なら brew install macvim --override-system-vim でよいが Kaoriya 版なので自前でやる
    # TODO: Kaoriya を判定する方法？
    macvim_bin_dir = '/Applications/MacVim.app/Contents/MacOS'
    binaries       = %w(Vim mvim mview mvimdiff view vimdiff)

    if Dir.exists? macvim_bin_dir
      binaries.each do |binary|
        target = "/usr/local/bin/#{binary.downcase}"
        source = macvim_bin_dir + '/' + binary

        symlink source target
      end
    else
      puts "MacVim-Kaoriya is not installed."
    end
  end

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

