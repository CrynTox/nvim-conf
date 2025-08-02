local map = vim.keymap.set

map("n", "H", "<Cmd>bprevious<CR>", {
  desc = "Previous Buffer",
})
map("n", "L", "<Cmd>bnext<CR>", {
  desc = "Next Buffer",
})
