return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
