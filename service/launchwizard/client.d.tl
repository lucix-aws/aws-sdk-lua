local types = require("launchwizard.types")

local record Client
    createDeployment: function(Client, types.CreateDeploymentInput): types.CreateDeploymentOutput, table
    deleteDeployment: function(Client, types.DeleteDeploymentInput): types.DeleteDeploymentOutput, table
    getDeployment: function(Client, types.GetDeploymentInput): types.GetDeploymentOutput, table
    getDeploymentPatternVersion: function(Client, types.GetDeploymentPatternVersionInput): types.GetDeploymentPatternVersionOutput, table
    getWorkload: function(Client, types.GetWorkloadInput): types.GetWorkloadOutput, table
    getWorkloadDeploymentPattern: function(Client, types.GetWorkloadDeploymentPatternInput): types.GetWorkloadDeploymentPatternOutput, table
    listDeploymentEvents: function(Client, types.ListDeploymentEventsInput): types.ListDeploymentEventsOutput, table
    listDeploymentPatternVersions: function(Client, types.ListDeploymentPatternVersionsInput): types.ListDeploymentPatternVersionsOutput, table
    listDeployments: function(Client, types.ListDeploymentsInput): types.ListDeploymentsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listWorkloadDeploymentPatterns: function(Client, types.ListWorkloadDeploymentPatternsInput): types.ListWorkloadDeploymentPatternsOutput, table
    listWorkloads: function(Client, types.ListWorkloadsInput): types.ListWorkloadsOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateDeployment: function(Client, types.UpdateDeploymentInput): types.UpdateDeploymentOutput, table
end

local record M
    new: function(table): Client
end

return M
