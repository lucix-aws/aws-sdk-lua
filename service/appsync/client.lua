



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("appsync.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("appsync.schemas")
local traits = require("smithy.traits")
local types = require("appsync.types")
local sdk_defaults = require("aws.sdk_defaults")
















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSDeepdishControlPlaneService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "appsync", signing_region = c.region } }
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

function C:associateApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateApi, input, options)
end

function C:associateMergedGraphqlApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateMergedGraphqlApi, input, options)
end

function C:associateSourceGraphqlApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSourceGraphqlApi, input, options)
end

function C:createApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApi, input, options)
end

function C:createApiCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApiCache, input, options)
end

function C:createApiKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApiKey, input, options)
end

function C:createChannelNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannelNamespace, input, options)
end

function C:createDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSource, input, options)
end

function C:createDomainName(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomainName, input, options)
end

function C:createFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFunction, input, options)
end

function C:createGraphqlApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGraphqlApi, input, options)
end

function C:createResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResolver, input, options)
end

function C:createType(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateType, input, options)
end

function C:deleteApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApi, input, options)
end

function C:deleteApiCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApiCache, input, options)
end

function C:deleteApiKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApiKey, input, options)
end

function C:deleteChannelNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannelNamespace, input, options)
end

function C:deleteDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataSource, input, options)
end

function C:deleteDomainName(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomainName, input, options)
end

function C:deleteFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFunction, input, options)
end

function C:deleteGraphqlApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGraphqlApi, input, options)
end

function C:deleteResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResolver, input, options)
end

function C:deleteType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteType, input, options)
end

function C:disassociateApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateApi, input, options)
end

function C:disassociateMergedGraphqlApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMergedGraphqlApi, input, options)
end

function C:disassociateSourceGraphqlApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSourceGraphqlApi, input, options)
end

function C:evaluateCode(input, options)
   return self:invokeOperation(schemas.Service, schemas.EvaluateCode, input, options)
end

function C:evaluateMappingTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.EvaluateMappingTemplate, input, options)
end

function C:flushApiCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.FlushApiCache, input, options)
end

function C:getApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApi, input, options)
end

function C:getApiAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApiAssociation, input, options)
end

function C:getApiCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApiCache, input, options)
end

function C:getChannelNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannelNamespace, input, options)
end

function C:getDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataSource, input, options)
end

function C:getDataSourceIntrospection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataSourceIntrospection, input, options)
end

function C:getDomainName(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainName, input, options)
end

function C:getFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunction, input, options)
end

function C:getGraphqlApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGraphqlApi, input, options)
end

function C:getGraphqlApiEnvironmentVariables(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGraphqlApiEnvironmentVariables, input, options)
end

function C:getIntrospectionSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntrospectionSchema, input, options)
end

function C:getResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResolver, input, options)
end

function C:getSchemaCreationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSchemaCreationStatus, input, options)
end

function C:getSourceApiAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSourceApiAssociation, input, options)
end

function C:getType(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetType, input, options)
end

function C:listApiKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApiKeys, input, options)
end

function C:listApis(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApis, input, options)
end

function C:listChannelNamespaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannelNamespaces, input, options)
end

function C:listDataSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSources, input, options)
end

function C:listDomainNames(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainNames, input, options)
end

function C:listFunctions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFunctions, input, options)
end

function C:listGraphqlApis(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGraphqlApis, input, options)
end

function C:listResolvers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResolvers, input, options)
end

function C:listResolversByFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResolversByFunction, input, options)
end

function C:listSourceApiAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSourceApiAssociations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTypes, input, options)
end

function C:listTypesByAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTypesByAssociation, input, options)
end

function C:putGraphqlApiEnvironmentVariables(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutGraphqlApiEnvironmentVariables, input, options)
end

function C:startDataSourceIntrospection(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDataSourceIntrospection, input, options)
end

function C:startSchemaCreation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSchemaCreation, input, options)
end

function C:startSchemaMerge(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSchemaMerge, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApi, input, options)
end

function C:updateApiCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApiCache, input, options)
end

function C:updateApiKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApiKey, input, options)
end

function C:updateChannelNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChannelNamespace, input, options)
end

function C:updateDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataSource, input, options)
end

function C:updateDomainName(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainName, input, options)
end

function C:updateFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFunction, input, options)
end

function C:updateGraphqlApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGraphqlApi, input, options)
end

function C:updateResolver(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResolver, input, options)
end

function C:updateSourceApiAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSourceApiAssociation, input, options)
end

function C:updateType(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateType, input, options)
end

return M
