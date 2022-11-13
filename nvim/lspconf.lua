require'lspconfig'.tsserver.setup{
    cmd = { "typescript-language-server.cmd", "--stdio" },
    capabilities = capabilities,
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
}
