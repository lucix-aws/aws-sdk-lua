



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("amplifybackend.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("amplifybackend.schemas")
local traits = require("smithy.traits")
local types = require("amplifybackend.types")
local sdk_defaults = require("aws.sdk_defaults")





































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmplifyBackend"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "amplifybackend", signing_region = c.region } }
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

function C:cloneBackend(input, options)
   return self:invokeOperation(schemas.Service, schemas.CloneBackend, input, options)
end

function C:createBackend(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBackend, input, options)
end

function C:createBackendAPI(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBackendAPI, input, options)
end

function C:createBackendAuth(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBackendAuth, input, options)
end

function C:createBackendConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBackendConfig, input, options)
end

function C:createBackendStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBackendStorage, input, options)
end

function C:createToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateToken, input, options)
end

function C:deleteBackend(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackend, input, options)
end

function C:deleteBackendAPI(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackendAPI, input, options)
end

function C:deleteBackendAuth(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackendAuth, input, options)
end

function C:deleteBackendStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackendStorage, input, options)
end

function C:deleteToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteToken, input, options)
end

function C:generateBackendAPIModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateBackendAPIModels, input, options)
end

function C:getBackend(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackend, input, options)
end

function C:getBackendAPI(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackendAPI, input, options)
end

function C:getBackendAPIModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackendAPIModels, input, options)
end

function C:getBackendAuth(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackendAuth, input, options)
end

function C:getBackendJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackendJob, input, options)
end

function C:getBackendStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBackendStorage, input, options)
end

function C:getToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetToken, input, options)
end

function C:importBackendAuth(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportBackendAuth, input, options)
end

function C:importBackendStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportBackendStorage, input, options)
end

function C:listBackendJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBackendJobs, input, options)
end

function C:listS3Buckets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListS3Buckets, input, options)
end

function C:removeAllBackends(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveAllBackends, input, options)
end

function C:removeBackendConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveBackendConfig, input, options)
end

function C:updateBackendAPI(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBackendAPI, input, options)
end

function C:updateBackendAuth(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBackendAuth, input, options)
end

function C:updateBackendConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBackendConfig, input, options)
end

function C:updateBackendJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBackendJob, input, options)
end

function C:updateBackendStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBackendStorage, input, options)
end

return M
