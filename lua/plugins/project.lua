return {
  "ahmedkhalf/project.nvim",
  event = "VeryLazy",
  opts = {
    ignore_lsp = { "lua_ls", "julials" },
    silent_chdir = false,
    detection_methods = { "pattern" },
  },
  config = function(_, opts)
    require("project_nvim").setup(opts)
    require("telescope").load_extension("projects")
  end,
  keys = {
    { "<leader>fp", "<Cmd>Telescope projects<CR>", desc = "Projects" },
  },
}
