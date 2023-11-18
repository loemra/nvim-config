return {
	"echasnovski/mini.files",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	version = false,
	lazy = true,
	keys = {
		{
			"<leader>ft",
			function()
				require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
			end,
			desc = "Open mini.files (directory of current file)",
		},
		{
			"<leader>fT",
			function()
				require("mini.files").open(vim.loop.cwd(), true)
			end,
			desc = "Open mini.files (cwd)",
		},
	},
	config = function(_, opts)
		require("mini.files").setup(opts)
	end,
}
