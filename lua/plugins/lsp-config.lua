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
					workspace = {
						checkThirdParty = false,
					},
					codeLens = {
						enable = true,
					},
					completion = {
						callSnippet = "Replace",
					},
					doc = {
						privateName = { "^_" },
					},
					hint = {
						enable = true,
						-- setType = false,
						-- paramType = true,
						-- paramName = "Disable",
						-- semicolon = "Disable",
						arrayIndex = "Disable",
					},
				},
			},
		})

		lspconfig.gopls.setup({
			capabilities = capabilities,
			settings = {
				gopls = {
					hints = {
						rangeVariableTypes = true,
						parameterNames = true,
						constantValues = true,
						assignVariableTypes = true,
						compositeLiteralFields = true,
						compositeLiteralTypes = true,
						functionTypeParameters = true,
					},
				},
			},
		})

		lspconfig.clangd.setup({
			capabilities = capabilities,
			cmd = {
				"clangd",
				"--background-index",
				"--clang-tidy",
				"--header-insertion=iwyu",
				"--completion-style=detailed",
				"--function-arg-placeholders",
				"--fallback-style=google",
			},
			init_options = {
				usePlaceholders = true,
				completeUnimported = true,
				clangdFileStatus = true,
				inlayHints = {
					enabled = true,
					designators = false,
					parameterNames = false,
					deducedTypes = true,
				},
			},
			on_attach = function(client, bufnr)
				vim.keymap.set(
					"n",
					"gh",
					"<cmd>ClangdSwitchSourceHeader<CR>",
					{ buffer = bufnr, noremap = true, silent = true, desc = "Switch between source/header" }
				)
			end,
		})

		-- Python lsp
		lspconfig.basedpyright.setup({
			capabilities = capabilities,
			settings = {
				analysis = {
					autoSearchPaths = true,
					diagnosticMode = "openFilesOnly",
					useLibraryCodeForTypes = true,
				},
			},
		})
	end,
}
