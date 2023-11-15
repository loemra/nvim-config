return {
	"stevearc/conform.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	event = { "BufReadPre", "BufNewFile" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>fb",
			function()
				local try_async = function(err)
					if err ~= nil then
						require("conform").format({ async = true, lsp_fallback = true })
					end
				end
				require("conform").format({ timeout_ms = 500, async = false, lsp_fallback = true }, try_async)
			end,
			mode = { "n", "v" },
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "isort", "black" },
		},
		-- format_on_save = { timeout_ms = 500, lsp_fallback = true },
	},
	config = function(_, opts)
		require("conform").setup(opts)
		-- make sure that all of the formatters are installed.
		require("mason-tool-installer").setup({
			ensure_installed = {
				"stylua",
				"isort",
				"black",
			},
		})
		-- format modifications located in the lsp file.
	end,
	init = function()
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
