local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("route53recoverycluster.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("route53recoverycluster.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ToggleCustomerAPI"
    cfg.signing_name = "togglecustomerapi"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
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

function Client:getRoutingControlState(input, options)
    return self:invokeOperation(input, {
        name = "GetRoutingControlState",
        input_schema = types.GetRoutingControlStateInput,
        output_schema = types.GetRoutingControlStateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRoutingControls(input, options)
    return self:invokeOperation(input, {
        name = "ListRoutingControls",
        input_schema = types.ListRoutingControlsInput,
        output_schema = types.ListRoutingControlsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRoutingControlState(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoutingControlState",
        input_schema = types.UpdateRoutingControlStateInput,
        output_schema = types.UpdateRoutingControlStateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRoutingControlStates(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoutingControlStates",
        input_schema = types.UpdateRoutingControlStatesInput,
        output_schema = types.UpdateRoutingControlStatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
