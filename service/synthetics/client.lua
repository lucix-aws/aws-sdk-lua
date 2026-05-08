



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("synthetics.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("synthetics.schemas")
local traits = require("smithy.traits")
local types = require("synthetics.types")
local sdk_defaults = require("aws.sdk_defaults")




























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Synthetics"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "synthetics", signing_region = c.region } }
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

function C:associateResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateResource, input, options)
end

function C:createCanary(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCanary, input, options)
end

function C:createGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroup, input, options)
end

function C:deleteCanary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCanary, input, options)
end

function C:deleteGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroup, input, options)
end

function C:describeCanaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCanaries, input, options)
end

function C:describeCanariesLastRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCanariesLastRun, input, options)
end

function C:describeRuntimeVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRuntimeVersions, input, options)
end

function C:disassociateResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateResource, input, options)
end

function C:getCanary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCanary, input, options)
end

function C:getCanaryRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCanaryRuns, input, options)
end

function C:getGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroup, input, options)
end

function C:listAssociatedGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociatedGroups, input, options)
end

function C:listGroupResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupResources, input, options)
end

function C:listGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroups, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startCanary(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCanary, input, options)
end

function C:startCanaryDryRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCanaryDryRun, input, options)
end

function C:stopCanary(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopCanary, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCanary(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCanary, input, options)
end

return M
