



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("securitylake.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("securitylake.schemas")
local traits = require("smithy.traits")
local types = require("securitylake.types")
local sdk_defaults = require("aws.sdk_defaults")





































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SecurityLake"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "securitylake", signing_region = c.region } }
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

function C:createAwsLogSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAwsLogSource, input, options)
end

function C:createCustomLogSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomLogSource, input, options)
end

function C:createDataLake(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataLake, input, options)
end

function C:createDataLakeExceptionSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataLakeExceptionSubscription, input, options)
end

function C:createDataLakeOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataLakeOrganizationConfiguration, input, options)
end

function C:createSubscriber(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubscriber, input, options)
end

function C:createSubscriberNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubscriberNotification, input, options)
end

function C:deleteAwsLogSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAwsLogSource, input, options)
end

function C:deleteCustomLogSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomLogSource, input, options)
end

function C:deleteDataLake(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataLake, input, options)
end

function C:deleteDataLakeExceptionSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataLakeExceptionSubscription, input, options)
end

function C:deleteDataLakeOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataLakeOrganizationConfiguration, input, options)
end

function C:deleteSubscriber(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSubscriber, input, options)
end

function C:deleteSubscriberNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSubscriberNotification, input, options)
end

function C:deregisterDataLakeDelegatedAdministrator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterDataLakeDelegatedAdministrator, input, options)
end

function C:getDataLakeExceptionSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataLakeExceptionSubscription, input, options)
end

function C:getDataLakeOrganizationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataLakeOrganizationConfiguration, input, options)
end

function C:getDataLakeSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataLakeSources, input, options)
end

function C:getSubscriber(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSubscriber, input, options)
end

function C:listDataLakeExceptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataLakeExceptions, input, options)
end

function C:listDataLakes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataLakes, input, options)
end

function C:listLogSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLogSources, input, options)
end

function C:listSubscribers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubscribers, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:registerDataLakeDelegatedAdministrator(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterDataLakeDelegatedAdministrator, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDataLake(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataLake, input, options)
end

function C:updateDataLakeExceptionSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataLakeExceptionSubscription, input, options)
end

function C:updateSubscriber(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSubscriber, input, options)
end

function C:updateSubscriberNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSubscriberNotification, input, options)
end

return M
