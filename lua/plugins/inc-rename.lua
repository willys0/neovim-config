return {
	"smjonas/inc-rename.nvim",
	event = "VeryLazy",
	opts = {},
	config = {
		vim.keymap.set("n", "gar", ":IncRename ", { noremap = true, silent = true, desc = "Rename symbol" }),
		-- vim.keymap.set("n", "<leader>rn", function()
		-- 	return ":IncRename " .. vim.fn.expand("<cword>")
		-- end, { expr = true }),
	},
}
