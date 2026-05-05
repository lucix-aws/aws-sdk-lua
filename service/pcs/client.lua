local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("pcs.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("pcs.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSParallelComputingService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "pcs", signing_region = cfg.region } }
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

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = types.CreateClusterInput,
        output_schema = types.CreateClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createComputeNodeGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateComputeNodeGroup",
        input_schema = types.CreateComputeNodeGroupInput,
        output_schema = types.CreateComputeNodeGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQueue(input, options)
    return self:invokeOperation(input, {
        name = "CreateQueue",
        input_schema = types.CreateQueueInput,
        output_schema = types.CreateQueueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = types.DeleteClusterInput,
        output_schema = types.DeleteClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteComputeNodeGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComputeNodeGroup",
        input_schema = types.DeleteComputeNodeGroupInput,
        output_schema = types.DeleteComputeNodeGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueue(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueue",
        input_schema = types.DeleteQueueInput,
        output_schema = types.DeleteQueueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCluster(input, options)
    return self:invokeOperation(input, {
        name = "GetCluster",
        input_schema = types.GetClusterInput,
        output_schema = types.GetClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComputeNodeGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetComputeNodeGroup",
        input_schema = types.GetComputeNodeGroupInput,
        output_schema = types.GetComputeNodeGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueue(input, options)
    return self:invokeOperation(input, {
        name = "GetQueue",
        input_schema = types.GetQueueInput,
        output_schema = types.GetQueueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = types.ListClustersInput,
        output_schema = types.ListClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComputeNodeGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListComputeNodeGroups",
        input_schema = types.ListComputeNodeGroupsInput,
        output_schema = types.ListComputeNodeGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueues(input, options)
    return self:invokeOperation(input, {
        name = "ListQueues",
        input_schema = types.ListQueuesInput,
        output_schema = types.ListQueuesOutput,
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

function Client:registerComputeNodeGroupInstance(input, options)
    return self:invokeOperation(input, {
        name = "RegisterComputeNodeGroupInstance",
        input_schema = types.RegisterComputeNodeGroupInstanceInput,
        output_schema = types.RegisterComputeNodeGroupInstanceOutput,
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

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = types.UpdateClusterInput,
        output_schema = types.UpdateClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateComputeNodeGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComputeNodeGroup",
        input_schema = types.UpdateComputeNodeGroupInput,
        output_schema = types.UpdateComputeNodeGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueue(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueue",
        input_schema = types.UpdateQueueInput,
        output_schema = types.UpdateQueueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
