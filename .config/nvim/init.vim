syntax on 
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
set cul
set undofile
set undodir=~/.config/nvim/undodir
set termguicolors

call plug#begin('~/.config/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
call plug#end()

set background=dark
colorscheme Tomorrow-Night-Bright 
hi Normal ctermbg=NONE guibg=NONE
"hi NonText ctermbg=NONE
nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
