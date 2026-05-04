local types = require("cognitosync.types")

local record Client
    bulkPublish: function(Client, types.BulkPublishInput): types.BulkPublishOutput, table
    deleteDataset: function(Client, types.DeleteDatasetInput): types.DeleteDatasetOutput, table
    describeDataset: function(Client, types.DescribeDatasetInput): types.DescribeDatasetOutput, table
    describeIdentityPoolUsage: function(Client, types.DescribeIdentityPoolUsageInput): types.DescribeIdentityPoolUsageOutput, table
    describeIdentityUsage: function(Client, types.DescribeIdentityUsageInput): types.DescribeIdentityUsageOutput, table
    getBulkPublishDetails: function(Client, types.GetBulkPublishDetailsInput): types.GetBulkPublishDetailsOutput, table
    getCognitoEvents: function(Client, types.GetCognitoEventsInput): types.GetCognitoEventsOutput, table
    getIdentityPoolConfiguration: function(Client, types.GetIdentityPoolConfigurationInput): types.GetIdentityPoolConfigurationOutput, table
    listDatasets: function(Client, types.ListDatasetsInput): types.ListDatasetsOutput, table
    listIdentityPoolUsage: function(Client, types.ListIdentityPoolUsageInput): types.ListIdentityPoolUsageOutput, table
    listRecords: function(Client, types.ListRecordsInput): types.ListRecordsOutput, table
    registerDevice: function(Client, types.RegisterDeviceInput): types.RegisterDeviceOutput, table
    setCognitoEvents: function(Client, types.SetCognitoEventsInput): types.SetCognitoEventsOutput, table
    setIdentityPoolConfiguration: function(Client, types.SetIdentityPoolConfigurationInput): types.SetIdentityPoolConfigurationOutput, table
    subscribeToDataset: function(Client, types.SubscribeToDatasetInput): types.SubscribeToDatasetOutput, table
    unsubscribeFromDataset: function(Client, types.UnsubscribeFromDatasetInput): types.UnsubscribeFromDatasetOutput, table
    updateRecords: function(Client, types.UpdateRecordsInput): types.UpdateRecordsOutput, table
end

local record M
    new: function(table): Client
end

return M
