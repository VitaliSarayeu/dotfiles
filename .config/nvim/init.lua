require("config.lazy")
-- require("config.lazy").setup({
-- --towolf/vim-helm provides basic syntax highlighting and filetype detection
-- -- ft = 'helm' is important to not start yamlls
--   { 'towolf/vim-helm',       ft = 'helm' },
--   { "neovim/nvim-lspconfig", event = { "BufReadPre", "BufNewFile", "BufEnter" } }
-- })


vim.cmd("set number")

vim.cmd("set autochdir")


-- vim.cmd("set tabstop=4")
-- vim.cmd("set shiftwidth=4")
-- vim.cmd("set expandtab")
-- vim.cmd("set smartindent")

vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2 -- Number of spaces inserted when indenting

-- vim.opt["tabstop"] = 4
-- vim.opt["shiftwidth"] = 4

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

-- treesitter for syntax highliting on errything
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",     
  ignore_install = { "ipkg"}, -- List of parsers to ignore installing
  highlight = {
    enable = true              
  },
}

-- local lspconfig = require('lspconfig')
vim.lsp.enable('helm_ls')
vim.lsp.enable('yamlls')


local function setup_diags()
  vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
      virtual_text = false,
      signs = true,
      update_in_insert = false,
      underline = true,
    }
  )
end

setup_diags()
