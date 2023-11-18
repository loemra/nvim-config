return {
	"kdheepak/lazygit.nvim",
	lazy = true,
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{
			"<leader>fg",
			function()
				require("telescope").extensions.lazygit.lazygit()
			end,
			mode = { "n" },
			desc = "Open lazygit in telescope.",
		},
		{
			"<leader>gg",
			":LazyGit<CR>",
			mode = { "n" },
			desc = "Open lazygit.",
		},
	},
	config = function()
		require("telescope").load_extension("lazygit")
	end,
}
