return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	priority = 1000,
	dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
	config = function(_, opts)
		require("lualine").setup(opts)
	end,
}
