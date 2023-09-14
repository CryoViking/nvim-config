-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "i", "n" }, "<A-up>", "<cmd>:m -2<cr>") -- move the line up one
map({ "i", "n" }, "<A-down>", "<cmd>:m +1<cr>") -- move the line down one

map({ "i" }, "<C-j>", "<Esc>a") -- Escape the suggestion and then go back into insert mode.
map({ "i" }, "<C-k>", "<Esc>a<cr>") -- Escape the suggestion and then go back into insert mode and do new line.
