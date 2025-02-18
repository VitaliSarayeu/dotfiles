require("config.lazy")

vim.cmd("set number")

vim.cmd("set autochdir")

vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set smartindent")

vim.cmd("syntax enable")
vim.cmd("syntax on")
vim.cmd("set notermguicolors")

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
-- vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- zettel settings
require('telekasten').setup({
  home = vim.fn.expand("~/zettel"), -- Put the name of your notes directory here
})
