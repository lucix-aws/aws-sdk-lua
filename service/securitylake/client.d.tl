local types = require("securitylake.types")

local record Client
    createAwsLogSource: function(Client, types.CreateAwsLogSourceInput): types.CreateAwsLogSourceOutput, table
    createCustomLogSource: function(Client, types.CreateCustomLogSourceInput): types.CreateCustomLogSourceOutput, table
    createDataLake: function(Client, types.CreateDataLakeInput): types.CreateDataLakeOutput, table
    createDataLakeExceptionSubscription: function(Client, types.CreateDataLakeExceptionSubscriptionInput): types.CreateDataLakeExceptionSubscriptionOutput, table
    createDataLakeOrganizationConfiguration: function(Client, types.CreateDataLakeOrganizationConfigurationInput): types.CreateDataLakeOrganizationConfigurationOutput, table
    createSubscriber: function(Client, types.CreateSubscriberInput): types.CreateSubscriberOutput, table
    createSubscriberNotification: function(Client, types.CreateSubscriberNotificationInput): types.CreateSubscriberNotificationOutput, table
    deleteAwsLogSource: function(Client, types.DeleteAwsLogSourceInput): types.DeleteAwsLogSourceOutput, table
    deleteCustomLogSource: function(Client, types.DeleteCustomLogSourceInput): types.DeleteCustomLogSourceOutput, table
    deleteDataLake: function(Client, types.DeleteDataLakeInput): types.DeleteDataLakeOutput, table
    deleteDataLakeExceptionSubscription: function(Client, types.DeleteDataLakeExceptionSubscriptionInput): types.DeleteDataLakeExceptionSubscriptionOutput, table
    deleteDataLakeOrganizationConfiguration: function(Client, types.DeleteDataLakeOrganizationConfigurationInput): types.DeleteDataLakeOrganizationConfigurationOutput, table
    deleteSubscriber: function(Client, types.DeleteSubscriberInput): types.DeleteSubscriberOutput, table
    deleteSubscriberNotification: function(Client, types.DeleteSubscriberNotificationInput): types.DeleteSubscriberNotificationOutput, table
    deregisterDataLakeDelegatedAdministrator: function(Client, types.DeregisterDataLakeDelegatedAdministratorInput): types.DeregisterDataLakeDelegatedAdministratorOutput, table
    getDataLakeExceptionSubscription: function(Client, types.GetDataLakeExceptionSubscriptionInput): types.GetDataLakeExceptionSubscriptionOutput, table
    getDataLakeOrganizationConfiguration: function(Client, types.GetDataLakeOrganizationConfigurationInput): types.GetDataLakeOrganizationConfigurationOutput, table
    getDataLakeSources: function(Client, types.GetDataLakeSourcesInput): types.GetDataLakeSourcesOutput, table
    getSubscriber: function(Client, types.GetSubscriberInput): types.GetSubscriberOutput, table
    listDataLakeExceptions: function(Client, types.ListDataLakeExceptionsInput): types.ListDataLakeExceptionsOutput, table
    listDataLakes: function(Client, types.ListDataLakesInput): types.ListDataLakesOutput, table
    listLogSources: function(Client, types.ListLogSourcesInput): types.ListLogSourcesOutput, table
    listSubscribers: function(Client, types.ListSubscribersInput): types.ListSubscribersOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    registerDataLakeDelegatedAdministrator: function(Client, types.RegisterDataLakeDelegatedAdministratorInput): types.RegisterDataLakeDelegatedAdministratorOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateDataLake: function(Client, types.UpdateDataLakeInput): types.UpdateDataLakeOutput, table
    updateDataLakeExceptionSubscription: function(Client, types.UpdateDataLakeExceptionSubscriptionInput): types.UpdateDataLakeExceptionSubscriptionOutput, table
    updateSubscriber: function(Client, types.UpdateSubscriberInput): types.UpdateSubscriberOutput, table
    updateSubscriberNotification: function(Client, types.UpdateSubscriberNotificationInput): types.UpdateSubscriberNotificationOutput, table
end

local record M
    new: function(table): Client
end

return M
