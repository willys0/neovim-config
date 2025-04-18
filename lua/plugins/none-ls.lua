return {
	"nvimtools/none-ls.nvim",
	event = "VeryLazy",
	config = function()
		local null_ls = require("null-ls")

		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics
		local code_actions = null_ls.builtins.code_actions
		local completion = null_ls.builtins.completion

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })

					--vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })

					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
							-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
							--vim.lsp.buf.formatting_sync()
							vim.lsp.buf.format({
								bufnr = bufnr,
								filter = function(_client)
									return _client.name == "null-ls"
								end,
								async = false,
							})
						end,
					})
				end
			end,
		})
	end,
}
