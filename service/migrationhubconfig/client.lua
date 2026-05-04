local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("migrationhubconfig.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("migrationhubconfig.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSMigrationHubMultiAccountService"
    cfg.signing_name = "awsmigrationhubmultiaccountservice"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:createHomeRegionControl(input, options)
    return self:invokeOperation(input, {
        name = "CreateHomeRegionControl",
        input_schema = types.CreateHomeRegionControlInput,
        output_schema = types.CreateHomeRegionControlOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteHomeRegionControl(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHomeRegionControl",
        input_schema = types.DeleteHomeRegionControlInput,
        output_schema = types.DeleteHomeRegionControlOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeHomeRegionControls(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHomeRegionControls",
        input_schema = types.DescribeHomeRegionControlsInput,
        output_schema = types.DescribeHomeRegionControlsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getHomeRegion(input, options)
    return self:invokeOperation(input, {
        name = "GetHomeRegion",
        input_schema = types.GetHomeRegionInput,
        output_schema = types.GetHomeRegionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
