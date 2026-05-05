local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("evs.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("evs.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonElasticVMwareService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "evs", signing_region = cfg.region } }
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

function Client:associateEipToVlan(input, options)
    return self:invokeOperation(input, {
        name = "AssociateEipToVlan",
        input_schema = types.AssociateEipToVlanInput,
        output_schema = types.AssociateEipToVlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "CreateEntitlement",
        input_schema = types.CreateEntitlementInput,
        output_schema = types.CreateEntitlementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironment",
        input_schema = types.CreateEnvironmentInput,
        output_schema = types.CreateEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEnvironmentConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentConnector",
        input_schema = types.CreateEnvironmentConnectorInput,
        output_schema = types.CreateEnvironmentConnectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEnvironmentHost(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentHost",
        input_schema = types.CreateEnvironmentHostInput,
        output_schema = types.CreateEnvironmentHostOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEntitlement(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEntitlement",
        input_schema = types.DeleteEntitlementInput,
        output_schema = types.DeleteEntitlementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironment",
        input_schema = types.DeleteEnvironmentInput,
        output_schema = types.DeleteEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironmentConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentConnector",
        input_schema = types.DeleteEnvironmentConnectorInput,
        output_schema = types.DeleteEnvironmentConnectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironmentHost(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentHost",
        input_schema = types.DeleteEnvironmentHostInput,
        output_schema = types.DeleteEnvironmentHostOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateEipFromVlan(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateEipFromVlan",
        input_schema = types.DisassociateEipFromVlanInput,
        output_schema = types.DisassociateEipFromVlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironment",
        input_schema = types.GetEnvironmentInput,
        output_schema = types.GetEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetVersions",
        input_schema = types.GetVersionsInput,
        output_schema = types.GetVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironmentConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentConnectors",
        input_schema = types.ListEnvironmentConnectorsInput,
        output_schema = types.ListEnvironmentConnectorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironmentHosts(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentHosts",
        input_schema = types.ListEnvironmentHostsInput,
        output_schema = types.ListEnvironmentHostsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironments",
        input_schema = types.ListEnvironmentsInput,
        output_schema = types.ListEnvironmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironmentVlans(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentVlans",
        input_schema = types.ListEnvironmentVlansInput,
        output_schema = types.ListEnvironmentVlansOutput,
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

function Client:listVmEntitlements(input, options)
    return self:invokeOperation(input, {
        name = "ListVmEntitlements",
        input_schema = types.ListVmEntitlementsInput,
        output_schema = types.ListVmEntitlementsOutput,
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

function Client:updateEnvironmentConnector(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentConnector",
        input_schema = types.UpdateEnvironmentConnectorInput,
        output_schema = types.UpdateEnvironmentConnectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
