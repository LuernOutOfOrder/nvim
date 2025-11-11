return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Definition of all servers with new api
		vim.lsp.config["lua_ls"] = {
			cmd = { "lua-language-server" },
			filetypes = { "lua" },
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		}

		vim.lsp.config["gopls"] = {
			cmd = { "gopls" },
			capabilities = capabilities,
		}

		vim.lsp.config["clangd"] = {
			cmd = { "clangd" },
			capabilities = capabilities,
		}

		vim.lsp.config["arduino_language_server"] = {
			cmd = { "arduino_language_server" },
			capabilities = capabilities,
		}

		vim.lsp.config["asm_lsp"] = {
			cmd = { "asm_lsp" },
			capabilities = capabilities,
		}

		vim.lsp.config["neocmake"] = {
			cmd = { "neocmake" },
			capabilities = capabilities,
		}

		vim.lsp.config["harper_ls"] = {
			cmd = { "harper_ls" },
			capabilities = capabilities,
		}

		vim.lsp.config["jsonls"] = {
			cmd = { "json-languageserver", "--stdio" },
			capabilities = capabilities,
		}

		vim.lsp.config["bashls"] = {
			cmd = { "bash-language-server", "start" },
			capabilities = capabilities,
			filetypes = { "sh", "bash" },
		}

		vim.lsp.config["zls"] = {
			cmd = { "zls" },
			capabilities = capabilities,
		}

		vim.lsp.config["taplo"] = {
			cmd = { "taplo", "lsp" },
			capabilities = capabilities,
			filetypes = { "toml" },
		}

    -- Enable all servers
		vim.lsp.enable({
			"lua_ls",
			"gopls",
			"clangd",
			"arduino_language_server",
			"asm_lsp",
			"neocmake",
			"harper_ls",
			"jsonls",
			"bashls",
			"zls",
			"taplo",
		})

		-- Keymaps
		vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, { desc = "Display current function description (hover)" })
		vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "Go to definition of current function" })
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Open code action window" })
	end,
}
