vim.pack.add({
"https://github.com/nvim-tree/nvim-web-devicons",
"https://github.com/blazkowolf/gruber-darker.nvim",
"https://github.com/lewis6991/gitsigns.nvim",
"https://github.com/stevearc/oil.nvim",
"https://github.com/neovim/nvim-lspconfig",
"https://github.com/mason-org/mason.nvim",
"https://github.com/windwp/nvim-autopairs",
"https://github.com/lervag/vimtex",
"https://github.com/ibhagwan/fzf-lua.git",
"https://github.com/dmtrKovalenko/fff",
"https://github.com/MeanderingProgrammer/render-markdown.nvim",
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
-- vim.g.vimtex_view_method = "zathura"

-- Autopairs
local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')
local cond = require('nvim-autopairs.conds')

npairs.add_rules({
	Rule("/* ", " */", { "c", "cpp" })
	    :with_move(cond.none())
})

-- fff
vim.g.fff = {
  lazy_sync = true, -- start syncing only when the picker is open
  debug = {
    enabled = true,
    show_scores = true,
  },
}
