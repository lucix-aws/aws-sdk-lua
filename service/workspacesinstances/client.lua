local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("workspacesinstances.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("workspacesinstances.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "EUCMIFrontendAPIService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "workspaces-instances", signing_region = cfg.region } }
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

function Client:associateVolume(input, options)
    return self:invokeOperation(input, {
        name = "AssociateVolume",
        input_schema = types.AssociateVolumeInput,
        output_schema = types.AssociateVolumeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVolume(input, options)
    return self:invokeOperation(input, {
        name = "CreateVolume",
        input_schema = types.CreateVolumeInput,
        output_schema = types.CreateVolumeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkspaceInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspaceInstance",
        input_schema = types.CreateWorkspaceInstanceInput,
        output_schema = types.CreateWorkspaceInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVolume(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVolume",
        input_schema = types.DeleteVolumeInput,
        output_schema = types.DeleteVolumeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkspaceInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspaceInstance",
        input_schema = types.DeleteWorkspaceInstanceInput,
        output_schema = types.DeleteWorkspaceInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateVolume(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateVolume",
        input_schema = types.DisassociateVolumeInput,
        output_schema = types.DisassociateVolumeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkspaceInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkspaceInstance",
        input_schema = types.GetWorkspaceInstanceInput,
        output_schema = types.GetWorkspaceInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstanceTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceTypes",
        input_schema = types.ListInstanceTypesInput,
        output_schema = types.ListInstanceTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRegions(input, options)
    return self:invokeOperation(input, {
        name = "ListRegions",
        input_schema = types.ListRegionsInput,
        output_schema = types.ListRegionsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkspaceInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkspaceInstances",
        input_schema = types.ListWorkspaceInstancesInput,
        output_schema = types.ListWorkspaceInstancesOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
