local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("timestreaminfluxdb.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("timestreaminfluxdb.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonTimestreamInfluxDB"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "timestream-influxdb", signing_region = cfg.region } }
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

function Client:createDbCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateDbCluster",
        input_schema = types.CreateDbClusterInput,
        output_schema = types.CreateDbClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDbInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateDbInstance",
        input_schema = types.CreateDbInstanceInput,
        output_schema = types.CreateDbInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDbParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDbParameterGroup",
        input_schema = types.CreateDbParameterGroupInput,
        output_schema = types.CreateDbParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDbCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDbCluster",
        input_schema = types.DeleteDbClusterInput,
        output_schema = types.DeleteDbClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDbInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDbInstance",
        input_schema = types.DeleteDbInstanceInput,
        output_schema = types.DeleteDbInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDbCluster(input, options)
    return self:invokeOperation(input, {
        name = "GetDbCluster",
        input_schema = types.GetDbClusterInput,
        output_schema = types.GetDbClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDbInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetDbInstance",
        input_schema = types.GetDbInstanceInput,
        output_schema = types.GetDbInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDbParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetDbParameterGroup",
        input_schema = types.GetDbParameterGroupInput,
        output_schema = types.GetDbParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDbClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListDbClusters",
        input_schema = types.ListDbClustersInput,
        output_schema = types.ListDbClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDbInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListDbInstances",
        input_schema = types.ListDbInstancesInput,
        output_schema = types.ListDbInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDbInstancesForCluster(input, options)
    return self:invokeOperation(input, {
        name = "ListDbInstancesForCluster",
        input_schema = types.ListDbInstancesForClusterInput,
        output_schema = types.ListDbInstancesForClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDbParameterGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListDbParameterGroups",
        input_schema = types.ListDbParameterGroupsInput,
        output_schema = types.ListDbParameterGroupsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootDbCluster(input, options)
    return self:invokeOperation(input, {
        name = "RebootDbCluster",
        input_schema = types.RebootDbClusterInput,
        output_schema = types.RebootDbClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootDbInstance(input, options)
    return self:invokeOperation(input, {
        name = "RebootDbInstance",
        input_schema = types.RebootDbInstanceInput,
        output_schema = types.RebootDbInstanceOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDbCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDbCluster",
        input_schema = types.UpdateDbClusterInput,
        output_schema = types.UpdateDbClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDbInstance(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDbInstance",
        input_schema = types.UpdateDbInstanceInput,
        output_schema = types.UpdateDbInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
