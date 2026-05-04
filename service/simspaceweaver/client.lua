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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "simspaceweaver", signing_region = cfg.region } }
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

function Client:createSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshot",
        input_schema = types.CreateSnapshotInput,
        output_schema = types.CreateSnapshotOutput,
        http_method = "POST",
        http_path = "/createsnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApp",
        input_schema = types.DeleteAppInput,
        output_schema = types.DeleteAppOutput,
        http_method = "DELETE",
        http_path = "/deleteapp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSimulation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSimulation",
        input_schema = types.DeleteSimulationInput,
        output_schema = types.DeleteSimulationOutput,
        http_method = "DELETE",
        http_path = "/deletesimulation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApp(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApp",
        input_schema = types.DescribeAppInput,
        output_schema = types.DescribeAppOutput,
        http_method = "GET",
        http_path = "/describeapp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSimulation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSimulation",
        input_schema = types.DescribeSimulationInput,
        output_schema = types.DescribeSimulationOutput,
        http_method = "GET",
        http_path = "/describesimulation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApps(input, options)
    return self:invokeOperation(input, {
        name = "ListApps",
        input_schema = types.ListAppsInput,
        output_schema = types.ListAppsOutput,
        http_method = "GET",
        http_path = "/listapps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSimulations(input, options)
    return self:invokeOperation(input, {
        name = "ListSimulations",
        input_schema = types.ListSimulationsInput,
        output_schema = types.ListSimulationsOutput,
        http_method = "GET",
        http_path = "/listsimulations",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startApp(input, options)
    return self:invokeOperation(input, {
        name = "StartApp",
        input_schema = types.StartAppInput,
        output_schema = types.StartAppOutput,
        http_method = "POST",
        http_path = "/startapp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startClock(input, options)
    return self:invokeOperation(input, {
        name = "StartClock",
        input_schema = types.StartClockInput,
        output_schema = types.StartClockOutput,
        http_method = "POST",
        http_path = "/startclock",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSimulation(input, options)
    return self:invokeOperation(input, {
        name = "StartSimulation",
        input_schema = types.StartSimulationInput,
        output_schema = types.StartSimulationOutput,
        http_method = "POST",
        http_path = "/startsimulation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopApp(input, options)
    return self:invokeOperation(input, {
        name = "StopApp",
        input_schema = types.StopAppInput,
        output_schema = types.StopAppOutput,
        http_method = "POST",
        http_path = "/stopapp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopClock(input, options)
    return self:invokeOperation(input, {
        name = "StopClock",
        input_schema = types.StopClockInput,
        output_schema = types.StopClockOutput,
        http_method = "POST",
        http_path = "/stopclock",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopSimulation(input, options)
    return self:invokeOperation(input, {
        name = "StopSimulation",
        input_schema = types.StopSimulationInput,
        output_schema = types.StopSimulationOutput,
        http_method = "POST",
        http_path = "/stopsimulation",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
