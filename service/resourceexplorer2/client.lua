



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("resourceexplorer2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("resourceexplorer2.schemas")
local traits = require("smithy.traits")
local types = require("resourceexplorer2.types")
local sdk_defaults = require("aws.sdk_defaults")






































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ResourceExplorer"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "resource-explorer-2", signing_region = c.region } }
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

function C:associateDefaultView(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDefaultView, input, options)
end

function C:batchGetView(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetView, input, options)
end

function C:createIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIndex, input, options)
end

function C:createResourceExplorerSetup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceExplorerSetup, input, options)
end

function C:createView(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateView, input, options)
end

function C:deleteIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIndex, input, options)
end

function C:deleteResourceExplorerSetup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceExplorerSetup, input, options)
end

function C:deleteView(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteView, input, options)
end

function C:disassociateDefaultView(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateDefaultView, input, options)
end

function C:getAccountLevelServiceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountLevelServiceConfiguration, input, options)
end

function C:getDefaultView(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDefaultView, input, options)
end

function C:getIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIndex, input, options)
end

function C:getManagedView(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedView, input, options)
end

function C:getResourceExplorerSetup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceExplorerSetup, input, options)
end

function C:getServiceIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceIndex, input, options)
end

function C:getServiceView(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceView, input, options)
end

function C:getView(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetView, input, options)
end

function C:listIndexes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIndexes, input, options)
end

function C:listIndexesForMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIndexesForMembers, input, options)
end

function C:listManagedViews(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedViews, input, options)
end

function C:listResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResources, input, options)
end

function C:listServiceIndexes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceIndexes, input, options)
end

function C:listServiceViews(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceViews, input, options)
end

function C:listStreamingAccessForServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStreamingAccessForServices, input, options)
end

function C:listSupportedResourceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSupportedResourceTypes, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listViews(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListViews, input, options)
end

function C:search(input, options)
   return self:invokeOperation(schemas.Service, schemas.Search, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateIndexType(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIndexType, input, options)
end

function C:updateView(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateView, input, options)
end

return M
