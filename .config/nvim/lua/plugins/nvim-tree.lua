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
      { "<leader>Tt", "<cmd>NvimTreeOpen<cr>", desc = "Nvim Tree" },

      { "<leader>Tb", "<cmd>Telescope buffers<cr>", desc = "Telescope buffers" }

  }

}
