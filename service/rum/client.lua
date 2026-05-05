local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("rum.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("rum.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.BatchCreateRumMetricDefinitionsInput,
        output_schema = schemas.BatchCreateRumMetricDefinitionsOutput,
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
        input_schema = schemas.BatchDeleteRumMetricDefinitionsInput,
        output_schema = schemas.BatchDeleteRumMetricDefinitionsOutput,
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
        input_schema = schemas.BatchGetRumMetricDefinitionsInput,
        output_schema = schemas.BatchGetRumMetricDefinitionsOutput,
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
        input_schema = schemas.CreateAppMonitorInput,
        output_schema = schemas.CreateAppMonitorOutput,
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
        input_schema = schemas.DeleteAppMonitorInput,
        output_schema = schemas.DeleteAppMonitorOutput,
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
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
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
        input_schema = schemas.DeleteRumMetricsDestinationInput,
        output_schema = schemas.DeleteRumMetricsDestinationOutput,
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
        input_schema = schemas.GetAppMonitorInput,
        output_schema = schemas.GetAppMonitorOutput,
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
        input_schema = schemas.GetAppMonitorDataInput,
        output_schema = schemas.GetAppMonitorDataOutput,
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
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
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
        input_schema = schemas.ListAppMonitorsInput,
        output_schema = schemas.ListAppMonitorsOutput,
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
        input_schema = schemas.ListRumMetricsDestinationsInput,
        output_schema = schemas.ListRumMetricsDestinationsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
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
        input_schema = schemas.PutRumEventsInput,
        output_schema = schemas.PutRumEventsOutput,
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
        input_schema = schemas.PutRumMetricsDestinationInput,
        output_schema = schemas.PutRumMetricsDestinationOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateAppMonitorInput,
        output_schema = schemas.UpdateAppMonitorOutput,
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
        input_schema = schemas.UpdateRumMetricDefinitionInput,
        output_schema = schemas.UpdateRumMetricDefinitionOutput,
        http_method = "PATCH",
        http_path = "/rummetrics/{AppMonitorName}/metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
