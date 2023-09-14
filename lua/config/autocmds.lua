-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Comment string for Odin
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("AddOdinCommentString", { clear = true }),
  callback = function()
    vim.bo.commentstring = "// %s"
  end,
  pattern = { "odin" },
})

-- Comment string for C#
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("AddCsCommentString", { clear = true }),
  callback = function()
    vim.bo.commentstring = "// %s"
  end,
  pattern = { "cs" },
})

-- Comment string for Muli BASIC code
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("AddMuliCommentString", { clear = true }),
  callback = function()
    vim.bo.commentstring = "| %s"
  end,
  pattern = { "app", "inc" },
})
