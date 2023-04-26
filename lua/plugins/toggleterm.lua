return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    keys = {
      { "<F7>", "<cmd>ToggleTerm direction=float<CR>", desc = "ToggleTerm float" },
      { "<F8>", "<cmd>ToggleTerm direction=horizontal<CR>", desc = "ToggleTerm horizontal" },
      { "<F9>", "<cmd>ToggleTerm size=80 direction=vertical<CR>", desc = "ToggleTerm vertical" },
      { "<F10>", "<cmd>ToggleTerm direction=tab<CR>", desc = "ToggleTerm tab" },
    },
  },
}
