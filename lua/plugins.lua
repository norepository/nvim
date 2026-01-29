vim.pack.add({
	-- { src = "https://github.com/vague2k/vague.nvim" },
	{ src = "https://github.com/blazkowolf/gruber-darker.nvim" },
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/lervag/vimtex" },
	{ src = "https://github.com/ibhagwan/fzf-lua.git" },
	{ src = "OXY2DEV/markview.nvim" },
})

-- Colorscheme
vim.cmd.colorscheme("gruber-darker")

-- Autopairs
require('nvim-autopairs').setup()

-- Oil
require('oil').setup({
	columns = {
		"permissions",
		"mtime",
		"size",
	},
	skip_confirm_for_simple_edits = true,
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

-- Autopairs
local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')
local cond = require('nvim-autopairs.conds')

npairs.add_rules({
	Rule("/* ", " */", { "c", "cpp" })
	    :with_move(cond.none())
})
