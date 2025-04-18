return {
	"folke/which-key.nvim", -- Show keys on pressing space
	config = function()
		local whichkey = require("which-key")

		whichkey.add({
			{ "<leader>q", group = "Session" },
			{ "<leader>b", group = "Buffer" },
			{ "<leader>f", group = "File" },
			{ "<leader>w", group = "Window" },
			{ "<leader>ws", group = "Horizontal Actions" },
			{ "<leader>wv", group = "Vertical Actions" },
			{ "<leader>c", group = "Code" },
			{ "<leader>g", group = "Git" },
			{ "<leader>p", group = "Project" },
			{ "<leader>s", group = "Snacks" },
		})
	end,
}
