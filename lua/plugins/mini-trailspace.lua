return {
  "nvim-mini/mini.trailspace",
  version = false,
  event = "BufRead",
  opts = {},
  config = function(_, opts)
    require("mini.trailspace").setup(opts)
  end,
}
