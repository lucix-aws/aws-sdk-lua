local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("s3vectors.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("s3vectors.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.CreateIndexInput,
        output_schema = schemas.CreateIndexOutput,
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
        input_schema = schemas.CreateVectorBucketInput,
        output_schema = schemas.CreateVectorBucketOutput,
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
        input_schema = schemas.DeleteIndexInput,
        output_schema = schemas.DeleteIndexOutput,
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
        input_schema = schemas.DeleteVectorBucketInput,
        output_schema = schemas.DeleteVectorBucketOutput,
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
        input_schema = schemas.DeleteVectorBucketPolicyInput,
        output_schema = schemas.DeleteVectorBucketPolicyOutput,
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
        input_schema = schemas.DeleteVectorsInput,
        output_schema = schemas.DeleteVectorsOutput,
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
        input_schema = schemas.GetIndexInput,
        output_schema = schemas.GetIndexOutput,
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
        input_schema = schemas.GetVectorBucketInput,
        output_schema = schemas.GetVectorBucketOutput,
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
        input_schema = schemas.GetVectorBucketPolicyInput,
        output_schema = schemas.GetVectorBucketPolicyOutput,
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
        input_schema = schemas.GetVectorsInput,
        output_schema = schemas.GetVectorsOutput,
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
        input_schema = schemas.ListIndexesInput,
        output_schema = schemas.ListIndexesOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListVectorBucketsInput,
        output_schema = schemas.ListVectorBucketsOutput,
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
        input_schema = schemas.ListVectorsInput,
        output_schema = schemas.ListVectorsOutput,
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
        input_schema = schemas.PutVectorBucketPolicyInput,
        output_schema = schemas.PutVectorBucketPolicyOutput,
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
        input_schema = schemas.PutVectorsInput,
        output_schema = schemas.PutVectorsOutput,
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
        input_schema = schemas.QueryVectorsInput,
        output_schema = schemas.QueryVectorsOutput,
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

return M
