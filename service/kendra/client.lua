



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("kendra.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("kendra.schemas")
local traits = require("smithy.traits")
local types = require("kendra.types")
local sdk_defaults = require("aws.sdk_defaults")








































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSKendraFrontendService"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kendra", signing_region = c.region } }
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

function C:associateEntitiesToExperience(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateEntitiesToExperience, input, options)
end

function C:associatePersonasToEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociatePersonasToEntities, input, options)
end

function C:batchDeleteDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteDocument, input, options)
end

function C:batchDeleteFeaturedResultsSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteFeaturedResultsSet, input, options)
end

function C:batchGetDocumentStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetDocumentStatus, input, options)
end

function C:batchPutDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchPutDocument, input, options)
end

function C:clearQuerySuggestions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ClearQuerySuggestions, input, options)
end

function C:createAccessControlConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessControlConfiguration, input, options)
end

function C:createDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSource, input, options)
end

function C:createExperience(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExperience, input, options)
end

function C:createFaq(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFaq, input, options)
end

function C:createFeaturedResultsSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFeaturedResultsSet, input, options)
end

function C:createIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIndex, input, options)
end

function C:createQuerySuggestionsBlockList(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQuerySuggestionsBlockList, input, options)
end

function C:createThesaurus(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateThesaurus, input, options)
end

function C:deleteAccessControlConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessControlConfiguration, input, options)
end

function C:deleteDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataSource, input, options)
end

function C:deleteExperience(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteExperience, input, options)
end

function C:deleteFaq(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFaq, input, options)
end

function C:deleteIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIndex, input, options)
end

function C:deletePrincipalMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePrincipalMapping, input, options)
end

function C:deleteQuerySuggestionsBlockList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQuerySuggestionsBlockList, input, options)
end

function C:deleteThesaurus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteThesaurus, input, options)
end

function C:describeAccessControlConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccessControlConfiguration, input, options)
end

function C:describeDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataSource, input, options)
end

function C:describeExperience(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExperience, input, options)
end

function C:describeFaq(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFaq, input, options)
end

function C:describeFeaturedResultsSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFeaturedResultsSet, input, options)
end

function C:describeIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIndex, input, options)
end

function C:describePrincipalMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePrincipalMapping, input, options)
end

function C:describeQuerySuggestionsBlockList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeQuerySuggestionsBlockList, input, options)
end

function C:describeQuerySuggestionsConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeQuerySuggestionsConfig, input, options)
end

function C:describeThesaurus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeThesaurus, input, options)
end

function C:disassociateEntitiesFromExperience(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateEntitiesFromExperience, input, options)
end

function C:disassociatePersonasFromEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociatePersonasFromEntities, input, options)
end

function C:getQuerySuggestions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQuerySuggestions, input, options)
end

function C:getSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSnapshots, input, options)
end

function C:listAccessControlConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessControlConfigurations, input, options)
end

function C:listDataSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSources, input, options)
end

function C:listDataSourceSyncJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSourceSyncJobs, input, options)
end

function C:listEntityPersonas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEntityPersonas, input, options)
end

function C:listExperienceEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExperienceEntities, input, options)
end

function C:listExperiences(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExperiences, input, options)
end

function C:listFaqs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFaqs, input, options)
end

function C:listFeaturedResultsSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFeaturedResultsSets, input, options)
end

function C:listGroupsOlderThanOrderingId(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupsOlderThanOrderingId, input, options)
end

function C:listIndices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIndices, input, options)
end

function C:listQuerySuggestionsBlockLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQuerySuggestionsBlockLists, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listThesauri(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThesauri, input, options)
end

function C:putPrincipalMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPrincipalMapping, input, options)
end

function C:query(input, options)
   return self:invokeOperation(schemas.Service, schemas.Query, input, options)
end

function C:retrieve(input, options)
   return self:invokeOperation(schemas.Service, schemas.Retrieve, input, options)
end

function C:startDataSourceSyncJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDataSourceSyncJob, input, options)
end

function C:stopDataSourceSyncJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDataSourceSyncJob, input, options)
end

function C:submitFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitFeedback, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccessControlConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccessControlConfiguration, input, options)
end

function C:updateDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataSource, input, options)
end

function C:updateExperience(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateExperience, input, options)
end

function C:updateFeaturedResultsSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFeaturedResultsSet, input, options)
end

function C:updateIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIndex, input, options)
end

function C:updateQuerySuggestionsBlockList(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQuerySuggestionsBlockList, input, options)
end

function C:updateQuerySuggestionsConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQuerySuggestionsConfig, input, options)
end

function C:updateThesaurus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateThesaurus, input, options)
end

return M
