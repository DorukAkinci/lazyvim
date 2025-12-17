-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- add autocmd for IlluminatedWordRead highlighting and add underline
vim.cmd("autocmd BufReadPost * highlight IlluminatedWordRead gui=underline") -- #ff0000 red color
vim.cmd("autocmd BufReadPost * highlight IlluminatedWordText gui=underline")

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

-- set autocmd for filetype terraform to set commentstring
vim.api.nvim_exec(
  [[
augroup terraform_commentstring
  autocmd!
  autocmd FileType terraform setlocal commentstring=#\ %s
augroup END
]],
  true
)
