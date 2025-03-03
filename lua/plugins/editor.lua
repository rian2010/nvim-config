return {
  -- "SmiteshP/nvim-navic",
  -- dependencies = {
  --   "neovim/nvim-lspconfig",   -- Ensure LSP is configured
  -- },
  --
  -- config = function()
  --   local navic = require("nvim-navic")
  --
  --   local on_attach = function(client, bufnr)
  --     if client.server_capabilities.documentSymbolProvider then
  --       navic.attach(client, bufnr)
  --     end
  --   end
  -- end
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup({})
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter', -- optional
      'nvim-tree/nvim-web-devicons',     -- optional
    }
  }
}
