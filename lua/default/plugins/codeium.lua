return {
	"Exafunction/codeium.vim",
	event = { "InsertEnter" },
	cmd = { "Codeium" },
	keys = {
		{
			"<Tab>",
			function()
				return vim.fn["codeium#Accept"]()
			end,
			mode = { "i" },
			expr = true,
			silent = true,
			desc = "Codeium accept.",
		},
		{
			"<M-]>",
			function()
				return vim.fn["codeium#CycleCompletions"](1)
			end,
			mode = { "i" },
			expr = true,
			silent = true,
			desc = "Codeium next.",
		},
		{
			"<M-[>",
			function()
				return vim.fn["codeium#CycleCompletions"](-1)
			end,
			mode = { "i" },
			expr = true,
			silent = true,
			desc = "Codeium prev.",
		},
		{
			"<leader>cc",
			"<cmd>Codeium Toggle<CR>",
			mode = { "n" },
			desc = "Codeium prev.",
		},
	},
	config = function()
		vim.g.codeium_disable_bindings = 1
	end,
}
