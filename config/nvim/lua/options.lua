vim.g.have_nerd_font = true
vim.g.editorconfig = true
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.autoindent = false
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.list = true
vim.opt.listchars = {
	tab = '» ',
	trail = '·',
	lead = '·',
	nbsp = '␣',
}
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.opt.undofile = true
vim.opt.encoding = 'utf-8'
vim.opt.fileformat = 'unix'
vim.opt.spell = true
vim.opt.showmatch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function() vim.highlight.on_yank() end
})
