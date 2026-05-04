local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sso.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("sso.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SWBPortalService"
    cfg.signing_name = "awsssoportal"
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

function Client:getRoleCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetRoleCredentials",
        input_schema = types.GetRoleCredentialsInput,
        output_schema = types.GetRoleCredentialsOutput,
        http_method = "GET",
        http_path = "/federation/credentials",
    }, options)
end

function Client:listAccountRoles(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountRoles",
        input_schema = types.ListAccountRolesInput,
        output_schema = types.ListAccountRolesOutput,
        http_method = "GET",
        http_path = "/assignment/roles",
    }, options)
end

function Client:listAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListAccounts",
        input_schema = types.ListAccountsInput,
        output_schema = types.ListAccountsOutput,
        http_method = "GET",
        http_path = "/assignment/accounts",
    }, options)
end

function Client:logout(input, options)
    return self:invokeOperation(input, {
        name = "Logout",
        input_schema = types.LogoutInput,
        output_schema = types.LogoutOutput,
        http_method = "POST",
        http_path = "/logout",
    }, options)
end

return M
