-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable swapfiles
vim.opt.swapfile = false
vim.opt.completeopt = "menuone,noselect,preview"
-- add additional terraform filetypes
vim.filetype.add({
  extension = {
    tfvars = "terraform",
    tftpl = "terraform",
  },
})
