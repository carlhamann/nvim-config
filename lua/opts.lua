vim.cmd("let g:netrw_liststyle = 3")

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.clipboard:append("unnamedplus")

-- tabs and indentation
vim.opt.tabstop = 2 -- 2 spaces for tabs
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = true -- expand tab to spaces 
vim.opt.autoindent = true -- copy indent from current line when starting new line 
vim.opt.smartindent = true -- copy indent from current line when starting new line 

vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- if mixed case in search: assume case-sensitive 

vim.opt.cursorline = true -- highlight cursor line

-- appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- backspace
vim.opt.backspace = "indent,eol,start" -- more intuitive backspace

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

