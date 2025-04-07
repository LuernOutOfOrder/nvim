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
		vim.keymap.set("n", "<leader>h", ":ToggleTerm size=20 direction=horizontal<CR>"),
		vim.keymap.set("n", "<leader>v", ":ToggleTerm size=70 direction=vertical<CR>"),
		vim.keymap.set("n", "<leader>f", ":ToggleTerm size=70 direction=float<CR>"),
	},
}
