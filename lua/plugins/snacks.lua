return {
  "folke/snacks.nvim",
  lazy = false,
  priority = 1000,
  dependencies = {
    "which-key.nvim",
  },
  opts = {
    picker = { enabled = true },
    input = { enabled = true },
    statuscolumn = { enabled = true },
  },
  config = function(_, opts)
    require("snacks").setup(opts)

    WhichKey.add({
      { "<Leader>s", group = "[S]earch" },
    })
  end,
  keys = {
    { "<Leader>sf", function() Snacks.picker.files() end, desc = "[S]earch [F]iles" },
    { "<Leader>sF", function() Snacks.picker.git_files() end, desc = "[S]earch Git [F]iles" },
    { "<Leader>sg", function() Snacks.picker.grep() end, desc = "[S]earch [G]rep" },
    { "<Leader>sh", function() Snacks.picker.help() end, desc = "[S]earch [H]elp" },
    { "<Leader>su", function() Snacks.picker.undo() end, desc = "[S]earch [U]ndo" },
    { "<Leader>sj", function() Snacks.picker.jumps() end, desc = "[S]earch [J]umps" },
  },
}
