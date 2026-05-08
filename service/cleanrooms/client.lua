



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cleanrooms.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("cleanrooms.schemas")
local traits = require("smithy.traits")
local types = require("cleanrooms.types")
local sdk_defaults = require("aws.sdk_defaults")






























































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSBastionControlPlaneServiceLambda"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cleanrooms", signing_region = c.region } }
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

function C:batchGetCollaborationAnalysisTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetCollaborationAnalysisTemplate, input, options)
end

function C:batchGetSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetSchema, input, options)
end

function C:batchGetSchemaAnalysisRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetSchemaAnalysisRule, input, options)
end

function C:createAnalysisTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAnalysisTemplate, input, options)
end

function C:createCollaboration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCollaboration, input, options)
end

function C:createCollaborationChangeRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCollaborationChangeRequest, input, options)
end

function C:createConfiguredAudienceModelAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfiguredAudienceModelAssociation, input, options)
end

function C:createConfiguredTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfiguredTable, input, options)
end

function C:createConfiguredTableAnalysisRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfiguredTableAnalysisRule, input, options)
end

function C:createConfiguredTableAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfiguredTableAssociation, input, options)
end

function C:createConfiguredTableAssociationAnalysisRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfiguredTableAssociationAnalysisRule, input, options)
end

function C:createIdMappingTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIdMappingTable, input, options)
end

function C:createIdNamespaceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIdNamespaceAssociation, input, options)
end

function C:createMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMembership, input, options)
end

function C:createPrivacyBudgetTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePrivacyBudgetTemplate, input, options)
end

function C:deleteAnalysisTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAnalysisTemplate, input, options)
end

function C:deleteCollaboration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCollaboration, input, options)
end

function C:deleteConfiguredAudienceModelAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfiguredAudienceModelAssociation, input, options)
end

function C:deleteConfiguredTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfiguredTable, input, options)
end

function C:deleteConfiguredTableAnalysisRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfiguredTableAnalysisRule, input, options)
end

function C:deleteConfiguredTableAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfiguredTableAssociation, input, options)
end

function C:deleteConfiguredTableAssociationAnalysisRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfiguredTableAssociationAnalysisRule, input, options)
end

function C:deleteIdMappingTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdMappingTable, input, options)
end

function C:deleteIdNamespaceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdNamespaceAssociation, input, options)
end

function C:deleteMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMember, input, options)
end

function C:deleteMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMembership, input, options)
end

function C:deletePrivacyBudgetTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePrivacyBudgetTemplate, input, options)
end

function C:getAnalysisTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAnalysisTemplate, input, options)
end

function C:getCollaboration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCollaboration, input, options)
end

function C:getCollaborationAnalysisTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCollaborationAnalysisTemplate, input, options)
end

function C:getCollaborationChangeRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCollaborationChangeRequest, input, options)
end

function C:getCollaborationConfiguredAudienceModelAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCollaborationConfiguredAudienceModelAssociation, input, options)
end

function C:getCollaborationIdNamespaceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCollaborationIdNamespaceAssociation, input, options)
end

function C:getCollaborationPrivacyBudgetTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCollaborationPrivacyBudgetTemplate, input, options)
end

function C:getConfiguredAudienceModelAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguredAudienceModelAssociation, input, options)
end

function C:getConfiguredTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguredTable, input, options)
end

function C:getConfiguredTableAnalysisRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguredTableAnalysisRule, input, options)
end

function C:getConfiguredTableAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguredTableAssociation, input, options)
end

function C:getConfiguredTableAssociationAnalysisRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfiguredTableAssociationAnalysisRule, input, options)
end

function C:getIdMappingTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdMappingTable, input, options)
end

function C:getIdNamespaceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdNamespaceAssociation, input, options)
end

function C:getMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMembership, input, options)
end

function C:getPrivacyBudgetTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPrivacyBudgetTemplate, input, options)
end

function C:getProtectedJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProtectedJob, input, options)
end

function C:getProtectedQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProtectedQuery, input, options)
end

function C:getSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSchema, input, options)
end

function C:getSchemaAnalysisRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSchemaAnalysisRule, input, options)
end

function C:listAnalysisTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnalysisTemplates, input, options)
end

function C:listCollaborationAnalysisTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollaborationAnalysisTemplates, input, options)
end

function C:listCollaborationChangeRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollaborationChangeRequests, input, options)
end

function C:listCollaborationConfiguredAudienceModelAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollaborationConfiguredAudienceModelAssociations, input, options)
end

function C:listCollaborationIdNamespaceAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollaborationIdNamespaceAssociations, input, options)
end

function C:listCollaborationPrivacyBudgets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollaborationPrivacyBudgets, input, options)
end

function C:listCollaborationPrivacyBudgetTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollaborationPrivacyBudgetTemplates, input, options)
end

function C:listCollaborations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollaborations, input, options)
end

function C:listConfiguredAudienceModelAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfiguredAudienceModelAssociations, input, options)
end

function C:listConfiguredTableAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfiguredTableAssociations, input, options)
end

function C:listConfiguredTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfiguredTables, input, options)
end

function C:listIdMappingTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdMappingTables, input, options)
end

function C:listIdNamespaceAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdNamespaceAssociations, input, options)
end

function C:listMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMembers, input, options)
end

function C:listMemberships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMemberships, input, options)
end

function C:listPrivacyBudgets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrivacyBudgets, input, options)
end

function C:listPrivacyBudgetTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrivacyBudgetTemplates, input, options)
end

function C:listProtectedJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProtectedJobs, input, options)
end

function C:listProtectedQueries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProtectedQueries, input, options)
end

function C:listSchemas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSchemas, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:populateIdMappingTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.PopulateIdMappingTable, input, options)
end

function C:previewPrivacyImpact(input, options)
   return self:invokeOperation(schemas.Service, schemas.PreviewPrivacyImpact, input, options)
end

function C:startProtectedJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartProtectedJob, input, options)
end

function C:startProtectedQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartProtectedQuery, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAnalysisTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAnalysisTemplate, input, options)
end

function C:updateCollaboration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCollaboration, input, options)
end

function C:updateCollaborationChangeRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCollaborationChangeRequest, input, options)
end

function C:updateConfiguredAudienceModelAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfiguredAudienceModelAssociation, input, options)
end

function C:updateConfiguredTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfiguredTable, input, options)
end

function C:updateConfiguredTableAnalysisRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfiguredTableAnalysisRule, input, options)
end

function C:updateConfiguredTableAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfiguredTableAssociation, input, options)
end

function C:updateConfiguredTableAssociationAnalysisRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfiguredTableAssociationAnalysisRule, input, options)
end

function C:updateIdMappingTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIdMappingTable, input, options)
end

function C:updateIdNamespaceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIdNamespaceAssociation, input, options)
end

function C:updateMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMembership, input, options)
end

function C:updatePrivacyBudgetTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePrivacyBudgetTemplate, input, options)
end

function C:updateProtectedJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProtectedJob, input, options)
end

function C:updateProtectedQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProtectedQuery, input, options)
end

return M
