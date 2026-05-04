local types = require("pinpointemail.types")

local record Client
    createConfigurationSet: function(Client, types.CreateConfigurationSetInput): types.CreateConfigurationSetOutput, table
    createConfigurationSetEventDestination: function(Client, types.CreateConfigurationSetEventDestinationInput): types.CreateConfigurationSetEventDestinationOutput, table
    createDedicatedIpPool: function(Client, types.CreateDedicatedIpPoolInput): types.CreateDedicatedIpPoolOutput, table
    createDeliverabilityTestReport: function(Client, types.CreateDeliverabilityTestReportInput): types.CreateDeliverabilityTestReportOutput, table
    createEmailIdentity: function(Client, types.CreateEmailIdentityInput): types.CreateEmailIdentityOutput, table
    deleteConfigurationSet: function(Client, types.DeleteConfigurationSetInput): types.DeleteConfigurationSetOutput, table
    deleteConfigurationSetEventDestination: function(Client, types.DeleteConfigurationSetEventDestinationInput): types.DeleteConfigurationSetEventDestinationOutput, table
    deleteDedicatedIpPool: function(Client, types.DeleteDedicatedIpPoolInput): types.DeleteDedicatedIpPoolOutput, table
    deleteEmailIdentity: function(Client, types.DeleteEmailIdentityInput): types.DeleteEmailIdentityOutput, table
    getAccount: function(Client, types.GetAccountInput): types.GetAccountOutput, table
    getBlacklistReports: function(Client, types.GetBlacklistReportsInput): types.GetBlacklistReportsOutput, table
    getConfigurationSet: function(Client, types.GetConfigurationSetInput): types.GetConfigurationSetOutput, table
    getConfigurationSetEventDestinations: function(Client, types.GetConfigurationSetEventDestinationsInput): types.GetConfigurationSetEventDestinationsOutput, table
    getDedicatedIp: function(Client, types.GetDedicatedIpInput): types.GetDedicatedIpOutput, table
    getDedicatedIps: function(Client, types.GetDedicatedIpsInput): types.GetDedicatedIpsOutput, table
    getDeliverabilityDashboardOptions: function(Client, types.GetDeliverabilityDashboardOptionsInput): types.GetDeliverabilityDashboardOptionsOutput, table
    getDeliverabilityTestReport: function(Client, types.GetDeliverabilityTestReportInput): types.GetDeliverabilityTestReportOutput, table
    getDomainDeliverabilityCampaign: function(Client, types.GetDomainDeliverabilityCampaignInput): types.GetDomainDeliverabilityCampaignOutput, table
    getDomainStatisticsReport: function(Client, types.GetDomainStatisticsReportInput): types.GetDomainStatisticsReportOutput, table
    getEmailIdentity: function(Client, types.GetEmailIdentityInput): types.GetEmailIdentityOutput, table
    listConfigurationSets: function(Client, types.ListConfigurationSetsInput): types.ListConfigurationSetsOutput, table
    listDedicatedIpPools: function(Client, types.ListDedicatedIpPoolsInput): types.ListDedicatedIpPoolsOutput, table
    listDeliverabilityTestReports: function(Client, types.ListDeliverabilityTestReportsInput): types.ListDeliverabilityTestReportsOutput, table
    listDomainDeliverabilityCampaigns: function(Client, types.ListDomainDeliverabilityCampaignsInput): types.ListDomainDeliverabilityCampaignsOutput, table
    listEmailIdentities: function(Client, types.ListEmailIdentitiesInput): types.ListEmailIdentitiesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putAccountDedicatedIpWarmupAttributes: function(Client, types.PutAccountDedicatedIpWarmupAttributesInput): types.PutAccountDedicatedIpWarmupAttributesOutput, table
    putAccountSendingAttributes: function(Client, types.PutAccountSendingAttributesInput): types.PutAccountSendingAttributesOutput, table
    putConfigurationSetDeliveryOptions: function(Client, types.PutConfigurationSetDeliveryOptionsInput): types.PutConfigurationSetDeliveryOptionsOutput, table
    putConfigurationSetReputationOptions: function(Client, types.PutConfigurationSetReputationOptionsInput): types.PutConfigurationSetReputationOptionsOutput, table
    putConfigurationSetSendingOptions: function(Client, types.PutConfigurationSetSendingOptionsInput): types.PutConfigurationSetSendingOptionsOutput, table
    putConfigurationSetTrackingOptions: function(Client, types.PutConfigurationSetTrackingOptionsInput): types.PutConfigurationSetTrackingOptionsOutput, table
    putDedicatedIpInPool: function(Client, types.PutDedicatedIpInPoolInput): types.PutDedicatedIpInPoolOutput, table
    putDedicatedIpWarmupAttributes: function(Client, types.PutDedicatedIpWarmupAttributesInput): types.PutDedicatedIpWarmupAttributesOutput, table
    putDeliverabilityDashboardOption: function(Client, types.PutDeliverabilityDashboardOptionInput): types.PutDeliverabilityDashboardOptionOutput, table
    putEmailIdentityDkimAttributes: function(Client, types.PutEmailIdentityDkimAttributesInput): types.PutEmailIdentityDkimAttributesOutput, table
    putEmailIdentityFeedbackAttributes: function(Client, types.PutEmailIdentityFeedbackAttributesInput): types.PutEmailIdentityFeedbackAttributesOutput, table
    putEmailIdentityMailFromAttributes: function(Client, types.PutEmailIdentityMailFromAttributesInput): types.PutEmailIdentityMailFromAttributesOutput, table
    sendEmail: function(Client, types.SendEmailInput): types.SendEmailOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateConfigurationSetEventDestination: function(Client, types.UpdateConfigurationSetEventDestinationInput): types.UpdateConfigurationSetEventDestinationOutput, table
end

local record M
    new: function(table): Client
end

return M
