require('telescope').setup({
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
