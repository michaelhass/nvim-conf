local lsp = require('lsp-zero').preset('recommended')

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
    lsp.buffer_autoformat()
end)

lsp.ensure_installed({
    'gopls'
})

lsp.setup()
