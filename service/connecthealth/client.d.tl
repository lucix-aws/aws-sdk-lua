local types = require("connecthealth.types")

local record Client
    activateSubscription: function(Client, types.ActivateSubscriptionInput): types.ActivateSubscriptionOutput, table
    createDomain: function(Client, types.CreateDomainInput): types.CreateDomainOutput, table
    createSubscription: function(Client, types.CreateSubscriptionInput): types.CreateSubscriptionOutput, table
    deactivateSubscription: function(Client, types.DeactivateSubscriptionInput): types.DeactivateSubscriptionOutput, table
    deleteDomain: function(Client, types.DeleteDomainInput): types.DeleteDomainOutput, table
    getDomain: function(Client, types.GetDomainInput): types.GetDomainOutput, table
    getMedicalScribeListeningSession: function(Client, types.GetMedicalScribeListeningSessionInput): types.GetMedicalScribeListeningSessionOutput, table
    getPatientInsightsJob: function(Client, types.GetPatientInsightsJobInput): types.GetPatientInsightsJobOutput, table
    getSubscription: function(Client, types.GetSubscriptionInput): types.GetSubscriptionOutput, table
    listDomains: function(Client, types.ListDomainsInput): types.ListDomainsOutput, table
    listSubscriptions: function(Client, types.ListSubscriptionsInput): types.ListSubscriptionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startMedicalScribeListeningSession: function(Client, types.StartMedicalScribeListeningSessionInput): types.StartMedicalScribeListeningSessionOutput, table
    startPatientInsightsJob: function(Client, types.StartPatientInsightsJobInput): types.StartPatientInsightsJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
