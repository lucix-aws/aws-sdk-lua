



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("macie2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("macie2.schemas")
local traits = require("smithy.traits")
local types = require("macie2.types")
local sdk_defaults = require("aws.sdk_defaults")























































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Macie2"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "macie2", signing_region = c.region } }
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

function C:acceptInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptInvitation, input, options)
end

function C:batchGetCustomDataIdentifiers(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetCustomDataIdentifiers, input, options)
end

function C:batchUpdateAutomatedDiscoveryAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateAutomatedDiscoveryAccounts, input, options)
end

function C:createAllowList(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAllowList, input, options)
end

function C:createClassificationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateClassificationJob, input, options)
end

function C:createCustomDataIdentifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomDataIdentifier, input, options)
end

function C:createFindingsFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFindingsFilter, input, options)
end

function C:createInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInvitations, input, options)
end

function C:createMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMember, input, options)
end

function C:createSampleFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSampleFindings, input, options)
end

function C:declineInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeclineInvitations, input, options)
end

function C:deleteAllowList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAllowList, input, options)
end

function C:deleteCustomDataIdentifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomDataIdentifier, input, options)
end

function C:deleteFindingsFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFindingsFilter, input, options)
end

function C:deleteInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInvitations, input, options)
end

function C:deleteMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMember, input, options)
end

function C:describeBuckets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBuckets, input, options)
end

function C:describeClassificationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClassificationJob, input, options)
end

function C:describeOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationConfiguration, input, options)
end

function C:disableMacie(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableMacie, input, options)
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

function C:disassociateMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMember, input, options)
end

function C:enableMacie(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableMacie, input, options)
end

function C:enableOrganizationAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableOrganizationAdminAccount, input, options)
end

function C:getAdministratorAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAdministratorAccount, input, options)
end

function C:getAllowList(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAllowList, input, options)
end

function C:getAutomatedDiscoveryConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutomatedDiscoveryConfiguration, input, options)
end

function C:getBucketStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketStatistics, input, options)
end

function C:getClassificationExportConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetClassificationExportConfiguration, input, options)
end

function C:getClassificationScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetClassificationScope, input, options)
end

function C:getCustomDataIdentifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCustomDataIdentifier, input, options)
end

function C:getFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindings, input, options)
end

function C:getFindingsFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingsFilter, input, options)
end

function C:getFindingsPublicationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingsPublicationConfiguration, input, options)
end

function C:getFindingStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFindingStatistics, input, options)
end

function C:getInvitationsCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInvitationsCount, input, options)
end

function C:getMacieSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMacieSession, input, options)
end

function C:getMasterAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMasterAccount, input, options)
end

function C:getMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMember, input, options)
end

function C:getResourceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceProfile, input, options)
end

function C:getRevealConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRevealConfiguration, input, options)
end

function C:getSensitiveDataOccurrences(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSensitiveDataOccurrences, input, options)
end

function C:getSensitiveDataOccurrencesAvailability(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSensitiveDataOccurrencesAvailability, input, options)
end

function C:getSensitivityInspectionTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSensitivityInspectionTemplate, input, options)
end

function C:getUsageStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUsageStatistics, input, options)
end

function C:getUsageTotals(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUsageTotals, input, options)
end

function C:listAllowLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAllowLists, input, options)
end

function C:listAutomatedDiscoveryAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutomatedDiscoveryAccounts, input, options)
end

function C:listClassificationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClassificationJobs, input, options)
end

function C:listClassificationScopes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClassificationScopes, input, options)
end

function C:listCustomDataIdentifiers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomDataIdentifiers, input, options)
end

function C:listFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFindings, input, options)
end

function C:listFindingsFilters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFindingsFilters, input, options)
end

function C:listInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInvitations, input, options)
end

function C:listManagedDataIdentifiers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedDataIdentifiers, input, options)
end

function C:listMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMembers, input, options)
end

function C:listOrganizationAdminAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationAdminAccounts, input, options)
end

function C:listResourceProfileArtifacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceProfileArtifacts, input, options)
end

function C:listResourceProfileDetections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceProfileDetections, input, options)
end

function C:listSensitivityInspectionTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSensitivityInspectionTemplates, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putClassificationExportConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutClassificationExportConfiguration, input, options)
end

function C:putFindingsPublicationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFindingsPublicationConfiguration, input, options)
end

function C:searchResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchResources, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testCustomDataIdentifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestCustomDataIdentifier, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAllowList(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAllowList, input, options)
end

function C:updateAutomatedDiscoveryConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAutomatedDiscoveryConfiguration, input, options)
end

function C:updateClassificationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateClassificationJob, input, options)
end

function C:updateClassificationScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateClassificationScope, input, options)
end

function C:updateFindingsFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFindingsFilter, input, options)
end

function C:updateMacieSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMacieSession, input, options)
end

function C:updateMemberSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMemberSession, input, options)
end

function C:updateOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOrganizationConfiguration, input, options)
end

function C:updateResourceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourceProfile, input, options)
end

function C:updateResourceProfileDetections(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourceProfileDetections, input, options)
end

function C:updateRevealConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRevealConfiguration, input, options)
end

function C:updateSensitivityInspectionTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSensitivityInspectionTemplate, input, options)
end

return M
