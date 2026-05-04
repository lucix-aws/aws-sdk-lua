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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "awsssoportal", signing_region = cfg.region } }
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

function Client:getRoleCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetRoleCredentials",
        input_schema = types.GetRoleCredentialsInput,
        output_schema = types.GetRoleCredentialsOutput,
        http_method = "GET",
        http_path = "/federation/credentials",
        effective_auth_schemes = {
        },
    }, options)
end

function Client:listAccountRoles(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountRoles",
        input_schema = types.ListAccountRolesInput,
        output_schema = types.ListAccountRolesOutput,
        http_method = "GET",
        http_path = "/assignment/roles",
        effective_auth_schemes = {
        },
    }, options)
end

function Client:listAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListAccounts",
        input_schema = types.ListAccountsInput,
        output_schema = types.ListAccountsOutput,
        http_method = "GET",
        http_path = "/assignment/accounts",
        effective_auth_schemes = {
        },
    }, options)
end

function Client:logout(input, options)
    return self:invokeOperation(input, {
        name = "Logout",
        input_schema = types.LogoutInput,
        output_schema = types.LogoutOutput,
        http_method = "POST",
        http_path = "/logout",
        effective_auth_schemes = {
        },
    }, options)
end

return M
