local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("shield.endpoint_rules")
local schemas = require("shield.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSShield_20160616"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "shield", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateDRTLogBucket(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDRTLogBucket",
        input_schema = schemas.AssociateDRTLogBucketInput,
        output_schema = schemas.AssociateDRTLogBucketOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateDRTRole(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDRTRole",
        input_schema = schemas.AssociateDRTRoleInput,
        output_schema = schemas.AssociateDRTRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateHealthCheck(input, options)
    return self:invokeOperation(input, {
        name = "AssociateHealthCheck",
        input_schema = schemas.AssociateHealthCheckInput,
        output_schema = schemas.AssociateHealthCheckOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateProactiveEngagementDetails(input, options)
    return self:invokeOperation(input, {
        name = "AssociateProactiveEngagementDetails",
        input_schema = schemas.AssociateProactiveEngagementDetailsInput,
        output_schema = schemas.AssociateProactiveEngagementDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProtection(input, options)
    return self:invokeOperation(input, {
        name = "CreateProtection",
        input_schema = schemas.CreateProtectionInput,
        output_schema = schemas.CreateProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProtectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateProtectionGroup",
        input_schema = schemas.CreateProtectionGroupInput,
        output_schema = schemas.CreateProtectionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscription",
        input_schema = schemas.CreateSubscriptionInput,
        output_schema = schemas.CreateSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProtection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProtection",
        input_schema = schemas.DeleteProtectionInput,
        output_schema = schemas.DeleteProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProtectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProtectionGroup",
        input_schema = schemas.DeleteProtectionGroupInput,
        output_schema = schemas.DeleteProtectionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscription",
        input_schema = schemas.DeleteSubscriptionInput,
        output_schema = schemas.DeleteSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAttack(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAttack",
        input_schema = schemas.DescribeAttackInput,
        output_schema = schemas.DescribeAttackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAttackStatistics(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAttackStatistics",
        input_schema = schemas.DescribeAttackStatisticsInput,
        output_schema = schemas.DescribeAttackStatisticsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDRTAccess(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDRTAccess",
        input_schema = schemas.DescribeDRTAccessInput,
        output_schema = schemas.DescribeDRTAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEmergencyContactSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEmergencyContactSettings",
        input_schema = schemas.DescribeEmergencyContactSettingsInput,
        output_schema = schemas.DescribeEmergencyContactSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProtection(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProtection",
        input_schema = schemas.DescribeProtectionInput,
        output_schema = schemas.DescribeProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProtectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProtectionGroup",
        input_schema = schemas.DescribeProtectionGroupInput,
        output_schema = schemas.DescribeProtectionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSubscription",
        input_schema = schemas.DescribeSubscriptionInput,
        output_schema = schemas.DescribeSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableApplicationLayerAutomaticResponse(input, options)
    return self:invokeOperation(input, {
        name = "DisableApplicationLayerAutomaticResponse",
        input_schema = schemas.DisableApplicationLayerAutomaticResponseInput,
        output_schema = schemas.DisableApplicationLayerAutomaticResponseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableProactiveEngagement(input, options)
    return self:invokeOperation(input, {
        name = "DisableProactiveEngagement",
        input_schema = schemas.DisableProactiveEngagementInput,
        output_schema = schemas.DisableProactiveEngagementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateDRTLogBucket(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDRTLogBucket",
        input_schema = schemas.DisassociateDRTLogBucketInput,
        output_schema = schemas.DisassociateDRTLogBucketOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateDRTRole(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDRTRole",
        input_schema = schemas.DisassociateDRTRoleInput,
        output_schema = schemas.DisassociateDRTRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateHealthCheck(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateHealthCheck",
        input_schema = schemas.DisassociateHealthCheckInput,
        output_schema = schemas.DisassociateHealthCheckOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableApplicationLayerAutomaticResponse(input, options)
    return self:invokeOperation(input, {
        name = "EnableApplicationLayerAutomaticResponse",
        input_schema = schemas.EnableApplicationLayerAutomaticResponseInput,
        output_schema = schemas.EnableApplicationLayerAutomaticResponseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableProactiveEngagement(input, options)
    return self:invokeOperation(input, {
        name = "EnableProactiveEngagement",
        input_schema = schemas.EnableProactiveEngagementInput,
        output_schema = schemas.EnableProactiveEngagementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSubscriptionState(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriptionState",
        input_schema = schemas.GetSubscriptionStateInput,
        output_schema = schemas.GetSubscriptionStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttacks(input, options)
    return self:invokeOperation(input, {
        name = "ListAttacks",
        input_schema = schemas.ListAttacksInput,
        output_schema = schemas.ListAttacksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProtectionGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListProtectionGroups",
        input_schema = schemas.ListProtectionGroupsInput,
        output_schema = schemas.ListProtectionGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProtections(input, options)
    return self:invokeOperation(input, {
        name = "ListProtections",
        input_schema = schemas.ListProtectionsInput,
        output_schema = schemas.ListProtectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourcesInProtectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListResourcesInProtectionGroup",
        input_schema = schemas.ListResourcesInProtectionGroupInput,
        output_schema = schemas.ListResourcesInProtectionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplicationLayerAutomaticResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationLayerAutomaticResponse",
        input_schema = schemas.UpdateApplicationLayerAutomaticResponseInput,
        output_schema = schemas.UpdateApplicationLayerAutomaticResponseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEmergencyContactSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEmergencyContactSettings",
        input_schema = schemas.UpdateEmergencyContactSettingsInput,
        output_schema = schemas.UpdateEmergencyContactSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProtectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProtectionGroup",
        input_schema = schemas.UpdateProtectionGroupInput,
        output_schema = schemas.UpdateProtectionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSubscription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscription",
        input_schema = schemas.UpdateSubscriptionInput,
        output_schema = schemas.UpdateSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
