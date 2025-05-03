return {
  "romgrk/barbar.nvim",
  config = function()
    require("barbar").setup({
      animation = true,

      -- Automatically hide the tabline when there are this many buffers left.
      -- Set to any value >=0 to enable.
      auto_hide = true,
    })
  end,
  vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", {}),
  vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>", {}),
  vim.keymap.set("n", "<Leader>x", "<Cmd>BufferClose<CR>", {}),
}
