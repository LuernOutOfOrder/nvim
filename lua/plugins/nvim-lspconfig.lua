return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")
		-- ensure_installed = {"lua_ls", "arduino_language_server", "asm_lsp", "clangd", "neocmake", "gopls", "jsonls", "harper_ls", "rust_analyzer", "bashls"}
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})
		-- lspconfig.rust_analyzer.setup({})
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
		-- keymaps
		vim.keymap.set("n", "D", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
		vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
	end,
}
