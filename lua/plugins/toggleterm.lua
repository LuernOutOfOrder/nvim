return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = true,
  opts = {
    config = function()
      require("toggleterm").setup({})
    end,
  },
  vim.keymap.set("n", "<leader>th", ":ToggleTerm size=20 direction=horizontal<CR>", { desc = "Toggle horizontal terminal" }),
  vim.keymap.set("n", "<leader>tv", ":ToggleTerm size=70 direction=vertical<CR>", { desc = "Toggle vertical terminal" }),
  vim.keymap.set("n", "<leader>tf", ":ToggleTerm size=70 direction=float<CR>", { desc = "Toggle floatting terminal" }),
  vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" }),
}
