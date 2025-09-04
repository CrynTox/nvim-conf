return {
  "folke/which-key.nvim",
  lazy = false,
  dependencies = { "mini.nvim" },
  opts = {
    preset = "modern",
  },
  config = function(_, opts)
    _G.WhichKey = require("which-key")
    WhichKey.setup(opts)
  end,
  keys = {
    { "<Leader>?", function() WhichKey.show() end, desc = "[?] WhichKey" },
  },
}
