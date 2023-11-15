return {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		-- keymaps
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fk', builtin.keymaps, {})

		vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
		vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
	end
}
