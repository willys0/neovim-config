return {
	"aserowy/tmux.nvim",
	opts = {},
	config = function()
		return require("tmux").setup({
			navigation = {
				enable_default_keybindings = true,
			},
		})
	end,
}
