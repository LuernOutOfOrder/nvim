local lazy_plugins = require("lazy").plugins()
local f = io.open(vim.fn.expand("~") .. "/nvim_plugin_list.txt", "w")

for _, plugin in ipairs(lazy_plugins) do
  local name = plugin.name or plugin[1]
  if name then
    f:write(name .. "\n")
  end
end

f:close()
print("✅ Plugin list written to ~/nvim_plugin_list.txt")
