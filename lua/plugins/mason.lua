return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- list of all LSP ensure installed
				automatic_enable = true,
				ensure_installed = {
					"lua_ls",
					"clangd",
					"gopls",
					"jsonls",
					"harper_ls",
					"bashls",
					"zls",
					"taplo",
					"marksman",
				},
			})
		end,
	},
}
