local types = require("partnercentralchannel.types")

local record Client
    acceptChannelHandshake: function(Client, types.AcceptChannelHandshakeInput): types.AcceptChannelHandshakeOutput, table
    cancelChannelHandshake: function(Client, types.CancelChannelHandshakeInput): types.CancelChannelHandshakeOutput, table
    createChannelHandshake: function(Client, types.CreateChannelHandshakeInput): types.CreateChannelHandshakeOutput, table
    createProgramManagementAccount: function(Client, types.CreateProgramManagementAccountInput): types.CreateProgramManagementAccountOutput, table
    createRelationship: function(Client, types.CreateRelationshipInput): types.CreateRelationshipOutput, table
    deleteProgramManagementAccount: function(Client, types.DeleteProgramManagementAccountInput): types.DeleteProgramManagementAccountOutput, table
    deleteRelationship: function(Client, types.DeleteRelationshipInput): types.DeleteRelationshipOutput, table
    getRelationship: function(Client, types.GetRelationshipInput): types.GetRelationshipOutput, table
    listChannelHandshakes: function(Client, types.ListChannelHandshakesInput): types.ListChannelHandshakesOutput, table
    listProgramManagementAccounts: function(Client, types.ListProgramManagementAccountsInput): types.ListProgramManagementAccountsOutput, table
    listRelationships: function(Client, types.ListRelationshipsInput): types.ListRelationshipsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    rejectChannelHandshake: function(Client, types.RejectChannelHandshakeInput): types.RejectChannelHandshakeOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateProgramManagementAccount: function(Client, types.UpdateProgramManagementAccountInput): types.UpdateProgramManagementAccountOutput, table
    updateRelationship: function(Client, types.UpdateRelationshipInput): types.UpdateRelationshipOutput, table
end

local record M
    new: function(table): Client
end

return M
