""" built in nvim LSP configuration
if exists("g:nvim_LSP_configuration_loaded")
    finish
endif
let g:nvim_LSP_configuration_loaded = 1

" See: https://neovim.io/doc/user/lsp.html

" use the defaults from the nvim-LSP plugin
lua << EOF
    local nvim_lsp = require('nvim_lsp')
    nvim_lsp.pyls.setup{}
    nvim_lsp.solargraph.setup{}
EOF

nnoremap <silent> <Space>j     <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> <Space><S-d> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <Space>h     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <Space>i     <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <Space>k     <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <Space>i     <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> <Space>r     <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <Space>v     <cmd>lua vim.lsp.buf.document_symbol()<CR>

set omnifunc=v:lua.vim.lsp.omnifunc
