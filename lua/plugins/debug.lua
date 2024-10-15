return {
	{
		"mfussenegger/nvim-dap",
		deendencies = {
			"rcarriga/nvim-dap-ui",
		},
		config = function()
			require("dap")
			local dap = require("dap")

			dap.adapters.codelldb = {
				type = 'server',
				port = "${port}",
				executable = {
					-- Change this to your path!
					command = '/home/kurotych/Sources/lldb/extension/adapter/codelldb',
					args = {"--port", "${port}"},
				}
			}

			dap.configurations.rust= {
				{
					name = "Launch file",
					type = "codelldb",
					request = "launch",
					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					cwd = '${workspaceFolder}',
					stopOnEntry = false,
				},
			}
		end
	},
	{
		"nvim-neotest/nvim-nio",
		config = function()
			require("nio")
		end
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
		},
		config = function()
			require("dapui").setup({})
		end
	},
}
