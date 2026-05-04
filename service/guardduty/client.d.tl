local types = require("guardduty.types")

local record Client
    acceptAdministratorInvitation: function(Client, types.AcceptAdministratorInvitationInput): types.AcceptAdministratorInvitationOutput, table
    acceptInvitation: function(Client, types.AcceptInvitationInput): types.AcceptInvitationOutput, table
    archiveFindings: function(Client, types.ArchiveFindingsInput): types.ArchiveFindingsOutput, table
    createDetector: function(Client, types.CreateDetectorInput): types.CreateDetectorOutput, table
    createFilter: function(Client, types.CreateFilterInput): types.CreateFilterOutput, table
    createIPSet: function(Client, types.CreateIPSetInput): types.CreateIPSetOutput, table
    createMalwareProtectionPlan: function(Client, types.CreateMalwareProtectionPlanInput): types.CreateMalwareProtectionPlanOutput, table
    createMembers: function(Client, types.CreateMembersInput): types.CreateMembersOutput, table
    createPublishingDestination: function(Client, types.CreatePublishingDestinationInput): types.CreatePublishingDestinationOutput, table
    createSampleFindings: function(Client, types.CreateSampleFindingsInput): types.CreateSampleFindingsOutput, table
    createThreatEntitySet: function(Client, types.CreateThreatEntitySetInput): types.CreateThreatEntitySetOutput, table
    createThreatIntelSet: function(Client, types.CreateThreatIntelSetInput): types.CreateThreatIntelSetOutput, table
    createTrustedEntitySet: function(Client, types.CreateTrustedEntitySetInput): types.CreateTrustedEntitySetOutput, table
    declineInvitations: function(Client, types.DeclineInvitationsInput): types.DeclineInvitationsOutput, table
    deleteDetector: function(Client, types.DeleteDetectorInput): types.DeleteDetectorOutput, table
    deleteFilter: function(Client, types.DeleteFilterInput): types.DeleteFilterOutput, table
    deleteInvitations: function(Client, types.DeleteInvitationsInput): types.DeleteInvitationsOutput, table
    deleteIPSet: function(Client, types.DeleteIPSetInput): types.DeleteIPSetOutput, table
    deleteMalwareProtectionPlan: function(Client, types.DeleteMalwareProtectionPlanInput): types.DeleteMalwareProtectionPlanOutput, table
    deleteMembers: function(Client, types.DeleteMembersInput): types.DeleteMembersOutput, table
    deletePublishingDestination: function(Client, types.DeletePublishingDestinationInput): types.DeletePublishingDestinationOutput, table
    deleteThreatEntitySet: function(Client, types.DeleteThreatEntitySetInput): types.DeleteThreatEntitySetOutput, table
    deleteThreatIntelSet: function(Client, types.DeleteThreatIntelSetInput): types.DeleteThreatIntelSetOutput, table
    deleteTrustedEntitySet: function(Client, types.DeleteTrustedEntitySetInput): types.DeleteTrustedEntitySetOutput, table
    describeMalwareScans: function(Client, types.DescribeMalwareScansInput): types.DescribeMalwareScansOutput, table
    describeOrganizationConfiguration: function(Client, types.DescribeOrganizationConfigurationInput): types.DescribeOrganizationConfigurationOutput, table
    describePublishingDestination: function(Client, types.DescribePublishingDestinationInput): types.DescribePublishingDestinationOutput, table
    disableOrganizationAdminAccount: function(Client, types.DisableOrganizationAdminAccountInput): types.DisableOrganizationAdminAccountOutput, table
    disassociateFromAdministratorAccount: function(Client, types.DisassociateFromAdministratorAccountInput): types.DisassociateFromAdministratorAccountOutput, table
    disassociateFromMasterAccount: function(Client, types.DisassociateFromMasterAccountInput): types.DisassociateFromMasterAccountOutput, table
    disassociateMembers: function(Client, types.DisassociateMembersInput): types.DisassociateMembersOutput, table
    enableOrganizationAdminAccount: function(Client, types.EnableOrganizationAdminAccountInput): types.EnableOrganizationAdminAccountOutput, table
    getAdministratorAccount: function(Client, types.GetAdministratorAccountInput): types.GetAdministratorAccountOutput, table
    getCoverageStatistics: function(Client, types.GetCoverageStatisticsInput): types.GetCoverageStatisticsOutput, table
    getDetector: function(Client, types.GetDetectorInput): types.GetDetectorOutput, table
    getFilter: function(Client, types.GetFilterInput): types.GetFilterOutput, table
    getFindings: function(Client, types.GetFindingsInput): types.GetFindingsOutput, table
    getFindingsStatistics: function(Client, types.GetFindingsStatisticsInput): types.GetFindingsStatisticsOutput, table
    getInvitationsCount: function(Client, types.GetInvitationsCountInput): types.GetInvitationsCountOutput, table
    getIPSet: function(Client, types.GetIPSetInput): types.GetIPSetOutput, table
    getMalwareProtectionPlan: function(Client, types.GetMalwareProtectionPlanInput): types.GetMalwareProtectionPlanOutput, table
    getMalwareScan: function(Client, types.GetMalwareScanInput): types.GetMalwareScanOutput, table
    getMalwareScanSettings: function(Client, types.GetMalwareScanSettingsInput): types.GetMalwareScanSettingsOutput, table
    getMasterAccount: function(Client, types.GetMasterAccountInput): types.GetMasterAccountOutput, table
    getMemberDetectors: function(Client, types.GetMemberDetectorsInput): types.GetMemberDetectorsOutput, table
    getMembers: function(Client, types.GetMembersInput): types.GetMembersOutput, table
    getOrganizationStatistics: function(Client, types.GetOrganizationStatisticsInput): types.GetOrganizationStatisticsOutput, table
    getRemainingFreeTrialDays: function(Client, types.GetRemainingFreeTrialDaysInput): types.GetRemainingFreeTrialDaysOutput, table
    getThreatEntitySet: function(Client, types.GetThreatEntitySetInput): types.GetThreatEntitySetOutput, table
    getThreatIntelSet: function(Client, types.GetThreatIntelSetInput): types.GetThreatIntelSetOutput, table
    getTrustedEntitySet: function(Client, types.GetTrustedEntitySetInput): types.GetTrustedEntitySetOutput, table
    getUsageStatistics: function(Client, types.GetUsageStatisticsInput): types.GetUsageStatisticsOutput, table
    inviteMembers: function(Client, types.InviteMembersInput): types.InviteMembersOutput, table
    listCoverage: function(Client, types.ListCoverageInput): types.ListCoverageOutput, table
    listDetectors: function(Client, types.ListDetectorsInput): types.ListDetectorsOutput, table
    listFilters: function(Client, types.ListFiltersInput): types.ListFiltersOutput, table
    listFindings: function(Client, types.ListFindingsInput): types.ListFindingsOutput, table
    listInvitations: function(Client, types.ListInvitationsInput): types.ListInvitationsOutput, table
    listIPSets: function(Client, types.ListIPSetsInput): types.ListIPSetsOutput, table
    listMalwareProtectionPlans: function(Client, types.ListMalwareProtectionPlansInput): types.ListMalwareProtectionPlansOutput, table
    listMalwareScans: function(Client, types.ListMalwareScansInput): types.ListMalwareScansOutput, table
    listMembers: function(Client, types.ListMembersInput): types.ListMembersOutput, table
    listOrganizationAdminAccounts: function(Client, types.ListOrganizationAdminAccountsInput): types.ListOrganizationAdminAccountsOutput, table
    listPublishingDestinations: function(Client, types.ListPublishingDestinationsInput): types.ListPublishingDestinationsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listThreatEntitySets: function(Client, types.ListThreatEntitySetsInput): types.ListThreatEntitySetsOutput, table
    listThreatIntelSets: function(Client, types.ListThreatIntelSetsInput): types.ListThreatIntelSetsOutput, table
    listTrustedEntitySets: function(Client, types.ListTrustedEntitySetsInput): types.ListTrustedEntitySetsOutput, table
    sendObjectMalwareScan: function(Client, types.SendObjectMalwareScanInput): types.SendObjectMalwareScanOutput, table
    startMalwareScan: function(Client, types.StartMalwareScanInput): types.StartMalwareScanOutput, table
    startMonitoringMembers: function(Client, types.StartMonitoringMembersInput): types.StartMonitoringMembersOutput, table
    stopMonitoringMembers: function(Client, types.StopMonitoringMembersInput): types.StopMonitoringMembersOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    unarchiveFindings: function(Client, types.UnarchiveFindingsInput): types.UnarchiveFindingsOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateDetector: function(Client, types.UpdateDetectorInput): types.UpdateDetectorOutput, table
    updateFilter: function(Client, types.UpdateFilterInput): types.UpdateFilterOutput, table
    updateFindingsFeedback: function(Client, types.UpdateFindingsFeedbackInput): types.UpdateFindingsFeedbackOutput, table
    updateIPSet: function(Client, types.UpdateIPSetInput): types.UpdateIPSetOutput, table
    updateMalwareProtectionPlan: function(Client, types.UpdateMalwareProtectionPlanInput): types.UpdateMalwareProtectionPlanOutput, table
    updateMalwareScanSettings: function(Client, types.UpdateMalwareScanSettingsInput): types.UpdateMalwareScanSettingsOutput, table
    updateMemberDetectors: function(Client, types.UpdateMemberDetectorsInput): types.UpdateMemberDetectorsOutput, table
    updateOrganizationConfiguration: function(Client, types.UpdateOrganizationConfigurationInput): types.UpdateOrganizationConfigurationOutput, table
    updatePublishingDestination: function(Client, types.UpdatePublishingDestinationInput): types.UpdatePublishingDestinationOutput, table
    updateThreatEntitySet: function(Client, types.UpdateThreatEntitySetInput): types.UpdateThreatEntitySetOutput, table
    updateThreatIntelSet: function(Client, types.UpdateThreatIntelSetInput): types.UpdateThreatIntelSetOutput, table
    updateTrustedEntitySet: function(Client, types.UpdateTrustedEntitySetInput): types.UpdateTrustedEntitySetOutput, table
end

local record M
    new: function(table): Client
end

return M
