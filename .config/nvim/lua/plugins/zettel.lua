-- https://github.com/nvim-telekasten/telekasten.nvim
return {
    'renerocksai/telekasten.nvim',
    dependencies = {'nvim-telescope/telescope.nvim'},
	keys = {
    	{ "<leader>zt", "<cmd>Telekasten<cr>", desc = "Telekazten notes" }
	}

}

