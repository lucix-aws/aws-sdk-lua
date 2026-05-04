local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("auditmanager.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("auditmanager.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "BedrockAssessmentManagerLambda"
    cfg.signing_name = "bedrockassessmentmanagerlambda"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateAssessmentReportEvidenceFolder(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAssessmentReportEvidenceFolder",
        input_schema = types.AssociateAssessmentReportEvidenceFolderInput,
        output_schema = types.AssociateAssessmentReportEvidenceFolderOutput,
        http_method = "PUT",
        http_path = "/assessments/{assessmentId}/associateToAssessmentReport",
    }, options)
end

function Client:batchAssociateAssessmentReportEvidence(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateAssessmentReportEvidence",
        input_schema = types.BatchAssociateAssessmentReportEvidenceInput,
        output_schema = types.BatchAssociateAssessmentReportEvidenceOutput,
        http_method = "PUT",
        http_path = "/assessments/{assessmentId}/batchAssociateToAssessmentReport",
    }, options)
end

function Client:batchCreateDelegationByAssessment(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateDelegationByAssessment",
        input_schema = types.BatchCreateDelegationByAssessmentInput,
        output_schema = types.BatchCreateDelegationByAssessmentOutput,
        http_method = "POST",
        http_path = "/assessments/{assessmentId}/delegations",
    }, options)
end

function Client:batchDeleteDelegationByAssessment(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteDelegationByAssessment",
        input_schema = types.BatchDeleteDelegationByAssessmentInput,
        output_schema = types.BatchDeleteDelegationByAssessmentOutput,
        http_method = "PUT",
        http_path = "/assessments/{assessmentId}/delegations",
    }, options)
end

function Client:batchDisassociateAssessmentReportEvidence(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateAssessmentReportEvidence",
        input_schema = types.BatchDisassociateAssessmentReportEvidenceInput,
        output_schema = types.BatchDisassociateAssessmentReportEvidenceOutput,
        http_method = "PUT",
        http_path = "/assessments/{assessmentId}/batchDisassociateFromAssessmentReport",
    }, options)
end

function Client:batchImportEvidenceToAssessmentControl(input, options)
    return self:invokeOperation(input, {
        name = "BatchImportEvidenceToAssessmentControl",
        input_schema = types.BatchImportEvidenceToAssessmentControlInput,
        output_schema = types.BatchImportEvidenceToAssessmentControlOutput,
        http_method = "POST",
        http_path = "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}/evidence",
    }, options)
end

function Client:createAssessment(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssessment",
        input_schema = types.CreateAssessmentInput,
        output_schema = types.CreateAssessmentOutput,
        http_method = "POST",
        http_path = "/assessments",
    }, options)
end

function Client:createAssessmentFramework(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssessmentFramework",
        input_schema = types.CreateAssessmentFrameworkInput,
        output_schema = types.CreateAssessmentFrameworkOutput,
        http_method = "POST",
        http_path = "/assessmentFrameworks",
    }, options)
end

function Client:createAssessmentReport(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssessmentReport",
        input_schema = types.CreateAssessmentReportInput,
        output_schema = types.CreateAssessmentReportOutput,
        http_method = "POST",
        http_path = "/assessments/{assessmentId}/reports",
    }, options)
end

function Client:createControl(input, options)
    return self:invokeOperation(input, {
        name = "CreateControl",
        input_schema = types.CreateControlInput,
        output_schema = types.CreateControlOutput,
        http_method = "POST",
        http_path = "/controls",
    }, options)
end

function Client:deleteAssessment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssessment",
        input_schema = types.DeleteAssessmentInput,
        output_schema = types.DeleteAssessmentOutput,
        http_method = "DELETE",
        http_path = "/assessments/{assessmentId}",
    }, options)
end

function Client:deleteAssessmentFramework(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssessmentFramework",
        input_schema = types.DeleteAssessmentFrameworkInput,
        output_schema = types.DeleteAssessmentFrameworkOutput,
        http_method = "DELETE",
        http_path = "/assessmentFrameworks/{frameworkId}",
    }, options)
end

function Client:deleteAssessmentFrameworkShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssessmentFrameworkShare",
        input_schema = types.DeleteAssessmentFrameworkShareInput,
        output_schema = types.DeleteAssessmentFrameworkShareOutput,
        http_method = "DELETE",
        http_path = "/assessmentFrameworkShareRequests/{requestId}",
    }, options)
end

function Client:deleteAssessmentReport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssessmentReport",
        input_schema = types.DeleteAssessmentReportInput,
        output_schema = types.DeleteAssessmentReportOutput,
        http_method = "DELETE",
        http_path = "/assessments/{assessmentId}/reports/{assessmentReportId}",
    }, options)
end

function Client:deleteControl(input, options)
    return self:invokeOperation(input, {
        name = "DeleteControl",
        input_schema = types.DeleteControlInput,
        output_schema = types.DeleteControlOutput,
        http_method = "DELETE",
        http_path = "/controls/{controlId}",
    }, options)
end

function Client:deregisterAccount(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterAccount",
        input_schema = types.DeregisterAccountInput,
        output_schema = types.DeregisterAccountOutput,
        http_method = "POST",
        http_path = "/account/deregisterAccount",
    }, options)
end

function Client:deregisterOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterOrganizationAdminAccount",
        input_schema = types.DeregisterOrganizationAdminAccountInput,
        output_schema = types.DeregisterOrganizationAdminAccountOutput,
        http_method = "POST",
        http_path = "/account/deregisterOrganizationAdminAccount",
    }, options)
end

function Client:disassociateAssessmentReportEvidenceFolder(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAssessmentReportEvidenceFolder",
        input_schema = types.DisassociateAssessmentReportEvidenceFolderInput,
        output_schema = types.DisassociateAssessmentReportEvidenceFolderOutput,
        http_method = "PUT",
        http_path = "/assessments/{assessmentId}/disassociateFromAssessmentReport",
    }, options)
end

function Client:getAccountStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountStatus",
        input_schema = types.GetAccountStatusInput,
        output_schema = types.GetAccountStatusOutput,
        http_method = "GET",
        http_path = "/account/status",
    }, options)
end

function Client:getAssessment(input, options)
    return self:invokeOperation(input, {
        name = "GetAssessment",
        input_schema = types.GetAssessmentInput,
        output_schema = types.GetAssessmentOutput,
        http_method = "GET",
        http_path = "/assessments/{assessmentId}",
    }, options)
end

function Client:getAssessmentFramework(input, options)
    return self:invokeOperation(input, {
        name = "GetAssessmentFramework",
        input_schema = types.GetAssessmentFrameworkInput,
        output_schema = types.GetAssessmentFrameworkOutput,
        http_method = "GET",
        http_path = "/assessmentFrameworks/{frameworkId}",
    }, options)
end

function Client:getAssessmentReportUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetAssessmentReportUrl",
        input_schema = types.GetAssessmentReportUrlInput,
        output_schema = types.GetAssessmentReportUrlOutput,
        http_method = "GET",
        http_path = "/assessments/{assessmentId}/reports/{assessmentReportId}/url",
    }, options)
end

function Client:getChangeLogs(input, options)
    return self:invokeOperation(input, {
        name = "GetChangeLogs",
        input_schema = types.GetChangeLogsInput,
        output_schema = types.GetChangeLogsOutput,
        http_method = "GET",
        http_path = "/assessments/{assessmentId}/changelogs",
    }, options)
end

function Client:getControl(input, options)
    return self:invokeOperation(input, {
        name = "GetControl",
        input_schema = types.GetControlInput,
        output_schema = types.GetControlOutput,
        http_method = "GET",
        http_path = "/controls/{controlId}",
    }, options)
end

function Client:getDelegations(input, options)
    return self:invokeOperation(input, {
        name = "GetDelegations",
        input_schema = types.GetDelegationsInput,
        output_schema = types.GetDelegationsOutput,
        http_method = "GET",
        http_path = "/delegations",
    }, options)
end

function Client:getEvidence(input, options)
    return self:invokeOperation(input, {
        name = "GetEvidence",
        input_schema = types.GetEvidenceInput,
        output_schema = types.GetEvidenceOutput,
        http_method = "GET",
        http_path = "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence/{evidenceId}",
    }, options)
end

function Client:getEvidenceByEvidenceFolder(input, options)
    return self:invokeOperation(input, {
        name = "GetEvidenceByEvidenceFolder",
        input_schema = types.GetEvidenceByEvidenceFolderInput,
        output_schema = types.GetEvidenceByEvidenceFolderOutput,
        http_method = "GET",
        http_path = "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}/evidence",
    }, options)
end

function Client:getEvidenceFileUploadUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetEvidenceFileUploadUrl",
        input_schema = types.GetEvidenceFileUploadUrlInput,
        output_schema = types.GetEvidenceFileUploadUrlOutput,
        http_method = "GET",
        http_path = "/evidenceFileUploadUrl",
    }, options)
end

function Client:getEvidenceFolder(input, options)
    return self:invokeOperation(input, {
        name = "GetEvidenceFolder",
        input_schema = types.GetEvidenceFolderInput,
        output_schema = types.GetEvidenceFolderOutput,
        http_method = "GET",
        http_path = "/assessments/{assessmentId}/controlSets/{controlSetId}/evidenceFolders/{evidenceFolderId}",
    }, options)
end

function Client:getEvidenceFoldersByAssessment(input, options)
    return self:invokeOperation(input, {
        name = "GetEvidenceFoldersByAssessment",
        input_schema = types.GetEvidenceFoldersByAssessmentInput,
        output_schema = types.GetEvidenceFoldersByAssessmentOutput,
        http_method = "GET",
        http_path = "/assessments/{assessmentId}/evidenceFolders",
    }, options)
end

function Client:getEvidenceFoldersByAssessmentControl(input, options)
    return self:invokeOperation(input, {
        name = "GetEvidenceFoldersByAssessmentControl",
        input_schema = types.GetEvidenceFoldersByAssessmentControlInput,
        output_schema = types.GetEvidenceFoldersByAssessmentControlOutput,
        http_method = "GET",
        http_path = "/assessments/{assessmentId}/evidenceFolders-by-assessment-control/{controlSetId}/{controlId}",
    }, options)
end

function Client:getInsights(input, options)
    return self:invokeOperation(input, {
        name = "GetInsights",
        input_schema = types.GetInsightsInput,
        output_schema = types.GetInsightsOutput,
        http_method = "GET",
        http_path = "/insights",
    }, options)
end

function Client:getInsightsByAssessment(input, options)
    return self:invokeOperation(input, {
        name = "GetInsightsByAssessment",
        input_schema = types.GetInsightsByAssessmentInput,
        output_schema = types.GetInsightsByAssessmentOutput,
        http_method = "GET",
        http_path = "/insights/assessments/{assessmentId}",
    }, options)
end

function Client:getOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetOrganizationAdminAccount",
        input_schema = types.GetOrganizationAdminAccountInput,
        output_schema = types.GetOrganizationAdminAccountOutput,
        http_method = "GET",
        http_path = "/account/organizationAdminAccount",
    }, options)
end

function Client:getServicesInScope(input, options)
    return self:invokeOperation(input, {
        name = "GetServicesInScope",
        input_schema = types.GetServicesInScopeInput,
        output_schema = types.GetServicesInScopeOutput,
        http_method = "GET",
        http_path = "/services",
    }, options)
end

function Client:getSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetSettings",
        input_schema = types.GetSettingsInput,
        output_schema = types.GetSettingsOutput,
        http_method = "GET",
        http_path = "/settings/{attribute}",
    }, options)
end

function Client:listAssessmentControlInsightsByControlDomain(input, options)
    return self:invokeOperation(input, {
        name = "ListAssessmentControlInsightsByControlDomain",
        input_schema = types.ListAssessmentControlInsightsByControlDomainInput,
        output_schema = types.ListAssessmentControlInsightsByControlDomainOutput,
        http_method = "GET",
        http_path = "/insights/controls-by-assessment",
    }, options)
end

function Client:listAssessmentFrameworks(input, options)
    return self:invokeOperation(input, {
        name = "ListAssessmentFrameworks",
        input_schema = types.ListAssessmentFrameworksInput,
        output_schema = types.ListAssessmentFrameworksOutput,
        http_method = "GET",
        http_path = "/assessmentFrameworks",
    }, options)
end

function Client:listAssessmentFrameworkShareRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListAssessmentFrameworkShareRequests",
        input_schema = types.ListAssessmentFrameworkShareRequestsInput,
        output_schema = types.ListAssessmentFrameworkShareRequestsOutput,
        http_method = "GET",
        http_path = "/assessmentFrameworkShareRequests",
    }, options)
end

function Client:listAssessmentReports(input, options)
    return self:invokeOperation(input, {
        name = "ListAssessmentReports",
        input_schema = types.ListAssessmentReportsInput,
        output_schema = types.ListAssessmentReportsOutput,
        http_method = "GET",
        http_path = "/assessmentReports",
    }, options)
end

function Client:listAssessments(input, options)
    return self:invokeOperation(input, {
        name = "ListAssessments",
        input_schema = types.ListAssessmentsInput,
        output_schema = types.ListAssessmentsOutput,
        http_method = "GET",
        http_path = "/assessments",
    }, options)
end

function Client:listControlDomainInsights(input, options)
    return self:invokeOperation(input, {
        name = "ListControlDomainInsights",
        input_schema = types.ListControlDomainInsightsInput,
        output_schema = types.ListControlDomainInsightsOutput,
        http_method = "GET",
        http_path = "/insights/control-domains",
    }, options)
end

function Client:listControlDomainInsightsByAssessment(input, options)
    return self:invokeOperation(input, {
        name = "ListControlDomainInsightsByAssessment",
        input_schema = types.ListControlDomainInsightsByAssessmentInput,
        output_schema = types.ListControlDomainInsightsByAssessmentOutput,
        http_method = "GET",
        http_path = "/insights/control-domains-by-assessment",
    }, options)
end

function Client:listControlInsightsByControlDomain(input, options)
    return self:invokeOperation(input, {
        name = "ListControlInsightsByControlDomain",
        input_schema = types.ListControlInsightsByControlDomainInput,
        output_schema = types.ListControlInsightsByControlDomainOutput,
        http_method = "GET",
        http_path = "/insights/controls",
    }, options)
end

function Client:listControls(input, options)
    return self:invokeOperation(input, {
        name = "ListControls",
        input_schema = types.ListControlsInput,
        output_schema = types.ListControlsOutput,
        http_method = "GET",
        http_path = "/controls",
    }, options)
end

function Client:listKeywordsForDataSource(input, options)
    return self:invokeOperation(input, {
        name = "ListKeywordsForDataSource",
        input_schema = types.ListKeywordsForDataSourceInput,
        output_schema = types.ListKeywordsForDataSourceOutput,
        http_method = "GET",
        http_path = "/dataSourceKeywords",
    }, options)
end

function Client:listNotifications(input, options)
    return self:invokeOperation(input, {
        name = "ListNotifications",
        input_schema = types.ListNotificationsInput,
        output_schema = types.ListNotificationsOutput,
        http_method = "GET",
        http_path = "/notifications",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:registerAccount(input, options)
    return self:invokeOperation(input, {
        name = "RegisterAccount",
        input_schema = types.RegisterAccountInput,
        output_schema = types.RegisterAccountOutput,
        http_method = "POST",
        http_path = "/account/registerAccount",
    }, options)
end

function Client:registerOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "RegisterOrganizationAdminAccount",
        input_schema = types.RegisterOrganizationAdminAccountInput,
        output_schema = types.RegisterOrganizationAdminAccountOutput,
        http_method = "POST",
        http_path = "/account/registerOrganizationAdminAccount",
    }, options)
end

function Client:startAssessmentFrameworkShare(input, options)
    return self:invokeOperation(input, {
        name = "StartAssessmentFrameworkShare",
        input_schema = types.StartAssessmentFrameworkShareInput,
        output_schema = types.StartAssessmentFrameworkShareOutput,
        http_method = "POST",
        http_path = "/assessmentFrameworks/{frameworkId}/shareRequests",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateAssessment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssessment",
        input_schema = types.UpdateAssessmentInput,
        output_schema = types.UpdateAssessmentOutput,
        http_method = "PUT",
        http_path = "/assessments/{assessmentId}",
    }, options)
end

function Client:updateAssessmentControl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssessmentControl",
        input_schema = types.UpdateAssessmentControlInput,
        output_schema = types.UpdateAssessmentControlOutput,
        http_method = "PUT",
        http_path = "/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}",
    }, options)
end

function Client:updateAssessmentControlSetStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssessmentControlSetStatus",
        input_schema = types.UpdateAssessmentControlSetStatusInput,
        output_schema = types.UpdateAssessmentControlSetStatusOutput,
        http_method = "PUT",
        http_path = "/assessments/{assessmentId}/controlSets/{controlSetId}/status",
    }, options)
end

function Client:updateAssessmentFramework(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssessmentFramework",
        input_schema = types.UpdateAssessmentFrameworkInput,
        output_schema = types.UpdateAssessmentFrameworkOutput,
        http_method = "PUT",
        http_path = "/assessmentFrameworks/{frameworkId}",
    }, options)
end

function Client:updateAssessmentFrameworkShare(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssessmentFrameworkShare",
        input_schema = types.UpdateAssessmentFrameworkShareInput,
        output_schema = types.UpdateAssessmentFrameworkShareOutput,
        http_method = "PUT",
        http_path = "/assessmentFrameworkShareRequests/{requestId}",
    }, options)
end

function Client:updateAssessmentStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssessmentStatus",
        input_schema = types.UpdateAssessmentStatusInput,
        output_schema = types.UpdateAssessmentStatusOutput,
        http_method = "PUT",
        http_path = "/assessments/{assessmentId}/status",
    }, options)
end

function Client:updateControl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateControl",
        input_schema = types.UpdateControlInput,
        output_schema = types.UpdateControlOutput,
        http_method = "PUT",
        http_path = "/controls/{controlId}",
    }, options)
end

function Client:updateSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSettings",
        input_schema = types.UpdateSettingsInput,
        output_schema = types.UpdateSettingsOutput,
        http_method = "PUT",
        http_path = "/settings",
    }, options)
end

function Client:validateAssessmentReportIntegrity(input, options)
    return self:invokeOperation(input, {
        name = "ValidateAssessmentReportIntegrity",
        input_schema = types.ValidateAssessmentReportIntegrityInput,
        output_schema = types.ValidateAssessmentReportIntegrityOutput,
        http_method = "POST",
        http_path = "/assessmentReports/integrity",
    }, options)
end

return M
