return {
	"nvim-treesitter/nvim-treesitter", -- Enhanced syntax highlighting
	dependencies = {
		"hiphish/rainbow-delimiters.nvim",
	},
	build = function()
		local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
		ts_update()
	end,

	opts = function(_, opts)
		opts.rainbow = {
			enable = true,
			query = "rainbow-parens",
			strategy = require("rainbow-delimiters").strategy.global,
		}
	end,

	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "lua", "vim", "python", "c", "cpp", "go" },
			highlight = {
				enable = true,
			},
		})
	end,
}
