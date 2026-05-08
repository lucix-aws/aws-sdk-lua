



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("sns.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("sns.schemas")
local traits = require("smithy.traits")
local types = require("sns.types")
local sdk_defaults = require("aws.sdk_defaults")
















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonSimpleNotificationService"
   if not c.protocol then c.protocol = query_protocol.new("awsQuery") end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sns", signing_region = c.region } }
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

function C:addPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddPermission, input, options)
end

function C:checkIfPhoneNumberIsOptedOut(input, options)
   return self:invokeOperation(schemas.Service, schemas.CheckIfPhoneNumberIsOptedOut, input, options)
end

function C:confirmSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfirmSubscription, input, options)
end

function C:createPlatformApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePlatformApplication, input, options)
end

function C:createPlatformEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePlatformEndpoint, input, options)
end

function C:createSMSSandboxPhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSMSSandboxPhoneNumber, input, options)
end

function C:createTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTopic, input, options)
end

function C:deleteEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEndpoint, input, options)
end

function C:deletePlatformApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePlatformApplication, input, options)
end

function C:deleteSMSSandboxPhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSMSSandboxPhoneNumber, input, options)
end

function C:deleteTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTopic, input, options)
end

function C:getDataProtectionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataProtectionPolicy, input, options)
end

function C:getEndpointAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEndpointAttributes, input, options)
end

function C:getPlatformApplicationAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPlatformApplicationAttributes, input, options)
end

function C:getSMSAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSMSAttributes, input, options)
end

function C:getSMSSandboxAccountStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSMSSandboxAccountStatus, input, options)
end

function C:getSubscriptionAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSubscriptionAttributes, input, options)
end

function C:getTopicAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTopicAttributes, input, options)
end

function C:listEndpointsByPlatformApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEndpointsByPlatformApplication, input, options)
end

function C:listOriginationNumbers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOriginationNumbers, input, options)
end

function C:listPhoneNumbersOptedOut(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPhoneNumbersOptedOut, input, options)
end

function C:listPlatformApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlatformApplications, input, options)
end

function C:listSMSSandboxPhoneNumbers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSMSSandboxPhoneNumbers, input, options)
end

function C:listSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubscriptions, input, options)
end

function C:listSubscriptionsByTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubscriptionsByTopic, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTopics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTopics, input, options)
end

function C:optInPhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.OptInPhoneNumber, input, options)
end

function C:publish(input, options)
   return self:invokeOperation(schemas.Service, schemas.Publish, input, options)
end

function C:publishBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.PublishBatch, input, options)
end

function C:putDataProtectionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDataProtectionPolicy, input, options)
end

function C:removePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemovePermission, input, options)
end

function C:setEndpointAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetEndpointAttributes, input, options)
end

function C:setPlatformApplicationAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetPlatformApplicationAttributes, input, options)
end

function C:setSMSAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetSMSAttributes, input, options)
end

function C:setSubscriptionAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetSubscriptionAttributes, input, options)
end

function C:setTopicAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetTopicAttributes, input, options)
end

function C:subscribe(input, options)
   return self:invokeOperation(schemas.Service, schemas.Subscribe, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:unsubscribe(input, options)
   return self:invokeOperation(schemas.Service, schemas.Unsubscribe, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:verifySMSSandboxPhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifySMSSandboxPhoneNumber, input, options)
end

return M
