return {
	"gorbit99/codewindow.nvim",
	event = "VeryLazy",
	opts = {},
	config = function()
		local codewindow = require("codewindow")
		codewindow.setup()
		codewindow.apply_default_keybinds()
	end,
}
