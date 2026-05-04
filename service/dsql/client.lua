local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("dsql.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("dsql.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DSQL"
    cfg.signing_name = "dsql"
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

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = types.CreateClusterInput,
        output_schema = types.CreateClusterOutput,
        http_method = "POST",
        http_path = "/cluster",
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = types.DeleteClusterInput,
        output_schema = types.DeleteClusterOutput,
        http_method = "DELETE",
        http_path = "/cluster/{identifier}",
    }, options)
end

function Client:deleteClusterPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClusterPolicy",
        input_schema = types.DeleteClusterPolicyInput,
        output_schema = types.DeleteClusterPolicyOutput,
        http_method = "DELETE",
        http_path = "/cluster/{identifier}/policy",
    }, options)
end

function Client:getCluster(input, options)
    return self:invokeOperation(input, {
        name = "GetCluster",
        input_schema = types.GetClusterInput,
        output_schema = types.GetClusterOutput,
        http_method = "GET",
        http_path = "/cluster/{identifier}",
    }, options)
end

function Client:getClusterPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetClusterPolicy",
        input_schema = types.GetClusterPolicyInput,
        output_schema = types.GetClusterPolicyOutput,
        http_method = "GET",
        http_path = "/cluster/{identifier}/policy",
    }, options)
end

function Client:getVpcEndpointServiceName(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcEndpointServiceName",
        input_schema = types.GetVpcEndpointServiceNameInput,
        output_schema = types.GetVpcEndpointServiceNameOutput,
        http_method = "GET",
        http_path = "/clusters/{identifier}/vpc-endpoint-service-name",
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = types.ListClustersInput,
        output_schema = types.ListClustersOutput,
        http_method = "GET",
        http_path = "/cluster",
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

function Client:putClusterPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutClusterPolicy",
        input_schema = types.PutClusterPolicyInput,
        output_schema = types.PutClusterPolicyOutput,
        http_method = "POST",
        http_path = "/cluster/{identifier}/policy",
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

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = types.UpdateClusterInput,
        output_schema = types.UpdateClusterOutput,
        http_method = "POST",
        http_path = "/cluster/{identifier}",
    }, options)
end

return M
