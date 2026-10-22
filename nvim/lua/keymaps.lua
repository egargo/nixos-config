vim.keymap.set({ 'n', 'i', 'v' }, '<left>', '<Nop>')
vim.keymap.set({ 'n', 'i', 'v' }, '<right>', '<Nop>')
vim.keymap.set({ 'n', 'i', 'v' }, '<up>', '<Nop>')
vim.keymap.set({ 'n', 'i', 'v' }, '<down>', '<Nop>')

vim.keymap.set('n', '<leader>nc', function()
	require('telescope.builtin').find_files {
		cwd = vim.fn.stdpath('config')
	}
end)

vim.keymap.set('n', '<leader>lg', '<CMD>LazyGit<CR>')
