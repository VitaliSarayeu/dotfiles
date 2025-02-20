require("config.lazy")

vim.cmd("set number")

vim.cmd("set autochdir")


-- vim.cmd("set tabstop=4")
-- vim.cmd("set shiftwidth=4")
-- vim.cmd("set expandtab")
-- vim.cmd("set smartindent")

vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4

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
    dotfiles = false,
  },
})

-- zettel settings
require('telekasten').setup({
  home = vim.fn.expand("~/zettel"), -- Put the name of your notes directory here
})

-- local highlight = {
--     "CursorColumn",
--     "Whitespace",
-- }
-- require("ibl").setup {
--     indent = { highlight = highlight, char = "|" },
--     whitespace = {
--         highlight = highlight,
--         remove_blankline_trail = false,
--     },
--     scope = { enabled = false },
-- }
local highlight = {
    "RainbowRed",
    "RainbowYellow",
    "RainbowBlue",
    "RainbowOrange",
    "RainbowGreen",
    "RainbowViolet",
    "RainbowCyan",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
end)

require("ibl").setup { indent = { highlight = highlight, char = "┊" } }

-- yaml
require("yaml_nvim").setup({ ft = { "yaml",  "yml" } })
