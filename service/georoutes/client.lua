local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("georoutes.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("georoutes.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RoutesService"
    cfg.signing_name = "geo-routes"
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

function Client:calculateIsolines(input, options)
    return self:invokeOperation(input, {
        name = "CalculateIsolines",
        input_schema = types.CalculateIsolinesInput,
        output_schema = types.CalculateIsolinesOutput,
        http_method = "POST",
        http_path = "/isolines",
    }, options)
end

function Client:calculateRouteMatrix(input, options)
    return self:invokeOperation(input, {
        name = "CalculateRouteMatrix",
        input_schema = types.CalculateRouteMatrixInput,
        output_schema = types.CalculateRouteMatrixOutput,
        http_method = "POST",
        http_path = "/route-matrix",
    }, options)
end

function Client:calculateRoutes(input, options)
    return self:invokeOperation(input, {
        name = "CalculateRoutes",
        input_schema = types.CalculateRoutesInput,
        output_schema = types.CalculateRoutesOutput,
        http_method = "POST",
        http_path = "/routes",
    }, options)
end

function Client:optimizeWaypoints(input, options)
    return self:invokeOperation(input, {
        name = "OptimizeWaypoints",
        input_schema = types.OptimizeWaypointsInput,
        output_schema = types.OptimizeWaypointsOutput,
        http_method = "POST",
        http_path = "/optimize-waypoints",
    }, options)
end

function Client:snapToRoads(input, options)
    return self:invokeOperation(input, {
        name = "SnapToRoads",
        input_schema = types.SnapToRoadsInput,
        output_schema = types.SnapToRoadsOutput,
        http_method = "POST",
        http_path = "/snap-to-roads",
    }, options)
end

return M
