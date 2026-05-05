local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("pcaconnectorad.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("pcaconnectorad.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PcaConnectorAd"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "pca-connector-ad", signing_region = cfg.region } }
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

function Client:createConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnector",
        input_schema = schemas.CreateConnectorInput,
        output_schema = schemas.CreateConnectorOutput,
        http_method = "POST",
        http_path = "/connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDirectoryRegistration(input, options)
    return self:invokeOperation(input, {
        name = "CreateDirectoryRegistration",
        input_schema = schemas.CreateDirectoryRegistrationInput,
        output_schema = schemas.CreateDirectoryRegistrationOutput,
        http_method = "POST",
        http_path = "/directoryRegistrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createServicePrincipalName(input, options)
    return self:invokeOperation(input, {
        name = "CreateServicePrincipalName",
        input_schema = schemas.CreateServicePrincipalNameInput,
        output_schema = schemas.CreateServicePrincipalNameOutput,
        http_method = "POST",
        http_path = "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplate",
        input_schema = schemas.CreateTemplateInput,
        output_schema = schemas.CreateTemplateOutput,
        http_method = "POST",
        http_path = "/templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTemplateGroupAccessControlEntry(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplateGroupAccessControlEntry",
        input_schema = schemas.CreateTemplateGroupAccessControlEntryInput,
        output_schema = schemas.CreateTemplateGroupAccessControlEntryOutput,
        http_method = "POST",
        http_path = "/templates/{TemplateArn}/accessControlEntries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnector",
        input_schema = schemas.DeleteConnectorInput,
        output_schema = schemas.DeleteConnectorOutput,
        http_method = "DELETE",
        http_path = "/connectors/{ConnectorArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDirectoryRegistration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDirectoryRegistration",
        input_schema = schemas.DeleteDirectoryRegistrationInput,
        output_schema = schemas.DeleteDirectoryRegistrationOutput,
        http_method = "DELETE",
        http_path = "/directoryRegistrations/{DirectoryRegistrationArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServicePrincipalName(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServicePrincipalName",
        input_schema = schemas.DeleteServicePrincipalNameInput,
        output_schema = schemas.DeleteServicePrincipalNameOutput,
        http_method = "DELETE",
        http_path = "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplate",
        input_schema = schemas.DeleteTemplateInput,
        output_schema = schemas.DeleteTemplateOutput,
        http_method = "DELETE",
        http_path = "/templates/{TemplateArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTemplateGroupAccessControlEntry(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplateGroupAccessControlEntry",
        input_schema = schemas.DeleteTemplateGroupAccessControlEntryInput,
        output_schema = schemas.DeleteTemplateGroupAccessControlEntryOutput,
        http_method = "DELETE",
        http_path = "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnector(input, options)
    return self:invokeOperation(input, {
        name = "GetConnector",
        input_schema = schemas.GetConnectorInput,
        output_schema = schemas.GetConnectorOutput,
        http_method = "GET",
        http_path = "/connectors/{ConnectorArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDirectoryRegistration(input, options)
    return self:invokeOperation(input, {
        name = "GetDirectoryRegistration",
        input_schema = schemas.GetDirectoryRegistrationInput,
        output_schema = schemas.GetDirectoryRegistrationOutput,
        http_method = "GET",
        http_path = "/directoryRegistrations/{DirectoryRegistrationArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServicePrincipalName(input, options)
    return self:invokeOperation(input, {
        name = "GetServicePrincipalName",
        input_schema = schemas.GetServicePrincipalNameInput,
        output_schema = schemas.GetServicePrincipalNameOutput,
        http_method = "GET",
        http_path = "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames/{ConnectorArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplate",
        input_schema = schemas.GetTemplateInput,
        output_schema = schemas.GetTemplateOutput,
        http_method = "GET",
        http_path = "/templates/{TemplateArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTemplateGroupAccessControlEntry(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplateGroupAccessControlEntry",
        input_schema = schemas.GetTemplateGroupAccessControlEntryInput,
        output_schema = schemas.GetTemplateGroupAccessControlEntryOutput,
        http_method = "GET",
        http_path = "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectors",
        input_schema = schemas.ListConnectorsInput,
        output_schema = schemas.ListConnectorsOutput,
        http_method = "GET",
        http_path = "/connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDirectoryRegistrations(input, options)
    return self:invokeOperation(input, {
        name = "ListDirectoryRegistrations",
        input_schema = schemas.ListDirectoryRegistrationsInput,
        output_schema = schemas.ListDirectoryRegistrationsOutput,
        http_method = "GET",
        http_path = "/directoryRegistrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServicePrincipalNames(input, options)
    return self:invokeOperation(input, {
        name = "ListServicePrincipalNames",
        input_schema = schemas.ListServicePrincipalNamesInput,
        output_schema = schemas.ListServicePrincipalNamesOutput,
        http_method = "GET",
        http_path = "/directoryRegistrations/{DirectoryRegistrationArn}/servicePrincipalNames",
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

function Client:listTemplateGroupAccessControlEntries(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplateGroupAccessControlEntries",
        input_schema = schemas.ListTemplateGroupAccessControlEntriesInput,
        output_schema = schemas.ListTemplateGroupAccessControlEntriesOutput,
        http_method = "GET",
        http_path = "/templates/{TemplateArn}/accessControlEntries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplates",
        input_schema = schemas.ListTemplatesInput,
        output_schema = schemas.ListTemplatesOutput,
        http_method = "GET",
        http_path = "/templates",
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

function Client:updateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplate",
        input_schema = schemas.UpdateTemplateInput,
        output_schema = schemas.UpdateTemplateOutput,
        http_method = "PATCH",
        http_path = "/templates/{TemplateArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTemplateGroupAccessControlEntry(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplateGroupAccessControlEntry",
        input_schema = schemas.UpdateTemplateGroupAccessControlEntryInput,
        output_schema = schemas.UpdateTemplateGroupAccessControlEntryOutput,
        http_method = "PATCH",
        http_path = "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
