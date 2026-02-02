return {
	"stevearc/oil.nvim",
	config = function()
		local oil = require("oil")
		oil.setup({
			float = {
				max_width = 120, -- Set the maximum width of the floating window
				max_height = 71, -- Set the maximum height of the floating window
				border = "rounded", -- Customize the border (optional)
			},
			view_options = {
				show_hidden = true,
			},
		})

		-- Keymap to open oil.nvim in a floating window
		vim.keymap.set("n", "-", function()
			oil.toggle_float()
			if vim.bo.filetype == "oil" then
				vim.wo.number = false
				vim.wo.relativenumber = false
			end
		end, {})
	end,
}
