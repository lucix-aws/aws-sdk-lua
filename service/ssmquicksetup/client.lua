local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ssmquicksetup.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("ssmquicksetup.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "QuickSetup"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ssm-quicksetup", signing_region = cfg.region } }
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

function Client:createConfigurationManager(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationManager",
        input_schema = types.CreateConfigurationManagerInput,
        output_schema = types.CreateConfigurationManagerOutput,
        http_method = "POST",
        http_path = "/configurationManager",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfigurationManager(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationManager",
        input_schema = types.DeleteConfigurationManagerInput,
        output_schema = types.DeleteConfigurationManagerOutput,
        http_method = "DELETE",
        http_path = "/configurationManager/{ManagerArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguration",
        input_schema = types.GetConfigurationInput,
        output_schema = types.GetConfigurationOutput,
        http_method = "GET",
        http_path = "/getConfiguration/{ConfigurationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfigurationManager(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationManager",
        input_schema = types.GetConfigurationManagerInput,
        output_schema = types.GetConfigurationManagerOutput,
        http_method = "GET",
        http_path = "/configurationManager/{ManagerArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceSettings",
        input_schema = types.GetServiceSettingsInput,
        output_schema = types.GetServiceSettingsOutput,
        http_method = "GET",
        http_path = "/serviceSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationManagers(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationManagers",
        input_schema = types.ListConfigurationManagersInput,
        output_schema = types.ListConfigurationManagersOutput,
        http_method = "POST",
        http_path = "/listConfigurationManagers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurations",
        input_schema = types.ListConfigurationsInput,
        output_schema = types.ListConfigurationsOutput,
        http_method = "POST",
        http_path = "/listConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQuickSetupTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListQuickSetupTypes",
        input_schema = types.ListQuickSetupTypesInput,
        output_schema = types.ListQuickSetupTypesOutput,
        http_method = "GET",
        http_path = "/listQuickSetupTypes",
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

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "PUT",
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

function Client:updateConfigurationDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationDefinition",
        input_schema = types.UpdateConfigurationDefinitionInput,
        output_schema = types.UpdateConfigurationDefinitionOutput,
        http_method = "PUT",
        http_path = "/configurationDefinition/{ManagerArn}/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfigurationManager(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationManager",
        input_schema = types.UpdateConfigurationManagerInput,
        output_schema = types.UpdateConfigurationManagerOutput,
        http_method = "PUT",
        http_path = "/configurationManager/{ManagerArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSettings",
        input_schema = types.UpdateServiceSettingsInput,
        output_schema = types.UpdateServiceSettingsOutput,
        http_method = "PUT",
        http_path = "/serviceSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
