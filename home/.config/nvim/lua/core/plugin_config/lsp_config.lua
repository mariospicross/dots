require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "bashls", "cssls", "html", "prismals", "pkgbuild_language_server", "marksman", "pyright", "jdtls", "tsserver" }
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
--    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    local opts = { buffer = ev.buf }
    vim.keymap.set('n', '<c-v>', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<c-a>', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<c-l>', require('telescope.builtin').lsp_references, opts)
    vim.keymap.set('n', '<leader>t', vim.lsp.buf.hover, opts)
  end,
})

require("lspconfig").lua_ls.setup{}
require("lspconfig").bashls.setup{}
require("lspconfig").cssls.setup{}
require("lspconfig").jdtls.setup{}
require("lspconfig").html.setup{}
require("lspconfig").prismals.setup{}
require("lspconfig").pkgbuild_language_server.setup{}
require("lspconfig").marksman.setup{}
require("lspconfig").pyright.setup{}
require("lspconfig").tsserver.setup{}
