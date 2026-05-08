



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudhsmv2.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("cloudhsmv2.schemas")
local traits = require("smithy.traits")
local types = require("cloudhsmv2.types")
local sdk_defaults = require("aws.sdk_defaults")
























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "BaldrApiService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloudhsm", signing_region = c.region } }
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

function C:copyBackupToRegion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyBackupToRegion, input, options)
end

function C:createCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCluster, input, options)
end

function C:createHsm(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHsm, input, options)
end

function C:deleteBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBackup, input, options)
end

function C:deleteCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCluster, input, options)
end

function C:deleteHsm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHsm, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:describeBackups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBackups, input, options)
end

function C:describeClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusters, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:initializeCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.InitializeCluster, input, options)
end

function C:listTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTags, input, options)
end

function C:modifyBackupAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyBackupAttributes, input, options)
end

function C:modifyCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCluster, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:restoreBackup(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreBackup, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
