local types = require("socialmessaging.types")

local record Client
    associateWhatsAppBusinessAccount: function(Client, types.AssociateWhatsAppBusinessAccountInput): types.AssociateWhatsAppBusinessAccountOutput, table
    createWhatsAppMessageTemplate: function(Client, types.CreateWhatsAppMessageTemplateInput): types.CreateWhatsAppMessageTemplateOutput, table
    createWhatsAppMessageTemplateFromLibrary: function(Client, types.CreateWhatsAppMessageTemplateFromLibraryInput): types.CreateWhatsAppMessageTemplateFromLibraryOutput, table
    createWhatsAppMessageTemplateMedia: function(Client, types.CreateWhatsAppMessageTemplateMediaInput): types.CreateWhatsAppMessageTemplateMediaOutput, table
    deleteWhatsAppMessageMedia: function(Client, types.DeleteWhatsAppMessageMediaInput): types.DeleteWhatsAppMessageMediaOutput, table
    deleteWhatsAppMessageTemplate: function(Client, types.DeleteWhatsAppMessageTemplateInput): types.DeleteWhatsAppMessageTemplateOutput, table
    disassociateWhatsAppBusinessAccount: function(Client, types.DisassociateWhatsAppBusinessAccountInput): types.DisassociateWhatsAppBusinessAccountOutput, table
    getLinkedWhatsAppBusinessAccount: function(Client, types.GetLinkedWhatsAppBusinessAccountInput): types.GetLinkedWhatsAppBusinessAccountOutput, table
    getLinkedWhatsAppBusinessAccountPhoneNumber: function(Client, types.GetLinkedWhatsAppBusinessAccountPhoneNumberInput): types.GetLinkedWhatsAppBusinessAccountPhoneNumberOutput, table
    getWhatsAppMessageMedia: function(Client, types.GetWhatsAppMessageMediaInput): types.GetWhatsAppMessageMediaOutput, table
    getWhatsAppMessageTemplate: function(Client, types.GetWhatsAppMessageTemplateInput): types.GetWhatsAppMessageTemplateOutput, table
    listLinkedWhatsAppBusinessAccounts: function(Client, types.ListLinkedWhatsAppBusinessAccountsInput): types.ListLinkedWhatsAppBusinessAccountsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listWhatsAppMessageTemplates: function(Client, types.ListWhatsAppMessageTemplatesInput): types.ListWhatsAppMessageTemplatesOutput, table
    listWhatsAppTemplateLibrary: function(Client, types.ListWhatsAppTemplateLibraryInput): types.ListWhatsAppTemplateLibraryOutput, table
    postWhatsAppMessageMedia: function(Client, types.PostWhatsAppMessageMediaInput): types.PostWhatsAppMessageMediaOutput, table
    putWhatsAppBusinessAccountEventDestinations: function(Client, types.PutWhatsAppBusinessAccountEventDestinationsInput): types.PutWhatsAppBusinessAccountEventDestinationsOutput, table
    sendWhatsAppMessage: function(Client, types.SendWhatsAppMessageInput): types.SendWhatsAppMessageOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateWhatsAppMessageTemplate: function(Client, types.UpdateWhatsAppMessageTemplateInput): types.UpdateWhatsAppMessageTemplateOutput, table
end

local record M
    new: function(table): Client
end

return M
