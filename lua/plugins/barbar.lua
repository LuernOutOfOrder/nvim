return {
  "romgrk/barbar.nvim",
  config = function()
  end,
  vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', {}),
  vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', {}),
  vim.keymap.set('n', '<Leader>x', '<Cmd>BufferClose<CR>', {}),
}
