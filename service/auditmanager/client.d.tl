local types = require("auditmanager.types")

local record Client
    associateAssessmentReportEvidenceFolder: function(Client, types.AssociateAssessmentReportEvidenceFolderInput): types.AssociateAssessmentReportEvidenceFolderOutput, table
    batchAssociateAssessmentReportEvidence: function(Client, types.BatchAssociateAssessmentReportEvidenceInput): types.BatchAssociateAssessmentReportEvidenceOutput, table
    batchCreateDelegationByAssessment: function(Client, types.BatchCreateDelegationByAssessmentInput): types.BatchCreateDelegationByAssessmentOutput, table
    batchDeleteDelegationByAssessment: function(Client, types.BatchDeleteDelegationByAssessmentInput): types.BatchDeleteDelegationByAssessmentOutput, table
    batchDisassociateAssessmentReportEvidence: function(Client, types.BatchDisassociateAssessmentReportEvidenceInput): types.BatchDisassociateAssessmentReportEvidenceOutput, table
    batchImportEvidenceToAssessmentControl: function(Client, types.BatchImportEvidenceToAssessmentControlInput): types.BatchImportEvidenceToAssessmentControlOutput, table
    createAssessment: function(Client, types.CreateAssessmentInput): types.CreateAssessmentOutput, table
    createAssessmentFramework: function(Client, types.CreateAssessmentFrameworkInput): types.CreateAssessmentFrameworkOutput, table
    createAssessmentReport: function(Client, types.CreateAssessmentReportInput): types.CreateAssessmentReportOutput, table
    createControl: function(Client, types.CreateControlInput): types.CreateControlOutput, table
    deleteAssessment: function(Client, types.DeleteAssessmentInput): types.DeleteAssessmentOutput, table
    deleteAssessmentFramework: function(Client, types.DeleteAssessmentFrameworkInput): types.DeleteAssessmentFrameworkOutput, table
    deleteAssessmentFrameworkShare: function(Client, types.DeleteAssessmentFrameworkShareInput): types.DeleteAssessmentFrameworkShareOutput, table
    deleteAssessmentReport: function(Client, types.DeleteAssessmentReportInput): types.DeleteAssessmentReportOutput, table
    deleteControl: function(Client, types.DeleteControlInput): types.DeleteControlOutput, table
    deregisterAccount: function(Client, types.DeregisterAccountInput): types.DeregisterAccountOutput, table
    deregisterOrganizationAdminAccount: function(Client, types.DeregisterOrganizationAdminAccountInput): types.DeregisterOrganizationAdminAccountOutput, table
    disassociateAssessmentReportEvidenceFolder: function(Client, types.DisassociateAssessmentReportEvidenceFolderInput): types.DisassociateAssessmentReportEvidenceFolderOutput, table
    getAccountStatus: function(Client, types.GetAccountStatusInput): types.GetAccountStatusOutput, table
    getAssessment: function(Client, types.GetAssessmentInput): types.GetAssessmentOutput, table
    getAssessmentFramework: function(Client, types.GetAssessmentFrameworkInput): types.GetAssessmentFrameworkOutput, table
    getAssessmentReportUrl: function(Client, types.GetAssessmentReportUrlInput): types.GetAssessmentReportUrlOutput, table
    getChangeLogs: function(Client, types.GetChangeLogsInput): types.GetChangeLogsOutput, table
    getControl: function(Client, types.GetControlInput): types.GetControlOutput, table
    getDelegations: function(Client, types.GetDelegationsInput): types.GetDelegationsOutput, table
    getEvidence: function(Client, types.GetEvidenceInput): types.GetEvidenceOutput, table
    getEvidenceByEvidenceFolder: function(Client, types.GetEvidenceByEvidenceFolderInput): types.GetEvidenceByEvidenceFolderOutput, table
    getEvidenceFileUploadUrl: function(Client, types.GetEvidenceFileUploadUrlInput): types.GetEvidenceFileUploadUrlOutput, table
    getEvidenceFolder: function(Client, types.GetEvidenceFolderInput): types.GetEvidenceFolderOutput, table
    getEvidenceFoldersByAssessment: function(Client, types.GetEvidenceFoldersByAssessmentInput): types.GetEvidenceFoldersByAssessmentOutput, table
    getEvidenceFoldersByAssessmentControl: function(Client, types.GetEvidenceFoldersByAssessmentControlInput): types.GetEvidenceFoldersByAssessmentControlOutput, table
    getInsights: function(Client, types.GetInsightsInput): types.GetInsightsOutput, table
    getInsightsByAssessment: function(Client, types.GetInsightsByAssessmentInput): types.GetInsightsByAssessmentOutput, table
    getOrganizationAdminAccount: function(Client, types.GetOrganizationAdminAccountInput): types.GetOrganizationAdminAccountOutput, table
    getServicesInScope: function(Client, types.GetServicesInScopeInput): types.GetServicesInScopeOutput, table
    getSettings: function(Client, types.GetSettingsInput): types.GetSettingsOutput, table
    listAssessmentControlInsightsByControlDomain: function(Client, types.ListAssessmentControlInsightsByControlDomainInput): types.ListAssessmentControlInsightsByControlDomainOutput, table
    listAssessmentFrameworks: function(Client, types.ListAssessmentFrameworksInput): types.ListAssessmentFrameworksOutput, table
    listAssessmentFrameworkShareRequests: function(Client, types.ListAssessmentFrameworkShareRequestsInput): types.ListAssessmentFrameworkShareRequestsOutput, table
    listAssessmentReports: function(Client, types.ListAssessmentReportsInput): types.ListAssessmentReportsOutput, table
    listAssessments: function(Client, types.ListAssessmentsInput): types.ListAssessmentsOutput, table
    listControlDomainInsights: function(Client, types.ListControlDomainInsightsInput): types.ListControlDomainInsightsOutput, table
    listControlDomainInsightsByAssessment: function(Client, types.ListControlDomainInsightsByAssessmentInput): types.ListControlDomainInsightsByAssessmentOutput, table
    listControlInsightsByControlDomain: function(Client, types.ListControlInsightsByControlDomainInput): types.ListControlInsightsByControlDomainOutput, table
    listControls: function(Client, types.ListControlsInput): types.ListControlsOutput, table
    listKeywordsForDataSource: function(Client, types.ListKeywordsForDataSourceInput): types.ListKeywordsForDataSourceOutput, table
    listNotifications: function(Client, types.ListNotificationsInput): types.ListNotificationsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    registerAccount: function(Client, types.RegisterAccountInput): types.RegisterAccountOutput, table
    registerOrganizationAdminAccount: function(Client, types.RegisterOrganizationAdminAccountInput): types.RegisterOrganizationAdminAccountOutput, table
    startAssessmentFrameworkShare: function(Client, types.StartAssessmentFrameworkShareInput): types.StartAssessmentFrameworkShareOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAssessment: function(Client, types.UpdateAssessmentInput): types.UpdateAssessmentOutput, table
    updateAssessmentControl: function(Client, types.UpdateAssessmentControlInput): types.UpdateAssessmentControlOutput, table
    updateAssessmentControlSetStatus: function(Client, types.UpdateAssessmentControlSetStatusInput): types.UpdateAssessmentControlSetStatusOutput, table
    updateAssessmentFramework: function(Client, types.UpdateAssessmentFrameworkInput): types.UpdateAssessmentFrameworkOutput, table
    updateAssessmentFrameworkShare: function(Client, types.UpdateAssessmentFrameworkShareInput): types.UpdateAssessmentFrameworkShareOutput, table
    updateAssessmentStatus: function(Client, types.UpdateAssessmentStatusInput): types.UpdateAssessmentStatusOutput, table
    updateControl: function(Client, types.UpdateControlInput): types.UpdateControlOutput, table
    updateSettings: function(Client, types.UpdateSettingsInput): types.UpdateSettingsOutput, table
    validateAssessmentReportIntegrity: function(Client, types.ValidateAssessmentReportIntegrityInput): types.ValidateAssessmentReportIntegrityOutput, table
end

local record M
    new: function(table): Client
end

return M
