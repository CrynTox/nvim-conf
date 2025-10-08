return {
  "rose-pine/neovim",
  lazy = false,
  priority = 1000,
  name = "rose-pine",
  opts = {
    variant = "main",
    palette = {
      main = {
        base = "#000000",
        surface = "#000000",
      },
    },
    highlight_groups = {
      ColorColumn = { bg = "highlight_low" },
    },
  },
  config = function(_, opts)
    require("rose-pine").setup(opts)
    vim.cmd("colorscheme rose-pine")
  end,
}
