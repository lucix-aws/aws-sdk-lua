local types = require("mwaa.types")

local record Client
    createCliToken: function(Client, types.CreateCliTokenInput): types.CreateCliTokenOutput, table
    createEnvironment: function(Client, types.CreateEnvironmentInput): types.CreateEnvironmentOutput, table
    createWebLoginToken: function(Client, types.CreateWebLoginTokenInput): types.CreateWebLoginTokenOutput, table
    deleteEnvironment: function(Client, types.DeleteEnvironmentInput): types.DeleteEnvironmentOutput, table
    getEnvironment: function(Client, types.GetEnvironmentInput): types.GetEnvironmentOutput, table
    invokeRestApi: function(Client, types.InvokeRestApiInput): types.InvokeRestApiOutput, table
    listEnvironments: function(Client, types.ListEnvironmentsInput): types.ListEnvironmentsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    publishMetrics: function(Client, types.PublishMetricsInput): types.PublishMetricsOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateEnvironment: function(Client, types.UpdateEnvironmentInput): types.UpdateEnvironmentOutput, table
end

local record M
    new: function(table): Client
end

return M
