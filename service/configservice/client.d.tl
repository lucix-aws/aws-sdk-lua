local types = require("configservice.types")

local record Client
    associateResourceTypes: function(Client, types.AssociateResourceTypesInput): types.AssociateResourceTypesOutput, table
    batchGetAggregateResourceConfig: function(Client, types.BatchGetAggregateResourceConfigInput): types.BatchGetAggregateResourceConfigOutput, table
    batchGetResourceConfig: function(Client, types.BatchGetResourceConfigInput): types.BatchGetResourceConfigOutput, table
    deleteAggregationAuthorization: function(Client, types.DeleteAggregationAuthorizationInput): types.DeleteAggregationAuthorizationOutput, table
    deleteConfigRule: function(Client, types.DeleteConfigRuleInput): types.DeleteConfigRuleOutput, table
    deleteConfigurationAggregator: function(Client, types.DeleteConfigurationAggregatorInput): types.DeleteConfigurationAggregatorOutput, table
    deleteConfigurationRecorder: function(Client, types.DeleteConfigurationRecorderInput): types.DeleteConfigurationRecorderOutput, table
    deleteConformancePack: function(Client, types.DeleteConformancePackInput): types.DeleteConformancePackOutput, table
    deleteDeliveryChannel: function(Client, types.DeleteDeliveryChannelInput): types.DeleteDeliveryChannelOutput, table
    deleteEvaluationResults: function(Client, types.DeleteEvaluationResultsInput): types.DeleteEvaluationResultsOutput, table
    deleteOrganizationConfigRule: function(Client, types.DeleteOrganizationConfigRuleInput): types.DeleteOrganizationConfigRuleOutput, table
    deleteOrganizationConformancePack: function(Client, types.DeleteOrganizationConformancePackInput): types.DeleteOrganizationConformancePackOutput, table
    deletePendingAggregationRequest: function(Client, types.DeletePendingAggregationRequestInput): types.DeletePendingAggregationRequestOutput, table
    deleteRemediationConfiguration: function(Client, types.DeleteRemediationConfigurationInput): types.DeleteRemediationConfigurationOutput, table
    deleteRemediationExceptions: function(Client, types.DeleteRemediationExceptionsInput): types.DeleteRemediationExceptionsOutput, table
    deleteResourceConfig: function(Client, types.DeleteResourceConfigInput): types.DeleteResourceConfigOutput, table
    deleteRetentionConfiguration: function(Client, types.DeleteRetentionConfigurationInput): types.DeleteRetentionConfigurationOutput, table
    deleteServiceLinkedConfigurationRecorder: function(Client, types.DeleteServiceLinkedConfigurationRecorderInput): types.DeleteServiceLinkedConfigurationRecorderOutput, table
    deleteStoredQuery: function(Client, types.DeleteStoredQueryInput): types.DeleteStoredQueryOutput, table
    deliverConfigSnapshot: function(Client, types.DeliverConfigSnapshotInput): types.DeliverConfigSnapshotOutput, table
    describeAggregateComplianceByConfigRules: function(Client, types.DescribeAggregateComplianceByConfigRulesInput): types.DescribeAggregateComplianceByConfigRulesOutput, table
    describeAggregateComplianceByConformancePacks: function(Client, types.DescribeAggregateComplianceByConformancePacksInput): types.DescribeAggregateComplianceByConformancePacksOutput, table
    describeAggregationAuthorizations: function(Client, types.DescribeAggregationAuthorizationsInput): types.DescribeAggregationAuthorizationsOutput, table
    describeComplianceByConfigRule: function(Client, types.DescribeComplianceByConfigRuleInput): types.DescribeComplianceByConfigRuleOutput, table
    describeComplianceByResource: function(Client, types.DescribeComplianceByResourceInput): types.DescribeComplianceByResourceOutput, table
    describeConfigRuleEvaluationStatus: function(Client, types.DescribeConfigRuleEvaluationStatusInput): types.DescribeConfigRuleEvaluationStatusOutput, table
    describeConfigRules: function(Client, types.DescribeConfigRulesInput): types.DescribeConfigRulesOutput, table
    describeConfigurationAggregators: function(Client, types.DescribeConfigurationAggregatorsInput): types.DescribeConfigurationAggregatorsOutput, table
    describeConfigurationAggregatorSourcesStatus: function(Client, types.DescribeConfigurationAggregatorSourcesStatusInput): types.DescribeConfigurationAggregatorSourcesStatusOutput, table
    describeConfigurationRecorders: function(Client, types.DescribeConfigurationRecordersInput): types.DescribeConfigurationRecordersOutput, table
    describeConfigurationRecorderStatus: function(Client, types.DescribeConfigurationRecorderStatusInput): types.DescribeConfigurationRecorderStatusOutput, table
    describeConformancePackCompliance: function(Client, types.DescribeConformancePackComplianceInput): types.DescribeConformancePackComplianceOutput, table
    describeConformancePacks: function(Client, types.DescribeConformancePacksInput): types.DescribeConformancePacksOutput, table
    describeConformancePackStatus: function(Client, types.DescribeConformancePackStatusInput): types.DescribeConformancePackStatusOutput, table
    describeDeliveryChannels: function(Client, types.DescribeDeliveryChannelsInput): types.DescribeDeliveryChannelsOutput, table
    describeDeliveryChannelStatus: function(Client, types.DescribeDeliveryChannelStatusInput): types.DescribeDeliveryChannelStatusOutput, table
    describeOrganizationConfigRules: function(Client, types.DescribeOrganizationConfigRulesInput): types.DescribeOrganizationConfigRulesOutput, table
    describeOrganizationConfigRuleStatuses: function(Client, types.DescribeOrganizationConfigRuleStatusesInput): types.DescribeOrganizationConfigRuleStatusesOutput, table
    describeOrganizationConformancePacks: function(Client, types.DescribeOrganizationConformancePacksInput): types.DescribeOrganizationConformancePacksOutput, table
    describeOrganizationConformancePackStatuses: function(Client, types.DescribeOrganizationConformancePackStatusesInput): types.DescribeOrganizationConformancePackStatusesOutput, table
    describePendingAggregationRequests: function(Client, types.DescribePendingAggregationRequestsInput): types.DescribePendingAggregationRequestsOutput, table
    describeRemediationConfigurations: function(Client, types.DescribeRemediationConfigurationsInput): types.DescribeRemediationConfigurationsOutput, table
    describeRemediationExceptions: function(Client, types.DescribeRemediationExceptionsInput): types.DescribeRemediationExceptionsOutput, table
    describeRemediationExecutionStatus: function(Client, types.DescribeRemediationExecutionStatusInput): types.DescribeRemediationExecutionStatusOutput, table
    describeRetentionConfigurations: function(Client, types.DescribeRetentionConfigurationsInput): types.DescribeRetentionConfigurationsOutput, table
    disassociateResourceTypes: function(Client, types.DisassociateResourceTypesInput): types.DisassociateResourceTypesOutput, table
    getAggregateComplianceDetailsByConfigRule: function(Client, types.GetAggregateComplianceDetailsByConfigRuleInput): types.GetAggregateComplianceDetailsByConfigRuleOutput, table
    getAggregateConfigRuleComplianceSummary: function(Client, types.GetAggregateConfigRuleComplianceSummaryInput): types.GetAggregateConfigRuleComplianceSummaryOutput, table
    getAggregateConformancePackComplianceSummary: function(Client, types.GetAggregateConformancePackComplianceSummaryInput): types.GetAggregateConformancePackComplianceSummaryOutput, table
    getAggregateDiscoveredResourceCounts: function(Client, types.GetAggregateDiscoveredResourceCountsInput): types.GetAggregateDiscoveredResourceCountsOutput, table
    getAggregateResourceConfig: function(Client, types.GetAggregateResourceConfigInput): types.GetAggregateResourceConfigOutput, table
    getComplianceDetailsByConfigRule: function(Client, types.GetComplianceDetailsByConfigRuleInput): types.GetComplianceDetailsByConfigRuleOutput, table
    getComplianceDetailsByResource: function(Client, types.GetComplianceDetailsByResourceInput): types.GetComplianceDetailsByResourceOutput, table
    getComplianceSummaryByConfigRule: function(Client, types.GetComplianceSummaryByConfigRuleInput): types.GetComplianceSummaryByConfigRuleOutput, table
    getComplianceSummaryByResourceType: function(Client, types.GetComplianceSummaryByResourceTypeInput): types.GetComplianceSummaryByResourceTypeOutput, table
    getConformancePackComplianceDetails: function(Client, types.GetConformancePackComplianceDetailsInput): types.GetConformancePackComplianceDetailsOutput, table
    getConformancePackComplianceSummary: function(Client, types.GetConformancePackComplianceSummaryInput): types.GetConformancePackComplianceSummaryOutput, table
    getCustomRulePolicy: function(Client, types.GetCustomRulePolicyInput): types.GetCustomRulePolicyOutput, table
    getDiscoveredResourceCounts: function(Client, types.GetDiscoveredResourceCountsInput): types.GetDiscoveredResourceCountsOutput, table
    getOrganizationConfigRuleDetailedStatus: function(Client, types.GetOrganizationConfigRuleDetailedStatusInput): types.GetOrganizationConfigRuleDetailedStatusOutput, table
    getOrganizationConformancePackDetailedStatus: function(Client, types.GetOrganizationConformancePackDetailedStatusInput): types.GetOrganizationConformancePackDetailedStatusOutput, table
    getOrganizationCustomRulePolicy: function(Client, types.GetOrganizationCustomRulePolicyInput): types.GetOrganizationCustomRulePolicyOutput, table
    getResourceConfigHistory: function(Client, types.GetResourceConfigHistoryInput): types.GetResourceConfigHistoryOutput, table
    getResourceEvaluationSummary: function(Client, types.GetResourceEvaluationSummaryInput): types.GetResourceEvaluationSummaryOutput, table
    getStoredQuery: function(Client, types.GetStoredQueryInput): types.GetStoredQueryOutput, table
    listAggregateDiscoveredResources: function(Client, types.ListAggregateDiscoveredResourcesInput): types.ListAggregateDiscoveredResourcesOutput, table
    listConfigurationRecorders: function(Client, types.ListConfigurationRecordersInput): types.ListConfigurationRecordersOutput, table
    listConformancePackComplianceScores: function(Client, types.ListConformancePackComplianceScoresInput): types.ListConformancePackComplianceScoresOutput, table
    listDiscoveredResources: function(Client, types.ListDiscoveredResourcesInput): types.ListDiscoveredResourcesOutput, table
    listResourceEvaluations: function(Client, types.ListResourceEvaluationsInput): types.ListResourceEvaluationsOutput, table
    listStoredQueries: function(Client, types.ListStoredQueriesInput): types.ListStoredQueriesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putAggregationAuthorization: function(Client, types.PutAggregationAuthorizationInput): types.PutAggregationAuthorizationOutput, table
    putConfigRule: function(Client, types.PutConfigRuleInput): types.PutConfigRuleOutput, table
    putConfigurationAggregator: function(Client, types.PutConfigurationAggregatorInput): types.PutConfigurationAggregatorOutput, table
    putConfigurationRecorder: function(Client, types.PutConfigurationRecorderInput): types.PutConfigurationRecorderOutput, table
    putConformancePack: function(Client, types.PutConformancePackInput): types.PutConformancePackOutput, table
    putDeliveryChannel: function(Client, types.PutDeliveryChannelInput): types.PutDeliveryChannelOutput, table
    putEvaluations: function(Client, types.PutEvaluationsInput): types.PutEvaluationsOutput, table
    putExternalEvaluation: function(Client, types.PutExternalEvaluationInput): types.PutExternalEvaluationOutput, table
    putOrganizationConfigRule: function(Client, types.PutOrganizationConfigRuleInput): types.PutOrganizationConfigRuleOutput, table
    putOrganizationConformancePack: function(Client, types.PutOrganizationConformancePackInput): types.PutOrganizationConformancePackOutput, table
    putRemediationConfigurations: function(Client, types.PutRemediationConfigurationsInput): types.PutRemediationConfigurationsOutput, table
    putRemediationExceptions: function(Client, types.PutRemediationExceptionsInput): types.PutRemediationExceptionsOutput, table
    putResourceConfig: function(Client, types.PutResourceConfigInput): types.PutResourceConfigOutput, table
    putRetentionConfiguration: function(Client, types.PutRetentionConfigurationInput): types.PutRetentionConfigurationOutput, table
    putServiceLinkedConfigurationRecorder: function(Client, types.PutServiceLinkedConfigurationRecorderInput): types.PutServiceLinkedConfigurationRecorderOutput, table
    putStoredQuery: function(Client, types.PutStoredQueryInput): types.PutStoredQueryOutput, table
    selectAggregateResourceConfig: function(Client, types.SelectAggregateResourceConfigInput): types.SelectAggregateResourceConfigOutput, table
    selectResourceConfig: function(Client, types.SelectResourceConfigInput): types.SelectResourceConfigOutput, table
    startConfigRulesEvaluation: function(Client, types.StartConfigRulesEvaluationInput): types.StartConfigRulesEvaluationOutput, table
    startConfigurationRecorder: function(Client, types.StartConfigurationRecorderInput): types.StartConfigurationRecorderOutput, table
    startRemediationExecution: function(Client, types.StartRemediationExecutionInput): types.StartRemediationExecutionOutput, table
    startResourceEvaluation: function(Client, types.StartResourceEvaluationInput): types.StartResourceEvaluationOutput, table
    stopConfigurationRecorder: function(Client, types.StopConfigurationRecorderInput): types.StopConfigurationRecorderOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
