return {
  {
    "neovim/nvim-lspconfig",
    dependencies = "folke/neodev.nvim", -- lsp for nvim-lua config
    opts = {
      servers = {
        yamlls = { settings = { yaml = { keyOrdering = false } } },
      },
    },
  },
  {
    "towolf/vim-helm",
    dependencies = "neovim/nvim-lspconfig",
  },
}
