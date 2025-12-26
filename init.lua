vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.wrap = false
vim.o.swapfile = false

vim.g.mapleader = " "
vim.keymap.set('n', '<leader>ff', ':FZF<CR>')
vim.keymap.set('n', '<leader>e', ':Ex<CR>')
vim.keymap.set('n', '<leader>c', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)


vim.pack.add({

	{ src = "https://github.com/catppuccin/nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },



})


require('mason').setup()
require('mason-lspconfig').setup()

vim.cmd("colorscheme catppuccin")
vim.cmd(":hi statusline guibg=NONE")
