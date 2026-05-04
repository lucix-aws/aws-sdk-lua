local types = require("kinesisanalytics.types")

local record Client
    addApplicationCloudWatchLoggingOption: function(Client, types.AddApplicationCloudWatchLoggingOptionInput): types.AddApplicationCloudWatchLoggingOptionOutput, table
    addApplicationInput: function(Client, types.AddApplicationInputInput): types.AddApplicationInputOutput, table
    addApplicationInputProcessingConfiguration: function(Client, types.AddApplicationInputProcessingConfigurationInput): types.AddApplicationInputProcessingConfigurationOutput, table
    addApplicationOutput: function(Client, types.AddApplicationOutputInput): types.AddApplicationOutputOutput, table
    addApplicationReferenceDataSource: function(Client, types.AddApplicationReferenceDataSourceInput): types.AddApplicationReferenceDataSourceOutput, table
    createApplication: function(Client, types.CreateApplicationInput): types.CreateApplicationOutput, table
    deleteApplication: function(Client, types.DeleteApplicationInput): types.DeleteApplicationOperationOutput, table
    deleteApplicationCloudWatchLoggingOption: function(Client, types.DeleteApplicationCloudWatchLoggingOptionInput): types.DeleteApplicationCloudWatchLoggingOptionOutput, table
    deleteApplicationInputProcessingConfiguration: function(Client, types.DeleteApplicationInputProcessingConfigurationInput): types.DeleteApplicationInputProcessingConfigurationOutput, table
    deleteApplicationOutput: function(Client, types.DeleteApplicationOutputInput): types.DeleteApplicationOutputOutput, table
    deleteApplicationReferenceDataSource: function(Client, types.DeleteApplicationReferenceDataSourceInput): types.DeleteApplicationReferenceDataSourceOutput, table
    describeApplication: function(Client, types.DescribeApplicationInput): types.DescribeApplicationOutput, table
    discoverInputSchema: function(Client, types.DiscoverInputSchemaInput): types.DiscoverInputSchemaOutput, table
    listApplications: function(Client, types.ListApplicationsInput): types.ListApplicationsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startApplication: function(Client, types.StartApplicationInput): types.StartApplicationOutput, table
    stopApplication: function(Client, types.StopApplicationInput): types.StopApplicationOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateApplication: function(Client, types.UpdateApplicationInput): types.UpdateApplicationOutput, table
end

local record M
    new: function(table): Client
end

return M
