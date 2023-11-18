return {
	"sainnhe/everforest",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[ set background=dark ]])
		vim.cmd([[ colorscheme everforest ]])
		vim.keymap.set("n", "<leader>ct", function()
			if vim.o.background == "dark" then
				vim.cmd([[ set background=light ]])
			else
				vim.cmd([[ set background=dark ]])
			end
		end)
	end,
}
