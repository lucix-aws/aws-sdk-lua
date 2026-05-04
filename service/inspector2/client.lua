local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("inspector2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("inspector2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Inspector2"
    cfg.signing_name = "inspector2"
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

function Client:associateMember(input, options)
    return self:invokeOperation(input, {
        name = "AssociateMember",
        input_schema = types.AssociateMemberInput,
        output_schema = types.AssociateMemberOutput,
        http_method = "POST",
        http_path = "/members/associate",
    }, options)
end

function Client:batchAssociateCodeSecurityScanConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateCodeSecurityScanConfiguration",
        input_schema = types.BatchAssociateCodeSecurityScanConfigurationInput,
        output_schema = types.BatchAssociateCodeSecurityScanConfigurationOutput,
        http_method = "POST",
        http_path = "/codesecurity/scan-configuration/batch/associate",
    }, options)
end

function Client:batchDisassociateCodeSecurityScanConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateCodeSecurityScanConfiguration",
        input_schema = types.BatchDisassociateCodeSecurityScanConfigurationInput,
        output_schema = types.BatchDisassociateCodeSecurityScanConfigurationOutput,
        http_method = "POST",
        http_path = "/codesecurity/scan-configuration/batch/disassociate",
    }, options)
end

function Client:batchGetAccountStatus(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAccountStatus",
        input_schema = types.BatchGetAccountStatusInput,
        output_schema = types.BatchGetAccountStatusOutput,
        http_method = "POST",
        http_path = "/status/batch/get",
    }, options)
end

function Client:batchGetCodeSnippet(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCodeSnippet",
        input_schema = types.BatchGetCodeSnippetInput,
        output_schema = types.BatchGetCodeSnippetOutput,
        http_method = "POST",
        http_path = "/codesnippet/batchget",
    }, options)
end

function Client:batchGetFindingDetails(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetFindingDetails",
        input_schema = types.BatchGetFindingDetailsInput,
        output_schema = types.BatchGetFindingDetailsOutput,
        http_method = "POST",
        http_path = "/findings/details/batch/get",
    }, options)
end

function Client:batchGetFreeTrialInfo(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetFreeTrialInfo",
        input_schema = types.BatchGetFreeTrialInfoInput,
        output_schema = types.BatchGetFreeTrialInfoOutput,
        http_method = "POST",
        http_path = "/freetrialinfo/batchget",
    }, options)
end

function Client:batchGetMemberEc2DeepInspectionStatus(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetMemberEc2DeepInspectionStatus",
        input_schema = types.BatchGetMemberEc2DeepInspectionStatusInput,
        output_schema = types.BatchGetMemberEc2DeepInspectionStatusOutput,
        http_method = "POST",
        http_path = "/ec2deepinspectionstatus/member/batch/get",
    }, options)
end

function Client:batchUpdateMemberEc2DeepInspectionStatus(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateMemberEc2DeepInspectionStatus",
        input_schema = types.BatchUpdateMemberEc2DeepInspectionStatusInput,
        output_schema = types.BatchUpdateMemberEc2DeepInspectionStatusOutput,
        http_method = "POST",
        http_path = "/ec2deepinspectionstatus/member/batch/update",
    }, options)
end

function Client:cancelFindingsReport(input, options)
    return self:invokeOperation(input, {
        name = "CancelFindingsReport",
        input_schema = types.CancelFindingsReportInput,
        output_schema = types.CancelFindingsReportOutput,
        http_method = "POST",
        http_path = "/reporting/cancel",
    }, options)
end

function Client:cancelSbomExport(input, options)
    return self:invokeOperation(input, {
        name = "CancelSbomExport",
        input_schema = types.CancelSbomExportInput,
        output_schema = types.CancelSbomExportOutput,
        http_method = "POST",
        http_path = "/sbomexport/cancel",
    }, options)
end

function Client:createCisScanConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateCisScanConfiguration",
        input_schema = types.CreateCisScanConfigurationInput,
        output_schema = types.CreateCisScanConfigurationOutput,
        http_method = "POST",
        http_path = "/cis/scan-configuration/create",
    }, options)
end

function Client:createCodeSecurityIntegration(input, options)
    return self:invokeOperation(input, {
        name = "CreateCodeSecurityIntegration",
        input_schema = types.CreateCodeSecurityIntegrationInput,
        output_schema = types.CreateCodeSecurityIntegrationOutput,
        http_method = "POST",
        http_path = "/codesecurity/integration/create",
    }, options)
end

function Client:createCodeSecurityScanConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateCodeSecurityScanConfiguration",
        input_schema = types.CreateCodeSecurityScanConfigurationInput,
        output_schema = types.CreateCodeSecurityScanConfigurationOutput,
        http_method = "POST",
        http_path = "/codesecurity/scan-configuration/create",
    }, options)
end

function Client:createFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateFilter",
        input_schema = types.CreateFilterInput,
        output_schema = types.CreateFilterOutput,
        http_method = "POST",
        http_path = "/filters/create",
    }, options)
end

function Client:createFindingsReport(input, options)
    return self:invokeOperation(input, {
        name = "CreateFindingsReport",
        input_schema = types.CreateFindingsReportInput,
        output_schema = types.CreateFindingsReportOutput,
        http_method = "POST",
        http_path = "/reporting/create",
    }, options)
end

function Client:createSbomExport(input, options)
    return self:invokeOperation(input, {
        name = "CreateSbomExport",
        input_schema = types.CreateSbomExportInput,
        output_schema = types.CreateSbomExportOutput,
        http_method = "POST",
        http_path = "/sbomexport/create",
    }, options)
end

function Client:deleteCisScanConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCisScanConfiguration",
        input_schema = types.DeleteCisScanConfigurationInput,
        output_schema = types.DeleteCisScanConfigurationOutput,
        http_method = "POST",
        http_path = "/cis/scan-configuration/delete",
    }, options)
end

function Client:deleteCodeSecurityIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCodeSecurityIntegration",
        input_schema = types.DeleteCodeSecurityIntegrationInput,
        output_schema = types.DeleteCodeSecurityIntegrationOutput,
        http_method = "POST",
        http_path = "/codesecurity/integration/delete",
    }, options)
end

function Client:deleteCodeSecurityScanConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCodeSecurityScanConfiguration",
        input_schema = types.DeleteCodeSecurityScanConfigurationInput,
        output_schema = types.DeleteCodeSecurityScanConfigurationOutput,
        http_method = "POST",
        http_path = "/codesecurity/scan-configuration/delete",
    }, options)
end

function Client:deleteFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFilter",
        input_schema = types.DeleteFilterInput,
        output_schema = types.DeleteFilterOutput,
        http_method = "POST",
        http_path = "/filters/delete",
    }, options)
end

function Client:describeOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationConfiguration",
        input_schema = types.DescribeOrganizationConfigurationInput,
        output_schema = types.DescribeOrganizationConfigurationOutput,
        http_method = "POST",
        http_path = "/organizationconfiguration/describe",
    }, options)
end

function Client:disable(input, options)
    return self:invokeOperation(input, {
        name = "Disable",
        input_schema = types.DisableInput,
        output_schema = types.DisableOutput,
        http_method = "POST",
        http_path = "/disable",
    }, options)
end

function Client:disableDelegatedAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisableDelegatedAdminAccount",
        input_schema = types.DisableDelegatedAdminAccountInput,
        output_schema = types.DisableDelegatedAdminAccountOutput,
        http_method = "POST",
        http_path = "/delegatedadminaccounts/disable",
    }, options)
end

function Client:disassociateMember(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMember",
        input_schema = types.DisassociateMemberInput,
        output_schema = types.DisassociateMemberOutput,
        http_method = "POST",
        http_path = "/members/disassociate",
    }, options)
end

function Client:enable(input, options)
    return self:invokeOperation(input, {
        name = "Enable",
        input_schema = types.EnableInput,
        output_schema = types.EnableOutput,
        http_method = "POST",
        http_path = "/enable",
    }, options)
end

function Client:enableDelegatedAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "EnableDelegatedAdminAccount",
        input_schema = types.EnableDelegatedAdminAccountInput,
        output_schema = types.EnableDelegatedAdminAccountOutput,
        http_method = "POST",
        http_path = "/delegatedadminaccounts/enable",
    }, options)
end

function Client:getCisScanReport(input, options)
    return self:invokeOperation(input, {
        name = "GetCisScanReport",
        input_schema = types.GetCisScanReportInput,
        output_schema = types.GetCisScanReportOutput,
        http_method = "POST",
        http_path = "/cis/scan/report/get",
    }, options)
end

function Client:getCisScanResultDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetCisScanResultDetails",
        input_schema = types.GetCisScanResultDetailsInput,
        output_schema = types.GetCisScanResultDetailsOutput,
        http_method = "POST",
        http_path = "/cis/scan-result/details/get",
    }, options)
end

function Client:getClustersForImage(input, options)
    return self:invokeOperation(input, {
        name = "GetClustersForImage",
        input_schema = types.GetClustersForImageInput,
        output_schema = types.GetClustersForImageOutput,
        http_method = "POST",
        http_path = "/cluster/get",
    }, options)
end

function Client:getCodeSecurityIntegration(input, options)
    return self:invokeOperation(input, {
        name = "GetCodeSecurityIntegration",
        input_schema = types.GetCodeSecurityIntegrationInput,
        output_schema = types.GetCodeSecurityIntegrationOutput,
        http_method = "POST",
        http_path = "/codesecurity/integration/get",
    }, options)
end

function Client:getCodeSecurityScan(input, options)
    return self:invokeOperation(input, {
        name = "GetCodeSecurityScan",
        input_schema = types.GetCodeSecurityScanInput,
        output_schema = types.GetCodeSecurityScanOutput,
        http_method = "POST",
        http_path = "/codesecurity/scan/get",
    }, options)
end

function Client:getCodeSecurityScanConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetCodeSecurityScanConfiguration",
        input_schema = types.GetCodeSecurityScanConfigurationInput,
        output_schema = types.GetCodeSecurityScanConfigurationOutput,
        http_method = "POST",
        http_path = "/codesecurity/scan-configuration/get",
    }, options)
end

function Client:getConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguration",
        input_schema = types.GetConfigurationInput,
        output_schema = types.GetConfigurationOutput,
        http_method = "POST",
        http_path = "/configuration/get",
    }, options)
end

function Client:getDelegatedAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetDelegatedAdminAccount",
        input_schema = types.GetDelegatedAdminAccountInput,
        output_schema = types.GetDelegatedAdminAccountOutput,
        http_method = "POST",
        http_path = "/delegatedadminaccounts/get",
    }, options)
end

function Client:getEc2DeepInspectionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetEc2DeepInspectionConfiguration",
        input_schema = types.GetEc2DeepInspectionConfigurationInput,
        output_schema = types.GetEc2DeepInspectionConfigurationOutput,
        http_method = "POST",
        http_path = "/ec2deepinspectionconfiguration/get",
    }, options)
end

function Client:getEncryptionKey(input, options)
    return self:invokeOperation(input, {
        name = "GetEncryptionKey",
        input_schema = types.GetEncryptionKeyInput,
        output_schema = types.GetEncryptionKeyOutput,
        http_method = "GET",
        http_path = "/encryptionkey/get",
    }, options)
end

function Client:getFindingsReportStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingsReportStatus",
        input_schema = types.GetFindingsReportStatusInput,
        output_schema = types.GetFindingsReportStatusOutput,
        http_method = "POST",
        http_path = "/reporting/status/get",
    }, options)
end

function Client:getMember(input, options)
    return self:invokeOperation(input, {
        name = "GetMember",
        input_schema = types.GetMemberInput,
        output_schema = types.GetMemberOutput,
        http_method = "POST",
        http_path = "/members/get",
    }, options)
end

function Client:getSbomExport(input, options)
    return self:invokeOperation(input, {
        name = "GetSbomExport",
        input_schema = types.GetSbomExportInput,
        output_schema = types.GetSbomExportOutput,
        http_method = "POST",
        http_path = "/sbomexport/get",
    }, options)
end

function Client:listAccountPermissions(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountPermissions",
        input_schema = types.ListAccountPermissionsInput,
        output_schema = types.ListAccountPermissionsOutput,
        http_method = "POST",
        http_path = "/accountpermissions/list",
    }, options)
end

function Client:listCisScanConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListCisScanConfigurations",
        input_schema = types.ListCisScanConfigurationsInput,
        output_schema = types.ListCisScanConfigurationsOutput,
        http_method = "POST",
        http_path = "/cis/scan-configuration/list",
    }, options)
end

function Client:listCisScanResultsAggregatedByChecks(input, options)
    return self:invokeOperation(input, {
        name = "ListCisScanResultsAggregatedByChecks",
        input_schema = types.ListCisScanResultsAggregatedByChecksInput,
        output_schema = types.ListCisScanResultsAggregatedByChecksOutput,
        http_method = "POST",
        http_path = "/cis/scan-result/check/list",
    }, options)
end

function Client:listCisScanResultsAggregatedByTargetResource(input, options)
    return self:invokeOperation(input, {
        name = "ListCisScanResultsAggregatedByTargetResource",
        input_schema = types.ListCisScanResultsAggregatedByTargetResourceInput,
        output_schema = types.ListCisScanResultsAggregatedByTargetResourceOutput,
        http_method = "POST",
        http_path = "/cis/scan-result/resource/list",
    }, options)
end

function Client:listCisScans(input, options)
    return self:invokeOperation(input, {
        name = "ListCisScans",
        input_schema = types.ListCisScansInput,
        output_schema = types.ListCisScansOutput,
        http_method = "POST",
        http_path = "/cis/scan/list",
    }, options)
end

function Client:listCodeSecurityIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "ListCodeSecurityIntegrations",
        input_schema = types.ListCodeSecurityIntegrationsInput,
        output_schema = types.ListCodeSecurityIntegrationsOutput,
        http_method = "POST",
        http_path = "/codesecurity/integration/list",
    }, options)
end

function Client:listCodeSecurityScanConfigurationAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListCodeSecurityScanConfigurationAssociations",
        input_schema = types.ListCodeSecurityScanConfigurationAssociationsInput,
        output_schema = types.ListCodeSecurityScanConfigurationAssociationsOutput,
        http_method = "POST",
        http_path = "/codesecurity/scan-configuration/associations/list",
    }, options)
end

function Client:listCodeSecurityScanConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListCodeSecurityScanConfigurations",
        input_schema = types.ListCodeSecurityScanConfigurationsInput,
        output_schema = types.ListCodeSecurityScanConfigurationsOutput,
        http_method = "POST",
        http_path = "/codesecurity/scan-configuration/list",
    }, options)
end

function Client:listCoverage(input, options)
    return self:invokeOperation(input, {
        name = "ListCoverage",
        input_schema = types.ListCoverageInput,
        output_schema = types.ListCoverageOutput,
        http_method = "POST",
        http_path = "/coverage/list",
    }, options)
end

function Client:listCoverageStatistics(input, options)
    return self:invokeOperation(input, {
        name = "ListCoverageStatistics",
        input_schema = types.ListCoverageStatisticsInput,
        output_schema = types.ListCoverageStatisticsOutput,
        http_method = "POST",
        http_path = "/coverage/statistics/list",
    }, options)
end

function Client:listDelegatedAdminAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListDelegatedAdminAccounts",
        input_schema = types.ListDelegatedAdminAccountsInput,
        output_schema = types.ListDelegatedAdminAccountsOutput,
        http_method = "POST",
        http_path = "/delegatedadminaccounts/list",
    }, options)
end

function Client:listFilters(input, options)
    return self:invokeOperation(input, {
        name = "ListFilters",
        input_schema = types.ListFiltersInput,
        output_schema = types.ListFiltersOutput,
        http_method = "POST",
        http_path = "/filters/list",
    }, options)
end

function Client:listFindingAggregations(input, options)
    return self:invokeOperation(input, {
        name = "ListFindingAggregations",
        input_schema = types.ListFindingAggregationsInput,
        output_schema = types.ListFindingAggregationsOutput,
        http_method = "POST",
        http_path = "/findings/aggregation/list",
    }, options)
end

function Client:listFindings(input, options)
    return self:invokeOperation(input, {
        name = "ListFindings",
        input_schema = types.ListFindingsInput,
        output_schema = types.ListFindingsOutput,
        http_method = "POST",
        http_path = "/findings/list",
    }, options)
end

function Client:listMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListMembers",
        input_schema = types.ListMembersInput,
        output_schema = types.ListMembersOutput,
        http_method = "POST",
        http_path = "/members/list",
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

function Client:listUsageTotals(input, options)
    return self:invokeOperation(input, {
        name = "ListUsageTotals",
        input_schema = types.ListUsageTotalsInput,
        output_schema = types.ListUsageTotalsOutput,
        http_method = "POST",
        http_path = "/usage/list",
    }, options)
end

function Client:resetEncryptionKey(input, options)
    return self:invokeOperation(input, {
        name = "ResetEncryptionKey",
        input_schema = types.ResetEncryptionKeyInput,
        output_schema = types.ResetEncryptionKeyOutput,
        http_method = "PUT",
        http_path = "/encryptionkey/reset",
    }, options)
end

function Client:searchVulnerabilities(input, options)
    return self:invokeOperation(input, {
        name = "SearchVulnerabilities",
        input_schema = types.SearchVulnerabilitiesInput,
        output_schema = types.SearchVulnerabilitiesOutput,
        http_method = "POST",
        http_path = "/vulnerabilities/search",
    }, options)
end

function Client:sendCisSessionHealth(input, options)
    return self:invokeOperation(input, {
        name = "SendCisSessionHealth",
        input_schema = types.SendCisSessionHealthInput,
        output_schema = types.SendCisSessionHealthOutput,
        http_method = "PUT",
        http_path = "/cissession/health/send",
    }, options)
end

function Client:sendCisSessionTelemetry(input, options)
    return self:invokeOperation(input, {
        name = "SendCisSessionTelemetry",
        input_schema = types.SendCisSessionTelemetryInput,
        output_schema = types.SendCisSessionTelemetryOutput,
        http_method = "PUT",
        http_path = "/cissession/telemetry/send",
    }, options)
end

function Client:startCisSession(input, options)
    return self:invokeOperation(input, {
        name = "StartCisSession",
        input_schema = types.StartCisSessionInput,
        output_schema = types.StartCisSessionOutput,
        http_method = "PUT",
        http_path = "/cissession/start",
    }, options)
end

function Client:startCodeSecurityScan(input, options)
    return self:invokeOperation(input, {
        name = "StartCodeSecurityScan",
        input_schema = types.StartCodeSecurityScanInput,
        output_schema = types.StartCodeSecurityScanOutput,
        http_method = "POST",
        http_path = "/codesecurity/scan/start",
    }, options)
end

function Client:stopCisSession(input, options)
    return self:invokeOperation(input, {
        name = "StopCisSession",
        input_schema = types.StopCisSessionInput,
        output_schema = types.StopCisSessionOutput,
        http_method = "PUT",
        http_path = "/cissession/stop",
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

function Client:updateCisScanConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCisScanConfiguration",
        input_schema = types.UpdateCisScanConfigurationInput,
        output_schema = types.UpdateCisScanConfigurationOutput,
        http_method = "POST",
        http_path = "/cis/scan-configuration/update",
    }, options)
end

function Client:updateCodeSecurityIntegration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCodeSecurityIntegration",
        input_schema = types.UpdateCodeSecurityIntegrationInput,
        output_schema = types.UpdateCodeSecurityIntegrationOutput,
        http_method = "POST",
        http_path = "/codesecurity/integration/update",
    }, options)
end

function Client:updateCodeSecurityScanConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCodeSecurityScanConfiguration",
        input_schema = types.UpdateCodeSecurityScanConfigurationInput,
        output_schema = types.UpdateCodeSecurityScanConfigurationOutput,
        http_method = "POST",
        http_path = "/codesecurity/scan-configuration/update",
    }, options)
end

function Client:updateConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfiguration",
        input_schema = types.UpdateConfigurationInput,
        output_schema = types.UpdateConfigurationOutput,
        http_method = "POST",
        http_path = "/configuration/update",
    }, options)
end

function Client:updateEc2DeepInspectionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEc2DeepInspectionConfiguration",
        input_schema = types.UpdateEc2DeepInspectionConfigurationInput,
        output_schema = types.UpdateEc2DeepInspectionConfigurationOutput,
        http_method = "POST",
        http_path = "/ec2deepinspectionconfiguration/update",
    }, options)
end

function Client:updateEncryptionKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEncryptionKey",
        input_schema = types.UpdateEncryptionKeyInput,
        output_schema = types.UpdateEncryptionKeyOutput,
        http_method = "PUT",
        http_path = "/encryptionkey/update",
    }, options)
end

function Client:updateFilter(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFilter",
        input_schema = types.UpdateFilterInput,
        output_schema = types.UpdateFilterOutput,
        http_method = "POST",
        http_path = "/filters/update",
    }, options)
end

function Client:updateOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOrganizationConfiguration",
        input_schema = types.UpdateOrganizationConfigurationInput,
        output_schema = types.UpdateOrganizationConfigurationOutput,
        http_method = "POST",
        http_path = "/organizationconfiguration/update",
    }, options)
end

function Client:updateOrgEc2DeepInspectionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOrgEc2DeepInspectionConfiguration",
        input_schema = types.UpdateOrgEc2DeepInspectionConfigurationInput,
        output_schema = types.UpdateOrgEc2DeepInspectionConfigurationOutput,
        http_method = "POST",
        http_path = "/ec2deepinspectionconfiguration/org/update",
    }, options)
end

return M
