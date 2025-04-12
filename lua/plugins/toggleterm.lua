return {
	-- amongst your other plugins
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	-- or
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			config = function()
				require("toggleterm").setup({})
			end,
		},
		vim.keymap.set("n", "<leader>th", ":ToggleTerm size=20 direction=horizontal<CR>"),
		vim.keymap.set("n", "<leader>tv", ":ToggleTerm size=70 direction=vertical<CR>"),
		vim.keymap.set("n", "<leader>tf", ":ToggleTerm size=70 direction=float<CR>"),
	},
}
