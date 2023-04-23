return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      mappings = {
        ["<space>"] = "none", -- disable space to open folders
        ["l"] = "open", -- use L to open
        ["<S-l>"] = "focus_preview", -- use Shift-L to focus to the preview
      },
    },
  },
}
