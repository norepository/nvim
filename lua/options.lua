-- UI
vim.o.number = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"
vim.o.wrap = true
vim.cmd(":hi statusline guibg=NONE")

-- Navigation
vim.o.scrolloff = 8
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Search
vim.o.ignorecase = true

-- Indentation
vim.opt.tabstop = 2

-- Files
vim.o.undofile = true
vim.o.swapfile = false

-- System
vim.o.clipboard = "unnamedplus"
