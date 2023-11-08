require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "vimls",
    "pyright",
    "html",
    "tsserver",
    "jdtls",
    "clangd",
    "cssls",
  }
})

local on_attach = function(_, _)
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)

vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
vim.keymap.set('n', 'gr', require('telescope-builtin').lsp_references)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require("lspconfig").vimls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").jdtls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
require("lspconfig").cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

