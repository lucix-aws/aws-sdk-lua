local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("synthetics.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("synthetics.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Synthetics"
    cfg.signing_name = "synthetics"
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

function Client:associateResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResource",
        input_schema = types.AssociateResourceInput,
        output_schema = types.AssociateResourceOutput,
        http_method = "PATCH",
        http_path = "/group/{GroupIdentifier}/associate",
    }, options)
end

function Client:createCanary(input, options)
    return self:invokeOperation(input, {
        name = "CreateCanary",
        input_schema = types.CreateCanaryInput,
        output_schema = types.CreateCanaryOutput,
        http_method = "POST",
        http_path = "/canary",
    }, options)
end

function Client:createGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroup",
        input_schema = types.CreateGroupInput,
        output_schema = types.CreateGroupOutput,
        http_method = "POST",
        http_path = "/group",
    }, options)
end

function Client:deleteCanary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCanary",
        input_schema = types.DeleteCanaryInput,
        output_schema = types.DeleteCanaryOutput,
        http_method = "DELETE",
        http_path = "/canary/{Name}",
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = types.DeleteGroupInput,
        output_schema = types.DeleteGroupOutput,
        http_method = "DELETE",
        http_path = "/group/{GroupIdentifier}",
    }, options)
end

function Client:describeCanaries(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCanaries",
        input_schema = types.DescribeCanariesInput,
        output_schema = types.DescribeCanariesOutput,
        http_method = "POST",
        http_path = "/canaries",
    }, options)
end

function Client:describeCanariesLastRun(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCanariesLastRun",
        input_schema = types.DescribeCanariesLastRunInput,
        output_schema = types.DescribeCanariesLastRunOutput,
        http_method = "POST",
        http_path = "/canaries/last-run",
    }, options)
end

function Client:describeRuntimeVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuntimeVersions",
        input_schema = types.DescribeRuntimeVersionsInput,
        output_schema = types.DescribeRuntimeVersionsOutput,
        http_method = "POST",
        http_path = "/runtime-versions",
    }, options)
end

function Client:disassociateResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResource",
        input_schema = types.DisassociateResourceInput,
        output_schema = types.DisassociateResourceOutput,
        http_method = "PATCH",
        http_path = "/group/{GroupIdentifier}/disassociate",
    }, options)
end

function Client:getCanary(input, options)
    return self:invokeOperation(input, {
        name = "GetCanary",
        input_schema = types.GetCanaryInput,
        output_schema = types.GetCanaryOutput,
        http_method = "GET",
        http_path = "/canary/{Name}",
    }, options)
end

function Client:getCanaryRuns(input, options)
    return self:invokeOperation(input, {
        name = "GetCanaryRuns",
        input_schema = types.GetCanaryRunsInput,
        output_schema = types.GetCanaryRunsOutput,
        http_method = "POST",
        http_path = "/canary/{Name}/runs",
    }, options)
end

function Client:getGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetGroup",
        input_schema = types.GetGroupInput,
        output_schema = types.GetGroupOutput,
        http_method = "GET",
        http_path = "/group/{GroupIdentifier}",
    }, options)
end

function Client:listAssociatedGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedGroups",
        input_schema = types.ListAssociatedGroupsInput,
        output_schema = types.ListAssociatedGroupsOutput,
        http_method = "POST",
        http_path = "/resource/{ResourceArn}/groups",
    }, options)
end

function Client:listGroupResources(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupResources",
        input_schema = types.ListGroupResourcesInput,
        output_schema = types.ListGroupResourcesOutput,
        http_method = "POST",
        http_path = "/group/{GroupIdentifier}/resources",
    }, options)
end

function Client:listGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGroups",
        input_schema = types.ListGroupsInput,
        output_schema = types.ListGroupsOutput,
        http_method = "POST",
        http_path = "/groups",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:startCanary(input, options)
    return self:invokeOperation(input, {
        name = "StartCanary",
        input_schema = types.StartCanaryInput,
        output_schema = types.StartCanaryOutput,
        http_method = "POST",
        http_path = "/canary/{Name}/start",
    }, options)
end

function Client:startCanaryDryRun(input, options)
    return self:invokeOperation(input, {
        name = "StartCanaryDryRun",
        input_schema = types.StartCanaryDryRunInput,
        output_schema = types.StartCanaryDryRunOutput,
        http_method = "POST",
        http_path = "/canary/{Name}/dry-run/start",
    }, options)
end

function Client:stopCanary(input, options)
    return self:invokeOperation(input, {
        name = "StopCanary",
        input_schema = types.StopCanaryInput,
        output_schema = types.StopCanaryOutput,
        http_method = "POST",
        http_path = "/canary/{Name}/stop",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateCanary(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCanary",
        input_schema = types.UpdateCanaryInput,
        output_schema = types.UpdateCanaryOutput,
        http_method = "PATCH",
        http_path = "/canary/{Name}",
    }, options)
end

return M
