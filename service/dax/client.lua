local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("dax.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("dax.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonDAXV3"
    cfg.signing_name = "amazondaxv3"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
        http_path = "/",
    }, options)
end

function Client:createParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateParameterGroup",
        input_schema = types.CreateParameterGroupInput,
        output_schema = types.CreateParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubnetGroup",
        input_schema = types.CreateSubnetGroupInput,
        output_schema = types.CreateSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:decreaseReplicationFactor(input, options)
    return self:invokeOperation(input, {
        name = "DecreaseReplicationFactor",
        input_schema = types.DecreaseReplicationFactorInput,
        output_schema = types.DecreaseReplicationFactorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = types.DeleteClusterInput,
        output_schema = types.DeleteClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteParameterGroup",
        input_schema = types.DeleteParameterGroupInput,
        output_schema = types.DeleteParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubnetGroup",
        input_schema = types.DeleteSubnetGroupInput,
        output_schema = types.DeleteSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeClusters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusters",
        input_schema = types.DescribeClustersInput,
        output_schema = types.DescribeClustersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDefaultParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDefaultParameters",
        input_schema = types.DescribeDefaultParametersInput,
        output_schema = types.DescribeDefaultParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEvents",
        input_schema = types.DescribeEventsInput,
        output_schema = types.DescribeEventsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeParameterGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeParameterGroups",
        input_schema = types.DescribeParameterGroupsInput,
        output_schema = types.DescribeParameterGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeParameters",
        input_schema = types.DescribeParametersInput,
        output_schema = types.DescribeParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSubnetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSubnetGroups",
        input_schema = types.DescribeSubnetGroupsInput,
        output_schema = types.DescribeSubnetGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:increaseReplicationFactor(input, options)
    return self:invokeOperation(input, {
        name = "IncreaseReplicationFactor",
        input_schema = types.IncreaseReplicationFactorInput,
        output_schema = types.IncreaseReplicationFactorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTags(input, options)
    return self:invokeOperation(input, {
        name = "ListTags",
        input_schema = types.ListTagsInput,
        output_schema = types.ListTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rebootNode(input, options)
    return self:invokeOperation(input, {
        name = "RebootNode",
        input_schema = types.RebootNodeInput,
        output_schema = types.RebootNodeOutput,
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

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = types.UpdateClusterInput,
        output_schema = types.UpdateClusterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateParameterGroup",
        input_schema = types.UpdateParameterGroupInput,
        output_schema = types.UpdateParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubnetGroup",
        input_schema = types.UpdateSubnetGroupInput,
        output_schema = types.UpdateSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
