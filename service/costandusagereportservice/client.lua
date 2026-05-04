local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("costandusagereportservice.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("costandusagereportservice.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSOrigamiServiceGatewayService"
    cfg.signing_name = "cur"
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

function Client:deleteReportDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReportDefinition",
        input_schema = types.DeleteReportDefinitionInput,
        output_schema = types.DeleteReportDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeReportDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReportDefinitions",
        input_schema = types.DescribeReportDefinitionsInput,
        output_schema = types.DescribeReportDefinitionsOutput,
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

function Client:modifyReportDefinition(input, options)
    return self:invokeOperation(input, {
        name = "ModifyReportDefinition",
        input_schema = types.ModifyReportDefinitionInput,
        output_schema = types.ModifyReportDefinitionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putReportDefinition(input, options)
    return self:invokeOperation(input, {
        name = "PutReportDefinition",
        input_schema = types.PutReportDefinitionInput,
        output_schema = types.PutReportDefinitionOutput,
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
