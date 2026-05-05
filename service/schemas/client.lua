local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("schemas.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("schemas.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.CreateDiscovererInput,
        output_schema = schemas.CreateDiscovererOutput,
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
        input_schema = schemas.CreateRegistryInput,
        output_schema = schemas.CreateRegistryOutput,
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
        input_schema = schemas.CreateSchemaInput,
        output_schema = schemas.CreateSchemaOutput,
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
        input_schema = schemas.DeleteDiscovererInput,
        output_schema = schemas.DeleteDiscovererOutput,
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
        input_schema = schemas.DeleteRegistryInput,
        output_schema = schemas.DeleteRegistryOutput,
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
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
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
        input_schema = schemas.DeleteSchemaInput,
        output_schema = schemas.DeleteSchemaOutput,
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
        input_schema = schemas.DeleteSchemaVersionInput,
        output_schema = schemas.DeleteSchemaVersionOutput,
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
        input_schema = schemas.DescribeCodeBindingInput,
        output_schema = schemas.DescribeCodeBindingOutput,
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
        input_schema = schemas.DescribeDiscovererInput,
        output_schema = schemas.DescribeDiscovererOutput,
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
        input_schema = schemas.DescribeRegistryInput,
        output_schema = schemas.DescribeRegistryOutput,
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
        input_schema = schemas.DescribeSchemaInput,
        output_schema = schemas.DescribeSchemaOutput,
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
        input_schema = schemas.ExportSchemaInput,
        output_schema = schemas.ExportSchemaOutput,
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
        input_schema = schemas.GetCodeBindingSourceInput,
        output_schema = schemas.GetCodeBindingSourceOutput,
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
        input_schema = schemas.GetDiscoveredSchemaInput,
        output_schema = schemas.GetDiscoveredSchemaOutput,
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
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
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
        input_schema = schemas.ListDiscoverersInput,
        output_schema = schemas.ListDiscoverersOutput,
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
        input_schema = schemas.ListRegistriesInput,
        output_schema = schemas.ListRegistriesOutput,
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
        input_schema = schemas.ListSchemasInput,
        output_schema = schemas.ListSchemasOutput,
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
        input_schema = schemas.ListSchemaVersionsInput,
        output_schema = schemas.ListSchemaVersionsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.PutCodeBindingInput,
        output_schema = schemas.PutCodeBindingOutput,
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
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
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
        input_schema = schemas.SearchSchemasInput,
        output_schema = schemas.SearchSchemasOutput,
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
        input_schema = schemas.StartDiscovererInput,
        output_schema = schemas.StartDiscovererOutput,
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
        input_schema = schemas.StopDiscovererInput,
        output_schema = schemas.StopDiscovererOutput,
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

function Client:updateDiscoverer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDiscoverer",
        input_schema = schemas.UpdateDiscovererInput,
        output_schema = schemas.UpdateDiscovererOutput,
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
        input_schema = schemas.UpdateRegistryInput,
        output_schema = schemas.UpdateRegistryOutput,
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
        input_schema = schemas.UpdateSchemaInput,
        output_schema = schemas.UpdateSchemaOutput,
        http_method = "PUT",
        http_path = "/v1/registries/name/{RegistryName}/schemas/name/{SchemaName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
