syntax on

" Encoding
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,euc-jp,cp932,iso-2022-jp

" Display
set number
set nolist
set laststatus=2
"set textwidth=78
set showcmd
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
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
filetype plugin on
filetype indent on

" Perltidy
"map ,ptv <Esc>:'<,'>! perltidy<CR>

" ChangeLog
let g:changelog_timeformat = "%Y-%m-%d"
let g:changelog_username = "Takatoshi Ono  <t-ono@ymir.co.jp>"

" http://subtech.g.hatena.ne.jp/cho45/20071111/1194766579
"inoremap <expr> <CR> pumvisible() ? "\<C-Y>\<CR>" : "\<CR>"

"colorscheme anotherdark

" taglist
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_Inc_Winwidth = 0

