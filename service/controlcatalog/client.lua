local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("controlcatalog.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("controlcatalog.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ControlCatalog"
    cfg.signing_name = "controlcatalog"
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

function Client:getControl(input, options)
    return self:invokeOperation(input, {
        name = "GetControl",
        input_schema = types.GetControlInput,
        output_schema = types.GetControlOutput,
        http_method = "POST",
        http_path = "/get-control",
    }, options)
end

function Client:listCommonControls(input, options)
    return self:invokeOperation(input, {
        name = "ListCommonControls",
        input_schema = types.ListCommonControlsInput,
        output_schema = types.ListCommonControlsOutput,
        http_method = "POST",
        http_path = "/common-controls",
    }, options)
end

function Client:listControlMappings(input, options)
    return self:invokeOperation(input, {
        name = "ListControlMappings",
        input_schema = types.ListControlMappingsInput,
        output_schema = types.ListControlMappingsOutput,
        http_method = "POST",
        http_path = "/list-control-mappings",
    }, options)
end

function Client:listControls(input, options)
    return self:invokeOperation(input, {
        name = "ListControls",
        input_schema = types.ListControlsInput,
        output_schema = types.ListControlsOutput,
        http_method = "POST",
        http_path = "/list-controls",
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = types.ListDomainsInput,
        output_schema = types.ListDomainsOutput,
        http_method = "POST",
        http_path = "/domains",
    }, options)
end

function Client:listObjectives(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectives",
        input_schema = types.ListObjectivesInput,
        output_schema = types.ListObjectivesOutput,
        http_method = "POST",
        http_path = "/objectives",
    }, options)
end

return M
