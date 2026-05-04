local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloud9.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("cloud9.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSCloud9WorkspaceManagementService"
    cfg.signing_name = "awscloud9workspacemanagementservice"
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

function Client:createEnvironmentEC2(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentEC2",
        input_schema = types.CreateEnvironmentEC2Input,
        output_schema = types.CreateEnvironmentEC2Output,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEnvironmentMembership(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentMembership",
        input_schema = types.CreateEnvironmentMembershipInput,
        output_schema = types.CreateEnvironmentMembershipOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironment",
        input_schema = types.DeleteEnvironmentInput,
        output_schema = types.DeleteEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEnvironmentMembership(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentMembership",
        input_schema = types.DeleteEnvironmentMembershipInput,
        output_schema = types.DeleteEnvironmentMembershipOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEnvironmentMemberships(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEnvironmentMemberships",
        input_schema = types.DescribeEnvironmentMembershipsInput,
        output_schema = types.DescribeEnvironmentMembershipsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEnvironments",
        input_schema = types.DescribeEnvironmentsInput,
        output_schema = types.DescribeEnvironmentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEnvironmentStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEnvironmentStatus",
        input_schema = types.DescribeEnvironmentStatusInput,
        output_schema = types.DescribeEnvironmentStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironments",
        input_schema = types.ListEnvironmentsInput,
        output_schema = types.ListEnvironmentsOutput,
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

function Client:updateEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironment",
        input_schema = types.UpdateEnvironmentInput,
        output_schema = types.UpdateEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEnvironmentMembership(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentMembership",
        input_schema = types.UpdateEnvironmentMembershipInput,
        output_schema = types.UpdateEnvironmentMembershipOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
