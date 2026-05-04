local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("chime.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("chime.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "UCBuzzConsoleService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "chime", signing_region = cfg.region } }
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

function Client:associatePhoneNumberWithUser(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePhoneNumberWithUser",
        input_schema = types.AssociatePhoneNumberWithUserInput,
        output_schema = types.AssociatePhoneNumberWithUserOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/users/{UserId}?operation=associate-phone-number",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSigninDelegateGroupsWithAccount(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSigninDelegateGroupsWithAccount",
        input_schema = types.AssociateSigninDelegateGroupsWithAccountInput,
        output_schema = types.AssociateSigninDelegateGroupsWithAccountOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}?operation=associate-signin-delegate-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchCreateRoomMembership(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateRoomMembership",
        input_schema = types.BatchCreateRoomMembershipInput,
        output_schema = types.BatchCreateRoomMembershipOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/rooms/{RoomId}/memberships?operation=batch-create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeletePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeletePhoneNumber",
        input_schema = types.BatchDeletePhoneNumberInput,
        output_schema = types.BatchDeletePhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-numbers?operation=batch-delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchSuspendUser(input, options)
    return self:invokeOperation(input, {
        name = "BatchSuspendUser",
        input_schema = types.BatchSuspendUserInput,
        output_schema = types.BatchSuspendUserOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/users?operation=suspend",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUnsuspendUser(input, options)
    return self:invokeOperation(input, {
        name = "BatchUnsuspendUser",
        input_schema = types.BatchUnsuspendUserInput,
        output_schema = types.BatchUnsuspendUserOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/users?operation=unsuspend",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdatePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdatePhoneNumber",
        input_schema = types.BatchUpdatePhoneNumberInput,
        output_schema = types.BatchUpdatePhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-numbers?operation=batch-update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateUser(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateUser",
        input_schema = types.BatchUpdateUserInput,
        output_schema = types.BatchUpdateUserOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccount(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccount",
        input_schema = types.CreateAccountInput,
        output_schema = types.CreateAccountOutput,
        http_method = "POST",
        http_path = "/accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBot(input, options)
    return self:invokeOperation(input, {
        name = "CreateBot",
        input_schema = types.CreateBotInput,
        output_schema = types.CreateBotOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMeetingDialOut(input, options)
    return self:invokeOperation(input, {
        name = "CreateMeetingDialOut",
        input_schema = types.CreateMeetingDialOutInput,
        output_schema = types.CreateMeetingDialOutOutput,
        http_method = "POST",
        http_path = "/meetings/{MeetingId}/dial-outs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPhoneNumberOrder(input, options)
    return self:invokeOperation(input, {
        name = "CreatePhoneNumberOrder",
        input_schema = types.CreatePhoneNumberOrderInput,
        output_schema = types.CreatePhoneNumberOrderOutput,
        http_method = "POST",
        http_path = "/phone-number-orders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRoom(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoom",
        input_schema = types.CreateRoomInput,
        output_schema = types.CreateRoomOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/rooms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRoomMembership(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoomMembership",
        input_schema = types.CreateRoomMembershipInput,
        output_schema = types.CreateRoomMembershipOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/rooms/{RoomId}/memberships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/users?operation=create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccount(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccount",
        input_schema = types.DeleteAccountInput,
        output_schema = types.DeleteAccountOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AccountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventsConfiguration",
        input_schema = types.DeleteEventsConfigurationInput,
        output_schema = types.DeleteEventsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AccountId}/bots/{BotId}/events-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "DeletePhoneNumber",
        input_schema = types.DeletePhoneNumberInput,
        output_schema = types.DeletePhoneNumberOutput,
        http_method = "DELETE",
        http_path = "/phone-numbers/{PhoneNumberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRoom(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoom",
        input_schema = types.DeleteRoomInput,
        output_schema = types.DeleteRoomOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AccountId}/rooms/{RoomId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRoomMembership(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoomMembership",
        input_schema = types.DeleteRoomMembershipInput,
        output_schema = types.DeleteRoomMembershipOutput,
        http_method = "DELETE",
        http_path = "/accounts/{AccountId}/rooms/{RoomId}/memberships/{MemberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociatePhoneNumberFromUser(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePhoneNumberFromUser",
        input_schema = types.DisassociatePhoneNumberFromUserInput,
        output_schema = types.DisassociatePhoneNumberFromUserOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/users/{UserId}?operation=disassociate-phone-number",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSigninDelegateGroupsFromAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSigninDelegateGroupsFromAccount",
        input_schema = types.DisassociateSigninDelegateGroupsFromAccountInput,
        output_schema = types.DisassociateSigninDelegateGroupsFromAccountOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}?operation=disassociate-signin-delegate-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetAccount",
        input_schema = types.GetAccountInput,
        output_schema = types.GetAccountOutput,
        http_method = "GET",
        http_path = "/accounts/{AccountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSettings",
        input_schema = types.GetAccountSettingsInput,
        output_schema = types.GetAccountSettingsOutput,
        http_method = "GET",
        http_path = "/accounts/{AccountId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBot(input, options)
    return self:invokeOperation(input, {
        name = "GetBot",
        input_schema = types.GetBotInput,
        output_schema = types.GetBotOutput,
        http_method = "GET",
        http_path = "/accounts/{AccountId}/bots/{BotId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEventsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetEventsConfiguration",
        input_schema = types.GetEventsConfigurationInput,
        output_schema = types.GetEventsConfigurationOutput,
        http_method = "GET",
        http_path = "/accounts/{AccountId}/bots/{BotId}/events-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetGlobalSettings",
        input_schema = types.GetGlobalSettingsInput,
        output_schema = types.GetGlobalSettingsOutput,
        http_method = "GET",
        http_path = "/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "GetPhoneNumber",
        input_schema = types.GetPhoneNumberInput,
        output_schema = types.GetPhoneNumberOutput,
        http_method = "GET",
        http_path = "/phone-numbers/{PhoneNumberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPhoneNumberOrder(input, options)
    return self:invokeOperation(input, {
        name = "GetPhoneNumberOrder",
        input_schema = types.GetPhoneNumberOrderInput,
        output_schema = types.GetPhoneNumberOrderOutput,
        http_method = "GET",
        http_path = "/phone-number-orders/{PhoneNumberOrderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPhoneNumberSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetPhoneNumberSettings",
        input_schema = types.GetPhoneNumberSettingsInput,
        output_schema = types.GetPhoneNumberSettingsOutput,
        http_method = "GET",
        http_path = "/settings/phone-number",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRetentionSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetRetentionSettings",
        input_schema = types.GetRetentionSettingsInput,
        output_schema = types.GetRetentionSettingsOutput,
        http_method = "GET",
        http_path = "/accounts/{AccountId}/retention-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRoom(input, options)
    return self:invokeOperation(input, {
        name = "GetRoom",
        input_schema = types.GetRoomInput,
        output_schema = types.GetRoomOutput,
        http_method = "GET",
        http_path = "/accounts/{AccountId}/rooms/{RoomId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUser(input, options)
    return self:invokeOperation(input, {
        name = "GetUser",
        input_schema = types.GetUserInput,
        output_schema = types.GetUserOutput,
        http_method = "GET",
        http_path = "/accounts/{AccountId}/users/{UserId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetUserSettings",
        input_schema = types.GetUserSettingsInput,
        output_schema = types.GetUserSettingsOutput,
        http_method = "GET",
        http_path = "/accounts/{AccountId}/users/{UserId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:inviteUsers(input, options)
    return self:invokeOperation(input, {
        name = "InviteUsers",
        input_schema = types.InviteUsersInput,
        output_schema = types.InviteUsersOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/users?operation=add",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListAccounts",
        input_schema = types.ListAccountsInput,
        output_schema = types.ListAccountsOutput,
        http_method = "GET",
        http_path = "/accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBots(input, options)
    return self:invokeOperation(input, {
        name = "ListBots",
        input_schema = types.ListBotsInput,
        output_schema = types.ListBotsOutput,
        http_method = "GET",
        http_path = "/accounts/{AccountId}/bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPhoneNumberOrders(input, options)
    return self:invokeOperation(input, {
        name = "ListPhoneNumberOrders",
        input_schema = types.ListPhoneNumberOrdersInput,
        output_schema = types.ListPhoneNumberOrdersOutput,
        http_method = "GET",
        http_path = "/phone-number-orders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPhoneNumbers(input, options)
    return self:invokeOperation(input, {
        name = "ListPhoneNumbers",
        input_schema = types.ListPhoneNumbersInput,
        output_schema = types.ListPhoneNumbersOutput,
        http_method = "GET",
        http_path = "/phone-numbers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoomMemberships(input, options)
    return self:invokeOperation(input, {
        name = "ListRoomMemberships",
        input_schema = types.ListRoomMembershipsInput,
        output_schema = types.ListRoomMembershipsOutput,
        http_method = "GET",
        http_path = "/accounts/{AccountId}/rooms/{RoomId}/memberships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRooms(input, options)
    return self:invokeOperation(input, {
        name = "ListRooms",
        input_schema = types.ListRoomsInput,
        output_schema = types.ListRoomsOutput,
        http_method = "GET",
        http_path = "/accounts/{AccountId}/rooms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSupportedPhoneNumberCountries(input, options)
    return self:invokeOperation(input, {
        name = "ListSupportedPhoneNumberCountries",
        input_schema = types.ListSupportedPhoneNumberCountriesInput,
        output_schema = types.ListSupportedPhoneNumberCountriesOutput,
        http_method = "GET",
        http_path = "/phone-number-countries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = types.ListUsersInput,
        output_schema = types.ListUsersOutput,
        http_method = "GET",
        http_path = "/accounts/{AccountId}/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:logoutUser(input, options)
    return self:invokeOperation(input, {
        name = "LogoutUser",
        input_schema = types.LogoutUserInput,
        output_schema = types.LogoutUserOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/users/{UserId}?operation=logout",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEventsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutEventsConfiguration",
        input_schema = types.PutEventsConfigurationInput,
        output_schema = types.PutEventsConfigurationOutput,
        http_method = "PUT",
        http_path = "/accounts/{AccountId}/bots/{BotId}/events-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRetentionSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutRetentionSettings",
        input_schema = types.PutRetentionSettingsInput,
        output_schema = types.PutRetentionSettingsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AccountId}/retention-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:redactConversationMessage(input, options)
    return self:invokeOperation(input, {
        name = "RedactConversationMessage",
        input_schema = types.RedactConversationMessageInput,
        output_schema = types.RedactConversationMessageOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/conversations/{ConversationId}/messages/{MessageId}?operation=redact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:redactRoomMessage(input, options)
    return self:invokeOperation(input, {
        name = "RedactRoomMessage",
        input_schema = types.RedactRoomMessageInput,
        output_schema = types.RedactRoomMessageOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/rooms/{RoomId}/messages/{MessageId}?operation=redact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:regenerateSecurityToken(input, options)
    return self:invokeOperation(input, {
        name = "RegenerateSecurityToken",
        input_schema = types.RegenerateSecurityTokenInput,
        output_schema = types.RegenerateSecurityTokenOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/bots/{BotId}?operation=regenerate-security-token",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetPersonalPIN(input, options)
    return self:invokeOperation(input, {
        name = "ResetPersonalPIN",
        input_schema = types.ResetPersonalPINInput,
        output_schema = types.ResetPersonalPINOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/users/{UserId}?operation=reset-personal-pin",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restorePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "RestorePhoneNumber",
        input_schema = types.RestorePhoneNumberInput,
        output_schema = types.RestorePhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-numbers/{PhoneNumberId}?operation=restore",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchAvailablePhoneNumbers(input, options)
    return self:invokeOperation(input, {
        name = "SearchAvailablePhoneNumbers",
        input_schema = types.SearchAvailablePhoneNumbersInput,
        output_schema = types.SearchAvailablePhoneNumbersOutput,
        http_method = "GET",
        http_path = "/search?type=phone-numbers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccount(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccount",
        input_schema = types.UpdateAccountInput,
        output_schema = types.UpdateAccountOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountSettings",
        input_schema = types.UpdateAccountSettingsInput,
        output_schema = types.UpdateAccountSettingsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AccountId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBot(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBot",
        input_schema = types.UpdateBotInput,
        output_schema = types.UpdateBotOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/bots/{BotId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalSettings",
        input_schema = types.UpdateGlobalSettingsInput,
        output_schema = types.UpdateGlobalSettingsOutput,
        http_method = "PUT",
        http_path = "/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePhoneNumber",
        input_schema = types.UpdatePhoneNumberInput,
        output_schema = types.UpdatePhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-numbers/{PhoneNumberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePhoneNumberSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePhoneNumberSettings",
        input_schema = types.UpdatePhoneNumberSettingsInput,
        output_schema = types.UpdatePhoneNumberSettingsOutput,
        http_method = "PUT",
        http_path = "/settings/phone-number",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoom(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoom",
        input_schema = types.UpdateRoomInput,
        output_schema = types.UpdateRoomOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/rooms/{RoomId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoomMembership(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoomMembership",
        input_schema = types.UpdateRoomMembershipInput,
        output_schema = types.UpdateRoomMembershipOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/rooms/{RoomId}/memberships/{MemberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = types.UpdateUserInput,
        output_schema = types.UpdateUserOutput,
        http_method = "POST",
        http_path = "/accounts/{AccountId}/users/{UserId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserSettings",
        input_schema = types.UpdateUserSettingsInput,
        output_schema = types.UpdateUserSettingsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AccountId}/users/{UserId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
