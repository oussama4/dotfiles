
local function lsp_hightlight_document(client)
    if client.resolved_capabilities.document_highlight then
	vim.api.nvim_exec(
	  [[
	  augroup lsp_document_highlight
	    autocmd! * <buffer>
	    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
	    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
	  augroup END
	]],
	  false
	)
    end
end

local on_attach = function(client, bufnr)
	lsp_hightlight_document(client)
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require('lspconfig')['gopls'].setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.intelephense.setup{
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.tsserver.setup{
    on_attach = on_attach,
    capabilities = capabilities
}
require'lspconfig'.svelte.setup{
    on_attach = on_attach,
    capabilities = capabilities
}
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

