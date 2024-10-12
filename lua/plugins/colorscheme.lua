return {
  {
    'catppuccin/nvim',
    priority = 1000,
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      -- vim.cmd.colorscheme 'tokyonight-night'
      vim.cmd.colorscheme 'catppuccin-mocha'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'

      vim.api.nvim_set_hl(0, 'LineNr', { fg = '#7e9cd8', bg = 'NONE' })       -- Normal line numbers
      vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#e0af68', bg = 'NONE' }) -- Current line number
      vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#7e9cd8', bg = 'NONE' })  -- Line numbers above
      vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#7e9cd8', bg = 'NONE' })  -- Line numbers below
    end,
    config = function()
      require('catppuccin').setup {
        no_italic = false,
        no_bold = false,
        no_underline = true,
        flavour = 'mocha',
        --term_colors = true,
        transparent_background = true,

        integrations = {
          cmp = true,
          fzf = true,
          hop = true,
          mason = true,
          nvimtree = false,
          neotree = true,
          dashboard = false,
          dap = true,
          dap_ui = true,
          which_key = true,
          telescope = true,
        },
      }
    end,
  },
}
