return {
  "nvim-treesitter/nvim-treesitter",
  keys = {
    { "<S-space>", "Incremental selection" },
  },
  opts = {
    incremental_selection = {
      keymaps = {
        init_selection = "<S-space>",
        node_incremental = "<S-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },
}
