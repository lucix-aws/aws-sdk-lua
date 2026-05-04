local types = require("s3outposts.types")

local record Client
    createEndpoint: function(Client, types.CreateEndpointInput): types.CreateEndpointOutput, table
    deleteEndpoint: function(Client, types.DeleteEndpointInput): types.DeleteEndpointOutput, table
    listEndpoints: function(Client, types.ListEndpointsInput): types.ListEndpointsOutput, table
    listOutpostsWithS3: function(Client, types.ListOutpostsWithS3Input): types.ListOutpostsWithS3Output, table
    listSharedEndpoints: function(Client, types.ListSharedEndpointsInput): types.ListSharedEndpointsOutput, table
end

local record M
    new: function(table): Client
end

return M
