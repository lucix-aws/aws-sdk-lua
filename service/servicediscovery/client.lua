



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("servicediscovery.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("servicediscovery.schemas")
local traits = require("smithy.traits")
local types = require("servicediscovery.types")
local sdk_defaults = require("aws.sdk_defaults")




































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Route53AutoNaming_v20170314"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "servicediscovery", signing_region = c.region } }
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

function C:createHttpNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHttpNamespace, input, options)
end

function C:createPrivateDnsNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePrivateDnsNamespace, input, options)
end

function C:createPublicDnsNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePublicDnsNamespace, input, options)
end

function C:createService(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateService, input, options)
end

function C:deleteNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNamespace, input, options)
end

function C:deleteService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteService, input, options)
end

function C:deleteServiceAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceAttributes, input, options)
end

function C:deregisterInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterInstance, input, options)
end

function C:discoverInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DiscoverInstances, input, options)
end

function C:discoverInstancesRevision(input, options)
   return self:invokeOperation(schemas.Service, schemas.DiscoverInstancesRevision, input, options)
end

function C:getInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstance, input, options)
end

function C:getInstancesHealthStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstancesHealthStatus, input, options)
end

function C:getNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNamespace, input, options)
end

function C:getOperation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOperation, input, options)
end

function C:getService(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetService, input, options)
end

function C:getServiceAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceAttributes, input, options)
end

function C:listInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstances, input, options)
end

function C:listNamespaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNamespaces, input, options)
end

function C:listOperations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOperations, input, options)
end

function C:listServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServices, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:registerInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterInstance, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateHttpNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHttpNamespace, input, options)
end

function C:updateInstanceCustomHealthStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInstanceCustomHealthStatus, input, options)
end

function C:updatePrivateDnsNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePrivateDnsNamespace, input, options)
end

function C:updatePublicDnsNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePublicDnsNamespace, input, options)
end

function C:updateService(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateService, input, options)
end

function C:updateServiceAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceAttributes, input, options)
end

return M
