set nocompatible
filetype off

" Temporary fix: https://github.com/vim/vim/issues/3117
if has('python3')
  silent! python3 1
endif

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'vim-scripts/taglist.vim'
Plug 'editorconfig/editorconfig-vim'

Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
Plug 'vim-ruby/vim-ruby'
Plug 'fatih/vim-go'

Plug 'Shougo/denite.nvim'

Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Shougo/neco-syntax'

call plug#end()

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

" ChangeLog
let g:changelog_timeformat = "%Y-%m-%d"
let g:changelog_username = "Takatoshi Ono  <takatoshi.ono@gmail.com>"

" Color
set background=dark
let g:solarized_visibility="low"
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

" deoplete.nvim
let g:deoplete#enable_at_startup = 1

source ~/.dotfiles/vimrc.d/vimrc.statusline
