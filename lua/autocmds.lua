local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local usercmd = vim.api.nvim_create_user_command

-- Highlight yanked text
local highlight_group = augroup('YankHighlight', { clear = true })
autocmd('TextYankPost', {
	pattern = '*',
	callback = function()
		vim.highlight.on_yank({ timeout = 170 })
	end,
	group = highlight_group,
})

-- Format on save
autocmd("LspAttach", {
	group = augroup("lsp", { clear = true }),
	callback = function(args)
		-- 2
		autocmd("BufWritePre", {
			-- 3
			buffer = args.buf,
			callback = function()
				-- 4 + 5
				vim.lsp.buf.format { async = false, id = args.data.client_id }
			end,
		})
	end
})

-- Close QuickFix window
autocmd("FileType", {
	pattern = "qf",
	callback = function()
		vim.keymap.set("n", "q", ":cclose<CR>", { buffer = true, noremap = true, silent = true })
	end,
})

-- Look at this bozo
usercmd("W", "w", {})
