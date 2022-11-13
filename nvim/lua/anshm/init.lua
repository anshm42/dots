require("anshm.set")
require("anshm.packer")
require("anshm.keymap")
--require("luasnip").add_snippets(filetype, snippets)

require('lualine').setup {
    options = {
        icons_enabled = true,
        --component_separators = { left = '|', right = '|'},
        --section_separators = { left = '', right = ''},
        theme = 'tokyonight'
    }
}

require'colorizer'.setup()

local nvim_lsp = require('lspconfig')
local servers = {'tsserver', 'clangd'}

for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {}
end
