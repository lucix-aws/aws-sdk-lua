local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("resourcegroupstaggingapi.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("resourcegroupstaggingapi.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ResourceGroupsTaggingAPI_20170126"
    cfg.signing_name = "resourcegroupstaggingapi_20170126"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:describeReportCreation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReportCreation",
        input_schema = types.DescribeReportCreationInput,
        output_schema = types.DescribeReportCreationOutput,
        http_method = "POST",
        http_path = "/DescribeReportCreation",
    }, options)
end

function Client:getComplianceSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetComplianceSummary",
        input_schema = types.GetComplianceSummaryInput,
        output_schema = types.GetComplianceSummaryOutput,
        http_method = "POST",
        http_path = "/GetComplianceSummary",
    }, options)
end

function Client:getResources(input, options)
    return self:invokeOperation(input, {
        name = "GetResources",
        input_schema = types.GetResourcesInput,
        output_schema = types.GetResourcesOutput,
        http_method = "POST",
        http_path = "/GetResources",
    }, options)
end

function Client:getTagKeys(input, options)
    return self:invokeOperation(input, {
        name = "GetTagKeys",
        input_schema = types.GetTagKeysInput,
        output_schema = types.GetTagKeysOutput,
        http_method = "POST",
        http_path = "/GetTagKeys",
    }, options)
end

function Client:getTagValues(input, options)
    return self:invokeOperation(input, {
        name = "GetTagValues",
        input_schema = types.GetTagValuesInput,
        output_schema = types.GetTagValuesOutput,
        http_method = "POST",
        http_path = "/GetTagValues",
    }, options)
end

function Client:listRequiredTags(input, options)
    return self:invokeOperation(input, {
        name = "ListRequiredTags",
        input_schema = types.ListRequiredTagsInput,
        output_schema = types.ListRequiredTagsOutput,
        http_method = "POST",
        http_path = "/ListRequiredTags",
    }, options)
end

function Client:startReportCreation(input, options)
    return self:invokeOperation(input, {
        name = "StartReportCreation",
        input_schema = types.StartReportCreationInput,
        output_schema = types.StartReportCreationOutput,
        http_method = "POST",
        http_path = "/StartReportCreation",
    }, options)
end

function Client:tagResources(input, options)
    return self:invokeOperation(input, {
        name = "TagResources",
        input_schema = types.TagResourcesInput,
        output_schema = types.TagResourcesOutput,
        http_method = "POST",
        http_path = "/TagResources",
    }, options)
end

function Client:untagResources(input, options)
    return self:invokeOperation(input, {
        name = "UntagResources",
        input_schema = types.UntagResourcesInput,
        output_schema = types.UntagResourcesOutput,
        http_method = "POST",
        http_path = "/UntagResources",
    }, options)
end

return M
