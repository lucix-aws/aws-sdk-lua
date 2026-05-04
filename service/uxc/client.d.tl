local types = require("uxc.types")

local record Client
    getAccountCustomizations: function(Client, types.GetAccountCustomizationsInput): types.GetAccountCustomizationsOutput, table
    listServices: function(Client, types.ListServicesInput): types.ListServicesOutput, table
    updateAccountCustomizations: function(Client, types.UpdateAccountCustomizationsInput): types.UpdateAccountCustomizationsOutput, table
end

local record M
    new: function(table): Client
end

return M
