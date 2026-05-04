local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("marketplacecatalog.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("marketplacecatalog.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSMPSeymour"
    cfg.signing_name = "awsmpseymour"
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

function Client:batchDescribeEntities(input, options)
    return self:invokeOperation(input, {
        name = "BatchDescribeEntities",
        input_schema = types.BatchDescribeEntitiesInput,
        output_schema = types.BatchDescribeEntitiesOutput,
        http_method = "POST",
        http_path = "/BatchDescribeEntities",
    }, options)
end

function Client:cancelChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "CancelChangeSet",
        input_schema = types.CancelChangeSetInput,
        output_schema = types.CancelChangeSetOutput,
        http_method = "PATCH",
        http_path = "/CancelChangeSet",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "DELETE",
        http_path = "/DeleteResourcePolicy",
    }, options)
end

function Client:describeChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChangeSet",
        input_schema = types.DescribeChangeSetInput,
        output_schema = types.DescribeChangeSetOutput,
        http_method = "GET",
        http_path = "/DescribeChangeSet",
    }, options)
end

function Client:describeEntity(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEntity",
        input_schema = types.DescribeEntityInput,
        output_schema = types.DescribeEntityOutput,
        http_method = "GET",
        http_path = "/DescribeEntity",
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "GET",
        http_path = "/GetResourcePolicy",
    }, options)
end

function Client:listChangeSets(input, options)
    return self:invokeOperation(input, {
        name = "ListChangeSets",
        input_schema = types.ListChangeSetsInput,
        output_schema = types.ListChangeSetsOutput,
        http_method = "POST",
        http_path = "/ListChangeSets",
    }, options)
end

function Client:listEntities(input, options)
    return self:invokeOperation(input, {
        name = "ListEntities",
        input_schema = types.ListEntitiesInput,
        output_schema = types.ListEntitiesOutput,
        http_method = "POST",
        http_path = "/ListEntities",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/ListTagsForResource",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/PutResourcePolicy",
    }, options)
end

function Client:startChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "StartChangeSet",
        input_schema = types.StartChangeSetInput,
        output_schema = types.StartChangeSetOutput,
        http_method = "POST",
        http_path = "/StartChangeSet",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/TagResource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/UntagResource",
    }, options)
end

return M
