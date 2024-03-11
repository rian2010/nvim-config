local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

require("lazy").setup("plugins")

vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.api.nvim_exec([[
  set number
  set relativenumber
]], false)

-- Use spaces instead of tabs
vim.opt.expandtab = true
-- Number of spaces a tab character occupies
vim.opt.tabstop = 4
-- Number of spaces for each indentation level
vim.opt.shiftwidth = 4
-- Enable auto-indentation
vim.opt.autoindent = true
vim.keymap.set("n", "<C-e>", vim.cmd.Ex)
