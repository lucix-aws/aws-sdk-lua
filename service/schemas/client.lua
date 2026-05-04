local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("schemas.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("schemas.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "schemas"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "schemas", signing_region = cfg.region } }
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

function Client:createDiscoverer(input, options)
    return self:invokeOperation(input, {
        name = "CreateDiscoverer",
        input_schema = types.CreateDiscovererInput,
        output_schema = types.CreateDiscovererOutput,
        http_method = "POST",
        http_path = "/v1/discoverers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRegistry(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegistry",
        input_schema = types.CreateRegistryInput,
        output_schema = types.CreateRegistryOutput,
        http_method = "POST",
        http_path = "/v1/registries/name/{RegistryName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSchema(input, options)
    return self:invokeOperation(input, {
        name = "CreateSchema",
        input_schema = types.CreateSchemaInput,
        output_schema = types.CreateSchemaOutput,
        http_method = "POST",
        http_path = "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDiscoverer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDiscoverer",
        input_schema = types.DeleteDiscovererInput,
        output_schema = types.DeleteDiscovererOutput,
        http_method = "DELETE",
        http_path = "/v1/discoverers/id/{DiscovererId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRegistry(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistry",
        input_schema = types.DeleteRegistryInput,
        output_schema = types.DeleteRegistryOutput,
        http_method = "DELETE",
        http_path = "/v1/registries/name/{RegistryName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "DELETE",
        http_path = "/v1/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSchema(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchema",
        input_schema = types.DeleteSchemaInput,
        output_schema = types.DeleteSchemaOutput,
        http_method = "DELETE",
        http_path = "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSchemaVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchemaVersion",
        input_schema = types.DeleteSchemaVersionInput,
        output_schema = types.DeleteSchemaVersionOutput,
        http_method = "DELETE",
        http_path = "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/version/{SchemaVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCodeBinding(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCodeBinding",
        input_schema = types.DescribeCodeBindingInput,
        output_schema = types.DescribeCodeBindingOutput,
        http_method = "GET",
        http_path = "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/language/{Language}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDiscoverer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDiscoverer",
        input_schema = types.DescribeDiscovererInput,
        output_schema = types.DescribeDiscovererOutput,
        http_method = "GET",
        http_path = "/v1/discoverers/id/{DiscovererId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegistry(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistry",
        input_schema = types.DescribeRegistryInput,
        output_schema = types.DescribeRegistryOutput,
        http_method = "GET",
        http_path = "/v1/registries/name/{RegistryName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSchema(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSchema",
        input_schema = types.DescribeSchemaInput,
        output_schema = types.DescribeSchemaOutput,
        http_method = "GET",
        http_path = "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportSchema(input, options)
    return self:invokeOperation(input, {
        name = "ExportSchema",
        input_schema = types.ExportSchemaInput,
        output_schema = types.ExportSchemaOutput,
        http_method = "GET",
        http_path = "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/export",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCodeBindingSource(input, options)
    return self:invokeOperation(input, {
        name = "GetCodeBindingSource",
        input_schema = types.GetCodeBindingSourceInput,
        output_schema = types.GetCodeBindingSourceOutput,
        http_method = "GET",
        http_path = "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/language/{Language}/source",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDiscoveredSchema(input, options)
    return self:invokeOperation(input, {
        name = "GetDiscoveredSchema",
        input_schema = types.GetDiscoveredSchemaInput,
        output_schema = types.GetDiscoveredSchemaOutput,
        http_method = "POST",
        http_path = "/v1/discover",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "GET",
        http_path = "/v1/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDiscoverers(input, options)
    return self:invokeOperation(input, {
        name = "ListDiscoverers",
        input_schema = types.ListDiscoverersInput,
        output_schema = types.ListDiscoverersOutput,
        http_method = "GET",
        http_path = "/v1/discoverers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRegistries(input, options)
    return self:invokeOperation(input, {
        name = "ListRegistries",
        input_schema = types.ListRegistriesInput,
        output_schema = types.ListRegistriesOutput,
        http_method = "GET",
        http_path = "/v1/registries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSchemas(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemas",
        input_schema = types.ListSchemasInput,
        output_schema = types.ListSchemasOutput,
        http_method = "GET",
        http_path = "/v1/registries/name/{RegistryName}/schemas",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSchemaVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemaVersions",
        input_schema = types.ListSchemaVersionsInput,
        output_schema = types.ListSchemaVersionsOutput,
        http_method = "GET",
        http_path = "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/versions",
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
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putCodeBinding(input, options)
    return self:invokeOperation(input, {
        name = "PutCodeBinding",
        input_schema = types.PutCodeBindingInput,
        output_schema = types.PutCodeBindingOutput,
        http_method = "POST",
        http_path = "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}/language/{Language}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "PUT",
        http_path = "/v1/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchSchemas(input, options)
    return self:invokeOperation(input, {
        name = "SearchSchemas",
        input_schema = types.SearchSchemasInput,
        output_schema = types.SearchSchemasOutput,
        http_method = "GET",
        http_path = "/v1/registries/name/{RegistryName}/schemas/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDiscoverer(input, options)
    return self:invokeOperation(input, {
        name = "StartDiscoverer",
        input_schema = types.StartDiscovererInput,
        output_schema = types.StartDiscovererOutput,
        http_method = "POST",
        http_path = "/v1/discoverers/id/{DiscovererId}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopDiscoverer(input, options)
    return self:invokeOperation(input, {
        name = "StopDiscoverer",
        input_schema = types.StopDiscovererInput,
        output_schema = types.StopDiscovererOutput,
        http_method = "POST",
        http_path = "/v1/discoverers/id/{DiscovererId}/stop",
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
        http_path = "/tags/{ResourceArn}",
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
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDiscoverer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDiscoverer",
        input_schema = types.UpdateDiscovererInput,
        output_schema = types.UpdateDiscovererOutput,
        http_method = "PUT",
        http_path = "/v1/discoverers/id/{DiscovererId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRegistry(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRegistry",
        input_schema = types.UpdateRegistryInput,
        output_schema = types.UpdateRegistryOutput,
        http_method = "PUT",
        http_path = "/v1/registries/name/{RegistryName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSchema(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSchema",
        input_schema = types.UpdateSchemaInput,
        output_schema = types.UpdateSchemaOutput,
        http_method = "PUT",
        http_path = "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
