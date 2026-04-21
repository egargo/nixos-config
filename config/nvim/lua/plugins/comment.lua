vim.pack.add({
	{ src = 'https://github.com/numToStr/Comment.nvim' },
})

require('Comment').setup({
	padding = true,
	sticky = true,
	toggler = {
		line = 'gc',
		block = 'gb',
	},
	opleader = {
		line = 'gc',
		block = 'gb',
	},
})
