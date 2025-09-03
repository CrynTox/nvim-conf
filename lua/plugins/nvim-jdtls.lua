return {
  "mfussenegger/nvim-jdtls",
  dependencies = {
    {
      "mason-lspconfig.nvim",
      opts = function(_, opts)
        opts = opts or {}
        opts.ensure_installed = opts.ensure_installed or {}
        table.insert(opts.ensure_installed, "jdtls")
      end,
    },
    "nvim-dap",
  },
  config = function()
    vim.lsp.config("jdtls", {
      init_options = {
        bundles = {
          vim.fn.stdpath("data") .. "/mason/share/java-debug-adapter/com.microsoft.java.debug.plugin.jar",
        },
      },
    })

    require("jdtls").setup_dap()
  end,
}
