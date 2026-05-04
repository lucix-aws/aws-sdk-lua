local types = require("cloudtraildata.types")

local record Client
    putAuditEvents: function(Client, types.PutAuditEventsInput): types.PutAuditEventsOutput, table
end

local record M
    new: function(table): Client
end

return M
