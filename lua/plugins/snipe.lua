return {
	"leath-dub/snipe.nvim",
	event = "VeryLazy",
	keys = {
		{
			"gs",
			function()
				require("snipe").open_buffer_menu()
			end,
			desc = "Open Snipe buffer menu",
		},
	},
	opts = {
    ui = {
      position = "topleft"
    },
		hints = {
			dictionary = "asdfgwertyuiop",
		},
	},
}
