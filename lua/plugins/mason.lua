return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- list of all LSP ensure installed
        ensure_installed = {"lua_ls", "arduino_language_server", "asm_lsp", "clangd", "neocmake", "gopls", "jsonls", "harper_ls", "rust_analyzer", "bashls"}
      })
    end
  }
}

