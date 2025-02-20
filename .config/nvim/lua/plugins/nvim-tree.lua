return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
  },
  config = function()
    require("nvim-tree").setup {}
  end,
  keys = {
      { "<leader>t", "<cmd>NvimTreeOpen<cr>", desc = "Nvim Tree" }
  }

}
