return {
  "folke/flash.nvim",
  opts = {
    modes = {
      char = {
        keys = { "f", "F", "t", "T" },
        char_actions = function()
          return {
            [";"] = "next",
            [","] = "prev",
          }
        end,
      },
    },
  },
  keys = {
    {
      "s",
      function() require("flash").jump() end,
      desc = "[S]eek Flash",
    },
    {
      "<Leader>S",
      function() require("flash").treesitter() end,
      desc = "[S]eek Treesitter",
    },
    { "f" },
    { "F" },
    { "t" },
    { "T" },
  },
}
