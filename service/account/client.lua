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
    cfg.signing_name = "account"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
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
    }, options)
end

function Client:deleteAlternateContact(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlternateContact",
        input_schema = types.DeleteAlternateContactInput,
        output_schema = types.DeleteAlternateContactOutput,
        http_method = "POST",
        http_path = "/deleteAlternateContact",
    }, options)
end

function Client:disableRegion(input, options)
    return self:invokeOperation(input, {
        name = "DisableRegion",
        input_schema = types.DisableRegionInput,
        output_schema = types.DisableRegionOutput,
        http_method = "POST",
        http_path = "/disableRegion",
    }, options)
end

function Client:enableRegion(input, options)
    return self:invokeOperation(input, {
        name = "EnableRegion",
        input_schema = types.EnableRegionInput,
        output_schema = types.EnableRegionOutput,
        http_method = "POST",
        http_path = "/enableRegion",
    }, options)
end

function Client:getAccountInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountInformation",
        input_schema = types.GetAccountInformationInput,
        output_schema = types.GetAccountInformationOutput,
        http_method = "POST",
        http_path = "/getAccountInformation",
    }, options)
end

function Client:getAlternateContact(input, options)
    return self:invokeOperation(input, {
        name = "GetAlternateContact",
        input_schema = types.GetAlternateContactInput,
        output_schema = types.GetAlternateContactOutput,
        http_method = "POST",
        http_path = "/getAlternateContact",
    }, options)
end

function Client:getContactInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetContactInformation",
        input_schema = types.GetContactInformationInput,
        output_schema = types.GetContactInformationOutput,
        http_method = "POST",
        http_path = "/getContactInformation",
    }, options)
end

function Client:getGovCloudAccountInformation(input, options)
    return self:invokeOperation(input, {
        name = "GetGovCloudAccountInformation",
        input_schema = types.GetGovCloudAccountInformationInput,
        output_schema = types.GetGovCloudAccountInformationOutput,
        http_method = "POST",
        http_path = "/getGovCloudAccountInformation",
    }, options)
end

function Client:getPrimaryEmail(input, options)
    return self:invokeOperation(input, {
        name = "GetPrimaryEmail",
        input_schema = types.GetPrimaryEmailInput,
        output_schema = types.GetPrimaryEmailOutput,
        http_method = "POST",
        http_path = "/getPrimaryEmail",
    }, options)
end

function Client:getRegionOptStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetRegionOptStatus",
        input_schema = types.GetRegionOptStatusInput,
        output_schema = types.GetRegionOptStatusOutput,
        http_method = "POST",
        http_path = "/getRegionOptStatus",
    }, options)
end

function Client:listRegions(input, options)
    return self:invokeOperation(input, {
        name = "ListRegions",
        input_schema = types.ListRegionsInput,
        output_schema = types.ListRegionsOutput,
        http_method = "POST",
        http_path = "/listRegions",
    }, options)
end

function Client:putAccountName(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountName",
        input_schema = types.PutAccountNameInput,
        output_schema = types.PutAccountNameOutput,
        http_method = "POST",
        http_path = "/putAccountName",
    }, options)
end

function Client:putAlternateContact(input, options)
    return self:invokeOperation(input, {
        name = "PutAlternateContact",
        input_schema = types.PutAlternateContactInput,
        output_schema = types.PutAlternateContactOutput,
        http_method = "POST",
        http_path = "/putAlternateContact",
    }, options)
end

function Client:putContactInformation(input, options)
    return self:invokeOperation(input, {
        name = "PutContactInformation",
        input_schema = types.PutContactInformationInput,
        output_schema = types.PutContactInformationOutput,
        http_method = "POST",
        http_path = "/putContactInformation",
    }, options)
end

function Client:startPrimaryEmailUpdate(input, options)
    return self:invokeOperation(input, {
        name = "StartPrimaryEmailUpdate",
        input_schema = types.StartPrimaryEmailUpdateInput,
        output_schema = types.StartPrimaryEmailUpdateOutput,
        http_method = "POST",
        http_path = "/startPrimaryEmailUpdate",
    }, options)
end

return M
