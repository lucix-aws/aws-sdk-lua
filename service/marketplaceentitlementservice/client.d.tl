local types = require("marketplaceentitlementservice.types")

local record Client
    getEntitlements: function(Client, types.GetEntitlementsInput): types.GetEntitlementsOutput, table
end

local record M
    new: function(table): Client
end

return M
