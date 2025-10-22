return {
  "MeanderingProgrammer/treesitter-modules.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
  },
  ---@module 'treesitter-modules'
  ---@type ts.mod.UserConfig
  opts = {
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
}
