



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("route53profiles.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("route53profiles.schemas")
local traits = require("smithy.traits")
local types = require("route53profiles.types")
local sdk_defaults = require("aws.sdk_defaults")






















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Route53Profiles"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53profiles", signing_region = c.region } }
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

function C:associateProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateProfile, input, options)
end

function C:associateResourceToProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateResourceToProfile, input, options)
end

function C:createProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProfile, input, options)
end

function C:deleteProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProfile, input, options)
end

function C:disassociateProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateProfile, input, options)
end

function C:disassociateResourceFromProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateResourceFromProfile, input, options)
end

function C:getProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfile, input, options)
end

function C:getProfileAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfileAssociation, input, options)
end

function C:getProfileResourceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfileResourceAssociation, input, options)
end

function C:listProfileAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfileAssociations, input, options)
end

function C:listProfileResourceAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfileResourceAssociations, input, options)
end

function C:listProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfiles, input, options)
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

function C:updateProfileResourceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProfileResourceAssociation, input, options)
end

return M
