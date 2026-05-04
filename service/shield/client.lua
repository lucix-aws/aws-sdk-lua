local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("shield.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("shield.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSShield_20160616"
    cfg.signing_name = "shield"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateDRTLogBucket(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDRTLogBucket",
        input_schema = types.AssociateDRTLogBucketInput,
        output_schema = types.AssociateDRTLogBucketOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateDRTRole(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDRTRole",
        input_schema = types.AssociateDRTRoleInput,
        output_schema = types.AssociateDRTRoleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateHealthCheck(input, options)
    return self:invokeOperation(input, {
        name = "AssociateHealthCheck",
        input_schema = types.AssociateHealthCheckInput,
        output_schema = types.AssociateHealthCheckOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateProactiveEngagementDetails(input, options)
    return self:invokeOperation(input, {
        name = "AssociateProactiveEngagementDetails",
        input_schema = types.AssociateProactiveEngagementDetailsInput,
        output_schema = types.AssociateProactiveEngagementDetailsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createProtection(input, options)
    return self:invokeOperation(input, {
        name = "CreateProtection",
        input_schema = types.CreateProtectionInput,
        output_schema = types.CreateProtectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createProtectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateProtectionGroup",
        input_schema = types.CreateProtectionGroupInput,
        output_schema = types.CreateProtectionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscription",
        input_schema = types.CreateSubscriptionInput,
        output_schema = types.CreateSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProtection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProtection",
        input_schema = types.DeleteProtectionInput,
        output_schema = types.DeleteProtectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProtectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProtectionGroup",
        input_schema = types.DeleteProtectionGroupInput,
        output_schema = types.DeleteProtectionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscription",
        input_schema = types.DeleteSubscriptionInput,
        output_schema = types.DeleteSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAttack(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAttack",
        input_schema = types.DescribeAttackInput,
        output_schema = types.DescribeAttackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAttackStatistics(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAttackStatistics",
        input_schema = types.DescribeAttackStatisticsInput,
        output_schema = types.DescribeAttackStatisticsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDRTAccess(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDRTAccess",
        input_schema = types.DescribeDRTAccessInput,
        output_schema = types.DescribeDRTAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEmergencyContactSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEmergencyContactSettings",
        input_schema = types.DescribeEmergencyContactSettingsInput,
        output_schema = types.DescribeEmergencyContactSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProtection(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProtection",
        input_schema = types.DescribeProtectionInput,
        output_schema = types.DescribeProtectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProtectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProtectionGroup",
        input_schema = types.DescribeProtectionGroupInput,
        output_schema = types.DescribeProtectionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSubscription",
        input_schema = types.DescribeSubscriptionInput,
        output_schema = types.DescribeSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableApplicationLayerAutomaticResponse(input, options)
    return self:invokeOperation(input, {
        name = "DisableApplicationLayerAutomaticResponse",
        input_schema = types.DisableApplicationLayerAutomaticResponseInput,
        output_schema = types.DisableApplicationLayerAutomaticResponseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableProactiveEngagement(input, options)
    return self:invokeOperation(input, {
        name = "DisableProactiveEngagement",
        input_schema = types.DisableProactiveEngagementInput,
        output_schema = types.DisableProactiveEngagementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateDRTLogBucket(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDRTLogBucket",
        input_schema = types.DisassociateDRTLogBucketInput,
        output_schema = types.DisassociateDRTLogBucketOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateDRTRole(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDRTRole",
        input_schema = types.DisassociateDRTRoleInput,
        output_schema = types.DisassociateDRTRoleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateHealthCheck(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateHealthCheck",
        input_schema = types.DisassociateHealthCheckInput,
        output_schema = types.DisassociateHealthCheckOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableApplicationLayerAutomaticResponse(input, options)
    return self:invokeOperation(input, {
        name = "EnableApplicationLayerAutomaticResponse",
        input_schema = types.EnableApplicationLayerAutomaticResponseInput,
        output_schema = types.EnableApplicationLayerAutomaticResponseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableProactiveEngagement(input, options)
    return self:invokeOperation(input, {
        name = "EnableProactiveEngagement",
        input_schema = types.EnableProactiveEngagementInput,
        output_schema = types.EnableProactiveEngagementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSubscriptionState(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriptionState",
        input_schema = types.GetSubscriptionStateInput,
        output_schema = types.GetSubscriptionStateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAttacks(input, options)
    return self:invokeOperation(input, {
        name = "ListAttacks",
        input_schema = types.ListAttacksInput,
        output_schema = types.ListAttacksOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listProtectionGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListProtectionGroups",
        input_schema = types.ListProtectionGroupsInput,
        output_schema = types.ListProtectionGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listProtections(input, options)
    return self:invokeOperation(input, {
        name = "ListProtections",
        input_schema = types.ListProtectionsInput,
        output_schema = types.ListProtectionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResourcesInProtectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListResourcesInProtectionGroup",
        input_schema = types.ListResourcesInProtectionGroupInput,
        output_schema = types.ListResourcesInProtectionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateApplicationLayerAutomaticResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationLayerAutomaticResponse",
        input_schema = types.UpdateApplicationLayerAutomaticResponseInput,
        output_schema = types.UpdateApplicationLayerAutomaticResponseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEmergencyContactSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEmergencyContactSettings",
        input_schema = types.UpdateEmergencyContactSettingsInput,
        output_schema = types.UpdateEmergencyContactSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProtectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProtectionGroup",
        input_schema = types.UpdateProtectionGroupInput,
        output_schema = types.UpdateProtectionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSubscription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscription",
        input_schema = types.UpdateSubscriptionInput,
        output_schema = types.UpdateSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
