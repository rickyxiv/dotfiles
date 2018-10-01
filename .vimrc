call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'joshdick/onedark.vim'
call plug#end()

colorscheme onedark

syntax on

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

vnoremap <leader>dv c<c-r>=system('base64 --decode', @")<cr><esc><Paste>
vnoremap <leader>ev c<c-r>=system('base64', @")<cr><esc><Paste>

" === Turn Off Swap Files ===
set noswapfile
set nobackup
set nowb
