return {
  {
    "neovim/nvim-lspconfig",
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
