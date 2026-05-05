local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("keyspaces.endpoint_rules")
local schemas = require("keyspaces.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "KeyspacesService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cassandra", signing_region = cfg.region } }
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

function Client:createKeyspace(input, options)
    return self:invokeOperation(input, {
        name = "CreateKeyspace",
        input_schema = schemas.CreateKeyspaceInput,
        output_schema = schemas.CreateKeyspaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateTable",
        input_schema = schemas.CreateTableInput,
        output_schema = schemas.CreateTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createType(input, options)
    return self:invokeOperation(input, {
        name = "CreateType",
        input_schema = schemas.CreateTypeInput,
        output_schema = schemas.CreateTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKeyspace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKeyspace",
        input_schema = schemas.DeleteKeyspaceInput,
        output_schema = schemas.DeleteKeyspaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTable",
        input_schema = schemas.DeleteTableInput,
        output_schema = schemas.DeleteTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteType",
        input_schema = schemas.DeleteTypeInput,
        output_schema = schemas.DeleteTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKeyspace(input, options)
    return self:invokeOperation(input, {
        name = "GetKeyspace",
        input_schema = schemas.GetKeyspaceInput,
        output_schema = schemas.GetKeyspaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTable(input, options)
    return self:invokeOperation(input, {
        name = "GetTable",
        input_schema = schemas.GetTableInput,
        output_schema = schemas.GetTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableAutoScalingSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetTableAutoScalingSettings",
        input_schema = schemas.GetTableAutoScalingSettingsInput,
        output_schema = schemas.GetTableAutoScalingSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getType(input, options)
    return self:invokeOperation(input, {
        name = "GetType",
        input_schema = schemas.GetTypeInput,
        output_schema = schemas.GetTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listKeyspaces(input, options)
    return self:invokeOperation(input, {
        name = "ListKeyspaces",
        input_schema = schemas.ListKeyspacesInput,
        output_schema = schemas.ListKeyspacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTables(input, options)
    return self:invokeOperation(input, {
        name = "ListTables",
        input_schema = schemas.ListTablesInput,
        output_schema = schemas.ListTablesOutput,
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

function Client:listTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListTypes",
        input_schema = schemas.ListTypesInput,
        output_schema = schemas.ListTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreTable(input, options)
    return self:invokeOperation(input, {
        name = "RestoreTable",
        input_schema = schemas.RestoreTableInput,
        output_schema = schemas.RestoreTableOutput,
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

function Client:updateKeyspace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKeyspace",
        input_schema = schemas.UpdateKeyspaceInput,
        output_schema = schemas.UpdateKeyspaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTable(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTable",
        input_schema = schemas.UpdateTableInput,
        output_schema = schemas.UpdateTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
