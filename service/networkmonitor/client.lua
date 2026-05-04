local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("networkmonitor.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("networkmonitor.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "NetworkMonitor"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "networkmonitor", signing_region = cfg.region } }
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
        http_path = "/monitors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProbe(input, options)
    return self:invokeOperation(input, {
        name = "CreateProbe",
        input_schema = types.CreateProbeInput,
        output_schema = types.CreateProbeOutput,
        http_method = "POST",
        http_path = "/monitors/{monitorName}/probes",
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
        http_path = "/monitors/{monitorName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProbe(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProbe",
        input_schema = types.DeleteProbeInput,
        output_schema = types.DeleteProbeOutput,
        http_method = "DELETE",
        http_path = "/monitors/{monitorName}/probes/{probeId}",
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
        http_path = "/monitors/{monitorName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProbe(input, options)
    return self:invokeOperation(input, {
        name = "GetProbe",
        input_schema = types.GetProbeInput,
        output_schema = types.GetProbeOutput,
        http_method = "GET",
        http_path = "/monitors/{monitorName}/probes/{probeId}",
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
        http_path = "/monitors",
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

function Client:updateMonitor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMonitor",
        input_schema = types.UpdateMonitorInput,
        output_schema = types.UpdateMonitorOutput,
        http_method = "PATCH",
        http_path = "/monitors/{monitorName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProbe(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProbe",
        input_schema = types.UpdateProbeInput,
        output_schema = types.UpdateProbeOutput,
        http_method = "PATCH",
        http_path = "/monitors/{monitorName}/probes/{probeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
