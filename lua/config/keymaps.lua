-- lua/config/keymaps.lua
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Window splits
map("n", "ss", "<cmd>split<CR>", opts)
map("n", "sv", "<cmd>vsplit<CR>", opts)

-- Move between windows
map("n", "sh", "<C-w>h", opts)
map("n", "sk", "<C-w>k", opts)
map("n", "sj", "<C-w>j", opts)
map("n", "sl", "<C-w>l", opts)

