local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("xray.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("xray.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSXRay"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "xray", signing_region = cfg.region } }
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

function Client:batchGetTraces(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetTraces",
        input_schema = schemas.BatchGetTracesInput,
        output_schema = schemas.BatchGetTracesOutput,
        http_method = "POST",
        http_path = "/Traces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelTraceRetrieval(input, options)
    return self:invokeOperation(input, {
        name = "CancelTraceRetrieval",
        input_schema = schemas.CancelTraceRetrievalInput,
        output_schema = schemas.CancelTraceRetrievalOutput,
        http_method = "POST",
        http_path = "/CancelTraceRetrieval",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroup",
        input_schema = schemas.CreateGroupInput,
        output_schema = schemas.CreateGroupOutput,
        http_method = "POST",
        http_path = "/CreateGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSamplingRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateSamplingRule",
        input_schema = schemas.CreateSamplingRuleInput,
        output_schema = schemas.CreateSamplingRuleOutput,
        http_method = "POST",
        http_path = "/CreateSamplingRule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = schemas.DeleteGroupInput,
        output_schema = schemas.DeleteGroupOutput,
        http_method = "POST",
        http_path = "/DeleteGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/DeleteResourcePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSamplingRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSamplingRule",
        input_schema = schemas.DeleteSamplingRuleInput,
        output_schema = schemas.DeleteSamplingRuleOutput,
        http_method = "POST",
        http_path = "/DeleteSamplingRule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetEncryptionConfig",
        input_schema = schemas.GetEncryptionConfigInput,
        output_schema = schemas.GetEncryptionConfigOutput,
        http_method = "POST",
        http_path = "/EncryptionConfig",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetGroup",
        input_schema = schemas.GetGroupInput,
        output_schema = schemas.GetGroupOutput,
        http_method = "POST",
        http_path = "/GetGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGroups(input, options)
    return self:invokeOperation(input, {
        name = "GetGroups",
        input_schema = schemas.GetGroupsInput,
        output_schema = schemas.GetGroupsOutput,
        http_method = "POST",
        http_path = "/Groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIndexingRules(input, options)
    return self:invokeOperation(input, {
        name = "GetIndexingRules",
        input_schema = schemas.GetIndexingRulesInput,
        output_schema = schemas.GetIndexingRulesOutput,
        http_method = "POST",
        http_path = "/GetIndexingRules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInsight(input, options)
    return self:invokeOperation(input, {
        name = "GetInsight",
        input_schema = schemas.GetInsightInput,
        output_schema = schemas.GetInsightOutput,
        http_method = "POST",
        http_path = "/Insight",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInsightEvents(input, options)
    return self:invokeOperation(input, {
        name = "GetInsightEvents",
        input_schema = schemas.GetInsightEventsInput,
        output_schema = schemas.GetInsightEventsOutput,
        http_method = "POST",
        http_path = "/InsightEvents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInsightImpactGraph(input, options)
    return self:invokeOperation(input, {
        name = "GetInsightImpactGraph",
        input_schema = schemas.GetInsightImpactGraphInput,
        output_schema = schemas.GetInsightImpactGraphOutput,
        http_method = "POST",
        http_path = "/InsightImpactGraph",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInsightSummaries(input, options)
    return self:invokeOperation(input, {
        name = "GetInsightSummaries",
        input_schema = schemas.GetInsightSummariesInput,
        output_schema = schemas.GetInsightSummariesOutput,
        http_method = "POST",
        http_path = "/InsightSummaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRetrievedTracesGraph(input, options)
    return self:invokeOperation(input, {
        name = "GetRetrievedTracesGraph",
        input_schema = schemas.GetRetrievedTracesGraphInput,
        output_schema = schemas.GetRetrievedTracesGraphOutput,
        http_method = "POST",
        http_path = "/GetRetrievedTracesGraph",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSamplingRules(input, options)
    return self:invokeOperation(input, {
        name = "GetSamplingRules",
        input_schema = schemas.GetSamplingRulesInput,
        output_schema = schemas.GetSamplingRulesOutput,
        http_method = "POST",
        http_path = "/GetSamplingRules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSamplingStatisticSummaries(input, options)
    return self:invokeOperation(input, {
        name = "GetSamplingStatisticSummaries",
        input_schema = schemas.GetSamplingStatisticSummariesInput,
        output_schema = schemas.GetSamplingStatisticSummariesOutput,
        http_method = "POST",
        http_path = "/SamplingStatisticSummaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSamplingTargets(input, options)
    return self:invokeOperation(input, {
        name = "GetSamplingTargets",
        input_schema = schemas.GetSamplingTargetsInput,
        output_schema = schemas.GetSamplingTargetsOutput,
        http_method = "POST",
        http_path = "/SamplingTargets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceGraph(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceGraph",
        input_schema = schemas.GetServiceGraphInput,
        output_schema = schemas.GetServiceGraphOutput,
        http_method = "POST",
        http_path = "/ServiceGraph",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTimeSeriesServiceStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetTimeSeriesServiceStatistics",
        input_schema = schemas.GetTimeSeriesServiceStatisticsInput,
        output_schema = schemas.GetTimeSeriesServiceStatisticsOutput,
        http_method = "POST",
        http_path = "/TimeSeriesServiceStatistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTraceGraph(input, options)
    return self:invokeOperation(input, {
        name = "GetTraceGraph",
        input_schema = schemas.GetTraceGraphInput,
        output_schema = schemas.GetTraceGraphOutput,
        http_method = "POST",
        http_path = "/TraceGraph",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTraceSegmentDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetTraceSegmentDestination",
        input_schema = schemas.GetTraceSegmentDestinationInput,
        output_schema = schemas.GetTraceSegmentDestinationOutput,
        http_method = "POST",
        http_path = "/GetTraceSegmentDestination",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTraceSummaries(input, options)
    return self:invokeOperation(input, {
        name = "GetTraceSummaries",
        input_schema = schemas.GetTraceSummariesInput,
        output_schema = schemas.GetTraceSummariesOutput,
        http_method = "POST",
        http_path = "/TraceSummaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourcePolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListResourcePolicies",
        input_schema = schemas.ListResourcePoliciesInput,
        output_schema = schemas.ListResourcePoliciesOutput,
        http_method = "POST",
        http_path = "/ListResourcePolicies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRetrievedTraces(input, options)
    return self:invokeOperation(input, {
        name = "ListRetrievedTraces",
        input_schema = schemas.ListRetrievedTracesInput,
        output_schema = schemas.ListRetrievedTracesOutput,
        http_method = "POST",
        http_path = "/ListRetrievedTraces",
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
        http_path = "/ListTagsForResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "PutEncryptionConfig",
        input_schema = schemas.PutEncryptionConfigInput,
        output_schema = schemas.PutEncryptionConfigOutput,
        http_method = "POST",
        http_path = "/PutEncryptionConfig",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/PutResourcePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTelemetryRecords(input, options)
    return self:invokeOperation(input, {
        name = "PutTelemetryRecords",
        input_schema = schemas.PutTelemetryRecordsInput,
        output_schema = schemas.PutTelemetryRecordsOutput,
        http_method = "POST",
        http_path = "/TelemetryRecords",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTraceSegments(input, options)
    return self:invokeOperation(input, {
        name = "PutTraceSegments",
        input_schema = schemas.PutTraceSegmentsInput,
        output_schema = schemas.PutTraceSegmentsOutput,
        http_method = "POST",
        http_path = "/TraceSegments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTraceRetrieval(input, options)
    return self:invokeOperation(input, {
        name = "StartTraceRetrieval",
        input_schema = schemas.StartTraceRetrievalInput,
        output_schema = schemas.StartTraceRetrievalOutput,
        http_method = "POST",
        http_path = "/StartTraceRetrieval",
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
        http_path = "/TagResource",
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
        http_path = "/UntagResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroup",
        input_schema = schemas.UpdateGroupInput,
        output_schema = schemas.UpdateGroupOutput,
        http_method = "POST",
        http_path = "/UpdateGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIndexingRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndexingRule",
        input_schema = schemas.UpdateIndexingRuleInput,
        output_schema = schemas.UpdateIndexingRuleOutput,
        http_method = "POST",
        http_path = "/UpdateIndexingRule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSamplingRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSamplingRule",
        input_schema = schemas.UpdateSamplingRuleInput,
        output_schema = schemas.UpdateSamplingRuleOutput,
        http_method = "POST",
        http_path = "/UpdateSamplingRule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTraceSegmentDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTraceSegmentDestination",
        input_schema = schemas.UpdateTraceSegmentDestinationInput,
        output_schema = schemas.UpdateTraceSegmentDestinationOutput,
        http_method = "POST",
        http_path = "/UpdateTraceSegmentDestination",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
