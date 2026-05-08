



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("workspacesinstances.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("workspacesinstances.schemas")
local traits = require("smithy.traits")
local types = require("workspacesinstances.types")
local sdk_defaults = require("aws.sdk_defaults")



















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "EUCMIFrontendAPIService"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "workspaces-instances", signing_region = c.region } }
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

function C:associateVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateVolume, input, options)
end

function C:createVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVolume, input, options)
end

function C:createWorkspaceInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkspaceInstance, input, options)
end

function C:deleteVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVolume, input, options)
end

function C:deleteWorkspaceInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkspaceInstance, input, options)
end

function C:disassociateVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateVolume, input, options)
end

function C:getWorkspaceInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkspaceInstance, input, options)
end

function C:listInstanceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstanceTypes, input, options)
end

function C:listRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRegions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWorkspaceInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkspaceInstances, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
