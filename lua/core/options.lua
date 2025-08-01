local opts = {
  breakindent = true,
  completeopt = {
    "fuzzy",
    "menuone",
    "noinsert",
    "popup",
  },
  confirm = true,
  cursorline = true,
  expandtab = true,
  foldlevel = 99,
  hlsearch = false,
  ignorecase = true,
  inccommand = "split",
  list = true,
  listchars = {
    tab = "» ",
    trail = "·",
    nbsp = "⍽",
  },
  number = true,
  relativenumber = true,
  scrolloff = 10,
  shiftwidth = 4,
  sidescrolloff = 10,
  signcolumn = "yes",
  smartcase = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  tabstop = 4,
  timeoutlen = 250,
  undofile = true,
  undolevels = 10000,
  updatetime = 250,
  virtualedit = { "block" },
  wrap = false,
}

for k, v in pairs(opts) do
  vim.opt[k] = v
end

vim.g.mapleader = " "
vim.g.localmapleader = " "
