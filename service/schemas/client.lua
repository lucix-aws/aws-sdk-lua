



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("schemas.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("schemas.schemas")
local traits = require("smithy.traits")
local types = require("schemas.types")
local sdk_defaults = require("aws.sdk_defaults")





































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "schemas"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "schemas", signing_region = c.region } }
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

function C:createDiscoverer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDiscoverer, input, options)
end

function C:createRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRegistry, input, options)
end

function C:createSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSchema, input, options)
end

function C:deleteDiscoverer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDiscoverer, input, options)
end

function C:deleteRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRegistry, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSchema, input, options)
end

function C:deleteSchemaVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSchemaVersion, input, options)
end

function C:describeCodeBinding(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCodeBinding, input, options)
end

function C:describeDiscoverer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDiscoverer, input, options)
end

function C:describeRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegistry, input, options)
end

function C:describeSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSchema, input, options)
end

function C:exportSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportSchema, input, options)
end

function C:getCodeBindingSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCodeBindingSource, input, options)
end

function C:getDiscoveredSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDiscoveredSchema, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:listDiscoverers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDiscoverers, input, options)
end

function C:listRegistries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRegistries, input, options)
end

function C:listSchemas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSchemas, input, options)
end

function C:listSchemaVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSchemaVersions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putCodeBinding(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutCodeBinding, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:searchSchemas(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchSchemas, input, options)
end

function C:startDiscoverer(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDiscoverer, input, options)
end

function C:stopDiscoverer(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDiscoverer, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDiscoverer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDiscoverer, input, options)
end

function C:updateRegistry(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRegistry, input, options)
end

function C:updateSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSchema, input, options)
end

return M
