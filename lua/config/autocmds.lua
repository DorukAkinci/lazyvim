-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- add autocmd for IlluminatedWordRead highlighting and add underline
vim.cmd("autocmd BufReadPost * highlight IlluminatedWordRead gui=underline") -- #ff0000 red color
vim.cmd("autocmd BufReadPost * highlight IlluminatedWordText gui=underline")
