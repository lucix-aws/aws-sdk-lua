local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("synthetics.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("synthetics.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Synthetics"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "synthetics", signing_region = cfg.region } }
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

function Client:associateResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResource",
        input_schema = schemas.AssociateResourceInput,
        output_schema = schemas.AssociateResourceOutput,
        http_method = "PATCH",
        http_path = "/group/{GroupIdentifier}/associate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCanary(input, options)
    return self:invokeOperation(input, {
        name = "CreateCanary",
        input_schema = schemas.CreateCanaryInput,
        output_schema = schemas.CreateCanaryOutput,
        http_method = "POST",
        http_path = "/canary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroup",
        input_schema = schemas.CreateGroupInput,
        output_schema = schemas.CreateGroupOutput,
        http_method = "POST",
        http_path = "/group",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCanary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCanary",
        input_schema = schemas.DeleteCanaryInput,
        output_schema = schemas.DeleteCanaryOutput,
        http_method = "DELETE",
        http_path = "/canary/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = schemas.DeleteGroupInput,
        output_schema = schemas.DeleteGroupOutput,
        http_method = "DELETE",
        http_path = "/group/{GroupIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCanaries(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCanaries",
        input_schema = schemas.DescribeCanariesInput,
        output_schema = schemas.DescribeCanariesOutput,
        http_method = "POST",
        http_path = "/canaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCanariesLastRun(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCanariesLastRun",
        input_schema = schemas.DescribeCanariesLastRunInput,
        output_schema = schemas.DescribeCanariesLastRunOutput,
        http_method = "POST",
        http_path = "/canaries/last-run",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRuntimeVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRuntimeVersions",
        input_schema = schemas.DescribeRuntimeVersionsInput,
        output_schema = schemas.DescribeRuntimeVersionsOutput,
        http_method = "POST",
        http_path = "/runtime-versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResource",
        input_schema = schemas.DisassociateResourceInput,
        output_schema = schemas.DisassociateResourceOutput,
        http_method = "PATCH",
        http_path = "/group/{GroupIdentifier}/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCanary(input, options)
    return self:invokeOperation(input, {
        name = "GetCanary",
        input_schema = schemas.GetCanaryInput,
        output_schema = schemas.GetCanaryOutput,
        http_method = "GET",
        http_path = "/canary/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCanaryRuns(input, options)
    return self:invokeOperation(input, {
        name = "GetCanaryRuns",
        input_schema = schemas.GetCanaryRunsInput,
        output_schema = schemas.GetCanaryRunsOutput,
        http_method = "POST",
        http_path = "/canary/{Name}/runs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetGroup",
        input_schema = schemas.GetGroupInput,
        output_schema = schemas.GetGroupOutput,
        http_method = "GET",
        http_path = "/group/{GroupIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociatedGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedGroups",
        input_schema = schemas.ListAssociatedGroupsInput,
        output_schema = schemas.ListAssociatedGroupsOutput,
        http_method = "POST",
        http_path = "/resource/{ResourceArn}/groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroupResources(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupResources",
        input_schema = schemas.ListGroupResourcesInput,
        output_schema = schemas.ListGroupResourcesOutput,
        http_method = "POST",
        http_path = "/group/{GroupIdentifier}/resources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGroups",
        input_schema = schemas.ListGroupsInput,
        output_schema = schemas.ListGroupsOutput,
        http_method = "POST",
        http_path = "/groups",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCanary(input, options)
    return self:invokeOperation(input, {
        name = "StartCanary",
        input_schema = schemas.StartCanaryInput,
        output_schema = schemas.StartCanaryOutput,
        http_method = "POST",
        http_path = "/canary/{Name}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCanaryDryRun(input, options)
    return self:invokeOperation(input, {
        name = "StartCanaryDryRun",
        input_schema = schemas.StartCanaryDryRunInput,
        output_schema = schemas.StartCanaryDryRunOutput,
        http_method = "POST",
        http_path = "/canary/{Name}/dry-run/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopCanary(input, options)
    return self:invokeOperation(input, {
        name = "StopCanary",
        input_schema = schemas.StopCanaryInput,
        output_schema = schemas.StopCanaryOutput,
        http_method = "POST",
        http_path = "/canary/{Name}/stop",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCanary(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCanary",
        input_schema = schemas.UpdateCanaryInput,
        output_schema = schemas.UpdateCanaryOutput,
        http_method = "PATCH",
        http_path = "/canary/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
