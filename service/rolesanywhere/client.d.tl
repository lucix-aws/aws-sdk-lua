local types = require("rolesanywhere.types")

local record Client
    createProfile: function(Client, types.CreateProfileInput): types.CreateProfileOutput, table
    createTrustAnchor: function(Client, types.CreateTrustAnchorInput): types.CreateTrustAnchorOutput, table
    deleteAttributeMapping: function(Client, types.DeleteAttributeMappingInput): types.DeleteAttributeMappingOutput, table
    deleteCrl: function(Client, types.DeleteCrlInput): types.DeleteCrlOutput, table
    deleteProfile: function(Client, types.DeleteProfileInput): types.DeleteProfileOutput, table
    deleteTrustAnchor: function(Client, types.DeleteTrustAnchorInput): types.DeleteTrustAnchorOutput, table
    disableCrl: function(Client, types.DisableCrlInput): types.DisableCrlOutput, table
    disableProfile: function(Client, types.DisableProfileInput): types.DisableProfileOutput, table
    disableTrustAnchor: function(Client, types.DisableTrustAnchorInput): types.DisableTrustAnchorOutput, table
    enableCrl: function(Client, types.EnableCrlInput): types.EnableCrlOutput, table
    enableProfile: function(Client, types.EnableProfileInput): types.EnableProfileOutput, table
    enableTrustAnchor: function(Client, types.EnableTrustAnchorInput): types.EnableTrustAnchorOutput, table
    getCrl: function(Client, types.GetCrlInput): types.GetCrlOutput, table
    getProfile: function(Client, types.GetProfileInput): types.GetProfileOutput, table
    getSubject: function(Client, types.GetSubjectInput): types.GetSubjectOutput, table
    getTrustAnchor: function(Client, types.GetTrustAnchorInput): types.GetTrustAnchorOutput, table
    importCrl: function(Client, types.ImportCrlInput): types.ImportCrlOutput, table
    listCrls: function(Client, types.ListCrlsInput): types.ListCrlsOutput, table
    listProfiles: function(Client, types.ListProfilesInput): types.ListProfilesOutput, table
    listSubjects: function(Client, types.ListSubjectsInput): types.ListSubjectsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTrustAnchors: function(Client, types.ListTrustAnchorsInput): types.ListTrustAnchorsOutput, table
    putAttributeMapping: function(Client, types.PutAttributeMappingInput): types.PutAttributeMappingOutput, table
    putNotificationSettings: function(Client, types.PutNotificationSettingsInput): types.PutNotificationSettingsOutput, table
    resetNotificationSettings: function(Client, types.ResetNotificationSettingsInput): types.ResetNotificationSettingsOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateCrl: function(Client, types.UpdateCrlInput): types.UpdateCrlOutput, table
    updateProfile: function(Client, types.UpdateProfileInput): types.UpdateProfileOutput, table
    updateTrustAnchor: function(Client, types.UpdateTrustAnchorInput): types.UpdateTrustAnchorOutput, table
end

local record M
    new: function(table): Client
end

return M
