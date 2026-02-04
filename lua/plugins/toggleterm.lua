return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    config = function()
      require("toggleterm").setup({})
    end,
  },
  config = function()
    local Terminal = require('toggleterm.terminal').Terminal
    local lazygit  = Terminal:new({
      cmd = "lazygit",
      dir = "git_dir",
      direction = "float",
      float_opts = {
        border = "double",
      },
      -- function to run on opening the terminal
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
      end,
      -- function to run on closing the terminal
      on_close = function(term)
        vim.cmd("startinsert!")
      end,
    })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap("n", "<leader>tg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true, desc = "Toggle lazygit terminal" })
  end,
  vim.keymap.set("n", "<leader>th", ":ToggleTerm size=20 direction=horizontal<CR>",
    { desc = "Toggle horizontal terminal" }),
  vim.keymap.set("n", "<leader>tv", ":ToggleTerm size=70 direction=vertical<CR>", { desc = "Toggle vertical terminal" }),
  vim.keymap.set("n", "<leader>tf", ":ToggleTerm size=70 direction=float<CR>", { desc = "Toggle floatting terminal" }),
  -- vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" }),
}
