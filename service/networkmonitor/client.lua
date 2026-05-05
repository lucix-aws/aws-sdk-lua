local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("networkmonitor.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("networkmonitor.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.CreateMonitorInput,
        output_schema = schemas.CreateMonitorOutput,
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
        input_schema = schemas.CreateProbeInput,
        output_schema = schemas.CreateProbeOutput,
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
        input_schema = schemas.DeleteMonitorInput,
        output_schema = schemas.DeleteMonitorOutput,
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
        input_schema = schemas.DeleteProbeInput,
        output_schema = schemas.DeleteProbeOutput,
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
        input_schema = schemas.GetMonitorInput,
        output_schema = schemas.GetMonitorOutput,
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
        input_schema = schemas.GetProbeInput,
        output_schema = schemas.GetProbeOutput,
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
        input_schema = schemas.ListMonitorsInput,
        output_schema = schemas.ListMonitorsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateMonitorInput,
        output_schema = schemas.UpdateMonitorOutput,
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
        input_schema = schemas.UpdateProbeInput,
        output_schema = schemas.UpdateProbeOutput,
        http_method = "PATCH",
        http_path = "/monitors/{monitorName}/probes/{probeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
