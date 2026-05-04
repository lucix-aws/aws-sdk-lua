local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ssmincidents.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("ssmincidents.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SSMIncidents"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ssm-incidents", signing_region = cfg.region } }
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

function Client:batchGetIncidentFindings(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetIncidentFindings",
        input_schema = types.BatchGetIncidentFindingsInput,
        output_schema = types.BatchGetIncidentFindingsOutput,
        http_method = "POST",
        http_path = "/batchGetIncidentFindings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReplicationSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateReplicationSet",
        input_schema = types.CreateReplicationSetInput,
        output_schema = types.CreateReplicationSetOutput,
        http_method = "POST",
        http_path = "/createReplicationSet",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResponsePlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateResponsePlan",
        input_schema = types.CreateResponsePlanInput,
        output_schema = types.CreateResponsePlanOutput,
        http_method = "POST",
        http_path = "/createResponsePlan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTimelineEvent(input, options)
    return self:invokeOperation(input, {
        name = "CreateTimelineEvent",
        input_schema = types.CreateTimelineEventInput,
        output_schema = types.CreateTimelineEventOutput,
        http_method = "POST",
        http_path = "/createTimelineEvent",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIncidentRecord(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIncidentRecord",
        input_schema = types.DeleteIncidentRecordInput,
        output_schema = types.DeleteIncidentRecordOutput,
        http_method = "POST",
        http_path = "/deleteIncidentRecord",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReplicationSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReplicationSet",
        input_schema = types.DeleteReplicationSetInput,
        output_schema = types.DeleteReplicationSetOutput,
        http_method = "POST",
        http_path = "/deleteReplicationSet",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/deleteResourcePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResponsePlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResponsePlan",
        input_schema = types.DeleteResponsePlanInput,
        output_schema = types.DeleteResponsePlanOutput,
        http_method = "POST",
        http_path = "/deleteResponsePlan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTimelineEvent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTimelineEvent",
        input_schema = types.DeleteTimelineEventInput,
        output_schema = types.DeleteTimelineEventOutput,
        http_method = "POST",
        http_path = "/deleteTimelineEvent",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIncidentRecord(input, options)
    return self:invokeOperation(input, {
        name = "GetIncidentRecord",
        input_schema = types.GetIncidentRecordInput,
        output_schema = types.GetIncidentRecordOutput,
        http_method = "GET",
        http_path = "/getIncidentRecord",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReplicationSet(input, options)
    return self:invokeOperation(input, {
        name = "GetReplicationSet",
        input_schema = types.GetReplicationSetInput,
        output_schema = types.GetReplicationSetOutput,
        http_method = "GET",
        http_path = "/getReplicationSet",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicies",
        input_schema = types.GetResourcePoliciesInput,
        output_schema = types.GetResourcePoliciesOutput,
        http_method = "POST",
        http_path = "/getResourcePolicies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResponsePlan(input, options)
    return self:invokeOperation(input, {
        name = "GetResponsePlan",
        input_schema = types.GetResponsePlanInput,
        output_schema = types.GetResponsePlanOutput,
        http_method = "GET",
        http_path = "/getResponsePlan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTimelineEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetTimelineEvent",
        input_schema = types.GetTimelineEventInput,
        output_schema = types.GetTimelineEventOutput,
        http_method = "GET",
        http_path = "/getTimelineEvent",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIncidentFindings(input, options)
    return self:invokeOperation(input, {
        name = "ListIncidentFindings",
        input_schema = types.ListIncidentFindingsInput,
        output_schema = types.ListIncidentFindingsOutput,
        http_method = "POST",
        http_path = "/listIncidentFindings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIncidentRecords(input, options)
    return self:invokeOperation(input, {
        name = "ListIncidentRecords",
        input_schema = types.ListIncidentRecordsInput,
        output_schema = types.ListIncidentRecordsOutput,
        http_method = "POST",
        http_path = "/listIncidentRecords",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRelatedItems(input, options)
    return self:invokeOperation(input, {
        name = "ListRelatedItems",
        input_schema = types.ListRelatedItemsInput,
        output_schema = types.ListRelatedItemsOutput,
        http_method = "POST",
        http_path = "/listRelatedItems",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReplicationSets(input, options)
    return self:invokeOperation(input, {
        name = "ListReplicationSets",
        input_schema = types.ListReplicationSetsInput,
        output_schema = types.ListReplicationSetsOutput,
        http_method = "POST",
        http_path = "/listReplicationSets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResponsePlans(input, options)
    return self:invokeOperation(input, {
        name = "ListResponsePlans",
        input_schema = types.ListResponsePlansInput,
        output_schema = types.ListResponsePlansOutput,
        http_method = "POST",
        http_path = "/listResponsePlans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTimelineEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListTimelineEvents",
        input_schema = types.ListTimelineEventsInput,
        output_schema = types.ListTimelineEventsOutput,
        http_method = "POST",
        http_path = "/listTimelineEvents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/putResourcePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startIncident(input, options)
    return self:invokeOperation(input, {
        name = "StartIncident",
        input_schema = types.StartIncidentInput,
        output_schema = types.StartIncidentOutput,
        http_method = "POST",
        http_path = "/startIncident",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDeletionProtection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeletionProtection",
        input_schema = types.UpdateDeletionProtectionInput,
        output_schema = types.UpdateDeletionProtectionOutput,
        http_method = "POST",
        http_path = "/updateDeletionProtection",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIncidentRecord(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIncidentRecord",
        input_schema = types.UpdateIncidentRecordInput,
        output_schema = types.UpdateIncidentRecordOutput,
        http_method = "POST",
        http_path = "/updateIncidentRecord",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRelatedItems(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRelatedItems",
        input_schema = types.UpdateRelatedItemsInput,
        output_schema = types.UpdateRelatedItemsOutput,
        http_method = "POST",
        http_path = "/updateRelatedItems",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReplicationSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReplicationSet",
        input_schema = types.UpdateReplicationSetInput,
        output_schema = types.UpdateReplicationSetOutput,
        http_method = "POST",
        http_path = "/updateReplicationSet",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResponsePlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResponsePlan",
        input_schema = types.UpdateResponsePlanInput,
        output_schema = types.UpdateResponsePlanOutput,
        http_method = "POST",
        http_path = "/updateResponsePlan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTimelineEvent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTimelineEvent",
        input_schema = types.UpdateTimelineEventInput,
        output_schema = types.UpdateTimelineEventOutput,
        http_method = "POST",
        http_path = "/updateTimelineEvent",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
