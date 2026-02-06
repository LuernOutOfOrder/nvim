return {
  "mrcjkb/rustaceanvim",
  version = "^7",
  lazy = false,
  config = function()
    vim.g.rustaceanvim = {
      server = {
        settings = {
          ["rust-analyzer"] = {
            diagnostics = {
              disabled = { "unlinked-file" },
            },

            cargo = {
              allFeatures = true,
            },

            check = {
              cfg = {
                allFeatures = true,
              },
            },

            procMacro = {
              enable = true,
            },

            files = {
              excludeDirs = {
                ".git",
                "target",
              },
            },
          },
        },
      },
    }
  end,
}
