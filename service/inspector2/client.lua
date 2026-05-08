



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("inspector2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("inspector2.schemas")
local traits = require("smithy.traits")
local types = require("inspector2.types")
local sdk_defaults = require("aws.sdk_defaults")

















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Inspector2"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "inspector2", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:associateMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateMember, input, options)
end

function C:batchAssociateCodeSecurityScanConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAssociateCodeSecurityScanConfiguration, input, options)
end

function C:batchDisassociateCodeSecurityScanConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDisassociateCodeSecurityScanConfiguration, input, options)
end

function C:batchGetAccountStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetAccountStatus, input, options)
end

function C:batchGetCodeSnippet(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetCodeSnippet, input, options)
end

function C:batchGetFindingDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetFindingDetails, input, options)
end

function C:batchGetFreeTrialInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetFreeTrialInfo, input, options)
end

function C:batchGetMemberEc2DeepInspectionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetMemberEc2DeepInspectionStatus, input, options)
end

function C:batchUpdateMemberEc2DeepInspectionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateMemberEc2DeepInspectionStatus, input, options)
end

function C:cancelFindingsReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelFindingsReport, input, options)
end

function C:cancelSbomExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelSbomExport, input, options)
end

function C:createCisScanConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCisScanConfiguration, input, options)
end

function C:createCodeSecurityIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCodeSecurityIntegration, input, options)
end

function C:createCodeSecurityScanConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCodeSecurityScanConfiguration, input, options)
end

function C:createFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFilter, input, options)
end

function C:createFindingsReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFindingsReport, input, options)
end

function C:createSbomExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSbomExport, input, options)
end

function C:deleteCisScanConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCisScanConfiguration, input, options)
end

function C:deleteCodeSecurityIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCodeSecurityIntegration, input, options)
end

function C:deleteCodeSecurityScanConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCodeSecurityScanConfiguration, input, options)
end

function C:deleteFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFilter, input, options)
end

function C:describeOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationConfiguration, input, options)
end

function C:disable(input, options)
   return self:invokeOperation(schemas.Service, schemas.Disable, input, options)
end

function C:disableDelegatedAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableDelegatedAdminAccount, input, options)
end

function C:disassociateMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMember, input, options)
end

function C:enable(input, options)
   return self:invokeOperation(schemas.Service, schemas.Enable, input, options)
end

function C:enableDelegatedAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableDelegatedAdminAccount, input, options)
end

function C:getCisScanReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCisScanReport, input, options)
end

function C:getCisScanResultDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCisScanResultDetails, input, options)
end

function C:getClustersForImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetClustersForImage, input, options)
end

function C:getCodeSecurityIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCodeSecurityIntegration, input, options)
end

function C:getCodeSecurityScan(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCodeSecurityScan, input, options)
end

function C:getCodeSecurityScanConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCodeSecurityScanConfiguration, input, options)
end

function C:getConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguration, input, options)
end

function C:getDelegatedAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDelegatedAdminAccount, input, options)
end

function C:getEc2DeepInspectionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEc2DeepInspectionConfiguration, input, options)
end

function C:getEncryptionKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEncryptionKey, input, options)
end

function C:getFindingsReportStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingsReportStatus, input, options)
end

function C:getMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMember, input, options)
end

function C:getSbomExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSbomExport, input, options)
end

function C:listAccountPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountPermissions, input, options)
end

function C:listCisScanConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCisScanConfigurations, input, options)
end

function C:listCisScanResultsAggregatedByChecks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCisScanResultsAggregatedByChecks, input, options)
end

function C:listCisScanResultsAggregatedByTargetResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCisScanResultsAggregatedByTargetResource, input, options)
end

function C:listCisScans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCisScans, input, options)
end

function C:listCodeSecurityIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCodeSecurityIntegrations, input, options)
end

function C:listCodeSecurityScanConfigurationAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCodeSecurityScanConfigurationAssociations, input, options)
end

function C:listCodeSecurityScanConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCodeSecurityScanConfigurations, input, options)
end

function C:listCoverage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCoverage, input, options)
end

function C:listCoverageStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCoverageStatistics, input, options)
end

function C:listDelegatedAdminAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDelegatedAdminAccounts, input, options)
end

function C:listFilters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFilters, input, options)
end

function C:listFindingAggregations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFindingAggregations, input, options)
end

function C:listFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFindings, input, options)
end

function C:listMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMembers, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listUsageTotals(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsageTotals, input, options)
end

function C:resetEncryptionKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetEncryptionKey, input, options)
end

function C:searchVulnerabilities(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchVulnerabilities, input, options)
end

function C:sendCisSessionHealth(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendCisSessionHealth, input, options)
end

function C:sendCisSessionTelemetry(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendCisSessionTelemetry, input, options)
end

function C:startCisSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCisSession, input, options)
end

function C:startCodeSecurityScan(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCodeSecurityScan, input, options)
end

function C:stopCisSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopCisSession, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCisScanConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCisScanConfiguration, input, options)
end

function C:updateCodeSecurityIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCodeSecurityIntegration, input, options)
end

function C:updateCodeSecurityScanConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCodeSecurityScanConfiguration, input, options)
end

function C:updateConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfiguration, input, options)
end

function C:updateEc2DeepInspectionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEc2DeepInspectionConfiguration, input, options)
end

function C:updateEncryptionKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEncryptionKey, input, options)
end

function C:updateFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFilter, input, options)
end

function C:updateOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOrganizationConfiguration, input, options)
end

function C:updateOrgEc2DeepInspectionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOrgEc2DeepInspectionConfiguration, input, options)
end

return M
