



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloud9.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("cloud9.schemas")
local traits = require("smithy.traits")
local types = require("cloud9.types")
local sdk_defaults = require("aws.sdk_defaults")



















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSCloud9WorkspaceManagementService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloud9", signing_region = c.region } }
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

function C:createEnvironmentEC2(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironmentEC2, input, options)
end

function C:createEnvironmentMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironmentMembership, input, options)
end

function C:deleteEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironment, input, options)
end

function C:deleteEnvironmentMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironmentMembership, input, options)
end

function C:describeEnvironmentMemberships(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEnvironmentMemberships, input, options)
end

function C:describeEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEnvironments, input, options)
end

function C:describeEnvironmentStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEnvironmentStatus, input, options)
end

function C:listEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironments, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironment, input, options)
end

function C:updateEnvironmentMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironmentMembership, input, options)
end

return M
