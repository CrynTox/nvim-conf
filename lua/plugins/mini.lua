return {
  "echasnovski/mini.nvim",
  config = function(_, opts)
    require("mini.icons").setup()
    require("mini.statusline").setup()
  end,
}
