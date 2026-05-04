local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("timestreamquery.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("timestreamquery.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Timestream_20181101"
    cfg.signing_name = "timestream"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:cancelQuery(input, options)
    return self:invokeOperation(input, {
        name = "CancelQuery",
        input_schema = types.CancelQueryInput,
        output_schema = types.CancelQueryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createScheduledQuery(input, options)
    return self:invokeOperation(input, {
        name = "CreateScheduledQuery",
        input_schema = types.CreateScheduledQueryInput,
        output_schema = types.CreateScheduledQueryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteScheduledQuery(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduledQuery",
        input_schema = types.DeleteScheduledQueryInput,
        output_schema = types.DeleteScheduledQueryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountSettings",
        input_schema = types.DescribeAccountSettingsInput,
        output_schema = types.DescribeAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpoints",
        input_schema = types.DescribeEndpointsInput,
        output_schema = types.DescribeEndpointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScheduledQuery(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScheduledQuery",
        input_schema = types.DescribeScheduledQueryInput,
        output_schema = types.DescribeScheduledQueryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:executeScheduledQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteScheduledQuery",
        input_schema = types.ExecuteScheduledQueryInput,
        output_schema = types.ExecuteScheduledQueryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listScheduledQueries(input, options)
    return self:invokeOperation(input, {
        name = "ListScheduledQueries",
        input_schema = types.ListScheduledQueriesInput,
        output_schema = types.ListScheduledQueriesOutput,
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

function Client:prepareQuery(input, options)
    return self:invokeOperation(input, {
        name = "PrepareQuery",
        input_schema = types.PrepareQueryInput,
        output_schema = types.PrepareQueryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:query(input, options)
    return self:invokeOperation(input, {
        name = "Query",
        input_schema = types.QueryInput,
        output_schema = types.QueryOutput,
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

function Client:updateAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountSettings",
        input_schema = types.UpdateAccountSettingsInput,
        output_schema = types.UpdateAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateScheduledQuery(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScheduledQuery",
        input_schema = types.UpdateScheduledQueryInput,
        output_schema = types.UpdateScheduledQueryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
