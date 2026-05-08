



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("taxsettings.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("taxsettings.schemas")
local traits = require("smithy.traits")
local types = require("taxsettings.types")
local sdk_defaults = require("aws.sdk_defaults")






















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "TaxSettings"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "tax", signing_region = c.region } }
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

function C:batchDeleteTaxRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteTaxRegistration, input, options)
end

function C:batchGetTaxExemptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetTaxExemptions, input, options)
end

function C:batchPutTaxRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchPutTaxRegistration, input, options)
end

function C:deleteSupplementalTaxRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSupplementalTaxRegistration, input, options)
end

function C:deleteTaxRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTaxRegistration, input, options)
end

function C:getTaxExemptionTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTaxExemptionTypes, input, options)
end

function C:getTaxInheritance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTaxInheritance, input, options)
end

function C:getTaxRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTaxRegistration, input, options)
end

function C:getTaxRegistrationDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTaxRegistrationDocument, input, options)
end

function C:listSupplementalTaxRegistrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSupplementalTaxRegistrations, input, options)
end

function C:listTaxExemptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTaxExemptions, input, options)
end

function C:listTaxRegistrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTaxRegistrations, input, options)
end

function C:putSupplementalTaxRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSupplementalTaxRegistration, input, options)
end

function C:putTaxExemption(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTaxExemption, input, options)
end

function C:putTaxInheritance(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTaxInheritance, input, options)
end

function C:putTaxRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTaxRegistration, input, options)
end

return M
