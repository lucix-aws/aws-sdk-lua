



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("licensemanagerusersubscriptions.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("licensemanagerusersubscriptions.schemas")
local traits = require("smithy.traits")
local types = require("licensemanagerusersubscriptions.types")
local sdk_defaults = require("aws.sdk_defaults")























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "LicenseManagerUserSubscriptions"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "license-manager-user-subscriptions", signing_region = c.region } }
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

function C:associateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateUser, input, options)
end

function C:createLicenseServerEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLicenseServerEndpoint, input, options)
end

function C:deleteLicenseServerEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLicenseServerEndpoint, input, options)
end

function C:deregisterIdentityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterIdentityProvider, input, options)
end

function C:disassociateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateUser, input, options)
end

function C:listIdentityProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentityProviders, input, options)
end

function C:listInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstances, input, options)
end

function C:listLicenseServerEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLicenseServerEndpoints, input, options)
end

function C:listProductSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProductSubscriptions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listUserAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserAssociations, input, options)
end

function C:registerIdentityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterIdentityProvider, input, options)
end

function C:startProductSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartProductSubscription, input, options)
end

function C:stopProductSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopProductSubscription, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateIdentityProviderSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIdentityProviderSettings, input, options)
end

return M
