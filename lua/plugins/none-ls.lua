return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- misc
        null_ls.builtins.completion.spell,
        -- lua
        null_ls.builtins.formatting.stylua,
        -- go
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.goimports_reviser,
        null_ls.builtins.formatting.golines,
        -- rust
        null_ls.builtins.formatting.dxfmt,
        -- c, cpp
        null_ls.builtins.formatting.uncrustify,
      },
    })
    vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {desc= "Format code in the current buffer"})
  end,
}
