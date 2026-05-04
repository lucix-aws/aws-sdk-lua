local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ecrpublic.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("ecrpublic.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SpencerFrontendService"
    cfg.signing_name = "ecr-public"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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

function Client:batchCheckLayerAvailability(input, options)
    return self:invokeOperation(input, {
        name = "BatchCheckLayerAvailability",
        input_schema = types.BatchCheckLayerAvailabilityInput,
        output_schema = types.BatchCheckLayerAvailabilityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeleteImage(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteImage",
        input_schema = types.BatchDeleteImageInput,
        output_schema = types.BatchDeleteImageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:completeLayerUpload(input, options)
    return self:invokeOperation(input, {
        name = "CompleteLayerUpload",
        input_schema = types.CompleteLayerUploadInput,
        output_schema = types.CompleteLayerUploadOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRepository(input, options)
    return self:invokeOperation(input, {
        name = "CreateRepository",
        input_schema = types.CreateRepositoryInput,
        output_schema = types.CreateRepositoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRepository(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepository",
        input_schema = types.DeleteRepositoryInput,
        output_schema = types.DeleteRepositoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRepositoryPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRepositoryPolicy",
        input_schema = types.DeleteRepositoryPolicyInput,
        output_schema = types.DeleteRepositoryPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeImages(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImages",
        input_schema = types.DescribeImagesInput,
        output_schema = types.DescribeImagesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeImageTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageTags",
        input_schema = types.DescribeImageTagsInput,
        output_schema = types.DescribeImageTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRegistries(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistries",
        input_schema = types.DescribeRegistriesInput,
        output_schema = types.DescribeRegistriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRepositories(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRepositories",
        input_schema = types.DescribeRepositoriesInput,
        output_schema = types.DescribeRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAuthorizationToken(input, options)
    return self:invokeOperation(input, {
        name = "GetAuthorizationToken",
        input_schema = types.GetAuthorizationTokenInput,
        output_schema = types.GetAuthorizationTokenOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRegistryCatalogData(input, options)
    return self:invokeOperation(input, {
        name = "GetRegistryCatalogData",
        input_schema = types.GetRegistryCatalogDataInput,
        output_schema = types.GetRegistryCatalogDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRepositoryCatalogData(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositoryCatalogData",
        input_schema = types.GetRepositoryCatalogDataInput,
        output_schema = types.GetRepositoryCatalogDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRepositoryPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetRepositoryPolicy",
        input_schema = types.GetRepositoryPolicyInput,
        output_schema = types.GetRepositoryPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:initiateLayerUpload(input, options)
    return self:invokeOperation(input, {
        name = "InitiateLayerUpload",
        input_schema = types.InitiateLayerUploadInput,
        output_schema = types.InitiateLayerUploadOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putImage(input, options)
    return self:invokeOperation(input, {
        name = "PutImage",
        input_schema = types.PutImageInput,
        output_schema = types.PutImageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putRegistryCatalogData(input, options)
    return self:invokeOperation(input, {
        name = "PutRegistryCatalogData",
        input_schema = types.PutRegistryCatalogDataInput,
        output_schema = types.PutRegistryCatalogDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putRepositoryCatalogData(input, options)
    return self:invokeOperation(input, {
        name = "PutRepositoryCatalogData",
        input_schema = types.PutRepositoryCatalogDataInput,
        output_schema = types.PutRepositoryCatalogDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setRepositoryPolicy(input, options)
    return self:invokeOperation(input, {
        name = "SetRepositoryPolicy",
        input_schema = types.SetRepositoryPolicyInput,
        output_schema = types.SetRepositoryPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:uploadLayerPart(input, options)
    return self:invokeOperation(input, {
        name = "UploadLayerPart",
        input_schema = types.UploadLayerPartInput,
        output_schema = types.UploadLayerPartOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
