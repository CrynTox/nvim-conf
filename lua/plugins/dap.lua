return {
  "mfussenegger/nvim-dap",
  lazy = false,
  keys = {
    { "<Leader>b", function() require("dap").toggle_breakpoint() end, desc = "Toggle [B]reakpoint" },
  },
}
