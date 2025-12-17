return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- misc
				null_ls.builtins.completion.spell,
				-- md
				null_ls.builtins.formatting.markdownlint.with({
					filetypes = { "markdown" },
				}),
			},
		})
		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format code in the current buffer" })
	end,
}
