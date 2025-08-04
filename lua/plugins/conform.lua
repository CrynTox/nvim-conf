return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      nix = { "nixfmt" },
    },
    format_on_save = {
      lsp_format = "fallbak",
      timeout_ms = 500,
    },
  },
  config = function(_, opts)
    require("conform").setup(opts)
    vim.opt.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
