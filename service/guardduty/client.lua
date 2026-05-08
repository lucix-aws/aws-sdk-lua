



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("guardduty.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("guardduty.schemas")
local traits = require("smithy.traits")
local types = require("guardduty.types")
local sdk_defaults = require("aws.sdk_defaults")





























































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "GuardDutyAPIService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "guardduty", signing_region = c.region } }
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

function C:acceptAdministratorInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptAdministratorInvitation, input, options)
end

function C:acceptInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptInvitation, input, options)
end

function C:archiveFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ArchiveFindings, input, options)
end

function C:createDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDetector, input, options)
end

function C:createFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFilter, input, options)
end

function C:createIPSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIPSet, input, options)
end

function C:createMalwareProtectionPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMalwareProtectionPlan, input, options)
end

function C:createMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMembers, input, options)
end

function C:createPublishingDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePublishingDestination, input, options)
end

function C:createSampleFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSampleFindings, input, options)
end

function C:createThreatEntitySet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateThreatEntitySet, input, options)
end

function C:createThreatIntelSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateThreatIntelSet, input, options)
end

function C:createTrustedEntitySet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrustedEntitySet, input, options)
end

function C:declineInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeclineInvitations, input, options)
end

function C:deleteDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDetector, input, options)
end

function C:deleteFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFilter, input, options)
end

function C:deleteInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInvitations, input, options)
end

function C:deleteIPSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIPSet, input, options)
end

function C:deleteMalwareProtectionPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMalwareProtectionPlan, input, options)
end

function C:deleteMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMembers, input, options)
end

function C:deletePublishingDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePublishingDestination, input, options)
end

function C:deleteThreatEntitySet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteThreatEntitySet, input, options)
end

function C:deleteThreatIntelSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteThreatIntelSet, input, options)
end

function C:deleteTrustedEntitySet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrustedEntitySet, input, options)
end

function C:describeMalwareScans(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMalwareScans, input, options)
end

function C:describeOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationConfiguration, input, options)
end

function C:describePublishingDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePublishingDestination, input, options)
end

function C:disableOrganizationAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableOrganizationAdminAccount, input, options)
end

function C:disassociateFromAdministratorAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateFromAdministratorAccount, input, options)
end

function C:disassociateFromMasterAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateFromMasterAccount, input, options)
end

function C:disassociateMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMembers, input, options)
end

function C:enableOrganizationAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableOrganizationAdminAccount, input, options)
end

function C:getAdministratorAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAdministratorAccount, input, options)
end

function C:getCoverageStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCoverageStatistics, input, options)
end

function C:getDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDetector, input, options)
end

function C:getFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFilter, input, options)
end

function C:getFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindings, input, options)
end

function C:getFindingsStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingsStatistics, input, options)
end

function C:getInvitationsCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInvitationsCount, input, options)
end

function C:getIPSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIPSet, input, options)
end

function C:getMalwareProtectionPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMalwareProtectionPlan, input, options)
end

function C:getMalwareScan(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMalwareScan, input, options)
end

function C:getMalwareScanSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMalwareScanSettings, input, options)
end

function C:getMasterAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMasterAccount, input, options)
end

function C:getMemberDetectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMemberDetectors, input, options)
end

function C:getMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMembers, input, options)
end

function C:getOrganizationStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOrganizationStatistics, input, options)
end

function C:getRemainingFreeTrialDays(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRemainingFreeTrialDays, input, options)
end

function C:getThreatEntitySet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetThreatEntitySet, input, options)
end

function C:getThreatIntelSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetThreatIntelSet, input, options)
end

function C:getTrustedEntitySet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrustedEntitySet, input, options)
end

function C:getUsageStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUsageStatistics, input, options)
end

function C:inviteMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.InviteMembers, input, options)
end

function C:listCoverage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCoverage, input, options)
end

function C:listDetectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDetectors, input, options)
end

function C:listFilters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFilters, input, options)
end

function C:listFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFindings, input, options)
end

function C:listInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInvitations, input, options)
end

function C:listIPSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIPSets, input, options)
end

function C:listMalwareProtectionPlans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMalwareProtectionPlans, input, options)
end

function C:listMalwareScans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMalwareScans, input, options)
end

function C:listMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMembers, input, options)
end

function C:listOrganizationAdminAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationAdminAccounts, input, options)
end

function C:listPublishingDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPublishingDestinations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listThreatEntitySets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThreatEntitySets, input, options)
end

function C:listThreatIntelSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThreatIntelSets, input, options)
end

function C:listTrustedEntitySets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrustedEntitySets, input, options)
end

function C:sendObjectMalwareScan(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendObjectMalwareScan, input, options)
end

function C:startMalwareScan(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMalwareScan, input, options)
end

function C:startMonitoringMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMonitoringMembers, input, options)
end

function C:stopMonitoringMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopMonitoringMembers, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:unarchiveFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnarchiveFindings, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDetector, input, options)
end

function C:updateFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFilter, input, options)
end

function C:updateFindingsFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFindingsFeedback, input, options)
end

function C:updateIPSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIPSet, input, options)
end

function C:updateMalwareProtectionPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMalwareProtectionPlan, input, options)
end

function C:updateMalwareScanSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMalwareScanSettings, input, options)
end

function C:updateMemberDetectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMemberDetectors, input, options)
end

function C:updateOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOrganizationConfiguration, input, options)
end

function C:updatePublishingDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePublishingDestination, input, options)
end

function C:updateThreatEntitySet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateThreatEntitySet, input, options)
end

function C:updateThreatIntelSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateThreatIntelSet, input, options)
end

function C:updateTrustedEntitySet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrustedEntitySet, input, options)
end

return M
