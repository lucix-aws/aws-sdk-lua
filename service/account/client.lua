local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("account.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("account.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Account"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "account", signing_region = cfg.region } }
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

function Client:acceptPrimaryEmailUpdate(input, options)
    return self:invokeOperation(input, {
        name = "AcceptPrimaryEmailUpdate",
        input_schema = types.AcceptPrimaryEmailUpdateInput,
        output_schema = types.AcceptPrimaryEmailUpdateOutput,
        http_method = "POST",
        http_path = "/acceptPrimaryEmailUpdate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAlternateContact(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlternateContact",
        input_schema = types.DeleteAlternateContactInput,
        output_schema = types.DeleteAlternateContactOutput,
        http_method = "POST",
        http_path = "/deleteAlternateContact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableRegion(input, options)
    return self:invokeOperation(input, {
        name = "DisableRegion",
        input_schema = types.DisableRegionInput,
        output_schema = types.DisableRegionOutput,
        http_method = "POST",
        http_path = "/disableRegion",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableRegion(input, options)
    return self:invokeOperation(input, {
        name = "EnableRegion",
        input_schema = types.EnableRegionInput,
        output_schema = types.EnableRegionOutput,
        http_method = "POST",
        http_path = "/enableRegion",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountInformation",
        input_schema = types.GetAccountInformationInput,
        output_schema = types.GetAccountInformationOutput,
        http_method = "POST",
        http_path = "/getAccountInformation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAlternateContact(input, options)
    return self:invokeOperation(input, {
        name = "GetAlternateContact",
        input_schema = types.GetAlternateContactInput,
        output_schema = types.GetAlternateContactOutput,
        http_method = "POST",
        http_path = "/getAlternateContact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContactInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetContactInformation",
        input_schema = types.GetContactInformationInput,
        output_schema = types.GetContactInformationOutput,
        http_method = "POST",
        http_path = "/getContactInformation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGovCloudAccountInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetGovCloudAccountInformation",
        input_schema = types.GetGovCloudAccountInformationInput,
        output_schema = types.GetGovCloudAccountInformationOutput,
        http_method = "POST",
        http_path = "/getGovCloudAccountInformation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPrimaryEmail(input, options)
    return self:invokeOperation(input, {
        name = "GetPrimaryEmail",
        input_schema = types.GetPrimaryEmailInput,
        output_schema = types.GetPrimaryEmailOutput,
        http_method = "POST",
        http_path = "/getPrimaryEmail",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRegionOptStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetRegionOptStatus",
        input_schema = types.GetRegionOptStatusInput,
        output_schema = types.GetRegionOptStatusOutput,
        http_method = "POST",
        http_path = "/getRegionOptStatus",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRegions(input, options)
    return self:invokeOperation(input, {
        name = "ListRegions",
        input_schema = types.ListRegionsInput,
        output_schema = types.ListRegionsOutput,
        http_method = "POST",
        http_path = "/listRegions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountName(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountName",
        input_schema = types.PutAccountNameInput,
        output_schema = types.PutAccountNameOutput,
        http_method = "POST",
        http_path = "/putAccountName",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAlternateContact(input, options)
    return self:invokeOperation(input, {
        name = "PutAlternateContact",
        input_schema = types.PutAlternateContactInput,
        output_schema = types.PutAlternateContactOutput,
        http_method = "POST",
        http_path = "/putAlternateContact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putContactInformation(input, options)
    return self:invokeOperation(input, {
        name = "PutContactInformation",
        input_schema = types.PutContactInformationInput,
        output_schema = types.PutContactInformationOutput,
        http_method = "POST",
        http_path = "/putContactInformation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startPrimaryEmailUpdate(input, options)
    return self:invokeOperation(input, {
        name = "StartPrimaryEmailUpdate",
        input_schema = types.StartPrimaryEmailUpdateInput,
        output_schema = types.StartPrimaryEmailUpdateOutput,
        http_method = "POST",
        http_path = "/startPrimaryEmailUpdate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
