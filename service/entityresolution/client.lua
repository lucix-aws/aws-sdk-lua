



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("entityresolution.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("entityresolution.schemas")
local traits = require("smithy.traits")
local types = require("entityresolution.types")
local sdk_defaults = require("aws.sdk_defaults")












































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSVeniceService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "entityresolution", signing_region = c.region } }
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

function C:addPolicyStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddPolicyStatement, input, options)
end

function C:batchDeleteUniqueId(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteUniqueId, input, options)
end

function C:createIdMappingWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIdMappingWorkflow, input, options)
end

function C:createIdNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIdNamespace, input, options)
end

function C:createMatchingWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMatchingWorkflow, input, options)
end

function C:createSchemaMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSchemaMapping, input, options)
end

function C:deleteIdMappingWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdMappingWorkflow, input, options)
end

function C:deleteIdNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdNamespace, input, options)
end

function C:deleteMatchingWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMatchingWorkflow, input, options)
end

function C:deletePolicyStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicyStatement, input, options)
end

function C:deleteSchemaMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSchemaMapping, input, options)
end

function C:generateMatchId(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateMatchId, input, options)
end

function C:getIdMappingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdMappingJob, input, options)
end

function C:getIdMappingWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdMappingWorkflow, input, options)
end

function C:getIdNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdNamespace, input, options)
end

function C:getMatchId(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMatchId, input, options)
end

function C:getMatchingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMatchingJob, input, options)
end

function C:getMatchingWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMatchingWorkflow, input, options)
end

function C:getPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicy, input, options)
end

function C:getProviderService(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProviderService, input, options)
end

function C:getSchemaMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSchemaMapping, input, options)
end

function C:listIdMappingJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdMappingJobs, input, options)
end

function C:listIdMappingWorkflows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdMappingWorkflows, input, options)
end

function C:listIdNamespaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdNamespaces, input, options)
end

function C:listMatchingJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMatchingJobs, input, options)
end

function C:listMatchingWorkflows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMatchingWorkflows, input, options)
end

function C:listProviderServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProviderServices, input, options)
end

function C:listSchemaMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSchemaMappings, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPolicy, input, options)
end

function C:startIdMappingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartIdMappingJob, input, options)
end

function C:startMatchingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMatchingJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateIdMappingWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIdMappingWorkflow, input, options)
end

function C:updateIdNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIdNamespace, input, options)
end

function C:updateMatchingWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMatchingWorkflow, input, options)
end

function C:updateSchemaMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSchemaMapping, input, options)
end

return M
