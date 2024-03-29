return {
	"alexghergh/nvim-tmux-navigation",
	cmd = {
		"NvimTmuxNavigateLeft",
		"NvimTmuxNavigateDown",
		"NvimTmuxNavigateUp",
		"NvimTmuxNavigateRight",
		"NvimTmuxNavigatePrevious",
	},
	keys = {
		{ "<c-h>", "<cmd>NvimTmuxNavigateLeft<cr>" },
		{ "<c-j>", "<cmd>NvimTmuxNavigateDown<cr>" },
		{ "<c-k>", "<cmd>NvimTmuxNavigateUp<cr>" },
		{ "<c-l>", "<cmd>NvimTmuxNavigateRight<cr>" },
		{ "<c-\\>", "<cmd>NvimTmuxNavigatePrevious<cr>" },
	},
	config = function(_, opts)
		require("nvim-tmux-navigation").setup(opts)
	end,
}
