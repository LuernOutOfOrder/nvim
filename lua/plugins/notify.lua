return {
  "rcarriga/nvim-notify",
  config = function()
    vim.notify = require("notify")
  end
  -- TODO 
  -- add :Telescope notify to keymap
}
