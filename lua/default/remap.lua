vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex, { desc = "Open netre explorer" })
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<leader>qq", ":qa!<CR>")

-- splits
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>sh", ":split<CR>")
-- vim.keymap.set("n", "<leader>h", "<c-w>h<CR>")
-- vim.keymap.set("n", "<leader>j", "<c-w>j<CR>")
-- vim.keymap.set("n", "<leader>k", "<c-w>k<CR>")
-- vim.keymap.set("n", "<leader>l", "<c-w>l<CR>")

-- yank, delete and clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>yy", [["+yy]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["+d]])
vim.keymap.set("n", "<leader>dd", [["+dd]])

-- terminal
vim.keymap.set("n", "<leader>t", ":split term://zsh<CR>")
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>")
