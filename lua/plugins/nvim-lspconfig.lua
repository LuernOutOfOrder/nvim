return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    -- ensure_installed = {"lua_ls", "arduino_language_server", "asm_lsp", "clangd", "neocmake", "gopls", "jsonls", "harper_ls", "rust_analyzer", "bashls"}
    lspconfig.lua_ls.setup({})
    lspconfig.rust_analyzer.setup({})
    lspconfig.gopls.setup({})
    lspconfig.clangd.setup({})
    lspconfig.arduino_language_server.setup({})
    lspconfig.asm_lsp.setup({})
    lspconfig.neocmake.setup({})
    lspconfig.harper_ls.setup({})
    lspconfig.jsonls.setup({})
    lspconfig.bashls.setup({})
    -- keymaps
    vim.keymap.set('n', 'D', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set({'n'},'<leader>ca', vim.lsp.buf.code_action, {})
  end
}
