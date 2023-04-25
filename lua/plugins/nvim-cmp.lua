return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "emoji" } }))
    opts.mapping = cmp.mapping.preset.insert({
      -- cr accept false
      -- ["<CR>"] = cmp.mapping.confirm({ select = false }),
      ["<CR>"] = cmp.config.disable,
    })
  end,
}
