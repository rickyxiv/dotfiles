call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
call plug#end()

syntax on

vnoremap <leader>dv c<c-r>=system('base64 --decode', @")<cr><esc><Paste>
vnoremap <leader>ev c<c-r>=system('base64', @")<cr><esc><Paste>

map <silent> <C-o> :NERDTreeToggle<CR>

let g:ale_completion_enabled = 1

set noswapfile
set nobackup
set nowb
