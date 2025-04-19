return {
	{
		"dracula/vim",
		-- "Mofiqul/dracula.nvim",
		name = "dracula",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("dracula")
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		-- config = function()
		-- 	vim.cmd.colorscheme("catppuccin-macchiato")
		-- end,
	},
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		priority = 1000,
		-- config = function()
		-- 	vim.cmd.colorscheme("tokyonight")
		-- end,
	},
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
		-- config = function()
		-- 	vim.cmd.colorscheme("kanagawa")
		-- end,
	},
	{
		"NTBBloodbath/doom-one.nvim",
		name = "doom-one",
		priority = 1000,
		-- config = function()
		-- 	vim.cmd.colorscheme("doom-one")
		-- end,
	},
}
