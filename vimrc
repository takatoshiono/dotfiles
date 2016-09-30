set nocompatible
filetype off

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
Plugin 'vim-scripts/gtags.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'
Plugin 'Shougo/vimfiler.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'vim-scripts/taglist.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'slim-template/vim-slim'
Plugin 'fatih/vim-go'

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

source ~/.dotfiles/vimrc.d/vimrc.completion

" unite.vim
let g:unite_enable_start_insert = 1
nnoremap <silent> ,e :<C-u>Unite file_rec/async:!<CR>
nnoremap <silent> ,ls :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ug :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
nnoremap <silent> ,vf :<C-u>VimFiler<CR>

let s:unite_ignore_file_rec_patterns =
  \ ''
  \ .'tmp/\|'
  \ .'vendor/bundle\|.bundle/\|\.sass-cache/\|'
  \ .'node_modules/\|bower_components/\|'
  \ .'\.\(bmp\|gif\|jpe\?g\|png\|webp\|ai\|psd\)"\?$'

call unite#custom#source(
  \ 'file_rec/async,file_rec/git',
  \ 'ignore_pattern',
  \ s:unite_ignore_file_rec_patterns)

let g:unite_source_rec_min_cache_files = 0
let g:unite_source_rec_max_cache_files = 50000

if executable('pt')
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor'
  let g:unite_source_grep_recursive_opt = ''
  let g:unite_source_grep_encoding = 'utf-8'
endif

source ~/.dotfiles/vimrc.d/vimrc.statusline

" javascript-libraries-syntax.vim
let g:used_javascript_libs = 'jquery angularjs'

source ~/.dotfiles/vimrc.d/vimrc.gtags
