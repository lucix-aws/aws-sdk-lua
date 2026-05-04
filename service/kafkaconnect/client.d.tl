local types = require("kafkaconnect.types")

local record Client
    createConnector: function(Client, types.CreateConnectorInput): types.CreateConnectorOutput, table
    createCustomPlugin: function(Client, types.CreateCustomPluginInput): types.CreateCustomPluginOutput, table
    createWorkerConfiguration: function(Client, types.CreateWorkerConfigurationInput): types.CreateWorkerConfigurationOutput, table
    deleteConnector: function(Client, types.DeleteConnectorInput): types.DeleteConnectorOutput, table
    deleteCustomPlugin: function(Client, types.DeleteCustomPluginInput): types.DeleteCustomPluginOutput, table
    deleteWorkerConfiguration: function(Client, types.DeleteWorkerConfigurationInput): types.DeleteWorkerConfigurationOutput, table
    describeConnector: function(Client, types.DescribeConnectorInput): types.DescribeConnectorOutput, table
    describeConnectorOperation: function(Client, types.DescribeConnectorOperationInput): types.DescribeConnectorOperationOutput, table
    describeCustomPlugin: function(Client, types.DescribeCustomPluginInput): types.DescribeCustomPluginOutput, table
    describeWorkerConfiguration: function(Client, types.DescribeWorkerConfigurationInput): types.DescribeWorkerConfigurationOutput, table
    listConnectorOperations: function(Client, types.ListConnectorOperationsInput): types.ListConnectorOperationsOutput, table
    listConnectors: function(Client, types.ListConnectorsInput): types.ListConnectorsOutput, table
    listCustomPlugins: function(Client, types.ListCustomPluginsInput): types.ListCustomPluginsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listWorkerConfigurations: function(Client, types.ListWorkerConfigurationsInput): types.ListWorkerConfigurationsOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateConnector: function(Client, types.UpdateConnectorInput): types.UpdateConnectorOutput, table
end

local record M
    new: function(table): Client
end

return M
