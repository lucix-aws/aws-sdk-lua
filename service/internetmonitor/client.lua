local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("internetmonitor.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("internetmonitor.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "InternetMonitor20210603"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "internetmonitor", signing_region = cfg.region } }
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

function Client:createMonitor(input, options)
    return self:invokeOperation(input, {
        name = "CreateMonitor",
        input_schema = types.CreateMonitorInput,
        output_schema = types.CreateMonitorOutput,
        http_method = "POST",
        http_path = "/v20210603/Monitors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMonitor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMonitor",
        input_schema = types.DeleteMonitorInput,
        output_schema = types.DeleteMonitorOutput,
        http_method = "DELETE",
        http_path = "/v20210603/Monitors/{MonitorName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHealthEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetHealthEvent",
        input_schema = types.GetHealthEventInput,
        output_schema = types.GetHealthEventOutput,
        http_method = "GET",
        http_path = "/v20210603/Monitors/{MonitorName}/HealthEvents/{EventId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInternetEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetInternetEvent",
        input_schema = types.GetInternetEventInput,
        output_schema = types.GetInternetEventOutput,
        http_method = "GET",
        http_path = "/v20210603/InternetEvents/{EventId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMonitor(input, options)
    return self:invokeOperation(input, {
        name = "GetMonitor",
        input_schema = types.GetMonitorInput,
        output_schema = types.GetMonitorOutput,
        http_method = "GET",
        http_path = "/v20210603/Monitors/{MonitorName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueryResults(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryResults",
        input_schema = types.GetQueryResultsInput,
        output_schema = types.GetQueryResultsOutput,
        http_method = "GET",
        http_path = "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Results",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueryStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryStatus",
        input_schema = types.GetQueryStatusInput,
        output_schema = types.GetQueryStatusOutput,
        http_method = "GET",
        http_path = "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}/Status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHealthEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListHealthEvents",
        input_schema = types.ListHealthEventsInput,
        output_schema = types.ListHealthEventsOutput,
        http_method = "GET",
        http_path = "/v20210603/Monitors/{MonitorName}/HealthEvents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInternetEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListInternetEvents",
        input_schema = types.ListInternetEventsInput,
        output_schema = types.ListInternetEventsOutput,
        http_method = "GET",
        http_path = "/v20210603/InternetEvents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMonitors(input, options)
    return self:invokeOperation(input, {
        name = "ListMonitors",
        input_schema = types.ListMonitorsInput,
        output_schema = types.ListMonitorsOutput,
        http_method = "GET",
        http_path = "/v20210603/Monitors",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startQuery(input, options)
    return self:invokeOperation(input, {
        name = "StartQuery",
        input_schema = types.StartQueryInput,
        output_schema = types.StartQueryOutput,
        http_method = "POST",
        http_path = "/v20210603/Monitors/{MonitorName}/Queries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopQuery(input, options)
    return self:invokeOperation(input, {
        name = "StopQuery",
        input_schema = types.StopQueryInput,
        output_schema = types.StopQueryOutput,
        http_method = "DELETE",
        http_path = "/v20210603/Monitors/{MonitorName}/Queries/{QueryId}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMonitor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMonitor",
        input_schema = types.UpdateMonitorInput,
        output_schema = types.UpdateMonitorOutput,
        http_method = "PATCH",
        http_path = "/v20210603/Monitors/{MonitorName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
