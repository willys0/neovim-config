return {
	"rcarriga/nvim-dap-ui",
	event = VeryLazy,
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
	},
	config = function()
		local dap, dapui = require("dap"), require("dapui")
		local dapgo = require("dap-go")
		dapui.setup()
		dapgo.setup()
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end

		-- Include the next few lines until the comment only if you feel you need it
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		-- Include everything after this
		vim.keymap.set("n", "<F5>", function()
			require("dap").continue()
		end, { noremap = true })

		vim.keymap.set("n", "<F10>", function()
			require("dap").step_over()
		end, { noremap = true })

		vim.keymap.set("n", "<F11>", function()
			require("dap").step_into()
		end, { noremap = true })

		vim.keymap.set("n", "<F12>", function()
			require("dap").step_out()
		end, { noremap = true })

		vim.keymap.set("n", "<Leader>cb", function()
			require("dap").toggle_breakpoint()
		end, { noremap = true, silent = true, desc = "Toggle breakpoint" })

		vim.keymap.set("n", "<Leader>cB", function()
			require("dap").set_breakpoint()
		end, { noremap = true, silent = true, desc = "Set breakpoint" })

		-- vim.api.nvim_set_keymap('n', '<Leader>lp', function()
		--     require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
		-- end)
		--vim.api.nvim_set_keymap('n', '<Leader>dr', function() require('dap').repl.open() end)
		--vim.api.nvim_set_keymap('n', '<Leader>dl', function() require('dap').run_last() end)
		--vim.keymap.set("n", "<Leader>cr", function()
		--	dapui.open()
		--end, { noremap = true, silent = true, desc = "Run debugger" })
		--vim.keymap.set('n', '<Leader>cD', function() dapui.close() end, { noremap = true, silent = true, desc = "Close debugger UI"})
		--
		vim.keymap.set(
			"n",
			"<Leader>cr",
			"<cmd> DapContinue <CR>",
			{ noremap = true, silent = true, desc = "Run debugger" }
		)
	end,
}
