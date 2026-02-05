return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    -- toggleterm options
  },
  config = function(_, opts)
    require("toggleterm").setup(opts)

    -- Terminal instance for lazygit
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({
      cmd = "lazygit",
      hidden = true,
      direction = "float",
    })

    -- Keymaps (normal mode)
    vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=20 direction=horizontal<cr>",
      { desc = "Toggle horizontal terminal" })
    vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=70 direction=vertical<cr>",
      { desc = "Toggle vertical terminal" })
    vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "Toggle floating terminal" })

    -- LazyGit toggle
    vim.keymap.set("n", "<leader>tg", function()
      lazygit:toggle()
    end, { desc = "Toggle LazyGit" })

    vim.keymap.set("t", "<leader><Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
  end,
}
