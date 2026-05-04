local types = require("ssmcontacts.types")

local record Client
    acceptPage: function(Client, types.AcceptPageInput): types.AcceptPageOutput, table
    activateContactChannel: function(Client, types.ActivateContactChannelInput): types.ActivateContactChannelOutput, table
    createContact: function(Client, types.CreateContactInput): types.CreateContactOutput, table
    createContactChannel: function(Client, types.CreateContactChannelInput): types.CreateContactChannelOutput, table
    createRotation: function(Client, types.CreateRotationInput): types.CreateRotationOutput, table
    createRotationOverride: function(Client, types.CreateRotationOverrideInput): types.CreateRotationOverrideOutput, table
    deactivateContactChannel: function(Client, types.DeactivateContactChannelInput): types.DeactivateContactChannelOutput, table
    deleteContact: function(Client, types.DeleteContactInput): types.DeleteContactOutput, table
    deleteContactChannel: function(Client, types.DeleteContactChannelInput): types.DeleteContactChannelOutput, table
    deleteRotation: function(Client, types.DeleteRotationInput): types.DeleteRotationOutput, table
    deleteRotationOverride: function(Client, types.DeleteRotationOverrideInput): types.DeleteRotationOverrideOutput, table
    describeEngagement: function(Client, types.DescribeEngagementInput): types.DescribeEngagementOutput, table
    describePage: function(Client, types.DescribePageInput): types.DescribePageOutput, table
    getContact: function(Client, types.GetContactInput): types.GetContactOutput, table
    getContactChannel: function(Client, types.GetContactChannelInput): types.GetContactChannelOutput, table
    getContactPolicy: function(Client, types.GetContactPolicyInput): types.GetContactPolicyOutput, table
    getRotation: function(Client, types.GetRotationInput): types.GetRotationOutput, table
    getRotationOverride: function(Client, types.GetRotationOverrideInput): types.GetRotationOverrideOutput, table
    listContactChannels: function(Client, types.ListContactChannelsInput): types.ListContactChannelsOutput, table
    listContacts: function(Client, types.ListContactsInput): types.ListContactsOutput, table
    listEngagements: function(Client, types.ListEngagementsInput): types.ListEngagementsOutput, table
    listPageReceipts: function(Client, types.ListPageReceiptsInput): types.ListPageReceiptsOutput, table
    listPageResolutions: function(Client, types.ListPageResolutionsInput): types.ListPageResolutionsOutput, table
    listPagesByContact: function(Client, types.ListPagesByContactInput): types.ListPagesByContactOutput, table
    listPagesByEngagement: function(Client, types.ListPagesByEngagementInput): types.ListPagesByEngagementOutput, table
    listPreviewRotationShifts: function(Client, types.ListPreviewRotationShiftsInput): types.ListPreviewRotationShiftsOutput, table
    listRotationOverrides: function(Client, types.ListRotationOverridesInput): types.ListRotationOverridesOutput, table
    listRotations: function(Client, types.ListRotationsInput): types.ListRotationsOutput, table
    listRotationShifts: function(Client, types.ListRotationShiftsInput): types.ListRotationShiftsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putContactPolicy: function(Client, types.PutContactPolicyInput): types.PutContactPolicyOutput, table
    sendActivationCode: function(Client, types.SendActivationCodeInput): types.SendActivationCodeOutput, table
    startEngagement: function(Client, types.StartEngagementInput): types.StartEngagementOutput, table
    stopEngagement: function(Client, types.StopEngagementInput): types.StopEngagementOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateContact: function(Client, types.UpdateContactInput): types.UpdateContactOutput, table
    updateContactChannel: function(Client, types.UpdateContactChannelInput): types.UpdateContactChannelOutput, table
    updateRotation: function(Client, types.UpdateRotationInput): types.UpdateRotationOutput, table
end

local record M
    new: function(table): Client
end

return M
