local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("s3vectors.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("s3vectors.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "S3Vectors"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "s3vectors", signing_region = cfg.region } }
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

function Client:createIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreateIndex",
        input_schema = types.CreateIndexInput,
        output_schema = types.CreateIndexOutput,
        http_method = "POST",
        http_path = "/CreateIndex",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVectorBucket(input, options)
    return self:invokeOperation(input, {
        name = "CreateVectorBucket",
        input_schema = types.CreateVectorBucketInput,
        output_schema = types.CreateVectorBucketOutput,
        http_method = "POST",
        http_path = "/CreateVectorBucket",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIndex(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndex",
        input_schema = types.DeleteIndexInput,
        output_schema = types.DeleteIndexOutput,
        http_method = "POST",
        http_path = "/DeleteIndex",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVectorBucket(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVectorBucket",
        input_schema = types.DeleteVectorBucketInput,
        output_schema = types.DeleteVectorBucketOutput,
        http_method = "POST",
        http_path = "/DeleteVectorBucket",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVectorBucketPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVectorBucketPolicy",
        input_schema = types.DeleteVectorBucketPolicyInput,
        output_schema = types.DeleteVectorBucketPolicyOutput,
        http_method = "POST",
        http_path = "/DeleteVectorBucketPolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVectors(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVectors",
        input_schema = types.DeleteVectorsInput,
        output_schema = types.DeleteVectorsOutput,
        http_method = "POST",
        http_path = "/DeleteVectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIndex(input, options)
    return self:invokeOperation(input, {
        name = "GetIndex",
        input_schema = types.GetIndexInput,
        output_schema = types.GetIndexOutput,
        http_method = "POST",
        http_path = "/GetIndex",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVectorBucket(input, options)
    return self:invokeOperation(input, {
        name = "GetVectorBucket",
        input_schema = types.GetVectorBucketInput,
        output_schema = types.GetVectorBucketOutput,
        http_method = "POST",
        http_path = "/GetVectorBucket",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVectorBucketPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetVectorBucketPolicy",
        input_schema = types.GetVectorBucketPolicyInput,
        output_schema = types.GetVectorBucketPolicyOutput,
        http_method = "POST",
        http_path = "/GetVectorBucketPolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVectors(input, options)
    return self:invokeOperation(input, {
        name = "GetVectors",
        input_schema = types.GetVectorsInput,
        output_schema = types.GetVectorsOutput,
        http_method = "POST",
        http_path = "/GetVectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIndexes(input, options)
    return self:invokeOperation(input, {
        name = "ListIndexes",
        input_schema = types.ListIndexesInput,
        output_schema = types.ListIndexesOutput,
        http_method = "POST",
        http_path = "/ListIndexes",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVectorBuckets(input, options)
    return self:invokeOperation(input, {
        name = "ListVectorBuckets",
        input_schema = types.ListVectorBucketsInput,
        output_schema = types.ListVectorBucketsOutput,
        http_method = "POST",
        http_path = "/ListVectorBuckets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVectors(input, options)
    return self:invokeOperation(input, {
        name = "ListVectors",
        input_schema = types.ListVectorsInput,
        output_schema = types.ListVectorsOutput,
        http_method = "POST",
        http_path = "/ListVectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putVectorBucketPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutVectorBucketPolicy",
        input_schema = types.PutVectorBucketPolicyInput,
        output_schema = types.PutVectorBucketPolicyOutput,
        http_method = "POST",
        http_path = "/PutVectorBucketPolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putVectors(input, options)
    return self:invokeOperation(input, {
        name = "PutVectors",
        input_schema = types.PutVectorsInput,
        output_schema = types.PutVectorsOutput,
        http_method = "POST",
        http_path = "/PutVectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:queryVectors(input, options)
    return self:invokeOperation(input, {
        name = "QueryVectors",
        input_schema = types.QueryVectorsInput,
        output_schema = types.QueryVectorsOutput,
        http_method = "POST",
        http_path = "/QueryVectors",
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
        http_path = "/tags/{resourceArn}",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
