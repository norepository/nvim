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

-- Lsp
keymap("n", "gd", vim.lsp.buf.definition, {})
keymap("n", "gD", vim.lsp.buf.declaration, {})
keymap("n", "gi", vim.lsp.buf.implementation, {})
keymap("n", "gr", vim.lsp.buf.references, {})
keymap("n", "gc", vim.lsp.buf.code_action, {})
keymap("n", "gh", vim.lsp.buf.hover, {})


-- Keybinds to make split navigation easier.
keymap("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
