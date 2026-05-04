local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("supportapp.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("supportapp.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SupportApp"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "supportapp", signing_region = cfg.region } }
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

function Client:createSlackChannelConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateSlackChannelConfiguration",
        input_schema = types.CreateSlackChannelConfigurationInput,
        output_schema = types.CreateSlackChannelConfigurationOutput,
        http_method = "POST",
        http_path = "/control/create-slack-channel-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountAlias",
        input_schema = types.DeleteAccountAliasInput,
        output_schema = types.DeleteAccountAliasOutput,
        http_method = "POST",
        http_path = "/control/delete-account-alias",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSlackChannelConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSlackChannelConfiguration",
        input_schema = types.DeleteSlackChannelConfigurationInput,
        output_schema = types.DeleteSlackChannelConfigurationOutput,
        http_method = "POST",
        http_path = "/control/delete-slack-channel-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSlackWorkspaceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSlackWorkspaceConfiguration",
        input_schema = types.DeleteSlackWorkspaceConfigurationInput,
        output_schema = types.DeleteSlackWorkspaceConfigurationOutput,
        http_method = "POST",
        http_path = "/control/delete-slack-workspace-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountAlias(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountAlias",
        input_schema = types.GetAccountAliasInput,
        output_schema = types.GetAccountAliasOutput,
        http_method = "POST",
        http_path = "/control/get-account-alias",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSlackChannelConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListSlackChannelConfigurations",
        input_schema = types.ListSlackChannelConfigurationsInput,
        output_schema = types.ListSlackChannelConfigurationsOutput,
        http_method = "POST",
        http_path = "/control/list-slack-channel-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSlackWorkspaceConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListSlackWorkspaceConfigurations",
        input_schema = types.ListSlackWorkspaceConfigurationsInput,
        output_schema = types.ListSlackWorkspaceConfigurationsOutput,
        http_method = "POST",
        http_path = "/control/list-slack-workspace-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountAlias(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountAlias",
        input_schema = types.PutAccountAliasInput,
        output_schema = types.PutAccountAliasOutput,
        http_method = "POST",
        http_path = "/control/put-account-alias",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerSlackWorkspaceForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "RegisterSlackWorkspaceForOrganization",
        input_schema = types.RegisterSlackWorkspaceForOrganizationInput,
        output_schema = types.RegisterSlackWorkspaceForOrganizationOutput,
        http_method = "POST",
        http_path = "/control/register-slack-workspace-for-organization",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSlackChannelConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSlackChannelConfiguration",
        input_schema = types.UpdateSlackChannelConfigurationInput,
        output_schema = types.UpdateSlackChannelConfigurationOutput,
        http_method = "POST",
        http_path = "/control/update-slack-channel-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
