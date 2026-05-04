local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("pcaconnectorad.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("pcaconnectorad.types")

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
        input_schema = types.CreateConnectorInput,
        output_schema = types.CreateConnectorOutput,
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
        input_schema = types.CreateDirectoryRegistrationInput,
        output_schema = types.CreateDirectoryRegistrationOutput,
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
        input_schema = types.CreateServicePrincipalNameInput,
        output_schema = types.CreateServicePrincipalNameOutput,
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
        input_schema = types.CreateTemplateInput,
        output_schema = types.CreateTemplateOutput,
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
        input_schema = types.CreateTemplateGroupAccessControlEntryInput,
        output_schema = types.CreateTemplateGroupAccessControlEntryOutput,
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
        input_schema = types.DeleteConnectorInput,
        output_schema = types.DeleteConnectorOutput,
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
        input_schema = types.DeleteDirectoryRegistrationInput,
        output_schema = types.DeleteDirectoryRegistrationOutput,
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
        input_schema = types.DeleteServicePrincipalNameInput,
        output_schema = types.DeleteServicePrincipalNameOutput,
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
        input_schema = types.DeleteTemplateInput,
        output_schema = types.DeleteTemplateOutput,
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
        input_schema = types.DeleteTemplateGroupAccessControlEntryInput,
        output_schema = types.DeleteTemplateGroupAccessControlEntryOutput,
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
        input_schema = types.GetConnectorInput,
        output_schema = types.GetConnectorOutput,
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
        input_schema = types.GetDirectoryRegistrationInput,
        output_schema = types.GetDirectoryRegistrationOutput,
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
        input_schema = types.GetServicePrincipalNameInput,
        output_schema = types.GetServicePrincipalNameOutput,
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
        input_schema = types.GetTemplateInput,
        output_schema = types.GetTemplateOutput,
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
        input_schema = types.GetTemplateGroupAccessControlEntryInput,
        output_schema = types.GetTemplateGroupAccessControlEntryOutput,
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
        input_schema = types.ListConnectorsInput,
        output_schema = types.ListConnectorsOutput,
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
        input_schema = types.ListDirectoryRegistrationsInput,
        output_schema = types.ListDirectoryRegistrationsOutput,
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
        input_schema = types.ListServicePrincipalNamesInput,
        output_schema = types.ListServicePrincipalNamesOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.ListTemplateGroupAccessControlEntriesInput,
        output_schema = types.ListTemplateGroupAccessControlEntriesOutput,
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
        input_schema = types.ListTemplatesInput,
        output_schema = types.ListTemplatesOutput,
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

function Client:updateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplate",
        input_schema = types.UpdateTemplateInput,
        output_schema = types.UpdateTemplateOutput,
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
        input_schema = types.UpdateTemplateGroupAccessControlEntryInput,
        output_schema = types.UpdateTemplateGroupAccessControlEntryOutput,
        http_method = "PATCH",
        http_path = "/templates/{TemplateArn}/accessControlEntries/{GroupSecurityIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
