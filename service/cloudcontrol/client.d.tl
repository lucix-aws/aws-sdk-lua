local types = require("cloudcontrol.types")

local record Client
    cancelResourceRequest: function(Client, types.CancelResourceRequestInput): types.CancelResourceRequestOutput, table
    createResource: function(Client, types.CreateResourceInput): types.CreateResourceOutput, table
    deleteResource: function(Client, types.DeleteResourceInput): types.DeleteResourceOutput, table
    getResource: function(Client, types.GetResourceInput): types.GetResourceOutput, table
    getResourceRequestStatus: function(Client, types.GetResourceRequestStatusInput): types.GetResourceRequestStatusOutput, table
    listResourceRequests: function(Client, types.ListResourceRequestsInput): types.ListResourceRequestsOutput, table
    listResources: function(Client, types.ListResourcesInput): types.ListResourcesOutput, table
    updateResource: function(Client, types.UpdateResourceInput): types.UpdateResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
