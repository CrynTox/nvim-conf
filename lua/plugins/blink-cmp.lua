return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "1.*",
  opts = {
    keymap = { preset = "default" },
    completion = {
      list = {
        selection = {
          preselect = false,
          auto_insert = true,
        },
      },
      documentation = { auto_show = true },
    },
    signature = { enabled = true },
  },
}
