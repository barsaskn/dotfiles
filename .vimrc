set number
set numberwidth=2
syntax on

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set laststatus=2
set splitbelow

nnoremap <C-w>h <C-w>s

