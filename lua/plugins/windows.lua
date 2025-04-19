return {
	"anuvyklack/windows.nvim",
	event = VeryLazy,
	dependencies = {
		"anuvyklack/middleclass",
		"anuvyklack/animation.nvim",
	},
	opts = {
		autowidth = {
			enable = false,
		},
		ignore = {
			buftype = {
				"quickfix",
			},
			filetype = {
				"neo-tree",
			},
		},
		animation = {
			enable = true,
			duration = 150,
			fps = 60,
			easing = "in_out_sine",
		},
	},
}
