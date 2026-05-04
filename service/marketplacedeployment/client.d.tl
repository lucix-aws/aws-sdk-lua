local types = require("marketplacedeployment.types")

local record Client
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putDeploymentParameter: function(Client, types.PutDeploymentParameterInput): types.PutDeploymentParameterOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
