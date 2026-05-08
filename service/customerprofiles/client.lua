



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("customerprofiles.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("customerprofiles.schemas")
local traits = require("smithy.traits")
local types = require("customerprofiles.types")
local sdk_defaults = require("aws.sdk_defaults")
















































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CustomerProfiles_20200815"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "profile", signing_region = c.region } }
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

function C:addProfileKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddProfileKey, input, options)
end

function C:batchGetCalculatedAttributeForProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetCalculatedAttributeForProfile, input, options)
end

function C:batchGetProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetProfile, input, options)
end

function C:createCalculatedAttributeDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCalculatedAttributeDefinition, input, options)
end

function C:createDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomain, input, options)
end

function C:createDomainLayout(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomainLayout, input, options)
end

function C:createEventStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventStream, input, options)
end

function C:createEventTrigger(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventTrigger, input, options)
end

function C:createIntegrationWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIntegrationWorkflow, input, options)
end

function C:createProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProfile, input, options)
end

function C:createRecommender(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRecommender, input, options)
end

function C:createRecommenderFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRecommenderFilter, input, options)
end

function C:createRecommenderSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRecommenderSchema, input, options)
end

function C:createSegmentDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSegmentDefinition, input, options)
end

function C:createSegmentEstimate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSegmentEstimate, input, options)
end

function C:createSegmentSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSegmentSnapshot, input, options)
end

function C:createUploadJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUploadJob, input, options)
end

function C:deleteCalculatedAttributeDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCalculatedAttributeDefinition, input, options)
end

function C:deleteDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomain, input, options)
end

function C:deleteDomainLayout(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomainLayout, input, options)
end

function C:deleteDomainObjectType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomainObjectType, input, options)
end

function C:deleteEventStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventStream, input, options)
end

function C:deleteEventTrigger(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventTrigger, input, options)
end

function C:deleteIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegration, input, options)
end

function C:deleteProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProfile, input, options)
end

function C:deleteProfileKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProfileKey, input, options)
end

function C:deleteProfileObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProfileObject, input, options)
end

function C:deleteProfileObjectType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProfileObjectType, input, options)
end

function C:deleteRecommender(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecommender, input, options)
end

function C:deleteRecommenderFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecommenderFilter, input, options)
end

function C:deleteRecommenderSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecommenderSchema, input, options)
end

function C:deleteSegmentDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSegmentDefinition, input, options)
end

function C:deleteWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkflow, input, options)
end

function C:detectProfileObjectType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectProfileObjectType, input, options)
end

function C:getAutoMergingPreview(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutoMergingPreview, input, options)
end

function C:getCalculatedAttributeDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCalculatedAttributeDefinition, input, options)
end

function C:getCalculatedAttributeForProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCalculatedAttributeForProfile, input, options)
end

function C:getDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomain, input, options)
end

function C:getDomainLayout(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainLayout, input, options)
end

function C:getDomainObjectType(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainObjectType, input, options)
end

function C:getEventStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventStream, input, options)
end

function C:getEventTrigger(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventTrigger, input, options)
end

function C:getIdentityResolutionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityResolutionJob, input, options)
end

function C:getIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntegration, input, options)
end

function C:getMatches(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMatches, input, options)
end

function C:getObjectTypeAttributeStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetObjectTypeAttributeStatistics, input, options)
end

function C:getProfileHistoryRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfileHistoryRecord, input, options)
end

function C:getProfileObjectType(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfileObjectType, input, options)
end

function C:getProfileObjectTypeTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfileObjectTypeTemplate, input, options)
end

function C:getProfileRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfileRecommendations, input, options)
end

function C:getRecommender(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommender, input, options)
end

function C:getRecommenderFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommenderFilter, input, options)
end

function C:getRecommenderSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommenderSchema, input, options)
end

function C:getSegmentDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSegmentDefinition, input, options)
end

function C:getSegmentEstimate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSegmentEstimate, input, options)
end

function C:getSegmentMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSegmentMembership, input, options)
end

function C:getSegmentSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSegmentSnapshot, input, options)
end

function C:getSimilarProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSimilarProfiles, input, options)
end

function C:getUploadJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUploadJob, input, options)
end

function C:getUploadJobPath(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUploadJobPath, input, options)
end

function C:getWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflow, input, options)
end

function C:getWorkflowSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowSteps, input, options)
end

function C:listAccountIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountIntegrations, input, options)
end

function C:listCalculatedAttributeDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCalculatedAttributeDefinitions, input, options)
end

function C:listCalculatedAttributesForProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCalculatedAttributesForProfile, input, options)
end

function C:listDomainLayouts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainLayouts, input, options)
end

function C:listDomainObjectTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainObjectTypes, input, options)
end

function C:listDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomains, input, options)
end

function C:listEventStreams(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventStreams, input, options)
end

function C:listEventTriggers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventTriggers, input, options)
end

function C:listIdentityResolutionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentityResolutionJobs, input, options)
end

function C:listIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIntegrations, input, options)
end

function C:listObjectTypeAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListObjectTypeAttributes, input, options)
end

function C:listObjectTypeAttributeValues(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListObjectTypeAttributeValues, input, options)
end

function C:listProfileAttributeValues(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfileAttributeValues, input, options)
end

function C:listProfileHistoryRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfileHistoryRecords, input, options)
end

function C:listProfileObjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfileObjects, input, options)
end

function C:listProfileObjectTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfileObjectTypes, input, options)
end

function C:listProfileObjectTypeTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfileObjectTypeTemplates, input, options)
end

function C:listRecommenderFilters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommenderFilters, input, options)
end

function C:listRecommenderRecipes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommenderRecipes, input, options)
end

function C:listRecommenders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommenders, input, options)
end

function C:listRecommenderSchemas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommenderSchemas, input, options)
end

function C:listRuleBasedMatches(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRuleBasedMatches, input, options)
end

function C:listSegmentDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSegmentDefinitions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listUploadJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUploadJobs, input, options)
end

function C:listWorkflows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflows, input, options)
end

function C:mergeProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.MergeProfiles, input, options)
end

function C:putDomainObjectType(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDomainObjectType, input, options)
end

function C:putIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutIntegration, input, options)
end

function C:putProfileObject(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutProfileObject, input, options)
end

function C:putProfileObjectType(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutProfileObjectType, input, options)
end

function C:searchProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchProfiles, input, options)
end

function C:startRecommender(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRecommender, input, options)
end

function C:startUploadJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartUploadJob, input, options)
end

function C:stopRecommender(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopRecommender, input, options)
end

function C:stopUploadJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopUploadJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCalculatedAttributeDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCalculatedAttributeDefinition, input, options)
end

function C:updateDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomain, input, options)
end

function C:updateDomainLayout(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainLayout, input, options)
end

function C:updateEventTrigger(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventTrigger, input, options)
end

function C:updateProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProfile, input, options)
end

function C:updateRecommender(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRecommender, input, options)
end

return M
