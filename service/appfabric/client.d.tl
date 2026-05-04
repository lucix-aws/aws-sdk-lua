local types = require("appfabric.types")

local record Client
    batchGetUserAccessTasks: function(Client, types.BatchGetUserAccessTasksInput): types.BatchGetUserAccessTasksOutput, table
    connectAppAuthorization: function(Client, types.ConnectAppAuthorizationInput): types.ConnectAppAuthorizationOutput, table
    createAppAuthorization: function(Client, types.CreateAppAuthorizationInput): types.CreateAppAuthorizationOutput, table
    createAppBundle: function(Client, types.CreateAppBundleInput): types.CreateAppBundleOutput, table
    createIngestion: function(Client, types.CreateIngestionInput): types.CreateIngestionOutput, table
    createIngestionDestination: function(Client, types.CreateIngestionDestinationInput): types.CreateIngestionDestinationOutput, table
    deleteAppAuthorization: function(Client, types.DeleteAppAuthorizationInput): types.DeleteAppAuthorizationOutput, table
    deleteAppBundle: function(Client, types.DeleteAppBundleInput): types.DeleteAppBundleOutput, table
    deleteIngestion: function(Client, types.DeleteIngestionInput): types.DeleteIngestionOutput, table
    deleteIngestionDestination: function(Client, types.DeleteIngestionDestinationInput): types.DeleteIngestionDestinationOutput, table
    getAppAuthorization: function(Client, types.GetAppAuthorizationInput): types.GetAppAuthorizationOutput, table
    getAppBundle: function(Client, types.GetAppBundleInput): types.GetAppBundleOutput, table
    getIngestion: function(Client, types.GetIngestionInput): types.GetIngestionOutput, table
    getIngestionDestination: function(Client, types.GetIngestionDestinationInput): types.GetIngestionDestinationOutput, table
    listAppAuthorizations: function(Client, types.ListAppAuthorizationsInput): types.ListAppAuthorizationsOutput, table
    listAppBundles: function(Client, types.ListAppBundlesInput): types.ListAppBundlesOutput, table
    listIngestionDestinations: function(Client, types.ListIngestionDestinationsInput): types.ListIngestionDestinationsOutput, table
    listIngestions: function(Client, types.ListIngestionsInput): types.ListIngestionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startIngestion: function(Client, types.StartIngestionInput): types.StartIngestionOutput, table
    startUserAccessTasks: function(Client, types.StartUserAccessTasksInput): types.StartUserAccessTasksOutput, table
    stopIngestion: function(Client, types.StopIngestionInput): types.StopIngestionOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAppAuthorization: function(Client, types.UpdateAppAuthorizationInput): types.UpdateAppAuthorizationOutput, table
    updateIngestionDestination: function(Client, types.UpdateIngestionDestinationInput): types.UpdateIngestionDestinationOutput, table
end

local record M
    new: function(table): Client
end

return M
