



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cognitosync.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("cognitosync.schemas")
local traits = require("smithy.traits")
local types = require("cognitosync.types")
local sdk_defaults = require("aws.sdk_defaults")























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSCognitoSyncService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cognito-sync", signing_region = c.region } }
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

function C:bulkPublish(input, options)
   return self:invokeOperation(schemas.Service, schemas.BulkPublish, input, options)
end

function C:deleteDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataset, input, options)
end

function C:describeDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataset, input, options)
end

function C:describeIdentityPoolUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIdentityPoolUsage, input, options)
end

function C:describeIdentityUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIdentityUsage, input, options)
end

function C:getBulkPublishDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBulkPublishDetails, input, options)
end

function C:getCognitoEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCognitoEvents, input, options)
end

function C:getIdentityPoolConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityPoolConfiguration, input, options)
end

function C:listDatasets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasets, input, options)
end

function C:listIdentityPoolUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentityPoolUsage, input, options)
end

function C:listRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecords, input, options)
end

function C:registerDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterDevice, input, options)
end

function C:setCognitoEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetCognitoEvents, input, options)
end

function C:setIdentityPoolConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetIdentityPoolConfiguration, input, options)
end

function C:subscribeToDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubscribeToDataset, input, options)
end

function C:unsubscribeFromDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnsubscribeFromDataset, input, options)
end

function C:updateRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRecords, input, options)
end

return M
