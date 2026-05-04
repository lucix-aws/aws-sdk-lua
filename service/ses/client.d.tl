local types = require("ses.types")

local record Client
    cloneReceiptRuleSet: function(Client, types.CloneReceiptRuleSetInput): types.CloneReceiptRuleSetOutput, table
    createConfigurationSet: function(Client, types.CreateConfigurationSetInput): types.CreateConfigurationSetOutput, table
    createConfigurationSetEventDestination: function(Client, types.CreateConfigurationSetEventDestinationInput): types.CreateConfigurationSetEventDestinationOutput, table
    createConfigurationSetTrackingOptions: function(Client, types.CreateConfigurationSetTrackingOptionsInput): types.CreateConfigurationSetTrackingOptionsOutput, table
    createCustomVerificationEmailTemplate: function(Client, types.CreateCustomVerificationEmailTemplateInput): types.CreateCustomVerificationEmailTemplateOutput, table
    createReceiptFilter: function(Client, types.CreateReceiptFilterInput): types.CreateReceiptFilterOutput, table
    createReceiptRule: function(Client, types.CreateReceiptRuleInput): types.CreateReceiptRuleOutput, table
    createReceiptRuleSet: function(Client, types.CreateReceiptRuleSetInput): types.CreateReceiptRuleSetOutput, table
    createTemplate: function(Client, types.CreateTemplateInput): types.CreateTemplateOutput, table
    deleteConfigurationSet: function(Client, types.DeleteConfigurationSetInput): types.DeleteConfigurationSetOutput, table
    deleteConfigurationSetEventDestination: function(Client, types.DeleteConfigurationSetEventDestinationInput): types.DeleteConfigurationSetEventDestinationOutput, table
    deleteConfigurationSetTrackingOptions: function(Client, types.DeleteConfigurationSetTrackingOptionsInput): types.DeleteConfigurationSetTrackingOptionsOutput, table
    deleteCustomVerificationEmailTemplate: function(Client, types.DeleteCustomVerificationEmailTemplateInput): types.DeleteCustomVerificationEmailTemplateOutput, table
    deleteIdentity: function(Client, types.DeleteIdentityInput): types.DeleteIdentityOutput, table
    deleteIdentityPolicy: function(Client, types.DeleteIdentityPolicyInput): types.DeleteIdentityPolicyOutput, table
    deleteReceiptFilter: function(Client, types.DeleteReceiptFilterInput): types.DeleteReceiptFilterOutput, table
    deleteReceiptRule: function(Client, types.DeleteReceiptRuleInput): types.DeleteReceiptRuleOutput, table
    deleteReceiptRuleSet: function(Client, types.DeleteReceiptRuleSetInput): types.DeleteReceiptRuleSetOutput, table
    deleteTemplate: function(Client, types.DeleteTemplateInput): types.DeleteTemplateOutput, table
    deleteVerifiedEmailAddress: function(Client, types.DeleteVerifiedEmailAddressInput): types.DeleteVerifiedEmailAddressOutput, table
    describeActiveReceiptRuleSet: function(Client, types.DescribeActiveReceiptRuleSetInput): types.DescribeActiveReceiptRuleSetOutput, table
    describeConfigurationSet: function(Client, types.DescribeConfigurationSetInput): types.DescribeConfigurationSetOutput, table
    describeReceiptRule: function(Client, types.DescribeReceiptRuleInput): types.DescribeReceiptRuleOutput, table
    describeReceiptRuleSet: function(Client, types.DescribeReceiptRuleSetInput): types.DescribeReceiptRuleSetOutput, table
    getAccountSendingEnabled: function(Client, types.GetAccountSendingEnabledInput): types.GetAccountSendingEnabledOutput, table
    getCustomVerificationEmailTemplate: function(Client, types.GetCustomVerificationEmailTemplateInput): types.GetCustomVerificationEmailTemplateOutput, table
    getIdentityDkimAttributes: function(Client, types.GetIdentityDkimAttributesInput): types.GetIdentityDkimAttributesOutput, table
    getIdentityMailFromDomainAttributes: function(Client, types.GetIdentityMailFromDomainAttributesInput): types.GetIdentityMailFromDomainAttributesOutput, table
    getIdentityNotificationAttributes: function(Client, types.GetIdentityNotificationAttributesInput): types.GetIdentityNotificationAttributesOutput, table
    getIdentityPolicies: function(Client, types.GetIdentityPoliciesInput): types.GetIdentityPoliciesOutput, table
    getIdentityVerificationAttributes: function(Client, types.GetIdentityVerificationAttributesInput): types.GetIdentityVerificationAttributesOutput, table
    getSendQuota: function(Client, types.GetSendQuotaInput): types.GetSendQuotaOutput, table
    getSendStatistics: function(Client, types.GetSendStatisticsInput): types.GetSendStatisticsOutput, table
    getTemplate: function(Client, types.GetTemplateInput): types.GetTemplateOutput, table
    listConfigurationSets: function(Client, types.ListConfigurationSetsInput): types.ListConfigurationSetsOutput, table
    listCustomVerificationEmailTemplates: function(Client, types.ListCustomVerificationEmailTemplatesInput): types.ListCustomVerificationEmailTemplatesOutput, table
    listIdentities: function(Client, types.ListIdentitiesInput): types.ListIdentitiesOutput, table
    listIdentityPolicies: function(Client, types.ListIdentityPoliciesInput): types.ListIdentityPoliciesOutput, table
    listReceiptFilters: function(Client, types.ListReceiptFiltersInput): types.ListReceiptFiltersOutput, table
    listReceiptRuleSets: function(Client, types.ListReceiptRuleSetsInput): types.ListReceiptRuleSetsOutput, table
    listTemplates: function(Client, types.ListTemplatesInput): types.ListTemplatesOutput, table
    listVerifiedEmailAddresses: function(Client, types.ListVerifiedEmailAddressesInput): types.ListVerifiedEmailAddressesOutput, table
    putConfigurationSetDeliveryOptions: function(Client, types.PutConfigurationSetDeliveryOptionsInput): types.PutConfigurationSetDeliveryOptionsOutput, table
    putIdentityPolicy: function(Client, types.PutIdentityPolicyInput): types.PutIdentityPolicyOutput, table
    reorderReceiptRuleSet: function(Client, types.ReorderReceiptRuleSetInput): types.ReorderReceiptRuleSetOutput, table
    sendBounce: function(Client, types.SendBounceInput): types.SendBounceOutput, table
    sendBulkTemplatedEmail: function(Client, types.SendBulkTemplatedEmailInput): types.SendBulkTemplatedEmailOutput, table
    sendCustomVerificationEmail: function(Client, types.SendCustomVerificationEmailInput): types.SendCustomVerificationEmailOutput, table
    sendEmail: function(Client, types.SendEmailInput): types.SendEmailOutput, table
    sendRawEmail: function(Client, types.SendRawEmailInput): types.SendRawEmailOutput, table
    sendTemplatedEmail: function(Client, types.SendTemplatedEmailInput): types.SendTemplatedEmailOutput, table
    setActiveReceiptRuleSet: function(Client, types.SetActiveReceiptRuleSetInput): types.SetActiveReceiptRuleSetOutput, table
    setIdentityDkimEnabled: function(Client, types.SetIdentityDkimEnabledInput): types.SetIdentityDkimEnabledOutput, table
    setIdentityFeedbackForwardingEnabled: function(Client, types.SetIdentityFeedbackForwardingEnabledInput): types.SetIdentityFeedbackForwardingEnabledOutput, table
    setIdentityHeadersInNotificationsEnabled: function(Client, types.SetIdentityHeadersInNotificationsEnabledInput): types.SetIdentityHeadersInNotificationsEnabledOutput, table
    setIdentityMailFromDomain: function(Client, types.SetIdentityMailFromDomainInput): types.SetIdentityMailFromDomainOutput, table
    setIdentityNotificationTopic: function(Client, types.SetIdentityNotificationTopicInput): types.SetIdentityNotificationTopicOutput, table
    setReceiptRulePosition: function(Client, types.SetReceiptRulePositionInput): types.SetReceiptRulePositionOutput, table
    testRenderTemplate: function(Client, types.TestRenderTemplateInput): types.TestRenderTemplateOutput, table
    updateAccountSendingEnabled: function(Client, types.UpdateAccountSendingEnabledInput): types.UpdateAccountSendingEnabledOutput, table
    updateConfigurationSetEventDestination: function(Client, types.UpdateConfigurationSetEventDestinationInput): types.UpdateConfigurationSetEventDestinationOutput, table
    updateConfigurationSetReputationMetricsEnabled: function(Client, types.UpdateConfigurationSetReputationMetricsEnabledInput): types.UpdateConfigurationSetReputationMetricsEnabledOutput, table
    updateConfigurationSetSendingEnabled: function(Client, types.UpdateConfigurationSetSendingEnabledInput): types.UpdateConfigurationSetSendingEnabledOutput, table
    updateConfigurationSetTrackingOptions: function(Client, types.UpdateConfigurationSetTrackingOptionsInput): types.UpdateConfigurationSetTrackingOptionsOutput, table
    updateCustomVerificationEmailTemplate: function(Client, types.UpdateCustomVerificationEmailTemplateInput): types.UpdateCustomVerificationEmailTemplateOutput, table
    updateReceiptRule: function(Client, types.UpdateReceiptRuleInput): types.UpdateReceiptRuleOutput, table
    updateTemplate: function(Client, types.UpdateTemplateInput): types.UpdateTemplateOutput, table
    verifyDomainDkim: function(Client, types.VerifyDomainDkimInput): types.VerifyDomainDkimOutput, table
    verifyDomainIdentity: function(Client, types.VerifyDomainIdentityInput): types.VerifyDomainIdentityOutput, table
    verifyEmailAddress: function(Client, types.VerifyEmailAddressInput): types.VerifyEmailAddressOutput, table
    verifyEmailIdentity: function(Client, types.VerifyEmailIdentityInput): types.VerifyEmailIdentityOutput, table
end

local record M
    new: function(table): Client
end

return M
