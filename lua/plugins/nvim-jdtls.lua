return {
  "mfussenegger/nvim-jdtls",
  dependencies = {
    "mason-lspconfig.nvim",
    opts = function(_, opts)
      opts = opts or {}
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "jdtls")
    end,
  },
}
