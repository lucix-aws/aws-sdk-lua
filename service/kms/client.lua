



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("kms.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("kms.schemas")
local traits = require("smithy.traits")
local types = require("kms.types")
local sdk_defaults = require("aws.sdk_defaults")




























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "TrentService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kms", signing_region = c.region } }
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

function C:cancelKeyDeletion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelKeyDeletion, input, options)
end

function C:connectCustomKeyStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConnectCustomKeyStore, input, options)
end

function C:createAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAlias, input, options)
end

function C:createCustomKeyStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomKeyStore, input, options)
end

function C:createGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGrant, input, options)
end

function C:createKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKey, input, options)
end

function C:decrypt(input, options)
   return self:invokeOperation(schemas.Service, schemas.Decrypt, input, options)
end

function C:deleteAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAlias, input, options)
end

function C:deleteCustomKeyStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomKeyStore, input, options)
end

function C:deleteImportedKeyMaterial(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImportedKeyMaterial, input, options)
end

function C:deriveSharedSecret(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeriveSharedSecret, input, options)
end

function C:describeCustomKeyStores(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomKeyStores, input, options)
end

function C:describeKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeKey, input, options)
end

function C:disableKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableKey, input, options)
end

function C:disableKeyRotation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableKeyRotation, input, options)
end

function C:disconnectCustomKeyStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisconnectCustomKeyStore, input, options)
end

function C:enableKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableKey, input, options)
end

function C:enableKeyRotation(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableKeyRotation, input, options)
end

function C:encrypt(input, options)
   return self:invokeOperation(schemas.Service, schemas.Encrypt, input, options)
end

function C:generateDataKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateDataKey, input, options)
end

function C:generateDataKeyPair(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateDataKeyPair, input, options)
end

function C:generateDataKeyPairWithoutPlaintext(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateDataKeyPairWithoutPlaintext, input, options)
end

function C:generateDataKeyWithoutPlaintext(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateDataKeyWithoutPlaintext, input, options)
end

function C:generateMac(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateMac, input, options)
end

function C:generateRandom(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateRandom, input, options)
end

function C:getKeyLastUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKeyLastUsage, input, options)
end

function C:getKeyPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKeyPolicy, input, options)
end

function C:getKeyRotationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetKeyRotationStatus, input, options)
end

function C:getParametersForImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetParametersForImport, input, options)
end

function C:getPublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPublicKey, input, options)
end

function C:importKeyMaterial(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportKeyMaterial, input, options)
end

function C:listAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAliases, input, options)
end

function C:listGrants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGrants, input, options)
end

function C:listKeyPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKeyPolicies, input, options)
end

function C:listKeyRotations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKeyRotations, input, options)
end

function C:listKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKeys, input, options)
end

function C:listResourceTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceTags, input, options)
end

function C:listRetirableGrants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRetirableGrants, input, options)
end

function C:putKeyPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutKeyPolicy, input, options)
end

function C:reEncrypt(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReEncrypt, input, options)
end

function C:replicateKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplicateKey, input, options)
end

function C:retireGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetireGrant, input, options)
end

function C:revokeGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeGrant, input, options)
end

function C:rotateKeyOnDemand(input, options)
   return self:invokeOperation(schemas.Service, schemas.RotateKeyOnDemand, input, options)
end

function C:scheduleKeyDeletion(input, options)
   return self:invokeOperation(schemas.Service, schemas.ScheduleKeyDeletion, input, options)
end

function C:sign(input, options)
   return self:invokeOperation(schemas.Service, schemas.Sign, input, options)
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

function C:updateCustomKeyStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCustomKeyStore, input, options)
end

function C:updateKeyDescription(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateKeyDescription, input, options)
end

function C:updatePrimaryRegion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePrimaryRegion, input, options)
end

function C:verify(input, options)
   return self:invokeOperation(schemas.Service, schemas.Verify, input, options)
end

function C:verifyMac(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifyMac, input, options)
end

return M
