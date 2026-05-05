local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("chime.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("chime.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.AssociatePhoneNumberWithUserInput,
        output_schema = schemas.AssociatePhoneNumberWithUserOutput,
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
        input_schema = schemas.AssociateSigninDelegateGroupsWithAccountInput,
        output_schema = schemas.AssociateSigninDelegateGroupsWithAccountOutput,
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
        input_schema = schemas.BatchCreateRoomMembershipInput,
        output_schema = schemas.BatchCreateRoomMembershipOutput,
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
        input_schema = schemas.BatchDeletePhoneNumberInput,
        output_schema = schemas.BatchDeletePhoneNumberOutput,
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
        input_schema = schemas.BatchSuspendUserInput,
        output_schema = schemas.BatchSuspendUserOutput,
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
        input_schema = schemas.BatchUnsuspendUserInput,
        output_schema = schemas.BatchUnsuspendUserOutput,
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
        input_schema = schemas.BatchUpdatePhoneNumberInput,
        output_schema = schemas.BatchUpdatePhoneNumberOutput,
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
        input_schema = schemas.BatchUpdateUserInput,
        output_schema = schemas.BatchUpdateUserOutput,
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
        input_schema = schemas.CreateAccountInput,
        output_schema = schemas.CreateAccountOutput,
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
        input_schema = schemas.CreateBotInput,
        output_schema = schemas.CreateBotOutput,
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
        input_schema = schemas.CreateMeetingDialOutInput,
        output_schema = schemas.CreateMeetingDialOutOutput,
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
        input_schema = schemas.CreatePhoneNumberOrderInput,
        output_schema = schemas.CreatePhoneNumberOrderOutput,
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
        input_schema = schemas.CreateRoomInput,
        output_schema = schemas.CreateRoomOutput,
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
        input_schema = schemas.CreateRoomMembershipInput,
        output_schema = schemas.CreateRoomMembershipOutput,
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
        input_schema = schemas.CreateUserInput,
        output_schema = schemas.CreateUserOutput,
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
        input_schema = schemas.DeleteAccountInput,
        output_schema = schemas.DeleteAccountOutput,
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
        input_schema = schemas.DeleteEventsConfigurationInput,
        output_schema = schemas.DeleteEventsConfigurationOutput,
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
        input_schema = schemas.DeletePhoneNumberInput,
        output_schema = schemas.DeletePhoneNumberOutput,
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
        input_schema = schemas.DeleteRoomInput,
        output_schema = schemas.DeleteRoomOutput,
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
        input_schema = schemas.DeleteRoomMembershipInput,
        output_schema = schemas.DeleteRoomMembershipOutput,
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
        input_schema = schemas.DisassociatePhoneNumberFromUserInput,
        output_schema = schemas.DisassociatePhoneNumberFromUserOutput,
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
        input_schema = schemas.DisassociateSigninDelegateGroupsFromAccountInput,
        output_schema = schemas.DisassociateSigninDelegateGroupsFromAccountOutput,
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
        input_schema = schemas.GetAccountInput,
        output_schema = schemas.GetAccountOutput,
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
        input_schema = schemas.GetAccountSettingsInput,
        output_schema = schemas.GetAccountSettingsOutput,
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
        input_schema = schemas.GetBotInput,
        output_schema = schemas.GetBotOutput,
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
        input_schema = schemas.GetEventsConfigurationInput,
        output_schema = schemas.GetEventsConfigurationOutput,
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
        input_schema = schemas.GetGlobalSettingsInput,
        output_schema = schemas.GetGlobalSettingsOutput,
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
        input_schema = schemas.GetPhoneNumberInput,
        output_schema = schemas.GetPhoneNumberOutput,
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
        input_schema = schemas.GetPhoneNumberOrderInput,
        output_schema = schemas.GetPhoneNumberOrderOutput,
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
        input_schema = schemas.GetPhoneNumberSettingsInput,
        output_schema = schemas.GetPhoneNumberSettingsOutput,
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
        input_schema = schemas.GetRetentionSettingsInput,
        output_schema = schemas.GetRetentionSettingsOutput,
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
        input_schema = schemas.GetRoomInput,
        output_schema = schemas.GetRoomOutput,
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
        input_schema = schemas.GetUserInput,
        output_schema = schemas.GetUserOutput,
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
        input_schema = schemas.GetUserSettingsInput,
        output_schema = schemas.GetUserSettingsOutput,
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
        input_schema = schemas.InviteUsersInput,
        output_schema = schemas.InviteUsersOutput,
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
        input_schema = schemas.ListAccountsInput,
        output_schema = schemas.ListAccountsOutput,
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
        input_schema = schemas.ListBotsInput,
        output_schema = schemas.ListBotsOutput,
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
        input_schema = schemas.ListPhoneNumberOrdersInput,
        output_schema = schemas.ListPhoneNumberOrdersOutput,
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
        input_schema = schemas.ListPhoneNumbersInput,
        output_schema = schemas.ListPhoneNumbersOutput,
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
        input_schema = schemas.ListRoomMembershipsInput,
        output_schema = schemas.ListRoomMembershipsOutput,
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
        input_schema = schemas.ListRoomsInput,
        output_schema = schemas.ListRoomsOutput,
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
        input_schema = schemas.ListSupportedPhoneNumberCountriesInput,
        output_schema = schemas.ListSupportedPhoneNumberCountriesOutput,
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
        input_schema = schemas.ListUsersInput,
        output_schema = schemas.ListUsersOutput,
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
        input_schema = schemas.LogoutUserInput,
        output_schema = schemas.LogoutUserOutput,
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
        input_schema = schemas.PutEventsConfigurationInput,
        output_schema = schemas.PutEventsConfigurationOutput,
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
        input_schema = schemas.PutRetentionSettingsInput,
        output_schema = schemas.PutRetentionSettingsOutput,
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
        input_schema = schemas.RedactConversationMessageInput,
        output_schema = schemas.RedactConversationMessageOutput,
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
        input_schema = schemas.RedactRoomMessageInput,
        output_schema = schemas.RedactRoomMessageOutput,
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
        input_schema = schemas.RegenerateSecurityTokenInput,
        output_schema = schemas.RegenerateSecurityTokenOutput,
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
        input_schema = schemas.ResetPersonalPINInput,
        output_schema = schemas.ResetPersonalPINOutput,
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
        input_schema = schemas.RestorePhoneNumberInput,
        output_schema = schemas.RestorePhoneNumberOutput,
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
        input_schema = schemas.SearchAvailablePhoneNumbersInput,
        output_schema = schemas.SearchAvailablePhoneNumbersOutput,
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
        input_schema = schemas.UpdateAccountInput,
        output_schema = schemas.UpdateAccountOutput,
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
        input_schema = schemas.UpdateAccountSettingsInput,
        output_schema = schemas.UpdateAccountSettingsOutput,
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
        input_schema = schemas.UpdateBotInput,
        output_schema = schemas.UpdateBotOutput,
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
        input_schema = schemas.UpdateGlobalSettingsInput,
        output_schema = schemas.UpdateGlobalSettingsOutput,
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
        input_schema = schemas.UpdatePhoneNumberInput,
        output_schema = schemas.UpdatePhoneNumberOutput,
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
        input_schema = schemas.UpdatePhoneNumberSettingsInput,
        output_schema = schemas.UpdatePhoneNumberSettingsOutput,
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
        input_schema = schemas.UpdateRoomInput,
        output_schema = schemas.UpdateRoomOutput,
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
        input_schema = schemas.UpdateRoomMembershipInput,
        output_schema = schemas.UpdateRoomMembershipOutput,
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
        input_schema = schemas.UpdateUserInput,
        output_schema = schemas.UpdateUserOutput,
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
        input_schema = schemas.UpdateUserSettingsInput,
        output_schema = schemas.UpdateUserSettingsOutput,
        http_method = "PUT",
        http_path = "/accounts/{AccountId}/users/{UserId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
