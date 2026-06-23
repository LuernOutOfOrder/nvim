return {
  {
    'nvim-telescope/telescope.nvim',
    branch = "master",
    dependencies = { 'nvim-lua/plenary.nvim', {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    }, },
    config = function()
      local builtin = require("telescope.builtin")
      -- keymaps
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
      vim.keymap.set('n', '<leader>lg', builtin.live_grep, { desc = "Live grep" })
      vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
        { desc = "Live grep args" })
    end
  },

  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      -- This is your opts table
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
              -- even more opts
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
      require("telescope").load_extension("live_grep_args")
    end
  }
}
