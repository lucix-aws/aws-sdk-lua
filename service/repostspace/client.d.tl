local types = require("repostspace.types")

local record Client
    batchAddChannelRoleToAccessors: function(Client, types.BatchAddChannelRoleToAccessorsInput): types.BatchAddChannelRoleToAccessorsOutput, table
    batchAddRole: function(Client, types.BatchAddRoleInput): types.BatchAddRoleOutput, table
    batchRemoveChannelRoleFromAccessors: function(Client, types.BatchRemoveChannelRoleFromAccessorsInput): types.BatchRemoveChannelRoleFromAccessorsOutput, table
    batchRemoveRole: function(Client, types.BatchRemoveRoleInput): types.BatchRemoveRoleOutput, table
    createChannel: function(Client, types.CreateChannelInput): types.CreateChannelOutput, table
    createSpace: function(Client, types.CreateSpaceInput): types.CreateSpaceOutput, table
    deleteSpace: function(Client, types.DeleteSpaceInput): types.DeleteSpaceOutput, table
    deregisterAdmin: function(Client, types.DeregisterAdminInput): types.DeregisterAdminOutput, table
    getChannel: function(Client, types.GetChannelInput): types.GetChannelOutput, table
    getSpace: function(Client, types.GetSpaceInput): types.GetSpaceOutput, table
    listChannels: function(Client, types.ListChannelsInput): types.ListChannelsOutput, table
    listSpaces: function(Client, types.ListSpacesInput): types.ListSpacesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    registerAdmin: function(Client, types.RegisterAdminInput): types.RegisterAdminOutput, table
    sendInvites: function(Client, types.SendInvitesInput): types.SendInvitesOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateChannel: function(Client, types.UpdateChannelInput): types.UpdateChannelOutput, table
    updateSpace: function(Client, types.UpdateSpaceInput): types.UpdateSpaceOutput, table
end

local record M
    new: function(table): Client
end

return M
