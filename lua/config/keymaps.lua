local map = vim.keymap.set
-- Leader key
--vim.g.mapleader = ' ' -- Space as the leader key

vim.keymap.del("n", "gra") -- lsp code action
vim.keymap.del("x", "gra")
vim.keymap.del("n", "gri") -- lsp implementation
vim.keymap.del("n", "grn") -- lsp rename
vim.keymap.del("n", "grr") -- lsp references

map("n", "gaa", vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "LSP Code Action" })
map("x", "gaa", vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "LSP Code Action" })
map("n", "gai", vim.lsp.buf.implementation, { noremap = true, silent = true, desc = "LSP Implementation" })
-- map("n", "gar", vim.lsp.buf.rename, { noremap = true, silent = true, desc = "LSP Rename"})

map("n", "<Leader>qq", ":qa<CR>", { noremap = true, silent = true, desc = "Quit" })

map("n", "<Leader><space>", ":b#<CR>", { noremap = true, silent = true, desc = "Previous buffer" })

-- Window
map("n", "<Leader>wss", ":split<CR> :wincmd j<CR>", { noremap = true, silent = true, desc = "Split Horizontal" })
map("n", "<Leader>wvv", ":vsplit<CR> :wincmd l<CR>", { noremap = true, silent = true, desc = "Split Vertical" })
map("n", "<Leader>ws+", "5<C-w>+", { noremap = true, silent = true, desc = "Increase Window Height" })
map("n", "<Leader>ws-", "5<C-w>-", { noremap = true, silent = true, desc = "Decrease Window Height" })
map("n", "<Leader>wv+", "10<C-w>>", { noremap = true, silent = true, desc = "Increase Window Width" })
map("n", "<Leader>wv-", "10<C-w><", { noremap = true, silent = true, desc = "Decrease Window Width" })
map("n", "<Leader>wh", "<C-w>h", { noremap = true, silent = true, desc = "Go to Left Window" })
map("n", "<Leader>wj", "<C-w>j", { noremap = true, silent = true, desc = "Go to Down Window" })
map("n", "<Leader>wk", "<C-w>k", { noremap = true, silent = true, desc = "Go to Up Window" })
map("n", "<Leader>wl", "<C-w>l", { noremap = true, silent = true, desc = "Go to Right Window" })
-- map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true, desc = "Go to Left Window" })
-- map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true, desc = "Go to Down Window" })
-- map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true, desc = "Go to Up Window" })
-- map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true, desc = "Go to Right Window" })
map("n", "<Leader>wq", "<C-w>q", { noremap = true, silent = true, desc = "Close active window" })
map("n", "<Leader>wQ", "<C-w>o", { noremap = true, silent = true, desc = "Close all other windows" })
map("n", "<Leader>wf", ":WindowsMaximize<CR>", { noremap = true, silent = true, desc = "Focus active window" })
map("n", "<Leader>w=", ":WindowsEqualize<CR>", { noremap = true, silent = true, desc = "Reset window sizes" })

-- File
map("n", "<Leader>f/", ":Telescope live_grep<CR>", { noremap = true, silent = true, desc = "Find in files" })
map("n", "<Leader>fd", ":Telescope dir live_grep<CR>", { noremap = true, silent = true, desc = "Find in dir" })

-- Buffers
map("n", "<Leader>bk", ":bp<bar>sp<bar>bn<bar>bd<CR>", { noremap = true, silent = true, desc = "Kill current buffer" })
map("n", "<Leader>bK", ":%bd|e#|bd#<CR>", { noremap = true, silent = true, desc = "Kill all other buffers" })

-- Tabs
map("n", "<Leader><Tab>n", ":lua NewWorkspace()<CR>", { noremap = true, silent = true, desc = "Open new tab" })
map("n", "<Leader><Tab><Tab>", ":tabn<CR>", { noremap = true, silent = true, desc = "Go to next tab" })
map("n", "<Leader><Tab><S-Tab>", ":tabp<CR>", { noremap = true, silent = true, desc = "Go to previous tab" })
map("n", "<Leader><Tab>q", ":tabclose<CR>", { noremap = true, silent = true, desc = "Close the current tab" })

for i = 0, 9, 1 do
	map("n", "<Leader><Tab>" .. i, i .. "gt", { noremap = true, silent = true, desc = "Open tab " .. i })
end

-- Diagnostics
map("n", "<leader>dd", function()
	vim.diagnostic.open_float(nil, {
		scope = "line", -- important: shows all for the line
		border = "rounded",
		source = "always",
	})
end, { desc = "Show diagnostics for current line" })

map("n", "<leader>dv", function()
	local new_config = vim.diagnostic.config().virtual_lines or vim.diagnostic.config().virtual_text
	vim.diagnostic.config({ virtual_lines = false })
	vim.diagnostic.config({ virtual_text = not new_config })
end, { desc = "Enable/disable virtual text" })

map("n", "<leader>dV", function()
	local new_config = not vim.diagnostic.config().virtual_lines
	vim.diagnostic.config({ virtual_lines = new_config })
	vim.diagnostic.config({ virtual_text = not new_config })
end, { desc = "Toggle Virtual Lines/Text" })

-- Code
--map('n', '<Leader>cf', ':Telescope treesitter<CR>', { noremap = true, silent = true, desc = "Find symbol"})
map("n", "<Leader>cf", "<cmd>Telescope aerial<CR>", { noremap = true, silent = true, desc = "Find symbol" })
map(
	"n",
	"<Leader>c?",
	vim.diagnostic.open_float,
	{ noremap = true, silent = true, desc = "Pop up diagnostics message" }
)
--map('n', '<Leader>cd', '<cmd>Trouble diagnostics toggle filter.buf=0<CR>', { noremap = true, silent = true, desc = "Toggle diagnostics window"})
map(
	"n",
	"<Leader>cd",
	"<cmd>Trouble diagnostics toggle <CR>",
	{ noremap = true, silent = true, desc = "Toggle diagnostics window" }
)

map(
	"n",
	"<Leader>ch",
	"<cmd>LocalHighlightToggle<CR>",
	{ noremap = true, silent = true, desc = "Toggle local highlight" }
)

map(
	"n",
	"<Leader>c/",
	"<Plug>(comment_toggle_linewise_current)",
	{ noremap = true, silent = true, desc = "Linewise comment" }
)
map(
	"x",
	"<Leader>c/",
	"<Plug>(comment_toggle_linewise_visual)",
	{ noremap = true, silent = true, desc = "Linewise comment" }
)
map(
	"n",
	"<Leader>c#",
	"<Plug>(comment_toggle_blockwise_current)",
	{ noremap = true, silent = true, desc = "Block comment" }
)
map(
	"x",
	"<Leader>c#",
	"<Plug>(comment_toggle_blockwise_visual)",
	{ noremap = true, silent = true, desc = "Block comment" }
)

map("n", "<Leader>cw", function()
	vim.lsp.buf.format()
end, { noremap = true, silent = true, desc = "Format buffer" })

map("n", "<Leader>ci", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { noremap = true, silent = true, desc = "Toggle Inlay Hints" })

map("n", "g?", vim.lsp.buf.hover, { noremap = true, silent = true, desc = "View documentation" })
map("n", "<Leader>c?", vim.lsp.buf.hover, { noremap = true, silent = true, desc = "View documentation" })

-- Git
--map("n", "<Leader>gg", ":Neogit<CR>", { noremap = true, silent = true, desc = "Open NeoGit" })
-- map("n", "<Leader>gg", "<cmd>LazyGit<CR>", { noremap = true, silent = true, desc = "Open LazyGit" })
-- Git keys are set up in plugin file (lazygit.lua)

-- Projects
-- map(
-- 	"n",
-- 	"<Leader>pp",
-- 	":Telescope projects<CR>:Neotree show<CR>",
-- 	{ noremap = true, silent = true, desc = "Find project" }
-- )

function NewWorkspace()
	vim.cmd("tabe %")
end
