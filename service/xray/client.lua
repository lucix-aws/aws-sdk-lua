local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("xray.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("xray.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSXRay"
    cfg.signing_name = "xray"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:batchGetTraces(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetTraces",
        input_schema = types.BatchGetTracesInput,
        output_schema = types.BatchGetTracesOutput,
        http_method = "POST",
        http_path = "/Traces",
    }, options)
end

function Client:cancelTraceRetrieval(input, options)
    return self:invokeOperation(input, {
        name = "CancelTraceRetrieval",
        input_schema = types.CancelTraceRetrievalInput,
        output_schema = types.CancelTraceRetrievalOutput,
        http_method = "POST",
        http_path = "/CancelTraceRetrieval",
    }, options)
end

function Client:createGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroup",
        input_schema = types.CreateGroupInput,
        output_schema = types.CreateGroupOutput,
        http_method = "POST",
        http_path = "/CreateGroup",
    }, options)
end

function Client:createSamplingRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateSamplingRule",
        input_schema = types.CreateSamplingRuleInput,
        output_schema = types.CreateSamplingRuleOutput,
        http_method = "POST",
        http_path = "/CreateSamplingRule",
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = types.DeleteGroupInput,
        output_schema = types.DeleteGroupOutput,
        http_method = "POST",
        http_path = "/DeleteGroup",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/DeleteResourcePolicy",
    }, options)
end

function Client:deleteSamplingRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSamplingRule",
        input_schema = types.DeleteSamplingRuleInput,
        output_schema = types.DeleteSamplingRuleOutput,
        http_method = "POST",
        http_path = "/DeleteSamplingRule",
    }, options)
end

function Client:getEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetEncryptionConfig",
        input_schema = types.GetEncryptionConfigInput,
        output_schema = types.GetEncryptionConfigOutput,
        http_method = "POST",
        http_path = "/EncryptionConfig",
    }, options)
end

function Client:getGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetGroup",
        input_schema = types.GetGroupInput,
        output_schema = types.GetGroupOutput,
        http_method = "POST",
        http_path = "/GetGroup",
    }, options)
end

function Client:getGroups(input, options)
    return self:invokeOperation(input, {
        name = "GetGroups",
        input_schema = types.GetGroupsInput,
        output_schema = types.GetGroupsOutput,
        http_method = "POST",
        http_path = "/Groups",
    }, options)
end

function Client:getIndexingRules(input, options)
    return self:invokeOperation(input, {
        name = "GetIndexingRules",
        input_schema = types.GetIndexingRulesInput,
        output_schema = types.GetIndexingRulesOutput,
        http_method = "POST",
        http_path = "/GetIndexingRules",
    }, options)
end

function Client:getInsight(input, options)
    return self:invokeOperation(input, {
        name = "GetInsight",
        input_schema = types.GetInsightInput,
        output_schema = types.GetInsightOutput,
        http_method = "POST",
        http_path = "/Insight",
    }, options)
end

function Client:getInsightEvents(input, options)
    return self:invokeOperation(input, {
        name = "GetInsightEvents",
        input_schema = types.GetInsightEventsInput,
        output_schema = types.GetInsightEventsOutput,
        http_method = "POST",
        http_path = "/InsightEvents",
    }, options)
end

function Client:getInsightImpactGraph(input, options)
    return self:invokeOperation(input, {
        name = "GetInsightImpactGraph",
        input_schema = types.GetInsightImpactGraphInput,
        output_schema = types.GetInsightImpactGraphOutput,
        http_method = "POST",
        http_path = "/InsightImpactGraph",
    }, options)
end

function Client:getInsightSummaries(input, options)
    return self:invokeOperation(input, {
        name = "GetInsightSummaries",
        input_schema = types.GetInsightSummariesInput,
        output_schema = types.GetInsightSummariesOutput,
        http_method = "POST",
        http_path = "/InsightSummaries",
    }, options)
end

function Client:getRetrievedTracesGraph(input, options)
    return self:invokeOperation(input, {
        name = "GetRetrievedTracesGraph",
        input_schema = types.GetRetrievedTracesGraphInput,
        output_schema = types.GetRetrievedTracesGraphOutput,
        http_method = "POST",
        http_path = "/GetRetrievedTracesGraph",
    }, options)
end

function Client:getSamplingRules(input, options)
    return self:invokeOperation(input, {
        name = "GetSamplingRules",
        input_schema = types.GetSamplingRulesInput,
        output_schema = types.GetSamplingRulesOutput,
        http_method = "POST",
        http_path = "/GetSamplingRules",
    }, options)
end

function Client:getSamplingStatisticSummaries(input, options)
    return self:invokeOperation(input, {
        name = "GetSamplingStatisticSummaries",
        input_schema = types.GetSamplingStatisticSummariesInput,
        output_schema = types.GetSamplingStatisticSummariesOutput,
        http_method = "POST",
        http_path = "/SamplingStatisticSummaries",
    }, options)
end

function Client:getSamplingTargets(input, options)
    return self:invokeOperation(input, {
        name = "GetSamplingTargets",
        input_schema = types.GetSamplingTargetsInput,
        output_schema = types.GetSamplingTargetsOutput,
        http_method = "POST",
        http_path = "/SamplingTargets",
    }, options)
end

function Client:getServiceGraph(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceGraph",
        input_schema = types.GetServiceGraphInput,
        output_schema = types.GetServiceGraphOutput,
        http_method = "POST",
        http_path = "/ServiceGraph",
    }, options)
end

function Client:getTimeSeriesServiceStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetTimeSeriesServiceStatistics",
        input_schema = types.GetTimeSeriesServiceStatisticsInput,
        output_schema = types.GetTimeSeriesServiceStatisticsOutput,
        http_method = "POST",
        http_path = "/TimeSeriesServiceStatistics",
    }, options)
end

function Client:getTraceGraph(input, options)
    return self:invokeOperation(input, {
        name = "GetTraceGraph",
        input_schema = types.GetTraceGraphInput,
        output_schema = types.GetTraceGraphOutput,
        http_method = "POST",
        http_path = "/TraceGraph",
    }, options)
end

function Client:getTraceSegmentDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetTraceSegmentDestination",
        input_schema = types.GetTraceSegmentDestinationInput,
        output_schema = types.GetTraceSegmentDestinationOutput,
        http_method = "POST",
        http_path = "/GetTraceSegmentDestination",
    }, options)
end

function Client:getTraceSummaries(input, options)
    return self:invokeOperation(input, {
        name = "GetTraceSummaries",
        input_schema = types.GetTraceSummariesInput,
        output_schema = types.GetTraceSummariesOutput,
        http_method = "POST",
        http_path = "/TraceSummaries",
    }, options)
end

function Client:listResourcePolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListResourcePolicies",
        input_schema = types.ListResourcePoliciesInput,
        output_schema = types.ListResourcePoliciesOutput,
        http_method = "POST",
        http_path = "/ListResourcePolicies",
    }, options)
end

function Client:listRetrievedTraces(input, options)
    return self:invokeOperation(input, {
        name = "ListRetrievedTraces",
        input_schema = types.ListRetrievedTracesInput,
        output_schema = types.ListRetrievedTracesOutput,
        http_method = "POST",
        http_path = "/ListRetrievedTraces",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/ListTagsForResource",
    }, options)
end

function Client:putEncryptionConfig(input, options)
    return self:invokeOperation(input, {
        name = "PutEncryptionConfig",
        input_schema = types.PutEncryptionConfigInput,
        output_schema = types.PutEncryptionConfigOutput,
        http_method = "POST",
        http_path = "/PutEncryptionConfig",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/PutResourcePolicy",
    }, options)
end

function Client:putTelemetryRecords(input, options)
    return self:invokeOperation(input, {
        name = "PutTelemetryRecords",
        input_schema = types.PutTelemetryRecordsInput,
        output_schema = types.PutTelemetryRecordsOutput,
        http_method = "POST",
        http_path = "/TelemetryRecords",
    }, options)
end

function Client:putTraceSegments(input, options)
    return self:invokeOperation(input, {
        name = "PutTraceSegments",
        input_schema = types.PutTraceSegmentsInput,
        output_schema = types.PutTraceSegmentsOutput,
        http_method = "POST",
        http_path = "/TraceSegments",
    }, options)
end

function Client:startTraceRetrieval(input, options)
    return self:invokeOperation(input, {
        name = "StartTraceRetrieval",
        input_schema = types.StartTraceRetrievalInput,
        output_schema = types.StartTraceRetrievalOutput,
        http_method = "POST",
        http_path = "/StartTraceRetrieval",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/TagResource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/UntagResource",
    }, options)
end

function Client:updateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroup",
        input_schema = types.UpdateGroupInput,
        output_schema = types.UpdateGroupOutput,
        http_method = "POST",
        http_path = "/UpdateGroup",
    }, options)
end

function Client:updateIndexingRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndexingRule",
        input_schema = types.UpdateIndexingRuleInput,
        output_schema = types.UpdateIndexingRuleOutput,
        http_method = "POST",
        http_path = "/UpdateIndexingRule",
    }, options)
end

function Client:updateSamplingRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSamplingRule",
        input_schema = types.UpdateSamplingRuleInput,
        output_schema = types.UpdateSamplingRuleOutput,
        http_method = "POST",
        http_path = "/UpdateSamplingRule",
    }, options)
end

function Client:updateTraceSegmentDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTraceSegmentDestination",
        input_schema = types.UpdateTraceSegmentDestinationInput,
        output_schema = types.UpdateTraceSegmentDestinationOutput,
        http_method = "POST",
        http_path = "/UpdateTraceSegmentDestination",
    }, options)
end

return M
