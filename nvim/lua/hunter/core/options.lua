vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.numberwidth = 1

-- Tabs & Indentions
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Word Wrap
opt.wrap = false

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Highlight Cursor Line
opt.cursorline = true

-- Color Settings
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace on Indent
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Window Split
opt.splitright = true
opt.splitbelow = true
