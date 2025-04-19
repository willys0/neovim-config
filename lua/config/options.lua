vim.o.number = true -- Enable line numbers
vim.o.relativenumber = true -- Enable relative line numbers
vim.o.tabstop = 2 -- Number of spaces a tab represents
vim.o.shiftwidth = 2 -- Number of spaces for each indentation
vim.o.expandtab = true -- Convert tabs to spaces
vim.o.smartindent = true -- Automatically indent new lines
-- vim.o.wrap = false -- Disable line wrapping
vim.o.cursorline = true -- Highlight the current line
vim.o.termguicolors = true -- Enable 24-bit RGB colors
-- vim.o.cc = "80" -- Column border

vim.o.clipboard = "unnamedplus"

vim.o.list = true
vim.o.listchars = "tab:› ,eol:¬,trail:⋅"

-- Syntax highlighting and filetype plugins
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

vim.api.nvim_set_hl(0, "BlinkCmpGhostText", {
	fg = "#6272a4",
})

vim.o.updatetime = 500

vim.go.inccommand = "split"


