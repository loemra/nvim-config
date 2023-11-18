return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.4",
	lazy = true,
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = { "Telescope" },
	keys = {
		{
			"<leader>ff",
			function()
				require("telescope.builtin").find_files()
			end,
			mode = { "n" },
			desc = "Telescope find files",
		},
		{
			"<leader>fs",
			function()
				require("telescope.builtin").live_grep()
			end,
			mode = { "n" },
			desc = "Telescope find string",
		},
		{
			"<leader>fk",
			function()
				require("telescope.builtin").keymaps()
			end,
			mode = { "n" },
			desc = "Telescope find keymaps",
		},
		{
			"<leader>gc",
			function()
				require("telescope.builtin").git_commits()
			end,
			mode = { "n" },
			desc = "Telescope view git commits",
		},
		{
			"<leader>gs",
			function()
				require("telescope.builtin").git_status()
			end,
			mode = { "n" },
			desc = "Telescope view git status"
		},
	},
	opts = {
		defaults = {
			preview = {
				filesize_hook = function(filepath, bufnr, opts)
					local max_bytes = 10000
					local cmd = { "head", "-c", max_bytes, filepath }
					require("telescope.previewers.utils").job_maker(cmd, bufnr, opts)
				end,
			},
		},
	},
	config = function(_, opts)
		require("telescope").setup(opts)
	end,
}
