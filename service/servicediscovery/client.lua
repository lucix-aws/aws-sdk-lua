local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("servicediscovery.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("servicediscovery.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Route53AutoNaming_v20170314"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "servicediscovery", signing_region = cfg.region } }
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

function Client:createHttpNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreateHttpNamespace",
        input_schema = types.CreateHttpNamespaceInput,
        output_schema = types.CreateHttpNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPrivateDnsNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreatePrivateDnsNamespace",
        input_schema = types.CreatePrivateDnsNamespaceInput,
        output_schema = types.CreatePrivateDnsNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPublicDnsNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreatePublicDnsNamespace",
        input_schema = types.CreatePublicDnsNamespaceInput,
        output_schema = types.CreatePublicDnsNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createService(input, options)
    return self:invokeOperation(input, {
        name = "CreateService",
        input_schema = types.CreateServiceInput,
        output_schema = types.CreateServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNamespace",
        input_schema = types.DeleteNamespaceInput,
        output_schema = types.DeleteNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteService(input, options)
    return self:invokeOperation(input, {
        name = "DeleteService",
        input_schema = types.DeleteServiceInput,
        output_schema = types.DeleteServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServiceAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceAttributes",
        input_schema = types.DeleteServiceAttributesInput,
        output_schema = types.DeleteServiceAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterInstance",
        input_schema = types.DeregisterInstanceInput,
        output_schema = types.DeregisterInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:discoverInstances(input, options)
    return self:invokeOperation(input, {
        name = "DiscoverInstances",
        input_schema = types.DiscoverInstancesInput,
        output_schema = types.DiscoverInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:discoverInstancesRevision(input, options)
    return self:invokeOperation(input, {
        name = "DiscoverInstancesRevision",
        input_schema = types.DiscoverInstancesRevisionInput,
        output_schema = types.DiscoverInstancesRevisionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetInstance",
        input_schema = types.GetInstanceInput,
        output_schema = types.GetInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstancesHealthStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetInstancesHealthStatus",
        input_schema = types.GetInstancesHealthStatusInput,
        output_schema = types.GetInstancesHealthStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNamespace(input, options)
    return self:invokeOperation(input, {
        name = "GetNamespace",
        input_schema = types.GetNamespaceInput,
        output_schema = types.GetNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOperation(input, options)
    return self:invokeOperation(input, {
        name = "GetOperation",
        input_schema = types.GetOperationInput,
        output_schema = types.GetOperationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getService(input, options)
    return self:invokeOperation(input, {
        name = "GetService",
        input_schema = types.GetServiceInput,
        output_schema = types.GetServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceAttributes",
        input_schema = types.GetServiceAttributesInput,
        output_schema = types.GetServiceAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListInstances",
        input_schema = types.ListInstancesInput,
        output_schema = types.ListInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNamespaces(input, options)
    return self:invokeOperation(input, {
        name = "ListNamespaces",
        input_schema = types.ListNamespacesInput,
        output_schema = types.ListNamespacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListOperations",
        input_schema = types.ListOperationsInput,
        output_schema = types.ListOperationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = types.ListServicesInput,
        output_schema = types.ListServicesOutput,
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

function Client:registerInstance(input, options)
    return self:invokeOperation(input, {
        name = "RegisterInstance",
        input_schema = types.RegisterInstanceInput,
        output_schema = types.RegisterInstanceOutput,
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

function Client:updateHttpNamespace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHttpNamespace",
        input_schema = types.UpdateHttpNamespaceInput,
        output_schema = types.UpdateHttpNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInstanceCustomHealthStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInstanceCustomHealthStatus",
        input_schema = types.UpdateInstanceCustomHealthStatusInput,
        output_schema = types.UpdateInstanceCustomHealthStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePrivateDnsNamespace(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePrivateDnsNamespace",
        input_schema = types.UpdatePrivateDnsNamespaceInput,
        output_schema = types.UpdatePrivateDnsNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePublicDnsNamespace(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePublicDnsNamespace",
        input_schema = types.UpdatePublicDnsNamespaceInput,
        output_schema = types.UpdatePublicDnsNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateService(input, options)
    return self:invokeOperation(input, {
        name = "UpdateService",
        input_schema = types.UpdateServiceInput,
        output_schema = types.UpdateServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceAttributes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceAttributes",
        input_schema = types.UpdateServiceAttributesInput,
        output_schema = types.UpdateServiceAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
