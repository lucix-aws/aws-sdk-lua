local types = require("glacier.types")

local record M
    wait_until_vault_exists: function(client: table, input: table, options: table): table, table
    wait_until_vault_not_exists: function(client: table, input: table, options: table): table, table
end

return M
