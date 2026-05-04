local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("wickr.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("wickr.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "WickrAdminApi"
    cfg.signing_name = "wickradminapi"
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

function Client:batchCreateUser(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateUser",
        input_schema = types.BatchCreateUserInput,
        output_schema = types.BatchCreateUserOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/users",
    }, options)
end

function Client:batchDeleteUser(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteUser",
        input_schema = types.BatchDeleteUserInput,
        output_schema = types.BatchDeleteUserOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/users/batch-delete",
    }, options)
end

function Client:batchLookupUserUname(input, options)
    return self:invokeOperation(input, {
        name = "BatchLookupUserUname",
        input_schema = types.BatchLookupUserUnameInput,
        output_schema = types.BatchLookupUserUnameOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/users/uname-lookup",
    }, options)
end

function Client:batchReinviteUser(input, options)
    return self:invokeOperation(input, {
        name = "BatchReinviteUser",
        input_schema = types.BatchReinviteUserInput,
        output_schema = types.BatchReinviteUserOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/users/re-invite",
    }, options)
end

function Client:batchResetDevicesForUser(input, options)
    return self:invokeOperation(input, {
        name = "BatchResetDevicesForUser",
        input_schema = types.BatchResetDevicesForUserInput,
        output_schema = types.BatchResetDevicesForUserOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/users/{userId}/devices",
    }, options)
end

function Client:batchToggleUserSuspendStatus(input, options)
    return self:invokeOperation(input, {
        name = "BatchToggleUserSuspendStatus",
        input_schema = types.BatchToggleUserSuspendStatusInput,
        output_schema = types.BatchToggleUserSuspendStatusOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/users/toggleSuspend",
    }, options)
end

function Client:createBot(input, options)
    return self:invokeOperation(input, {
        name = "CreateBot",
        input_schema = types.CreateBotInput,
        output_schema = types.CreateBotOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/bots",
    }, options)
end

function Client:createDataRetentionBot(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataRetentionBot",
        input_schema = types.CreateDataRetentionBotInput,
        output_schema = types.CreateDataRetentionBotOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/data-retention-bots",
    }, options)
end

function Client:createDataRetentionBotChallenge(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataRetentionBotChallenge",
        input_schema = types.CreateDataRetentionBotChallengeInput,
        output_schema = types.CreateDataRetentionBotChallengeOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/data-retention-bots/challenge",
    }, options)
end

function Client:createNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetwork",
        input_schema = types.CreateNetworkInput,
        output_schema = types.CreateNetworkOutput,
        http_method = "POST",
        http_path = "/networks",
    }, options)
end

function Client:createSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityGroup",
        input_schema = types.CreateSecurityGroupInput,
        output_schema = types.CreateSecurityGroupOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/security-groups",
    }, options)
end

function Client:deleteBot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBot",
        input_schema = types.DeleteBotInput,
        output_schema = types.DeleteBotOutput,
        http_method = "DELETE",
        http_path = "/networks/{networkId}/bots/{botId}",
    }, options)
end

function Client:deleteDataRetentionBot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataRetentionBot",
        input_schema = types.DeleteDataRetentionBotInput,
        output_schema = types.DeleteDataRetentionBotOutput,
        http_method = "DELETE",
        http_path = "/networks/{networkId}/data-retention-bots",
    }, options)
end

function Client:deleteNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetwork",
        input_schema = types.DeleteNetworkInput,
        output_schema = types.DeleteNetworkOutput,
        http_method = "DELETE",
        http_path = "/networks/{networkId}",
    }, options)
end

function Client:deleteSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecurityGroup",
        input_schema = types.DeleteSecurityGroupInput,
        output_schema = types.DeleteSecurityGroupOutput,
        http_method = "DELETE",
        http_path = "/networks/{networkId}/security-groups/{groupId}",
    }, options)
end

function Client:getBot(input, options)
    return self:invokeOperation(input, {
        name = "GetBot",
        input_schema = types.GetBotInput,
        output_schema = types.GetBotOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/bots/{botId}",
    }, options)
end

function Client:getBotsCount(input, options)
    return self:invokeOperation(input, {
        name = "GetBotsCount",
        input_schema = types.GetBotsCountInput,
        output_schema = types.GetBotsCountOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/bots/count",
    }, options)
end

function Client:getDataRetentionBot(input, options)
    return self:invokeOperation(input, {
        name = "GetDataRetentionBot",
        input_schema = types.GetDataRetentionBotInput,
        output_schema = types.GetDataRetentionBotOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/data-retention-bots",
    }, options)
end

function Client:getGuestUserHistoryCount(input, options)
    return self:invokeOperation(input, {
        name = "GetGuestUserHistoryCount",
        input_schema = types.GetGuestUserHistoryCountInput,
        output_schema = types.GetGuestUserHistoryCountOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/guest-users/count",
    }, options)
end

function Client:getNetwork(input, options)
    return self:invokeOperation(input, {
        name = "GetNetwork",
        input_schema = types.GetNetworkInput,
        output_schema = types.GetNetworkOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}",
    }, options)
end

function Client:getNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkSettings",
        input_schema = types.GetNetworkSettingsInput,
        output_schema = types.GetNetworkSettingsOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/settings",
    }, options)
end

function Client:getOidcInfo(input, options)
    return self:invokeOperation(input, {
        name = "GetOidcInfo",
        input_schema = types.GetOidcInfoInput,
        output_schema = types.GetOidcInfoOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/oidc",
    }, options)
end

function Client:getOpentdfConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetOpentdfConfig",
        input_schema = types.GetOpentdfConfigInput,
        output_schema = types.GetOpentdfConfigOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/tdf",
    }, options)
end

function Client:getSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetSecurityGroup",
        input_schema = types.GetSecurityGroupInput,
        output_schema = types.GetSecurityGroupOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/security-groups/{groupId}",
    }, options)
end

function Client:getUser(input, options)
    return self:invokeOperation(input, {
        name = "GetUser",
        input_schema = types.GetUserInput,
        output_schema = types.GetUserOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/users/{userId}",
    }, options)
end

function Client:getUsersCount(input, options)
    return self:invokeOperation(input, {
        name = "GetUsersCount",
        input_schema = types.GetUsersCountInput,
        output_schema = types.GetUsersCountOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/users/count",
    }, options)
end

function Client:listBlockedGuestUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListBlockedGuestUsers",
        input_schema = types.ListBlockedGuestUsersInput,
        output_schema = types.ListBlockedGuestUsersOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/guest-users/blocklist",
    }, options)
end

function Client:listBots(input, options)
    return self:invokeOperation(input, {
        name = "ListBots",
        input_schema = types.ListBotsInput,
        output_schema = types.ListBotsOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/bots",
    }, options)
end

function Client:listDevicesForUser(input, options)
    return self:invokeOperation(input, {
        name = "ListDevicesForUser",
        input_schema = types.ListDevicesForUserInput,
        output_schema = types.ListDevicesForUserOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/users/{userId}/devices",
    }, options)
end

function Client:listGuestUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListGuestUsers",
        input_schema = types.ListGuestUsersInput,
        output_schema = types.ListGuestUsersOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/guest-users",
    }, options)
end

function Client:listNetworks(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworks",
        input_schema = types.ListNetworksInput,
        output_schema = types.ListNetworksOutput,
        http_method = "GET",
        http_path = "/networks",
    }, options)
end

function Client:listSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityGroups",
        input_schema = types.ListSecurityGroupsInput,
        output_schema = types.ListSecurityGroupsOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/security-groups",
    }, options)
end

function Client:listSecurityGroupUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityGroupUsers",
        input_schema = types.ListSecurityGroupUsersInput,
        output_schema = types.ListSecurityGroupUsersOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/security-groups/{groupId}/users",
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = types.ListUsersInput,
        output_schema = types.ListUsersOutput,
        http_method = "GET",
        http_path = "/networks/{networkId}/users",
    }, options)
end

function Client:registerOidcConfig(input, options)
    return self:invokeOperation(input, {
        name = "RegisterOidcConfig",
        input_schema = types.RegisterOidcConfigInput,
        output_schema = types.RegisterOidcConfigOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/oidc/save",
    }, options)
end

function Client:registerOidcConfigTest(input, options)
    return self:invokeOperation(input, {
        name = "RegisterOidcConfigTest",
        input_schema = types.RegisterOidcConfigTestInput,
        output_schema = types.RegisterOidcConfigTestOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/oidc/test",
    }, options)
end

function Client:registerOpentdfConfig(input, options)
    return self:invokeOperation(input, {
        name = "RegisterOpentdfConfig",
        input_schema = types.RegisterOpentdfConfigInput,
        output_schema = types.RegisterOpentdfConfigOutput,
        http_method = "POST",
        http_path = "/networks/{networkId}/tdf",
    }, options)
end

function Client:updateBot(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBot",
        input_schema = types.UpdateBotInput,
        output_schema = types.UpdateBotOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/bots/{botId}",
    }, options)
end

function Client:updateDataRetention(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataRetention",
        input_schema = types.UpdateDataRetentionInput,
        output_schema = types.UpdateDataRetentionOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/data-retention-bots",
    }, options)
end

function Client:updateGuestUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGuestUser",
        input_schema = types.UpdateGuestUserInput,
        output_schema = types.UpdateGuestUserOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/guest-users/{usernameHash}",
    }, options)
end

function Client:updateNetwork(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetwork",
        input_schema = types.UpdateNetworkInput,
        output_schema = types.UpdateNetworkOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}",
    }, options)
end

function Client:updateNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetworkSettings",
        input_schema = types.UpdateNetworkSettingsInput,
        output_schema = types.UpdateNetworkSettingsOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/settings",
    }, options)
end

function Client:updateSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityGroup",
        input_schema = types.UpdateSecurityGroupInput,
        output_schema = types.UpdateSecurityGroupOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/security-groups/{groupId}",
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = types.UpdateUserInput,
        output_schema = types.UpdateUserOutput,
        http_method = "PATCH",
        http_path = "/networks/{networkId}/users",
    }, options)
end

return M
