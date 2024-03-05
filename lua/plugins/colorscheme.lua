return {
 {
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 999,
  opts = function()
    return {
      transparent = true,
    }
  end,
  config = function()
		vim.cmd[[colorscheme solarized-osaka]]
  end
 },
 { "nvim-tree/nvim-web-devicons", lazy = true }
}
