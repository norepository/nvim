-- UI
vim.o.number = true
vim.o.cursorline = true
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"
vim.o.wrap = true

-- Word count function for the statusline
function WordCount()
  local wc = vim.fn.wordcount()
  if wc.visual_words then
    return wc.visual_words .. "/" .. wc.words .. " "
  end
  return wc.words .. " "
end

vim.o.statusline = "%f %m %r %= %{v:lua.WordCount()} %l:%c %p%%"

-- Navigation
vim.o.scrolloff = 8
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Search
vim.o.ignorecase = true

-- Indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2 
vim.opt.expandtab = false
vim.opt.cindent = true

-- Files
vim.o.undofile = true
vim.o.swapfile = false

-- System
vim.o.clipboard = "unnamedplus"
