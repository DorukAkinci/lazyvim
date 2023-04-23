-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "n", "nzzzv", { desc = "Next Search" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous Search" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { silent = true })

-- activate toggle term float window with F8
vim.keymap.set("n", "<F7>", ":ToggleTerm direction=float<CR>", { silent = true })
vim.keymap.set("n", "<F8>", ":ToggleTerm direction=horizontal<CR>", { silent = true })
vim.keymap.set("n", "<F9>", ":ToggleTerm size=80 direction=vertical<CR>", { silent = true })
vim.keymap.set("n", "<F10>", ":ToggleTerm direction=tab<CR>", { silent = true })

-- resize with C-A-<hjkl>
vim.keymap.set("n", "<C-A-h>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-A-j>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-A-k>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-A-l>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- add empty line above and below
vim.keymap.set("n", "<leader>]", "m`o<Esc>`", { desc = "Add empty line below" })
vim.keymap.set("n", "<leader>[", "m`O<Esc>`", { desc = "Add empty line above" })

-- paste without losing the yank register with leader p
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without losing the yank register" })
