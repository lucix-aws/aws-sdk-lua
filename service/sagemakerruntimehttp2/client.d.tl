local types = require("sagemakerruntimehttp2.types")

local record Client
    invokeEndpointWithBidirectionalStream: function(Client, types.InvokeEndpointWithBidirectionalStreamInput): types.InvokeEndpointWithBidirectionalStreamOutput, table
end

local record M
    new: function(table): Client
end

return M
