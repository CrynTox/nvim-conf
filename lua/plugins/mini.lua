return {
  "echasnovski/mini.nvim",
  config = function(_, opts)
    require("mini.icons").setup()
    require("mini.statusline").setup()
    require("mini.files").setup()
    -- mini files setup --
    vim.api.nvim_create_autocmd("User", {
      pattern = "MiniFilesBufferCreate",
      callback = function(args)
        vim.keymap.set("n", "g~", function()
          local path = (MiniFiles.get_fs_entry() or {}).path
          if path == nil then return vim.notify("Cursor is not on a valid entry") end
          vim.fn.chdir(vim.fs.dirname(path))
        end, { buffer = args.data.buf_id, desc = "Set Current Working Directory" })
      end,
    })

    vim.api.nvim_create_autocmd("User", {
      pattern = "MiniFilesWindowUpdate",
      callback = function(args)
        local wo = vim.wo[args.data.win_id]
        wo.numberwidth = 1
        wo.number = true
        wo.relativenumber = true
      end,
    })
    ----------------------
  end,
  keys = {
    { "<Leader>e", function() MiniFiles.open() end, desc = "[E]xplore" },
  },
}
