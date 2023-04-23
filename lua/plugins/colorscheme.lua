return {
  -- add dracula theme. this doesn't work well with terraform files. i need to remap some of the treesitter colors. use tokyonight-moon instead for now
  -- "Mofiqul/dracula.nvim",

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon",
    },
  },
}
