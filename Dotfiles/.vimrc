set number
set ruler
set history=1000
set showcmd
set laststatus=2
set showmatch
set hlsearch
set cursorline

set statusline=%F%m%r%h%w\ [FileFORMAT=%{&ff}]\ [POS=%l,%v][%p%%]\ %{strftime(\"%Y/%d/%m\ -\ %H:%M\")}

syntax on
set fileencodings=utf-8,gb2312,gbk,cp936,latin-1
set fileencoding=utf-8
set termencoding=utf-8
set fileformat=unix
set encoding=utf-8

colorscheme desert
set t_Co=256
set wildmenu

set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
au FileType html,python,vim,javascript,php setl shiftwidth=4
au FileType html,python,vim,javascript,php setl tabstop=4

filetype on
filetype plugin on
filetype indent on
