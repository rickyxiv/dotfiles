set nocompatible

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'andrewstuart/vim-kubernetes'
Plug 'bling/vim-airline'
Plug 'ekalinin/Dockerfile.vim'
Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'shougo/neocomplete.vim'
Plug 'sickill/vim-monokai'
Plug 'stephpy/vim-yaml'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-fugitive'

call plug#end()

" === General Config ===
let mapleader="\<SPACE>"

vnoremap <leader>dv c<c-r>=system('base64 --decode', @")<cr><esc><Paste>
vnoremap <leader>ev c<c-r>=system('base64', @")<cr><esc><Paste>

set history=1000   
set number
set relativenumber
set encoding=utf-8

syntax on
colorscheme monokai

" ===  Search Settings  ===
set incsearch        "Find the next match as we type the search
set hlsearch         "Hilight searches by default
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

" === Turn Off Swap Files ===
set noswapfile
set nobackup
set nowb

" === Airline Config  ===
set laststatus=2

" ==- Syntastic ===
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

