local map = vim.keymap.set

map("n", "H", "<Cmd>bprevious<CR>", {
  desc = "Previous Buffer",
})
map("n", "L", "<Cmd>bnext<CR>", {
  desc = "Next Buffer",
})

-- NOTE: possibly, think of a sane way to copy the descriptions from the original binds?
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
