local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("simspaceweaver.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("simspaceweaver.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SimSpaceWeaver"
    cfg.signing_name = "simspaceweaver"
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

function Client:createSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshot",
        input_schema = types.CreateSnapshotInput,
        output_schema = types.CreateSnapshotOutput,
        http_method = "POST",
        http_path = "/createsnapshot",
    }, options)
end

function Client:deleteApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApp",
        input_schema = types.DeleteAppInput,
        output_schema = types.DeleteAppOutput,
        http_method = "DELETE",
        http_path = "/deleteapp",
    }, options)
end

function Client:deleteSimulation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSimulation",
        input_schema = types.DeleteSimulationInput,
        output_schema = types.DeleteSimulationOutput,
        http_method = "DELETE",
        http_path = "/deletesimulation",
    }, options)
end

function Client:describeApp(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApp",
        input_schema = types.DescribeAppInput,
        output_schema = types.DescribeAppOutput,
        http_method = "GET",
        http_path = "/describeapp",
    }, options)
end

function Client:describeSimulation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSimulation",
        input_schema = types.DescribeSimulationInput,
        output_schema = types.DescribeSimulationOutput,
        http_method = "GET",
        http_path = "/describesimulation",
    }, options)
end

function Client:listApps(input, options)
    return self:invokeOperation(input, {
        name = "ListApps",
        input_schema = types.ListAppsInput,
        output_schema = types.ListAppsOutput,
        http_method = "GET",
        http_path = "/listapps",
    }, options)
end

function Client:listSimulations(input, options)
    return self:invokeOperation(input, {
        name = "ListSimulations",
        input_schema = types.ListSimulationsInput,
        output_schema = types.ListSimulationsOutput,
        http_method = "GET",
        http_path = "/listsimulations",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:startApp(input, options)
    return self:invokeOperation(input, {
        name = "StartApp",
        input_schema = types.StartAppInput,
        output_schema = types.StartAppOutput,
        http_method = "POST",
        http_path = "/startapp",
    }, options)
end

function Client:startClock(input, options)
    return self:invokeOperation(input, {
        name = "StartClock",
        input_schema = types.StartClockInput,
        output_schema = types.StartClockOutput,
        http_method = "POST",
        http_path = "/startclock",
    }, options)
end

function Client:startSimulation(input, options)
    return self:invokeOperation(input, {
        name = "StartSimulation",
        input_schema = types.StartSimulationInput,
        output_schema = types.StartSimulationOutput,
        http_method = "POST",
        http_path = "/startsimulation",
    }, options)
end

function Client:stopApp(input, options)
    return self:invokeOperation(input, {
        name = "StopApp",
        input_schema = types.StopAppInput,
        output_schema = types.StopAppOutput,
        http_method = "POST",
        http_path = "/stopapp",
    }, options)
end

function Client:stopClock(input, options)
    return self:invokeOperation(input, {
        name = "StopClock",
        input_schema = types.StopClockInput,
        output_schema = types.StopClockOutput,
        http_method = "POST",
        http_path = "/stopclock",
    }, options)
end

function Client:stopSimulation(input, options)
    return self:invokeOperation(input, {
        name = "StopSimulation",
        input_schema = types.StopSimulationInput,
        output_schema = types.StopSimulationOutput,
        http_method = "POST",
        http_path = "/stopsimulation",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

return M
