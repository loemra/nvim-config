return {
	{
		[1] = "williamboman/mason.nvim",
		cmd="Mason",
		lazy = true,
		config = true,
	},
	{
		[1] = "WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		lazy = true,
		opts = {
			ensure_installed = {
				"stylua",
				"isort",
				"black",
				"jq",
				"flake8",
				"selene",
			},
		},
		config = function(_, opts)
			require("mason-tool-installer").setup(opts)
		end,
	},
}
