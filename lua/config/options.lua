-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- disable swapfiles
vim.opt.swapfile = false
vim.opt.completeopt = "menuone,noselect,preview"
-- EDGY
-- views can only be fully collapsed with the global statusline
vim.opt.laststatus = 3
-- Default splitting will cause your main splits to jump when opening an edgebar.
-- To prevent this, set `splitkeep` to either `screen` or `topline`.

vim.opt.splitkeep = "screen"
vim.g.better_whitespace = {
  enabled = 1,
  strip_whitespace_on_save = 1,
  strip_whitespace_confirm = 0,
  strip_only_modified_lines = 0,
  strip_whitelines_at_eof = 1,
}

-- add additional terraform filetypes
vim.filetype.add({
  extension = {
    tfvars = "hcl",
    tftpl = "terraform",
  },
})

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.foldingRange = {
--   dynamicRegistration = true, -- false,
--   lineFoldingOnly = true,
-- }
