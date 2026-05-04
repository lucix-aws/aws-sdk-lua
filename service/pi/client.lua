local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("pi.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("pi.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PerformanceInsightsv20180227"
    cfg.signing_name = "pi"
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

function Client:createPerformanceAnalysisReport(input, options)
    return self:invokeOperation(input, {
        name = "CreatePerformanceAnalysisReport",
        input_schema = types.CreatePerformanceAnalysisReportInput,
        output_schema = types.CreatePerformanceAnalysisReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePerformanceAnalysisReport(input, options)
    return self:invokeOperation(input, {
        name = "DeletePerformanceAnalysisReport",
        input_schema = types.DeletePerformanceAnalysisReportInput,
        output_schema = types.DeletePerformanceAnalysisReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDimensionKeys(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDimensionKeys",
        input_schema = types.DescribeDimensionKeysInput,
        output_schema = types.DescribeDimensionKeysOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDimensionKeyDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetDimensionKeyDetails",
        input_schema = types.GetDimensionKeyDetailsInput,
        output_schema = types.GetDimensionKeyDetailsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPerformanceAnalysisReport(input, options)
    return self:invokeOperation(input, {
        name = "GetPerformanceAnalysisReport",
        input_schema = types.GetPerformanceAnalysisReportInput,
        output_schema = types.GetPerformanceAnalysisReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourceMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceMetadata",
        input_schema = types.GetResourceMetadataInput,
        output_schema = types.GetResourceMetadataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourceMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceMetrics",
        input_schema = types.GetResourceMetricsInput,
        output_schema = types.GetResourceMetricsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAvailableResourceDimensions(input, options)
    return self:invokeOperation(input, {
        name = "ListAvailableResourceDimensions",
        input_schema = types.ListAvailableResourceDimensionsInput,
        output_schema = types.ListAvailableResourceDimensionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAvailableResourceMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListAvailableResourceMetrics",
        input_schema = types.ListAvailableResourceMetricsInput,
        output_schema = types.ListAvailableResourceMetricsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPerformanceAnalysisReports(input, options)
    return self:invokeOperation(input, {
        name = "ListPerformanceAnalysisReports",
        input_schema = types.ListPerformanceAnalysisReportsInput,
        output_schema = types.ListPerformanceAnalysisReportsOutput,
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

return M
