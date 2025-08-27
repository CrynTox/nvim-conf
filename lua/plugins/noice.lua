return {
  -- FIX: find a way to show which selection is selected when using gc flags in substitute
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    cmdline = {
      opts = {
        position = {
          row = "25%",
          col = "50%",
        },
      },
    },
    messages = {
      view_search = false,
    },
    presets = { lsp_doc_border = true },
  },
}
