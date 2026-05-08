



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("rolesanywhere.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("rolesanywhere.schemas")
local traits = require("smithy.traits")
local types = require("rolesanywhere.types")
local sdk_defaults = require("aws.sdk_defaults")




































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "RolesAnywhere"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "rolesanywhere", signing_region = c.region } }
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

function C:createProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProfile, input, options)
end

function C:createTrustAnchor(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrustAnchor, input, options)
end

function C:deleteAttributeMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAttributeMapping, input, options)
end

function C:deleteCrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCrl, input, options)
end

function C:deleteProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProfile, input, options)
end

function C:deleteTrustAnchor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrustAnchor, input, options)
end

function C:disableCrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableCrl, input, options)
end

function C:disableProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableProfile, input, options)
end

function C:disableTrustAnchor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableTrustAnchor, input, options)
end

function C:enableCrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableCrl, input, options)
end

function C:enableProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableProfile, input, options)
end

function C:enableTrustAnchor(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableTrustAnchor, input, options)
end

function C:getCrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCrl, input, options)
end

function C:getProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfile, input, options)
end

function C:getSubject(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSubject, input, options)
end

function C:getTrustAnchor(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrustAnchor, input, options)
end

function C:importCrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportCrl, input, options)
end

function C:listCrls(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCrls, input, options)
end

function C:listProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfiles, input, options)
end

function C:listSubjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubjects, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTrustAnchors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrustAnchors, input, options)
end

function C:putAttributeMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAttributeMapping, input, options)
end

function C:putNotificationSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutNotificationSettings, input, options)
end

function C:resetNotificationSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetNotificationSettings, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCrl, input, options)
end

function C:updateProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProfile, input, options)
end

function C:updateTrustAnchor(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrustAnchor, input, options)
end

return M
