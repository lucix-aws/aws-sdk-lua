



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("pinpointemail.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("pinpointemail.schemas")
local traits = require("smithy.traits")
local types = require("pinpointemail.types")
local sdk_defaults = require("aws.sdk_defaults")
















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonPinpointEmailService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ses", signing_region = c.region } }
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

function C:createConfigurationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationSet, input, options)
end

function C:createConfigurationSetEventDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationSetEventDestination, input, options)
end

function C:createDedicatedIpPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDedicatedIpPool, input, options)
end

function C:createDeliverabilityTestReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeliverabilityTestReport, input, options)
end

function C:createEmailIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEmailIdentity, input, options)
end

function C:deleteConfigurationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationSet, input, options)
end

function C:deleteConfigurationSetEventDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationSetEventDestination, input, options)
end

function C:deleteDedicatedIpPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDedicatedIpPool, input, options)
end

function C:deleteEmailIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEmailIdentity, input, options)
end

function C:getAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccount, input, options)
end

function C:getBlacklistReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBlacklistReports, input, options)
end

function C:getConfigurationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfigurationSet, input, options)
end

function C:getConfigurationSetEventDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfigurationSetEventDestinations, input, options)
end

function C:getDedicatedIp(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDedicatedIp, input, options)
end

function C:getDedicatedIps(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDedicatedIps, input, options)
end

function C:getDeliverabilityDashboardOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeliverabilityDashboardOptions, input, options)
end

function C:getDeliverabilityTestReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeliverabilityTestReport, input, options)
end

function C:getDomainDeliverabilityCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainDeliverabilityCampaign, input, options)
end

function C:getDomainStatisticsReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainStatisticsReport, input, options)
end

function C:getEmailIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEmailIdentity, input, options)
end

function C:listConfigurationSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationSets, input, options)
end

function C:listDedicatedIpPools(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDedicatedIpPools, input, options)
end

function C:listDeliverabilityTestReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeliverabilityTestReports, input, options)
end

function C:listDomainDeliverabilityCampaigns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainDeliverabilityCampaigns, input, options)
end

function C:listEmailIdentities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEmailIdentities, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putAccountDedicatedIpWarmupAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountDedicatedIpWarmupAttributes, input, options)
end

function C:putAccountSendingAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountSendingAttributes, input, options)
end

function C:putConfigurationSetDeliveryOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationSetDeliveryOptions, input, options)
end

function C:putConfigurationSetReputationOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationSetReputationOptions, input, options)
end

function C:putConfigurationSetSendingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationSetSendingOptions, input, options)
end

function C:putConfigurationSetTrackingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationSetTrackingOptions, input, options)
end

function C:putDedicatedIpInPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDedicatedIpInPool, input, options)
end

function C:putDedicatedIpWarmupAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDedicatedIpWarmupAttributes, input, options)
end

function C:putDeliverabilityDashboardOption(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDeliverabilityDashboardOption, input, options)
end

function C:putEmailIdentityDkimAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEmailIdentityDkimAttributes, input, options)
end

function C:putEmailIdentityFeedbackAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEmailIdentityFeedbackAttributes, input, options)
end

function C:putEmailIdentityMailFromAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEmailIdentityMailFromAttributes, input, options)
end

function C:sendEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendEmail, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateConfigurationSetEventDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfigurationSetEventDestination, input, options)
end

return M
