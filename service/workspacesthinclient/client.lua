local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("workspacesthinclient.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("workspacesthinclient.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ThinClient"
    cfg.signing_name = "thinclient"
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

function Client:createEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironment",
        input_schema = types.CreateEnvironmentInput,
        output_schema = types.CreateEnvironmentOutput,
        http_method = "POST",
        http_path = "/environments",
    }, options)
end

function Client:deleteDevice(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDevice",
        input_schema = types.DeleteDeviceInput,
        output_schema = types.DeleteDeviceOutput,
        http_method = "DELETE",
        http_path = "/devices/{id}",
    }, options)
end

function Client:deleteEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironment",
        input_schema = types.DeleteEnvironmentInput,
        output_schema = types.DeleteEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/environments/{id}",
    }, options)
end

function Client:deregisterDevice(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterDevice",
        input_schema = types.DeregisterDeviceInput,
        output_schema = types.DeregisterDeviceOutput,
        http_method = "POST",
        http_path = "/deregister-device/{id}",
    }, options)
end

function Client:getDevice(input, options)
    return self:invokeOperation(input, {
        name = "GetDevice",
        input_schema = types.GetDeviceInput,
        output_schema = types.GetDeviceOutput,
        http_method = "GET",
        http_path = "/devices/{id}",
    }, options)
end

function Client:getEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironment",
        input_schema = types.GetEnvironmentInput,
        output_schema = types.GetEnvironmentOutput,
        http_method = "GET",
        http_path = "/environments/{id}",
    }, options)
end

function Client:getSoftwareSet(input, options)
    return self:invokeOperation(input, {
        name = "GetSoftwareSet",
        input_schema = types.GetSoftwareSetInput,
        output_schema = types.GetSoftwareSetOutput,
        http_method = "GET",
        http_path = "/softwaresets/{id}",
    }, options)
end

function Client:listDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListDevices",
        input_schema = types.ListDevicesInput,
        output_schema = types.ListDevicesOutput,
        http_method = "GET",
        http_path = "/devices",
    }, options)
end

function Client:listEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironments",
        input_schema = types.ListEnvironmentsInput,
        output_schema = types.ListEnvironmentsOutput,
        http_method = "GET",
        http_path = "/environments",
    }, options)
end

function Client:listSoftwareSets(input, options)
    return self:invokeOperation(input, {
        name = "ListSoftwareSets",
        input_schema = types.ListSoftwareSetsInput,
        output_schema = types.ListSoftwareSetsOutput,
        http_method = "GET",
        http_path = "/softwaresets",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateDevice(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDevice",
        input_schema = types.UpdateDeviceInput,
        output_schema = types.UpdateDeviceOutput,
        http_method = "PATCH",
        http_path = "/devices/{id}",
    }, options)
end

function Client:updateEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironment",
        input_schema = types.UpdateEnvironmentInput,
        output_schema = types.UpdateEnvironmentOutput,
        http_method = "PATCH",
        http_path = "/environments/{id}",
    }, options)
end

function Client:updateSoftwareSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSoftwareSet",
        input_schema = types.UpdateSoftwareSetInput,
        output_schema = types.UpdateSoftwareSetOutput,
        http_method = "PATCH",
        http_path = "/softwaresets/{id}",
    }, options)
end

return M
