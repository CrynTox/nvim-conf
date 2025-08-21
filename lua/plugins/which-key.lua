return {
  "folke/which-key.nvim",
  dependencies = { "mini.nvim" },
  opts = {
    preset = "modern",
  },
  config = function(_, opts)
    _G.WhichKey = require("which-key")
    WhichKey.setup(opts)
  end,
}
