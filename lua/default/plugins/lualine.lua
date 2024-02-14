return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	priority = 1000,
	dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
	opts = {
		sections = {
			lualine_x = {
				{
					"searchcount",
					maxcount = 999999,
					timeout = 500,
				},
				{
					'vim.fn["codeium#GetStatusString"]()',
					fmt = function(str)
						if str == "" then
							return ""
						end
						return "codeium " .. str:lower():match("^%s*(.-)%s*$")
					end,
				},
			},
		},
	},
	config = function(_, opts)
		require("lualine").setup(opts)
	end,
}
