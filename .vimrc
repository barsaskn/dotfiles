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
set whichwrap+=>,l
set whichwrap+=<,h

colorscheme evening

nnoremap <C-w>v <C-w>s
nnoremap <C-w>h <C-w>v
map <A-S-Left> <C-W>>
map <A-S-Right> <C-W><
map <A-S-Up> <C-W>+
map <A-S-Down> <C-W>-
