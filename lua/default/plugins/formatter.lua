return {
	"stevearc/conform.nvim",
	lazy = true,
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	event = { "LspAttach" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>fb",
			function()
				local try_async = function(err)
					if err ~= nil then
						print(err)
						print("formatting buffer async")
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
			json = { "jq" },
		},
		-- format_on_save = { timeout_ms = 500, lsp_fallback = true },
	},
	config = function(_, opts)
		local conform = require("conform")
		conform.setup(opts)

		conform.formatters.black = {
			prepend_args = { "-l 79", "--preview" },
		}

		-- format modifications located in the lsp file.
	end,
	init = function()
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
