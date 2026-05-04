local types = require("mq.types")

local record Client
    createBroker: function(Client, types.CreateBrokerInput): types.CreateBrokerOutput, table
    createConfiguration: function(Client, types.CreateConfigurationInput): types.CreateConfigurationOutput, table
    createTags: function(Client, types.CreateTagsInput): types.CreateTagsOutput, table
    createUser: function(Client, types.CreateUserInput): types.CreateUserOutput, table
    deleteBroker: function(Client, types.DeleteBrokerInput): types.DeleteBrokerOutput, table
    deleteConfiguration: function(Client, types.DeleteConfigurationInput): types.DeleteConfigurationOutput, table
    deleteTags: function(Client, types.DeleteTagsInput): types.DeleteTagsOutput, table
    deleteUser: function(Client, types.DeleteUserInput): types.DeleteUserOutput, table
    describeBroker: function(Client, types.DescribeBrokerInput): types.DescribeBrokerOutput, table
    describeBrokerEngineTypes: function(Client, types.DescribeBrokerEngineTypesInput): types.DescribeBrokerEngineTypesOutput, table
    describeBrokerInstanceOptions: function(Client, types.DescribeBrokerInstanceOptionsInput): types.DescribeBrokerInstanceOptionsOutput, table
    describeConfiguration: function(Client, types.DescribeConfigurationInput): types.DescribeConfigurationOutput, table
    describeConfigurationRevision: function(Client, types.DescribeConfigurationRevisionInput): types.DescribeConfigurationRevisionOutput, table
    describeUser: function(Client, types.DescribeUserInput): types.DescribeUserOutput, table
    listBrokers: function(Client, types.ListBrokersInput): types.ListBrokersOutput, table
    listConfigurationRevisions: function(Client, types.ListConfigurationRevisionsInput): types.ListConfigurationRevisionsOutput, table
    listConfigurations: function(Client, types.ListConfigurationsInput): types.ListConfigurationsOutput, table
    listTags: function(Client, types.ListTagsInput): types.ListTagsOutput, table
    listUsers: function(Client, types.ListUsersInput): types.ListUsersOutput, table
    promote: function(Client, types.PromoteInput): types.PromoteOutput, table
    rebootBroker: function(Client, types.RebootBrokerInput): types.RebootBrokerOutput, table
    updateBroker: function(Client, types.UpdateBrokerInput): types.UpdateBrokerOutput, table
    updateConfiguration: function(Client, types.UpdateConfigurationInput): types.UpdateConfigurationOutput, table
    updateUser: function(Client, types.UpdateUserInput): types.UpdateUserOutput, table
end

local record M
    new: function(table): Client
end

return M
