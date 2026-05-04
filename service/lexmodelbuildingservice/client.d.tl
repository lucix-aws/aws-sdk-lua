local types = require("lexmodelbuildingservice.types")

local record Client
    createBotVersion: function(Client, types.CreateBotVersionInput): types.CreateBotVersionOutput, table
    createIntentVersion: function(Client, types.CreateIntentVersionInput): types.CreateIntentVersionOutput, table
    createSlotTypeVersion: function(Client, types.CreateSlotTypeVersionInput): types.CreateSlotTypeVersionOutput, table
    deleteBot: function(Client, types.DeleteBotInput): types.DeleteBotOutput, table
    deleteBotAlias: function(Client, types.DeleteBotAliasInput): types.DeleteBotAliasOutput, table
    deleteBotChannelAssociation: function(Client, types.DeleteBotChannelAssociationInput): types.DeleteBotChannelAssociationOutput, table
    deleteBotVersion: function(Client, types.DeleteBotVersionInput): types.DeleteBotVersionOutput, table
    deleteIntent: function(Client, types.DeleteIntentInput): types.DeleteIntentOutput, table
    deleteIntentVersion: function(Client, types.DeleteIntentVersionInput): types.DeleteIntentVersionOutput, table
    deleteSlotType: function(Client, types.DeleteSlotTypeInput): types.DeleteSlotTypeOutput, table
    deleteSlotTypeVersion: function(Client, types.DeleteSlotTypeVersionInput): types.DeleteSlotTypeVersionOutput, table
    deleteUtterances: function(Client, types.DeleteUtterancesInput): types.DeleteUtterancesOutput, table
    getBot: function(Client, types.GetBotInput): types.GetBotOutput, table
    getBotAlias: function(Client, types.GetBotAliasInput): types.GetBotAliasOutput, table
    getBotAliases: function(Client, types.GetBotAliasesInput): types.GetBotAliasesOutput, table
    getBotChannelAssociation: function(Client, types.GetBotChannelAssociationInput): types.GetBotChannelAssociationOutput, table
    getBotChannelAssociations: function(Client, types.GetBotChannelAssociationsInput): types.GetBotChannelAssociationsOutput, table
    getBots: function(Client, types.GetBotsInput): types.GetBotsOutput, table
    getBotVersions: function(Client, types.GetBotVersionsInput): types.GetBotVersionsOutput, table
    getBuiltinIntent: function(Client, types.GetBuiltinIntentInput): types.GetBuiltinIntentOutput, table
    getBuiltinIntents: function(Client, types.GetBuiltinIntentsInput): types.GetBuiltinIntentsOutput, table
    getBuiltinSlotTypes: function(Client, types.GetBuiltinSlotTypesInput): types.GetBuiltinSlotTypesOutput, table
    getExport: function(Client, types.GetExportInput): types.GetExportOutput, table
    getImport: function(Client, types.GetImportInput): types.GetImportOutput, table
    getIntent: function(Client, types.GetIntentInput): types.GetIntentOutput, table
    getIntents: function(Client, types.GetIntentsInput): types.GetIntentsOutput, table
    getIntentVersions: function(Client, types.GetIntentVersionsInput): types.GetIntentVersionsOutput, table
    getMigration: function(Client, types.GetMigrationInput): types.GetMigrationOutput, table
    getMigrations: function(Client, types.GetMigrationsInput): types.GetMigrationsOutput, table
    getSlotType: function(Client, types.GetSlotTypeInput): types.GetSlotTypeOutput, table
    getSlotTypes: function(Client, types.GetSlotTypesInput): types.GetSlotTypesOutput, table
    getSlotTypeVersions: function(Client, types.GetSlotTypeVersionsInput): types.GetSlotTypeVersionsOutput, table
    getUtterancesView: function(Client, types.GetUtterancesViewInput): types.GetUtterancesViewOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putBot: function(Client, types.PutBotInput): types.PutBotOutput, table
    putBotAlias: function(Client, types.PutBotAliasInput): types.PutBotAliasOutput, table
    putIntent: function(Client, types.PutIntentInput): types.PutIntentOutput, table
    putSlotType: function(Client, types.PutSlotTypeInput): types.PutSlotTypeOutput, table
    startImport: function(Client, types.StartImportInput): types.StartImportOutput, table
    startMigration: function(Client, types.StartMigrationInput): types.StartMigrationOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
