return {
	"kdheepak/lazygit.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("telescope").load_extension("lazygit")
		vim.keymap.set("n", "<leader>fg", require("telescope").extensions.lazygit.lazygit)
		vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>")
	end,
}
