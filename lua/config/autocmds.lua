-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local illuminate_group = vim.api.nvim_create_augroup("illuminate_underline", { clear = true })
vim.api.nvim_create_autocmd("BufReadPost", {
  group = illuminate_group,
  callback = function()
    vim.api.nvim_set_hl(0, "IlluminatedWordRead", { underline = true })
    vim.api.nvim_set_hl(0, "IlluminatedWordText", { underline = true })
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
  end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { fg = vim.api.nvim_get_hl(0, { name = "Normal" }).fg, bg = "black" })
  end,
})

local terraform_group = vim.api.nvim_create_augroup("terraform_commentstring", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  group = terraform_group,
  pattern = "terraform",
  callback = function()
    vim.bo.commentstring = "# %s"
  end,
})
