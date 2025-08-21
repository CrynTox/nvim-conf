return {
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
    presets = { lsp_doc_border = true },
  },
}
