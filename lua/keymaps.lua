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
	{ noremap = true, silent = true, desc = "Search for visual selection" }
)

-- Man
keymap('n', '<leader>k', function() vim.cmd('Man ' .. vim.fn.expand('<cword>')) end)

-- Fzf
keymap("n", "<leader>f", "<cmd>FzfLua files<CR>", {})
keymap("n", "<leader>g", "<cmd>FzfLua live_grep<CR>", {})
keymap("n", "<leader>d", "<cmd>FzfLua diagnostics_document<CR>", {})

keymap("n", "gd", "<cmd>FzfLua lsp_definitions<CR>", {})
keymap("n", "gD", "<cmd>FzfLua lsp_declarations<CR>", {})
keymap("n", "gi", "<cmd>FzfLua lsp_implementations<CR>", {})
keymap("n", "gr", "<cmd>FzfLua lsp_references<CR>", {})
keymap("n", "gh", vim.lsp.buf.hover, {})


-- Keybinds to make split navigation easier.
keymap("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })


-- Diagnostics
-- keymap("n", "<leader>d", function()
-- 	vim.diagnostic.config({ virtual_text = not vim.diagnostic.config().virtual_text })
-- end, { desc = "Toggle diagnostics virtual text" })
--
-- keymap("n", "<leader>df", vim.diagnostic.open_float, {})
