local vim = vim
require("nvim-lsp-installer").setup {}
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local function on_attach()
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
  vim.keymap.set("n", "<Leader>d", vim.diagnostic.goto_next, { buffer = 0 })
  vim.keymap.set("n", "<Leader>r", vim.lsp.buf.rename, { buffer = 0 })
  vim.keymap.set("n", "<Leader>.", vim.lsp.buf.code_action, { buffer = 0 })
  vim.keymap.set("n", "<Leader>f", vim.lsp.buf.formatting, { buffer = 0 })
end

require "lspconfig".gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
require "lspconfig".vls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
require "lspconfig".sumneko_lua.setup {
 on_attach = on_attach,
 capabilities = capabilities
}
require"lspconfig".denols.setup {
 on_attach = on_attach,
 capabilities = capabilities,
 init_options = {
   lint = true,
 },
}


vim.opt.completeopt = { "menu", "menuone", "noselect" }

local cmp = require 'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
  }, {
    { name = 'buffer' },
  })
})

