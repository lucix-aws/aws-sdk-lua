



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("paymentcryptography.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("paymentcryptography.schemas")
local traits = require("smithy.traits")
local types = require("paymentcryptography.types")
local sdk_defaults = require("aws.sdk_defaults")






































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "PaymentCryptographyControlPlane"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "payment-cryptography", signing_region = c.region } }
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

function C:addKeyReplicationRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddKeyReplicationRegions, input, options)
end

function C:associateMpaTeam(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateMpaTeam, input, options)
end

function C:createAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAlias, input, options)
end

function C:createKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKey, input, options)
end

function C:deleteAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAlias, input, options)
end

function C:deleteKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKey, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:disableDefaultKeyReplicationRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableDefaultKeyReplicationRegions, input, options)
end

function C:disassociateMpaTeam(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMpaTeam, input, options)
end

function C:enableDefaultKeyReplicationRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableDefaultKeyReplicationRegions, input, options)
end

function C:exportKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportKey, input, options)
end

function C:getAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAlias, input, options)
end

function C:getCertificateSigningRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCertificateSigningRequest, input, options)
end

function C:getDefaultKeyReplicationRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDefaultKeyReplicationRegions, input, options)
end

function C:getKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKey, input, options)
end

function C:getMpaTeamAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMpaTeamAssociation, input, options)
end

function C:getParametersForExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetParametersForExport, input, options)
end

function C:getParametersForImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetParametersForImport, input, options)
end

function C:getPublicKeyCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPublicKeyCertificate, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:importKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportKey, input, options)
end

function C:listAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAliases, input, options)
end

function C:listKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKeys, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:removeKeyReplicationRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveKeyReplicationRegions, input, options)
end

function C:restoreKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreKey, input, options)
end

function C:startKeyUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartKeyUsage, input, options)
end

function C:stopKeyUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopKeyUsage, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAlias, input, options)
end

return M
