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
		autocmd("BufWritePre", {
			buffer = args.buf,
			callback = function()
				vim.lsp.buf.format { async = false, id = args.data.client_id }
			end,
		})
	end
})

-- Close QuickFix window
autocmd("FileType", {
	pattern = "qf",
	callback = function()
		vim.keymap.set("n", "q", ":cclose<CR>", { buffer = true, silent = true })
	end,
})

autocmd('PackChanged', {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == 'fff' and (kind == 'install' or kind == 'update') then
      if not ev.data.active then vim.cmd.packadd('fff') end
      require('fff.download').download_or_build_binary()
    end
  end,
})

-- Look at this bozo
usercmd("W", "w", {})
