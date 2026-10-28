return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason-lspconfig").setup()
    vim.lsp.config("clangd", {
      cmd = { "clangd", "--experimental-modules-support" },
    })
  end,
}
