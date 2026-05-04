local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("rum.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("rum.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RUM"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "rum", signing_region = cfg.region } }
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

function Client:batchCreateRumMetricDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateRumMetricDefinitions",
        input_schema = types.BatchCreateRumMetricDefinitionsInput,
        output_schema = types.BatchCreateRumMetricDefinitionsOutput,
        http_method = "POST",
        http_path = "/rummetrics/{AppMonitorName}/metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteRumMetricDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteRumMetricDefinitions",
        input_schema = types.BatchDeleteRumMetricDefinitionsInput,
        output_schema = types.BatchDeleteRumMetricDefinitionsOutput,
        http_method = "DELETE",
        http_path = "/rummetrics/{AppMonitorName}/metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetRumMetricDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetRumMetricDefinitions",
        input_schema = types.BatchGetRumMetricDefinitionsInput,
        output_schema = types.BatchGetRumMetricDefinitionsOutput,
        http_method = "GET",
        http_path = "/rummetrics/{AppMonitorName}/metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAppMonitor(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppMonitor",
        input_schema = types.CreateAppMonitorInput,
        output_schema = types.CreateAppMonitorOutput,
        http_method = "POST",
        http_path = "/appmonitor",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAppMonitor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppMonitor",
        input_schema = types.DeleteAppMonitorInput,
        output_schema = types.DeleteAppMonitorOutput,
        http_method = "DELETE",
        http_path = "/appmonitor/{Name}",
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
        http_method = "DELETE",
        http_path = "/appmonitor/{Name}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRumMetricsDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRumMetricsDestination",
        input_schema = types.DeleteRumMetricsDestinationInput,
        output_schema = types.DeleteRumMetricsDestinationOutput,
        http_method = "DELETE",
        http_path = "/rummetrics/{AppMonitorName}/metricsdestination",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAppMonitor(input, options)
    return self:invokeOperation(input, {
        name = "GetAppMonitor",
        input_schema = types.GetAppMonitorInput,
        output_schema = types.GetAppMonitorOutput,
        http_method = "GET",
        http_path = "/appmonitor/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAppMonitorData(input, options)
    return self:invokeOperation(input, {
        name = "GetAppMonitorData",
        input_schema = types.GetAppMonitorDataInput,
        output_schema = types.GetAppMonitorDataOutput,
        http_method = "POST",
        http_path = "/appmonitor/{Name}/data",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "GET",
        http_path = "/appmonitor/{Name}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAppMonitors(input, options)
    return self:invokeOperation(input, {
        name = "ListAppMonitors",
        input_schema = types.ListAppMonitorsInput,
        output_schema = types.ListAppMonitorsOutput,
        http_method = "POST",
        http_path = "/appmonitors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRumMetricsDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListRumMetricsDestinations",
        input_schema = types.ListRumMetricsDestinationsInput,
        output_schema = types.ListRumMetricsDestinationsOutput,
        http_method = "GET",
        http_path = "/rummetrics/{AppMonitorName}/metricsdestination",
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

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "PUT",
        http_path = "/appmonitor/{Name}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRumEvents(input, options)
    return self:invokeOperation(input, {
        name = "PutRumEvents",
        input_schema = types.PutRumEventsInput,
        output_schema = types.PutRumEventsOutput,
        http_method = "POST",
        http_path = "/appmonitors/{Id}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRumMetricsDestination(input, options)
    return self:invokeOperation(input, {
        name = "PutRumMetricsDestination",
        input_schema = types.PutRumMetricsDestinationInput,
        output_schema = types.PutRumMetricsDestinationOutput,
        http_method = "POST",
        http_path = "/rummetrics/{AppMonitorName}/metricsdestination",
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

function Client:updateAppMonitor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppMonitor",
        input_schema = types.UpdateAppMonitorInput,
        output_schema = types.UpdateAppMonitorOutput,
        http_method = "PATCH",
        http_path = "/appmonitor/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRumMetricDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRumMetricDefinition",
        input_schema = types.UpdateRumMetricDefinitionInput,
        output_schema = types.UpdateRumMetricDefinitionOutput,
        http_method = "PATCH",
        http_path = "/rummetrics/{AppMonitorName}/metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
