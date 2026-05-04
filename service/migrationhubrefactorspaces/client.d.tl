local types = require("migrationhubrefactorspaces.types")

local record Client
    createApplication: function(Client, types.CreateApplicationInput): types.CreateApplicationOutput, table
    createEnvironment: function(Client, types.CreateEnvironmentInput): types.CreateEnvironmentOutput, table
    createRoute: function(Client, types.CreateRouteInput): types.CreateRouteOutput, table
    createService: function(Client, types.CreateServiceInput): types.CreateServiceOutput, table
    deleteApplication: function(Client, types.DeleteApplicationInput): types.DeleteApplicationOutput, table
    deleteEnvironment: function(Client, types.DeleteEnvironmentInput): types.DeleteEnvironmentOutput, table
    deleteResourcePolicy: function(Client, types.DeleteResourcePolicyInput): types.DeleteResourcePolicyOutput, table
    deleteRoute: function(Client, types.DeleteRouteInput): types.DeleteRouteOutput, table
    deleteService: function(Client, types.DeleteServiceInput): types.DeleteServiceOutput, table
    getApplication: function(Client, types.GetApplicationInput): types.GetApplicationOutput, table
    getEnvironment: function(Client, types.GetEnvironmentInput): types.GetEnvironmentOutput, table
    getResourcePolicy: function(Client, types.GetResourcePolicyInput): types.GetResourcePolicyOutput, table
    getRoute: function(Client, types.GetRouteInput): types.GetRouteOutput, table
    getService: function(Client, types.GetServiceInput): types.GetServiceOutput, table
    listApplications: function(Client, types.ListApplicationsInput): types.ListApplicationsOutput, table
    listEnvironments: function(Client, types.ListEnvironmentsInput): types.ListEnvironmentsOutput, table
    listEnvironmentVpcs: function(Client, types.ListEnvironmentVpcsInput): types.ListEnvironmentVpcsOutput, table
    listRoutes: function(Client, types.ListRoutesInput): types.ListRoutesOutput, table
    listServices: function(Client, types.ListServicesInput): types.ListServicesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putResourcePolicy: function(Client, types.PutResourcePolicyInput): types.PutResourcePolicyOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateRoute: function(Client, types.UpdateRouteInput): types.UpdateRouteOutput, table
end

local record M
    new: function(table): Client
end

return M
