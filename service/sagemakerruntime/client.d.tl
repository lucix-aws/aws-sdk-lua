local types = require("sagemakerruntime.types")

local record Client
    invokeEndpoint: function(Client, types.InvokeEndpointInput): types.InvokeEndpointOutput, table
    invokeEndpointAsync: function(Client, types.InvokeEndpointAsyncInput): types.InvokeEndpointAsyncOutput, table
    invokeEndpointWithResponseStream: function(Client, types.InvokeEndpointWithResponseStreamInput): types.InvokeEndpointWithResponseStreamOutput, table
end

local record M
    new: function(table): Client
end

return M
