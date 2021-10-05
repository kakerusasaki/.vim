if !isdirectory('~/.vim/plugged')
	echo system('curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-jp/vimdoc-ja'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf'

call plug#end()

let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_complition_autoimport = 1
let g:ale_sign_column_always = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_lint_on_text_changed = 1
let g:ale_sign_error = '!'
let g:ale_sign_warning = '?'
let g:ale_linters = {
			\ 'go': ['gopls'],
			\}

if has('autocmd')
	augroup ReadFile
		autocmd!
		autocmd BufRead * if line('''"') > 0 && line('''"') <= line('$') | call execute('normal g`"zz') | endif
	augroup END
endif

set helplang=ja,en

set splitright
set equalalways

set number

set noswapfile
set nobackup

set showmatch
set matchtime=1

set hlsearch
set incsearch

set showcmd

set mouse=a

set nofoldenable
set foldmethod=indent

set clipboard^=unnamedplus

set laststatus=2

set completeopt=menuone,noselect

set wildmenu
set wildmode=longest,full

set virtualedit=all

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab

set timeoutlen=100

set showtabline=2

set omnifunc=ale#completion#OmniFunc

set bg=dark
filetype plugin indent on
syntax on
colorscheme gruvbox
