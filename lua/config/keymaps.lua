-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>ft", vim.cmd.terminal, { noremap = true, silent = true, nowait = true, desc = "Terminal" })
vim.keymap.del("n", "<leader>fT")
vim.keymap.del("n", "<leader>gf")
