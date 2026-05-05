local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("wickr.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("wickr.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "WickrAdminApi"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "wickr", signing_region = cfg.region } }
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

function Client:batchCreateUser(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateUser",
        input_schema = schemas.BatchCreateUserInput,
        output_schema = schemas.BatchCreateUserOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteUser(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteUser",
        input_schema = schemas.BatchDeleteUserInput,
        output_schema = schemas.BatchDeleteUserOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/users/batch-delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchLookupUserUname(input, options)
    return self:invokeOperation(input, {
        name = "BatchLookupUserUname",
        input_schema = schemas.BatchLookupUserUnameInput,
        output_schema = schemas.BatchLookupUserUnameOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/users/uname-lookup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchReinviteUser(input, options)
    return self:invokeOperation(input, {
        name = "BatchReinviteUser",
        input_schema = schemas.BatchReinviteUserInput,
        output_schema = schemas.BatchReinviteUserOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/users/re-invite",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchResetDevicesForUser(input, options)
    return self:invokeOperation(input, {
        name = "BatchResetDevicesForUser",
        input_schema = schemas.BatchResetDevicesForUserInput,
        output_schema = schemas.BatchResetDevicesForUserOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/users/{userId}/devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchToggleUserSuspendStatus(input, options)
    return self:invokeOperation(input, {
        name = "BatchToggleUserSuspendStatus",
        input_schema = schemas.BatchToggleUserSuspendStatusInput,
        output_schema = schemas.BatchToggleUserSuspendStatusOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/users/toggleSuspend",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBot(input, options)
    return self:invokeOperation(input, {
        name = "CreateBot",
        input_schema = schemas.CreateBotInput,
        output_schema = schemas.CreateBotOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataRetentionBot(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataRetentionBot",
        input_schema = schemas.CreateDataRetentionBotInput,
        output_schema = schemas.CreateDataRetentionBotOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/data-retention-bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataRetentionBotChallenge(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataRetentionBotChallenge",
        input_schema = schemas.CreateDataRetentionBotChallengeInput,
        output_schema = schemas.CreateDataRetentionBotChallengeOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/data-retention-bots/challenge",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetwork",
        input_schema = schemas.CreateNetworkInput,
        output_schema = schemas.CreateNetworkOutput,
        http_method = "POST",
        http_path = "/networks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityGroup",
        input_schema = schemas.CreateSecurityGroupInput,
        output_schema = schemas.CreateSecurityGroupOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/security-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBot",
        input_schema = schemas.DeleteBotInput,
        output_schema = schemas.DeleteBotOutput,
        http_method = "DELETE",
        http_path = "/networks/{networkId}/bots/{botId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataRetentionBot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataRetentionBot",
        input_schema = schemas.DeleteDataRetentionBotInput,
        output_schema = schemas.DeleteDataRetentionBotOutput,
        http_method = "DELETE",
        http_path = "/networks/{networkId}/data-retention-bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetwork",
        input_schema = schemas.DeleteNetworkInput,
        output_schema = schemas.DeleteNetworkOutput,
        http_method = "DELETE",
        http_path = "/networks/{networkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecurityGroup",
        input_schema = schemas.DeleteSecurityGroupInput,
        output_schema = schemas.DeleteSecurityGroupOutput,
        http_method = "DELETE",
        http_path = "/networks/{networkId}/security-groups/{groupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBot(input, options)
    return self:invokeOperation(input, {
        name = "GetBot",
        input_schema = schemas.GetBotInput,
        output_schema = schemas.GetBotOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/bots/{botId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBotsCount(input, options)
    return self:invokeOperation(input, {
        name = "GetBotsCount",
        input_schema = schemas.GetBotsCountInput,
        output_schema = schemas.GetBotsCountOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/bots/count",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataRetentionBot(input, options)
    return self:invokeOperation(input, {
        name = "GetDataRetentionBot",
        input_schema = schemas.GetDataRetentionBotInput,
        output_schema = schemas.GetDataRetentionBotOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/data-retention-bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGuestUserHistoryCount(input, options)
    return self:invokeOperation(input, {
        name = "GetGuestUserHistoryCount",
        input_schema = schemas.GetGuestUserHistoryCountInput,
        output_schema = schemas.GetGuestUserHistoryCountOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/guest-users/count",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetwork(input, options)
    return self:invokeOperation(input, {
        name = "GetNetwork",
        input_schema = schemas.GetNetworkInput,
        output_schema = schemas.GetNetworkOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkSettings",
        input_schema = schemas.GetNetworkSettingsInput,
        output_schema = schemas.GetNetworkSettingsOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOidcInfo(input, options)
    return self:invokeOperation(input, {
        name = "GetOidcInfo",
        input_schema = schemas.GetOidcInfoInput,
        output_schema = schemas.GetOidcInfoOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/oidc",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOpentdfConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetOpentdfConfig",
        input_schema = schemas.GetOpentdfConfigInput,
        output_schema = schemas.GetOpentdfConfigOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/tdf",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetSecurityGroup",
        input_schema = schemas.GetSecurityGroupInput,
        output_schema = schemas.GetSecurityGroupOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/security-groups/{groupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUser(input, options)
    return self:invokeOperation(input, {
        name = "GetUser",
        input_schema = schemas.GetUserInput,
        output_schema = schemas.GetUserOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/users/{userId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUsersCount(input, options)
    return self:invokeOperation(input, {
        name = "GetUsersCount",
        input_schema = schemas.GetUsersCountInput,
        output_schema = schemas.GetUsersCountOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/users/count",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBlockedGuestUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListBlockedGuestUsers",
        input_schema = schemas.ListBlockedGuestUsersInput,
        output_schema = schemas.ListBlockedGuestUsersOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/guest-users/blocklist",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBots(input, options)
    return self:invokeOperation(input, {
        name = "ListBots",
        input_schema = schemas.ListBotsInput,
        output_schema = schemas.ListBotsOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDevicesForUser(input, options)
    return self:invokeOperation(input, {
        name = "ListDevicesForUser",
        input_schema = schemas.ListDevicesForUserInput,
        output_schema = schemas.ListDevicesForUserOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/users/{userId}/devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGuestUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListGuestUsers",
        input_schema = schemas.ListGuestUsersInput,
        output_schema = schemas.ListGuestUsersOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/guest-users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworks(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworks",
        input_schema = schemas.ListNetworksInput,
        output_schema = schemas.ListNetworksOutput,
        http_method = "GET",
        http_path = "/networks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityGroups",
        input_schema = schemas.ListSecurityGroupsInput,
        output_schema = schemas.ListSecurityGroupsOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/security-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityGroupUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityGroupUsers",
        input_schema = schemas.ListSecurityGroupUsersInput,
        output_schema = schemas.ListSecurityGroupUsersOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/security-groups/{groupId}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = schemas.ListUsersInput,
        output_schema = schemas.ListUsersOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerOidcConfig(input, options)
    return self:invokeOperation(input, {
        name = "RegisterOidcConfig",
        input_schema = schemas.RegisterOidcConfigInput,
        output_schema = schemas.RegisterOidcConfigOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/oidc/save",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerOidcConfigTest(input, options)
    return self:invokeOperation(input, {
        name = "RegisterOidcConfigTest",
        input_schema = schemas.RegisterOidcConfigTestInput,
        output_schema = schemas.RegisterOidcConfigTestOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/oidc/test",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerOpentdfConfig(input, options)
    return self:invokeOperation(input, {
        name = "RegisterOpentdfConfig",
        input_schema = schemas.RegisterOpentdfConfigInput,
        output_schema = schemas.RegisterOpentdfConfigOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/tdf",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBot(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBot",
        input_schema = schemas.UpdateBotInput,
        output_schema = schemas.UpdateBotOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/bots/{botId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataRetention(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataRetention",
        input_schema = schemas.UpdateDataRetentionInput,
        output_schema = schemas.UpdateDataRetentionOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/data-retention-bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGuestUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGuestUser",
        input_schema = schemas.UpdateGuestUserInput,
        output_schema = schemas.UpdateGuestUserOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/guest-users/{usernameHash}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNetwork(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetwork",
        input_schema = schemas.UpdateNetworkInput,
        output_schema = schemas.UpdateNetworkOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetworkSettings",
        input_schema = schemas.UpdateNetworkSettingsInput,
        output_schema = schemas.UpdateNetworkSettingsOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityGroup",
        input_schema = schemas.UpdateSecurityGroupInput,
        output_schema = schemas.UpdateSecurityGroupOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/security-groups/{groupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = schemas.UpdateUserInput,
        output_schema = schemas.UpdateUserOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
