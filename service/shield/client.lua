



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("shield.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("shield.schemas")
local traits = require("smithy.traits")
local types = require("shield.types")
local sdk_defaults = require("aws.sdk_defaults")










































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSShield_20160616"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "shield", signing_region = c.region } }
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

function C:associateDRTLogBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDRTLogBucket, input, options)
end

function C:associateDRTRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDRTRole, input, options)
end

function C:associateHealthCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateHealthCheck, input, options)
end

function C:associateProactiveEngagementDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateProactiveEngagementDetails, input, options)
end

function C:createProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProtection, input, options)
end

function C:createProtectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProtectionGroup, input, options)
end

function C:createSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubscription, input, options)
end

function C:deleteProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProtection, input, options)
end

function C:deleteProtectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProtectionGroup, input, options)
end

function C:deleteSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSubscription, input, options)
end

function C:describeAttack(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAttack, input, options)
end

function C:describeAttackStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAttackStatistics, input, options)
end

function C:describeDRTAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDRTAccess, input, options)
end

function C:describeEmergencyContactSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEmergencyContactSettings, input, options)
end

function C:describeProtection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProtection, input, options)
end

function C:describeProtectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProtectionGroup, input, options)
end

function C:describeSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSubscription, input, options)
end

function C:disableApplicationLayerAutomaticResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableApplicationLayerAutomaticResponse, input, options)
end

function C:disableProactiveEngagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableProactiveEngagement, input, options)
end

function C:disassociateDRTLogBucket(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateDRTLogBucket, input, options)
end

function C:disassociateDRTRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateDRTRole, input, options)
end

function C:disassociateHealthCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateHealthCheck, input, options)
end

function C:enableApplicationLayerAutomaticResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableApplicationLayerAutomaticResponse, input, options)
end

function C:enableProactiveEngagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableProactiveEngagement, input, options)
end

function C:getSubscriptionState(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSubscriptionState, input, options)
end

function C:listAttacks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttacks, input, options)
end

function C:listProtectionGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProtectionGroups, input, options)
end

function C:listProtections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProtections, input, options)
end

function C:listResourcesInProtectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourcesInProtectionGroup, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApplicationLayerAutomaticResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplicationLayerAutomaticResponse, input, options)
end

function C:updateEmergencyContactSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEmergencyContactSettings, input, options)
end

function C:updateProtectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProtectionGroup, input, options)
end

function C:updateSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSubscription, input, options)
end

return M
