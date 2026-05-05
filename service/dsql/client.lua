local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("dsql.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("dsql.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DSQL"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "dsql", signing_region = cfg.region } }
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
        input_schema = schemas.CreateClusterInput,
        output_schema = schemas.CreateClusterOutput,
        http_method = "POST",
        http_path = "/cluster",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = schemas.DeleteClusterInput,
        output_schema = schemas.DeleteClusterOutput,
        http_method = "DELETE",
        http_path = "/cluster/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteClusterPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClusterPolicy",
        input_schema = schemas.DeleteClusterPolicyInput,
        output_schema = schemas.DeleteClusterPolicyOutput,
        http_method = "DELETE",
        http_path = "/cluster/{identifier}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCluster(input, options)
    return self:invokeOperation(input, {
        name = "GetCluster",
        input_schema = schemas.GetClusterInput,
        output_schema = schemas.GetClusterOutput,
        http_method = "GET",
        http_path = "/cluster/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getClusterPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetClusterPolicy",
        input_schema = schemas.GetClusterPolicyInput,
        output_schema = schemas.GetClusterPolicyOutput,
        http_method = "GET",
        http_path = "/cluster/{identifier}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVpcEndpointServiceName(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcEndpointServiceName",
        input_schema = schemas.GetVpcEndpointServiceNameInput,
        output_schema = schemas.GetVpcEndpointServiceNameOutput,
        http_method = "GET",
        http_path = "/clusters/{identifier}/vpc-endpoint-service-name",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = schemas.ListClustersInput,
        output_schema = schemas.ListClustersOutput,
        http_method = "GET",
        http_path = "/cluster",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putClusterPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutClusterPolicy",
        input_schema = schemas.PutClusterPolicyInput,
        output_schema = schemas.PutClusterPolicyOutput,
        http_method = "POST",
        http_path = "/cluster/{identifier}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = schemas.UpdateClusterInput,
        output_schema = schemas.UpdateClusterOutput,
        http_method = "POST",
        http_path = "/cluster/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
