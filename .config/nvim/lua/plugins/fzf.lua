-- https://github.com/ibhagwan/fzf-lua?tab=readme-ov-file#installation
return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
	{ "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Run FZF for files in current workdir" }
  }
}
