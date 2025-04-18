return {
	"neovim/nvim-lspconfig", -- Language server protocol configurations
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"saghen/blink.nvim",
	},
	config = function()
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		local lspconfig = require("lspconfig")
		local mason = require("mason")

		mason.setup()

		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim", "use", "s", "sn", "i", "rep", "c", "d", "f", "t", "fmta", "fmt" },
					},
				},
			},
		})

		lspconfig.gopls.setup({ capabilities = capabilities })

		lspconfig.clangd.setup({ capabilities = capabilities })

    -- Python lsp
		lspconfig.ruff.setup({ capabilities = capabilities })
	end,
}
