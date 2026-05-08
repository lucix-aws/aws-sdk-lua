



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("account.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("account.schemas")
local traits = require("smithy.traits")
local types = require("account.types")
local sdk_defaults = require("aws.sdk_defaults")





















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Account"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "account", signing_region = c.region } }
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

function C:acceptPrimaryEmailUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptPrimaryEmailUpdate, input, options)
end

function C:deleteAlternateContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAlternateContact, input, options)
end

function C:disableRegion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableRegion, input, options)
end

function C:enableRegion(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableRegion, input, options)
end

function C:getAccountInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountInformation, input, options)
end

function C:getAlternateContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAlternateContact, input, options)
end

function C:getContactInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContactInformation, input, options)
end

function C:getGovCloudAccountInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGovCloudAccountInformation, input, options)
end

function C:getPrimaryEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPrimaryEmail, input, options)
end

function C:getRegionOptStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegionOptStatus, input, options)
end

function C:listRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRegions, input, options)
end

function C:putAccountName(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountName, input, options)
end

function C:putAlternateContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAlternateContact, input, options)
end

function C:putContactInformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutContactInformation, input, options)
end

function C:startPrimaryEmailUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartPrimaryEmailUpdate, input, options)
end

return M
