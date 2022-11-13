vim.cmd('filetype plugin indent on')

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.colorcolumn = "80"

vim.opt.undofile = true
vim.opt.undodir = '.undo'

vim.cmd("set noswapfile")
vim.cmd("set noshowmode")

--vim.cmd("colorscheme gruvbox")
--vim.cmd("colorscheme base16-solarized-dark")
--vim.cmd("colorscheme carbonfox")
vim.cmd("colorscheme tokyonight")
--vim.cmd("colorscheme NeoSolarized")
vim.cmd("hi Normal ctermbg=NONE guibg=NONE")
vim.cmd("hi signcolumn ctermbg=NONE guibg=NONE")
vim.cmd("hi LineNr guibg=NONE")


vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.termguicolors = true

vim.g.tex_flavor='latex'
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_quickfix_mode=0
vim.opt.conceallevel=1
vim.g.tex_conceal='abdmg'
