return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")
		-- ensure_installed = {"lua_ls", "arduino_language_server", "asm_lsp", "clangd", "neocmake", "gopls", "jsonls", "harper_ls", "rust_analyzer", "bashls"}
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})
		-- lspconfig.rust_analyzer.setup({
		--     capabilities = capabilities,
		--   })
		lspconfig.gopls.setup({
			capabilities = capabilities,
		})
		lspconfig.clangd.setup({
			capabilities = capabilities,
		})
		lspconfig.arduino_language_server.setup({
			capabilities = capabilities,
		})
		lspconfig.asm_lsp.setup({
			capabilities = capabilities,
		})
		lspconfig.neocmake.setup({
			capabilities = capabilities,
		})
		lspconfig.harper_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.jsonls.setup({
			capabilities = capabilities,
		})
		lspconfig.bashls.setup({
			capabilities = capabilities,
		})
    lspconfig.zls.setup({
      capabilities = capabilities,
    })
    lspconfig.taplo.setup({
      capabilities = capabilities,
    })
		-- keymaps
		vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, {desc= "Display current function description hover"})
		vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, {desc= "Go to definition of current function"})
		vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {desc= "Open code action window"})
	end,
}
