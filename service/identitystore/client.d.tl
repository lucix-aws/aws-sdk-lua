local types = require("identitystore.types")

local record Client
    createGroup: function(Client, types.CreateGroupInput): types.CreateGroupOutput, table
    createGroupMembership: function(Client, types.CreateGroupMembershipInput): types.CreateGroupMembershipOutput, table
    createUser: function(Client, types.CreateUserInput): types.CreateUserOutput, table
    deleteGroup: function(Client, types.DeleteGroupInput): types.DeleteGroupOutput, table
    deleteGroupMembership: function(Client, types.DeleteGroupMembershipInput): types.DeleteGroupMembershipOutput, table
    deleteUser: function(Client, types.DeleteUserInput): types.DeleteUserOutput, table
    describeGroup: function(Client, types.DescribeGroupInput): types.DescribeGroupOutput, table
    describeGroupMembership: function(Client, types.DescribeGroupMembershipInput): types.DescribeGroupMembershipOutput, table
    describeUser: function(Client, types.DescribeUserInput): types.DescribeUserOutput, table
    getGroupId: function(Client, types.GetGroupIdInput): types.GetGroupIdOutput, table
    getGroupMembershipId: function(Client, types.GetGroupMembershipIdInput): types.GetGroupMembershipIdOutput, table
    getUserId: function(Client, types.GetUserIdInput): types.GetUserIdOutput, table
    isMemberInGroups: function(Client, types.IsMemberInGroupsInput): types.IsMemberInGroupsOutput, table
    listGroupMemberships: function(Client, types.ListGroupMembershipsInput): types.ListGroupMembershipsOutput, table
    listGroupMembershipsForMember: function(Client, types.ListGroupMembershipsForMemberInput): types.ListGroupMembershipsForMemberOutput, table
    listGroups: function(Client, types.ListGroupsInput): types.ListGroupsOutput, table
    listUsers: function(Client, types.ListUsersInput): types.ListUsersOutput, table
    updateGroup: function(Client, types.UpdateGroupInput): types.UpdateGroupOutput, table
    updateUser: function(Client, types.UpdateUserInput): types.UpdateUserOutput, table
end

local record M
    new: function(table): Client
end

return M
