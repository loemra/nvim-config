return {
	[1] = "mfussenegger/nvim-lint",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	event = { "BufEnter", "BufRead" },
	lazy = true,
	opts = {
		lua = { "selene" },
		python = { "flake8" },
	},
	config = function(_, opts)
		local lint = require("lint")
		lint.linters_by_ft = opts

		TryLint = function()
			local diag = vim.diagnostic.get(0, { severity_limit = vim.diagnostic.severity.WARN })
			if diag and type(diag) == "table" and #diag > 0 then
				-- avoid duplicated error and warning overlay on the same line by lsp and nvim-lint both
				return
			end
			require("lint").try_lint()
		end

		vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})

		vim.api.nvim_create_autocmd({ "BufEnter", "BufRead" }, {
			group = vim.api.nvim_create_augroup("NvimLint", { clear = false }),
			pattern = { "*" },
			callback = function(o)
				o = o or {}
				o.id = nil
				-- dump(opts)
				vim.defer_fn(function()
					TryLint()
				end, 300)
			end,
		})
	end,
}
