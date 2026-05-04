local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("simpledbv2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("simpledbv2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SimpleDBv2"
    cfg.signing_name = "sdb"
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

function Client:getExport(input, options)
    return self:invokeOperation(input, {
        name = "GetExport",
        input_schema = types.GetExportInput,
        output_schema = types.GetExportOutput,
        http_method = "POST",
        http_path = "/v2/GetExport",
    }, options)
end

function Client:listExports(input, options)
    return self:invokeOperation(input, {
        name = "ListExports",
        input_schema = types.ListExportsInput,
        output_schema = types.ListExportsOutput,
        http_method = "POST",
        http_path = "/v2/ListExports",
    }, options)
end

function Client:startDomainExport(input, options)
    return self:invokeOperation(input, {
        name = "StartDomainExport",
        input_schema = types.StartDomainExportInput,
        output_schema = types.StartDomainExportOutput,
        http_method = "POST",
        http_path = "/v2/StartDomainExport",
    }, options)
end

return M
