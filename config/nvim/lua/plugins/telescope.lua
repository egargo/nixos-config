vim.pack.add({
	{ src = 'https://github.com/nvim-lua/plenary.nvim' },
	{ src = 'https://github.com/nvim-telescope/telescope-ui-select.nvim' },
	{ src = 'https://github.com/nvim-telescope/telescope.nvim' },
})


require('telescope').setup({
	defaults = {
		-- path_display = { 'smart' },
	},
	extensions = {
		['ui-select'] = {
			require('telescope.themes').get_dropdown(),
		},
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = 'smart_case',
		},
	},
})
pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'ui-select')

vim.keymap.set('n', '<leader>f', require('telescope.builtin').find_files)
