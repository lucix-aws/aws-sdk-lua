local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("evs.endpoint_rules")
local schemas = require("evs.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.AssociateEipToVlanInput,
        output_schema = schemas.AssociateEipToVlanOutput,
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
        input_schema = schemas.CreateEntitlementInput,
        output_schema = schemas.CreateEntitlementOutput,
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
        input_schema = schemas.CreateEnvironmentInput,
        output_schema = schemas.CreateEnvironmentOutput,
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
        input_schema = schemas.CreateEnvironmentConnectorInput,
        output_schema = schemas.CreateEnvironmentConnectorOutput,
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
        input_schema = schemas.CreateEnvironmentHostInput,
        output_schema = schemas.CreateEnvironmentHostOutput,
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
        input_schema = schemas.DeleteEntitlementInput,
        output_schema = schemas.DeleteEntitlementOutput,
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
        input_schema = schemas.DeleteEnvironmentInput,
        output_schema = schemas.DeleteEnvironmentOutput,
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
        input_schema = schemas.DeleteEnvironmentConnectorInput,
        output_schema = schemas.DeleteEnvironmentConnectorOutput,
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
        input_schema = schemas.DeleteEnvironmentHostInput,
        output_schema = schemas.DeleteEnvironmentHostOutput,
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
        input_schema = schemas.DisassociateEipFromVlanInput,
        output_schema = schemas.DisassociateEipFromVlanOutput,
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
        input_schema = schemas.GetEnvironmentInput,
        output_schema = schemas.GetEnvironmentOutput,
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
        input_schema = schemas.GetVersionsInput,
        output_schema = schemas.GetVersionsOutput,
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
        input_schema = schemas.ListEnvironmentConnectorsInput,
        output_schema = schemas.ListEnvironmentConnectorsOutput,
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
        input_schema = schemas.ListEnvironmentHostsInput,
        output_schema = schemas.ListEnvironmentHostsOutput,
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
        input_schema = schemas.ListEnvironmentsInput,
        output_schema = schemas.ListEnvironmentsOutput,
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
        input_schema = schemas.ListEnvironmentVlansInput,
        output_schema = schemas.ListEnvironmentVlansOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListVmEntitlementsInput,
        output_schema = schemas.ListVmEntitlementsOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateEnvironmentConnectorInput,
        output_schema = schemas.UpdateEnvironmentConnectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
