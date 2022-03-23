syntax on 
filetype off   
set nocompatible
set ts=4 sw=4 et
set smarttab
set nowrap
set noswapfile
set nobackup
set smartindent
set incsearch
set hlsearch
set ignorecase
set smartcase
set nu

set clipboard=unnamed
 
map <F5> :<C-U>!g++ -Wall -Wextra -Wshadow -fsanitize=undefined -DLOCAL -O -std=c++17 % -o %:r && ./%:r <CR>
map <F9> :<C-U>!./%:r<CR>
