local types = require("chime.types")

local record Client
    associatePhoneNumberWithUser: function(Client, types.AssociatePhoneNumberWithUserInput): types.AssociatePhoneNumberWithUserOutput, table
    associateSigninDelegateGroupsWithAccount: function(Client, types.AssociateSigninDelegateGroupsWithAccountInput): types.AssociateSigninDelegateGroupsWithAccountOutput, table
    batchCreateRoomMembership: function(Client, types.BatchCreateRoomMembershipInput): types.BatchCreateRoomMembershipOutput, table
    batchDeletePhoneNumber: function(Client, types.BatchDeletePhoneNumberInput): types.BatchDeletePhoneNumberOutput, table
    batchSuspendUser: function(Client, types.BatchSuspendUserInput): types.BatchSuspendUserOutput, table
    batchUnsuspendUser: function(Client, types.BatchUnsuspendUserInput): types.BatchUnsuspendUserOutput, table
    batchUpdatePhoneNumber: function(Client, types.BatchUpdatePhoneNumberInput): types.BatchUpdatePhoneNumberOutput, table
    batchUpdateUser: function(Client, types.BatchUpdateUserInput): types.BatchUpdateUserOutput, table
    createAccount: function(Client, types.CreateAccountInput): types.CreateAccountOutput, table
    createBot: function(Client, types.CreateBotInput): types.CreateBotOutput, table
    createMeetingDialOut: function(Client, types.CreateMeetingDialOutInput): types.CreateMeetingDialOutOutput, table
    createPhoneNumberOrder: function(Client, types.CreatePhoneNumberOrderInput): types.CreatePhoneNumberOrderOutput, table
    createRoom: function(Client, types.CreateRoomInput): types.CreateRoomOutput, table
    createRoomMembership: function(Client, types.CreateRoomMembershipInput): types.CreateRoomMembershipOutput, table
    createUser: function(Client, types.CreateUserInput): types.CreateUserOutput, table
    deleteAccount: function(Client, types.DeleteAccountInput): types.DeleteAccountOutput, table
    deleteEventsConfiguration: function(Client, types.DeleteEventsConfigurationInput): types.DeleteEventsConfigurationOutput, table
    deletePhoneNumber: function(Client, types.DeletePhoneNumberInput): types.DeletePhoneNumberOutput, table
    deleteRoom: function(Client, types.DeleteRoomInput): types.DeleteRoomOutput, table
    deleteRoomMembership: function(Client, types.DeleteRoomMembershipInput): types.DeleteRoomMembershipOutput, table
    disassociatePhoneNumberFromUser: function(Client, types.DisassociatePhoneNumberFromUserInput): types.DisassociatePhoneNumberFromUserOutput, table
    disassociateSigninDelegateGroupsFromAccount: function(Client, types.DisassociateSigninDelegateGroupsFromAccountInput): types.DisassociateSigninDelegateGroupsFromAccountOutput, table
    getAccount: function(Client, types.GetAccountInput): types.GetAccountOutput, table
    getAccountSettings: function(Client, types.GetAccountSettingsInput): types.GetAccountSettingsOutput, table
    getBot: function(Client, types.GetBotInput): types.GetBotOutput, table
    getEventsConfiguration: function(Client, types.GetEventsConfigurationInput): types.GetEventsConfigurationOutput, table
    getGlobalSettings: function(Client, types.GetGlobalSettingsInput): types.GetGlobalSettingsOutput, table
    getPhoneNumber: function(Client, types.GetPhoneNumberInput): types.GetPhoneNumberOutput, table
    getPhoneNumberOrder: function(Client, types.GetPhoneNumberOrderInput): types.GetPhoneNumberOrderOutput, table
    getPhoneNumberSettings: function(Client, types.GetPhoneNumberSettingsInput): types.GetPhoneNumberSettingsOutput, table
    getRetentionSettings: function(Client, types.GetRetentionSettingsInput): types.GetRetentionSettingsOutput, table
    getRoom: function(Client, types.GetRoomInput): types.GetRoomOutput, table
    getUser: function(Client, types.GetUserInput): types.GetUserOutput, table
    getUserSettings: function(Client, types.GetUserSettingsInput): types.GetUserSettingsOutput, table
    inviteUsers: function(Client, types.InviteUsersInput): types.InviteUsersOutput, table
    listAccounts: function(Client, types.ListAccountsInput): types.ListAccountsOutput, table
    listBots: function(Client, types.ListBotsInput): types.ListBotsOutput, table
    listPhoneNumberOrders: function(Client, types.ListPhoneNumberOrdersInput): types.ListPhoneNumberOrdersOutput, table
    listPhoneNumbers: function(Client, types.ListPhoneNumbersInput): types.ListPhoneNumbersOutput, table
    listRoomMemberships: function(Client, types.ListRoomMembershipsInput): types.ListRoomMembershipsOutput, table
    listRooms: function(Client, types.ListRoomsInput): types.ListRoomsOutput, table
    listSupportedPhoneNumberCountries: function(Client, types.ListSupportedPhoneNumberCountriesInput): types.ListSupportedPhoneNumberCountriesOutput, table
    listUsers: function(Client, types.ListUsersInput): types.ListUsersOutput, table
    logoutUser: function(Client, types.LogoutUserInput): types.LogoutUserOutput, table
    putEventsConfiguration: function(Client, types.PutEventsConfigurationInput): types.PutEventsConfigurationOutput, table
    putRetentionSettings: function(Client, types.PutRetentionSettingsInput): types.PutRetentionSettingsOutput, table
    redactConversationMessage: function(Client, types.RedactConversationMessageInput): types.RedactConversationMessageOutput, table
    redactRoomMessage: function(Client, types.RedactRoomMessageInput): types.RedactRoomMessageOutput, table
    regenerateSecurityToken: function(Client, types.RegenerateSecurityTokenInput): types.RegenerateSecurityTokenOutput, table
    resetPersonalPIN: function(Client, types.ResetPersonalPINInput): types.ResetPersonalPINOutput, table
    restorePhoneNumber: function(Client, types.RestorePhoneNumberInput): types.RestorePhoneNumberOutput, table
    searchAvailablePhoneNumbers: function(Client, types.SearchAvailablePhoneNumbersInput): types.SearchAvailablePhoneNumbersOutput, table
    updateAccount: function(Client, types.UpdateAccountInput): types.UpdateAccountOutput, table
    updateAccountSettings: function(Client, types.UpdateAccountSettingsInput): types.UpdateAccountSettingsOutput, table
    updateBot: function(Client, types.UpdateBotInput): types.UpdateBotOutput, table
    updateGlobalSettings: function(Client, types.UpdateGlobalSettingsInput): types.UpdateGlobalSettingsOutput, table
    updatePhoneNumber: function(Client, types.UpdatePhoneNumberInput): types.UpdatePhoneNumberOutput, table
    updatePhoneNumberSettings: function(Client, types.UpdatePhoneNumberSettingsInput): types.UpdatePhoneNumberSettingsOutput, table
    updateRoom: function(Client, types.UpdateRoomInput): types.UpdateRoomOutput, table
    updateRoomMembership: function(Client, types.UpdateRoomMembershipInput): types.UpdateRoomMembershipOutput, table
    updateUser: function(Client, types.UpdateUserInput): types.UpdateUserOutput, table
    updateUserSettings: function(Client, types.UpdateUserSettingsInput): types.UpdateUserSettingsOutput, table
end

local record M
    new: function(table): Client
end

return M
