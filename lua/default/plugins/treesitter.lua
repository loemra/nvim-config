return {
	"nvim-treesitter/nvim-treesitter",
	lazy = true,
	event = {"BufReadPre"},
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "cpp", "lua", "vim", "vimdoc", "sql", "python" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			disable = function(_, bufnr)
				print(vim.fn.getfsize(vim.api.nvim_buf_get_name(bufnr)))
				return vim.fn.getfsize(vim.api.nvim_buf_get_name(bufnr)) > 1000000
			end,
		})
	end,
}
