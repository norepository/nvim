local keymap = vim.keymap.set

vim.g.mapleader = " "

keymap("n", "<C-c>", "<cmd>nohlsearch<CR>")

-- Package
keymap("n", "<leader>ps", '<cmd>lua vim.pack.update()<CR>')

-- Oil
keymap("n", "<C-e>", "<CMD>Oil<CR>")

-- Search selection
keymap(
	"v",
	"/",
	[[y/\V<C-R>=escape(@", '/\')<CR><CR>]],
	{ noremap = true, silent = true, desc = "Search for visual selection" }
)
