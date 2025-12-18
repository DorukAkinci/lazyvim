-- Override the Projects key from uppercase "P" to lowercase "p" on the dashboard
return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      -- Find and update the Projects key in dashboard preset keys
      if opts.dashboard and opts.dashboard.preset and opts.dashboard.preset.keys then
        for _, key in ipairs(opts.dashboard.preset.keys) do
          if key.desc and key.desc:match("Projects") then
            key.key = "p"
          end
        end
      end
    end,
  },
}
