local types = require("sns.types")

local record Client
    addPermission: function(Client, types.AddPermissionInput): types.AddPermissionOutput, table
    checkIfPhoneNumberIsOptedOut: function(Client, types.CheckIfPhoneNumberIsOptedOutInput): types.CheckIfPhoneNumberIsOptedOutOutput, table
    confirmSubscription: function(Client, types.ConfirmSubscriptionInput): types.ConfirmSubscriptionOutput, table
    createPlatformApplication: function(Client, types.CreatePlatformApplicationInput): types.CreatePlatformApplicationOutput, table
    createPlatformEndpoint: function(Client, types.CreatePlatformEndpointInput): types.CreatePlatformEndpointOutput, table
    createSMSSandboxPhoneNumber: function(Client, types.CreateSMSSandboxPhoneNumberInput): types.CreateSMSSandboxPhoneNumberOutput, table
    createTopic: function(Client, types.CreateTopicInput): types.CreateTopicOutput, table
    deleteEndpoint: function(Client, types.DeleteEndpointInput): types.DeleteEndpointOutput, table
    deletePlatformApplication: function(Client, types.DeletePlatformApplicationInput): types.DeletePlatformApplicationOutput, table
    deleteSMSSandboxPhoneNumber: function(Client, types.DeleteSMSSandboxPhoneNumberInput): types.DeleteSMSSandboxPhoneNumberOutput, table
    deleteTopic: function(Client, types.DeleteTopicInput): types.DeleteTopicOutput, table
    getDataProtectionPolicy: function(Client, types.GetDataProtectionPolicyInput): types.GetDataProtectionPolicyOutput, table
    getEndpointAttributes: function(Client, types.GetEndpointAttributesInput): types.GetEndpointAttributesOutput, table
    getPlatformApplicationAttributes: function(Client, types.GetPlatformApplicationAttributesInput): types.GetPlatformApplicationAttributesOutput, table
    getSMSAttributes: function(Client, types.GetSMSAttributesInput): types.GetSMSAttributesOutput, table
    getSMSSandboxAccountStatus: function(Client, types.GetSMSSandboxAccountStatusInput): types.GetSMSSandboxAccountStatusOutput, table
    getSubscriptionAttributes: function(Client, types.GetSubscriptionAttributesInput): types.GetSubscriptionAttributesOutput, table
    getTopicAttributes: function(Client, types.GetTopicAttributesInput): types.GetTopicAttributesOutput, table
    listEndpointsByPlatformApplication: function(Client, types.ListEndpointsByPlatformApplicationInput): types.ListEndpointsByPlatformApplicationOutput, table
    listOriginationNumbers: function(Client, types.ListOriginationNumbersInput): types.ListOriginationNumbersOutput, table
    listPhoneNumbersOptedOut: function(Client, types.ListPhoneNumbersOptedOutInput): types.ListPhoneNumbersOptedOutOutput, table
    listPlatformApplications: function(Client, types.ListPlatformApplicationsInput): types.ListPlatformApplicationsOutput, table
    listSMSSandboxPhoneNumbers: function(Client, types.ListSMSSandboxPhoneNumbersInput): types.ListSMSSandboxPhoneNumbersOutput, table
    listSubscriptions: function(Client, types.ListSubscriptionsInput): types.ListSubscriptionsOutput, table
    listSubscriptionsByTopic: function(Client, types.ListSubscriptionsByTopicInput): types.ListSubscriptionsByTopicOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTopics: function(Client, types.ListTopicsInput): types.ListTopicsOutput, table
    optInPhoneNumber: function(Client, types.OptInPhoneNumberInput): types.OptInPhoneNumberOutput, table
    publish: function(Client, types.PublishInput): types.PublishOutput, table
    publishBatch: function(Client, types.PublishBatchInput): types.PublishBatchOutput, table
    putDataProtectionPolicy: function(Client, types.PutDataProtectionPolicyInput): types.PutDataProtectionPolicyOutput, table
    removePermission: function(Client, types.RemovePermissionInput): types.RemovePermissionOutput, table
    setEndpointAttributes: function(Client, types.SetEndpointAttributesInput): types.SetEndpointAttributesOutput, table
    setPlatformApplicationAttributes: function(Client, types.SetPlatformApplicationAttributesInput): types.SetPlatformApplicationAttributesOutput, table
    setSMSAttributes: function(Client, types.SetSMSAttributesInput): types.SetSMSAttributesOutput, table
    setSubscriptionAttributes: function(Client, types.SetSubscriptionAttributesInput): types.SetSubscriptionAttributesOutput, table
    setTopicAttributes: function(Client, types.SetTopicAttributesInput): types.SetTopicAttributesOutput, table
    subscribe: function(Client, types.SubscribeInput): types.SubscribeOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    unsubscribe: function(Client, types.UnsubscribeInput): types.UnsubscribeOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    verifySMSSandboxPhoneNumber: function(Client, types.VerifySMSSandboxPhoneNumberInput): types.VerifySMSSandboxPhoneNumberOutput, table
end

local record M
    new: function(table): Client
end

return M
