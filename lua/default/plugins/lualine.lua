return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	priority = 1000,
	dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
	opts = {
		sections = {
			lualine_x = {
				{
					"searchcount",
					maxcount = 999999,
					timeout = 500,
				},
			},
		},
	},
	config = function(_, opts)
		require("lualine").setup(opts)
	end,
}
