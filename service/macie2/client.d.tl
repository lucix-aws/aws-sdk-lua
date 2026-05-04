local types = require("macie2.types")

local record Client
    acceptInvitation: function(Client, types.AcceptInvitationInput): types.AcceptInvitationOutput, table
    batchGetCustomDataIdentifiers: function(Client, types.BatchGetCustomDataIdentifiersInput): types.BatchGetCustomDataIdentifiersOutput, table
    batchUpdateAutomatedDiscoveryAccounts: function(Client, types.BatchUpdateAutomatedDiscoveryAccountsInput): types.BatchUpdateAutomatedDiscoveryAccountsOutput, table
    createAllowList: function(Client, types.CreateAllowListInput): types.CreateAllowListOutput, table
    createClassificationJob: function(Client, types.CreateClassificationJobInput): types.CreateClassificationJobOutput, table
    createCustomDataIdentifier: function(Client, types.CreateCustomDataIdentifierInput): types.CreateCustomDataIdentifierOutput, table
    createFindingsFilter: function(Client, types.CreateFindingsFilterInput): types.CreateFindingsFilterOutput, table
    createInvitations: function(Client, types.CreateInvitationsInput): types.CreateInvitationsOutput, table
    createMember: function(Client, types.CreateMemberInput): types.CreateMemberOutput, table
    createSampleFindings: function(Client, types.CreateSampleFindingsInput): types.CreateSampleFindingsOutput, table
    declineInvitations: function(Client, types.DeclineInvitationsInput): types.DeclineInvitationsOutput, table
    deleteAllowList: function(Client, types.DeleteAllowListInput): types.DeleteAllowListOutput, table
    deleteCustomDataIdentifier: function(Client, types.DeleteCustomDataIdentifierInput): types.DeleteCustomDataIdentifierOutput, table
    deleteFindingsFilter: function(Client, types.DeleteFindingsFilterInput): types.DeleteFindingsFilterOutput, table
    deleteInvitations: function(Client, types.DeleteInvitationsInput): types.DeleteInvitationsOutput, table
    deleteMember: function(Client, types.DeleteMemberInput): types.DeleteMemberOutput, table
    describeBuckets: function(Client, types.DescribeBucketsInput): types.DescribeBucketsOutput, table
    describeClassificationJob: function(Client, types.DescribeClassificationJobInput): types.DescribeClassificationJobOutput, table
    describeOrganizationConfiguration: function(Client, types.DescribeOrganizationConfigurationInput): types.DescribeOrganizationConfigurationOutput, table
    disableMacie: function(Client, types.DisableMacieInput): types.DisableMacieOutput, table
    disableOrganizationAdminAccount: function(Client, types.DisableOrganizationAdminAccountInput): types.DisableOrganizationAdminAccountOutput, table
    disassociateFromAdministratorAccount: function(Client, types.DisassociateFromAdministratorAccountInput): types.DisassociateFromAdministratorAccountOutput, table
    disassociateFromMasterAccount: function(Client, types.DisassociateFromMasterAccountInput): types.DisassociateFromMasterAccountOutput, table
    disassociateMember: function(Client, types.DisassociateMemberInput): types.DisassociateMemberOutput, table
    enableMacie: function(Client, types.EnableMacieInput): types.EnableMacieOutput, table
    enableOrganizationAdminAccount: function(Client, types.EnableOrganizationAdminAccountInput): types.EnableOrganizationAdminAccountOutput, table
    getAdministratorAccount: function(Client, types.GetAdministratorAccountInput): types.GetAdministratorAccountOutput, table
    getAllowList: function(Client, types.GetAllowListInput): types.GetAllowListOutput, table
    getAutomatedDiscoveryConfiguration: function(Client, types.GetAutomatedDiscoveryConfigurationInput): types.GetAutomatedDiscoveryConfigurationOutput, table
    getBucketStatistics: function(Client, types.GetBucketStatisticsInput): types.GetBucketStatisticsOutput, table
    getClassificationExportConfiguration: function(Client, types.GetClassificationExportConfigurationInput): types.GetClassificationExportConfigurationOutput, table
    getClassificationScope: function(Client, types.GetClassificationScopeInput): types.GetClassificationScopeOutput, table
    getCustomDataIdentifier: function(Client, types.GetCustomDataIdentifierInput): types.GetCustomDataIdentifierOutput, table
    getFindings: function(Client, types.GetFindingsInput): types.GetFindingsOutput, table
    getFindingsFilter: function(Client, types.GetFindingsFilterInput): types.GetFindingsFilterOutput, table
    getFindingsPublicationConfiguration: function(Client, types.GetFindingsPublicationConfigurationInput): types.GetFindingsPublicationConfigurationOutput, table
    getFindingStatistics: function(Client, types.GetFindingStatisticsInput): types.GetFindingStatisticsOutput, table
    getInvitationsCount: function(Client, types.GetInvitationsCountInput): types.GetInvitationsCountOutput, table
    getMacieSession: function(Client, types.GetMacieSessionInput): types.GetMacieSessionOutput, table
    getMasterAccount: function(Client, types.GetMasterAccountInput): types.GetMasterAccountOutput, table
    getMember: function(Client, types.GetMemberInput): types.GetMemberOutput, table
    getResourceProfile: function(Client, types.GetResourceProfileInput): types.GetResourceProfileOutput, table
    getRevealConfiguration: function(Client, types.GetRevealConfigurationInput): types.GetRevealConfigurationOutput, table
    getSensitiveDataOccurrences: function(Client, types.GetSensitiveDataOccurrencesInput): types.GetSensitiveDataOccurrencesOutput, table
    getSensitiveDataOccurrencesAvailability: function(Client, types.GetSensitiveDataOccurrencesAvailabilityInput): types.GetSensitiveDataOccurrencesAvailabilityOutput, table
    getSensitivityInspectionTemplate: function(Client, types.GetSensitivityInspectionTemplateInput): types.GetSensitivityInspectionTemplateOutput, table
    getUsageStatistics: function(Client, types.GetUsageStatisticsInput): types.GetUsageStatisticsOutput, table
    getUsageTotals: function(Client, types.GetUsageTotalsInput): types.GetUsageTotalsOutput, table
    listAllowLists: function(Client, types.ListAllowListsInput): types.ListAllowListsOutput, table
    listAutomatedDiscoveryAccounts: function(Client, types.ListAutomatedDiscoveryAccountsInput): types.ListAutomatedDiscoveryAccountsOutput, table
    listClassificationJobs: function(Client, types.ListClassificationJobsInput): types.ListClassificationJobsOutput, table
    listClassificationScopes: function(Client, types.ListClassificationScopesInput): types.ListClassificationScopesOutput, table
    listCustomDataIdentifiers: function(Client, types.ListCustomDataIdentifiersInput): types.ListCustomDataIdentifiersOutput, table
    listFindings: function(Client, types.ListFindingsInput): types.ListFindingsOutput, table
    listFindingsFilters: function(Client, types.ListFindingsFiltersInput): types.ListFindingsFiltersOutput, table
    listInvitations: function(Client, types.ListInvitationsInput): types.ListInvitationsOutput, table
    listManagedDataIdentifiers: function(Client, types.ListManagedDataIdentifiersInput): types.ListManagedDataIdentifiersOutput, table
    listMembers: function(Client, types.ListMembersInput): types.ListMembersOutput, table
    listOrganizationAdminAccounts: function(Client, types.ListOrganizationAdminAccountsInput): types.ListOrganizationAdminAccountsOutput, table
    listResourceProfileArtifacts: function(Client, types.ListResourceProfileArtifactsInput): types.ListResourceProfileArtifactsOutput, table
    listResourceProfileDetections: function(Client, types.ListResourceProfileDetectionsInput): types.ListResourceProfileDetectionsOutput, table
    listSensitivityInspectionTemplates: function(Client, types.ListSensitivityInspectionTemplatesInput): types.ListSensitivityInspectionTemplatesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putClassificationExportConfiguration: function(Client, types.PutClassificationExportConfigurationInput): types.PutClassificationExportConfigurationOutput, table
    putFindingsPublicationConfiguration: function(Client, types.PutFindingsPublicationConfigurationInput): types.PutFindingsPublicationConfigurationOutput, table
    searchResources: function(Client, types.SearchResourcesInput): types.SearchResourcesOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    testCustomDataIdentifier: function(Client, types.TestCustomDataIdentifierInput): types.TestCustomDataIdentifierOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAllowList: function(Client, types.UpdateAllowListInput): types.UpdateAllowListOutput, table
    updateAutomatedDiscoveryConfiguration: function(Client, types.UpdateAutomatedDiscoveryConfigurationInput): types.UpdateAutomatedDiscoveryConfigurationOutput, table
    updateClassificationJob: function(Client, types.UpdateClassificationJobInput): types.UpdateClassificationJobOutput, table
    updateClassificationScope: function(Client, types.UpdateClassificationScopeInput): types.UpdateClassificationScopeOutput, table
    updateFindingsFilter: function(Client, types.UpdateFindingsFilterInput): types.UpdateFindingsFilterOutput, table
    updateMacieSession: function(Client, types.UpdateMacieSessionInput): types.UpdateMacieSessionOutput, table
    updateMemberSession: function(Client, types.UpdateMemberSessionInput): types.UpdateMemberSessionOutput, table
    updateOrganizationConfiguration: function(Client, types.UpdateOrganizationConfigurationInput): types.UpdateOrganizationConfigurationOutput, table
    updateResourceProfile: function(Client, types.UpdateResourceProfileInput): types.UpdateResourceProfileOutput, table
    updateResourceProfileDetections: function(Client, types.UpdateResourceProfileDetectionsInput): types.UpdateResourceProfileDetectionsOutput, table
    updateRevealConfiguration: function(Client, types.UpdateRevealConfigurationInput): types.UpdateRevealConfigurationOutput, table
    updateSensitivityInspectionTemplate: function(Client, types.UpdateSensitivityInspectionTemplateInput): types.UpdateSensitivityInspectionTemplateOutput, table
end

local record M
    new: function(table): Client
end

return M
