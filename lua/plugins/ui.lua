return {
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require 'colorizer'.setup({
        '*',                      -- Enable colorizer for all file types
      }, { mode = 'foreground' }) -- Use 'foreground' or 'background'
    end
  },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.event = false -- Set the event option properly within opts

      -- Ensure opts.routes is initialized as a table
      opts.routes = opts.routes or {}
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets = opts.presets or {} -- Ensure opts.presets is initialized
      opts.presets.lsp_doc_border = true
    end
  }

}
