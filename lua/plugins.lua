vim.pack.add({
	{ src = "https://github.com/vague2k/vague.nvim" },
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/lervag/vimtex" },

})

-- Colorscheme
vim.cmd.colorscheme("vague")

-- Autopairs
require('nvim-autopairs').setup()

-- Oil
require('oil').setup({
	columns = {
		"permissions",
		"mtime",
		"size",
	},
	watch_for_changes = true,
	view_options = {
		show_hidden = true,
	},
})

-- Lsp
require("mason").setup()
vim.lsp.enable({
	"clangd",
	"lua_ls",
	"pylsp",
})

vim.lsp.config("lua_ls", { cmd = { "lua-language-server", "--force-accept-workspace" }, })

-- Latex
vim.g.vimtex_view_method = "zathura"
