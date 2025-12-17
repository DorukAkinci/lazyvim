return {
  "nvim-mini/mini.splitjoin",
  version = false,
  event = "BufRead",
  opts = {},
  config = function(_, opts)
    require("mini.splitjoin").setup(opts)
  end,
}
