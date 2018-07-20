set nocompatible
filetype off

" Temporary fix: https://github.com/vim/vim/issues/3117
if has('python3')
  silent! python3 1
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins from Github
Plugin 'altercation/vim-colors-solarized'
Plugin 'Shougo/vimproc'
Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'
Plugin 'derekwyatt/vim-scala'
Plugin 'vim-scripts/taglist.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'fatih/vim-go'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Shougo/denite.nvim'
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'Shougo/neco-syntax'

call vundle#end()
filetype plugin indent on

syntax on

" Encoding
set encoding=utf-8
set fileencodings=utf-8,euc-jp

" Display
set number
set nolist
"set textwidth=78
set showcmd
set ambiwidth=double

" Editing
set autoindent
set smartindent
set showmatch
set backspace=indent,eol,start
set matchpairs+=<:>

" Tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set smarttab
set listchars=tab:>.
set list
set expandtab

" Search
set incsearch
set hlsearch
set ignorecase
set smartcase

" Others
set nobackup
set backupskip=/tmp/*,/private/tmp/*
filetype plugin on
filetype indent on

autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype eruby setlocal ts=2 sts=2 sw=2
autocmd Filetype jbuilder setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype smarty setlocal ts=2 sts=2 sw=2
autocmd Filetype coffee setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal ts=2 sts=2 sw=2

" Perltidy
"map ,ptv <Esc>:'<,'>! perltidy<CR>

" ChangeLog
let g:changelog_timeformat = "%Y-%m-%d"
let g:changelog_username = "Takatoshi Ono  <takatoshi.ono@gmail.com>"

"colorscheme anotherdark
"colorscheme desert
" vim-colors-solarized
if has('gui_running')
    set background=light
else
    set background=dark
    let g:solarized_visibility="low"
endif
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

" taglist
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_Inc_Winwidth = 0

" denite.nvim
call denite#custom#var('file/rec', 'command', ['pt', '--follow', '--nocolor', '--nogroup', '-g=', ''])
call denite#custom#var('grep', 'command', ['pt'])
call denite#custom#var('grep', 'default_opts', ['--nogroup', '--nocolor', '--smart-case'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
nnoremap <silent> ,e :<C-u>Denite file/rec buffer<CR>
nnoremap <silent> ,ls :<C-u>Denite buffer<CR>
nnoremap <silent> ,ug :<C-u>Denite grep<CR>

source ~/.dotfiles/vimrc.d/vimrc.statusline

" javascript-libraries-syntax.vim
let g:used_javascript_libs = 'jquery angularjs'

" deoplete.nvim
let g:deoplete#enable_at_startup = 1
