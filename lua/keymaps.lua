local keymap = vim.keymap.set

vim.g.mapleader = " "

-- Clear search selection
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
	{ silent = true, desc = "Search for visual selection" }
)

-- LSP
keymap("n", "<leader>d", "<cmd>lua vim.diagnostic.setloclist()<CR>", { desc = "Document diagnostics" })
keymap("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
keymap("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })

-- fff
keymap('n', '<leader>f', function() require('fff').find_files() end, { desc = 'Find Files' })
keymap('n', '<leader>g', function() require('fff').live_grep() end, { desc = 'Live Grep' })

-- Keybinds to make split navigation easier.
keymap("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
