imap jj <Esc>
set hlsearch
set incsearch

set ignorecase
set number relativenumber

let mapleader = "\<Space>"
map <leader>f <C-f>
map <leader>b <C-b>
map <leader>p "0p
map <leader>h :noh<CR>
map <leader>d d$A
map <leader>4 $

"syntax enable
"set background=dark
"colorscheme solarized

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
call plug#end()

call plug#begin()
  Plug 'preservim/nerdtree'
call plug#end()

map <leader><leader>f :NERDTreeFind<CR>
map <leader><leader>t :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']

autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
