return {
  "neovim/nvim-lspconfig",
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Definition of all servers with new api
    vim.lsp.config["lua_ls"] = {
      cmd = { "lua-language-server" },
      filetypes = { "lua" },
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    }

    vim.lsp.config["gopls"] = {
      cmd = { "gopls" },
      capabilities = capabilities,
    }

    vim.lsp.config["clangd"] = {
      cmd = { "clangd" },
      capabilities = capabilities,
    }

    vim.lsp.config["asm_lsp"] = {
      cmd = { "asm-lsp" },
      capabilities = capabilities,
      filetypes = { "asm", "s", "S" },
    }

    vim.lsp.config["jsonls"] = {
      cmd = { "json-languageserver", "--stdio" },
      capabilities = capabilities,
    }

    vim.lsp.config["bashls"] = {
      cmd = { "bash-language-server", "start" },
      capabilities = capabilities,
      filetypes = { "sh", "bash" },
    }

    vim.lsp.config["zls"] = {
      cmd = { "zls" },
      capabilities = capabilities,
    }

    vim.lsp.config["taplo"] = {
      cmd = { "taplo", "lsp", "stdio" },
      capabilities = capabilities,
      filetypes = { "toml" },
      root_markers = { ".git", "Cargo.toml", "taplo.toml" },
    }

    vim.lsp.config.marksman = {
      filetypes = { "markdown" },
      root_markers = { ".git", ".marksman.toml" },
    }

    -- Enable all servers
    vim.lsp.enable({
      "lua_ls",
      "asm_lsp",
      "clangd",
      "gopls",
      "jsonls",
      "harper_ls",
      "bashls",
      "zls",
      "taplo",
      "marksman",
    })

    -- Keymaps
    vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, { desc = "Display current function description (hover)" })
    vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "Go to definition of current function" })
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Open code action window" })
    vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format current buffer using the correct LSP" })
  end,
}
