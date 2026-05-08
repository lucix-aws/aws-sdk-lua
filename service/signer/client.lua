



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("signer.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("signer.schemas")
local traits = require("smithy.traits")
local types = require("signer.types")
local sdk_defaults = require("aws.sdk_defaults")

























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "WallabyService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "signer", signing_region = c.region } }
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

function C:addProfilePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddProfilePermission, input, options)
end

function C:cancelSigningProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelSigningProfile, input, options)
end

function C:describeSigningJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSigningJob, input, options)
end

function C:getRevocationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRevocationStatus, input, options)
end

function C:getSigningPlatform(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSigningPlatform, input, options)
end

function C:getSigningProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSigningProfile, input, options)
end

function C:listProfilePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfilePermissions, input, options)
end

function C:listSigningJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSigningJobs, input, options)
end

function C:listSigningPlatforms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSigningPlatforms, input, options)
end

function C:listSigningProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSigningProfiles, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putSigningProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSigningProfile, input, options)
end

function C:removeProfilePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveProfilePermission, input, options)
end

function C:revokeSignature(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeSignature, input, options)
end

function C:revokeSigningProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeSigningProfile, input, options)
end

function C:signPayload(input, options)
   return self:invokeOperation(schemas.Service, schemas.SignPayload, input, options)
end

function C:startSigningJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSigningJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
