



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("secretsmanager.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("secretsmanager.schemas")
local traits = require("smithy.traits")
local types = require("secretsmanager.types")
local sdk_defaults = require("aws.sdk_defaults")





























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "secretsmanager"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "secretsmanager", signing_region = c.region } }
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

function C:batchGetSecretValue(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetSecretValue, input, options)
end

function C:cancelRotateSecret(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelRotateSecret, input, options)
end

function C:createSecret(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSecret, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteSecret(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSecret, input, options)
end

function C:describeSecret(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecret, input, options)
end

function C:getRandomPassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRandomPassword, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:getSecretValue(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSecretValue, input, options)
end

function C:listSecrets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecrets, input, options)
end

function C:listSecretVersionIds(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecretVersionIds, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:putSecretValue(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSecretValue, input, options)
end

function C:removeRegionsFromReplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveRegionsFromReplication, input, options)
end

function C:replicateSecretToRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplicateSecretToRegions, input, options)
end

function C:restoreSecret(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreSecret, input, options)
end

function C:rotateSecret(input, options)
   return self:invokeOperation(schemas.Service, schemas.RotateSecret, input, options)
end

function C:stopReplicationToReplica(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopReplicationToReplica, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateSecret(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSecret, input, options)
end

function C:updateSecretVersionStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSecretVersionStage, input, options)
end

function C:validateResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateResourcePolicy, input, options)
end

return M
