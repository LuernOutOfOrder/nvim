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

    vim.lsp.config["rust_analyzer"] = { cmd = { "__disabled__" } }
    vim.lsp.config["asm_lsp"] = { cmd = { "__disabled__" } }

    -- Enable all servers
    vim.lsp.enable({
      "lua_ls",
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
    vim.keymap.set("n", "<leader>cd", function()
      vim.lsp.buf.definition({
        on_list = function(options)
          local items = options.items
          if not items or #items == 0 then
            return
          end

          if #items == 1 then
            vim.cmd("edit " .. items[1].filename)
            vim.api.nvim_win_set_cursor(0, { items[1].lnum, items[1].col - 1 })
            return
          end

          -- Check if all locations are identical
          local first = items[1]
          for _, item in ipairs(items) do
            if item.filename ~= first.filename
                or item.lnum ~= first.lnum
                or item.col ~= first.col
            then
              vim.fn.setqflist(items)
              vim.cmd("copen")
              return
            end
          end

          -- All identical → jump
          vim.cmd("edit " .. first.filename)
          vim.api.nvim_win_set_cursor(0, { first.lnum, first.col - 1 })
        end,
      })
    end, { desc = "Go to definition (no useless picker)" })
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Open code action window" })
    vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format current buffer using the correct LSP" })
  end,
}
