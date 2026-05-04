local types = require("cloud9.types")

local record Client
    createEnvironmentEC2: function(Client, types.CreateEnvironmentEC2Input): types.CreateEnvironmentEC2Output, table
    createEnvironmentMembership: function(Client, types.CreateEnvironmentMembershipInput): types.CreateEnvironmentMembershipOutput, table
    deleteEnvironment: function(Client, types.DeleteEnvironmentInput): types.DeleteEnvironmentOutput, table
    deleteEnvironmentMembership: function(Client, types.DeleteEnvironmentMembershipInput): types.DeleteEnvironmentMembershipOutput, table
    describeEnvironmentMemberships: function(Client, types.DescribeEnvironmentMembershipsInput): types.DescribeEnvironmentMembershipsOutput, table
    describeEnvironments: function(Client, types.DescribeEnvironmentsInput): types.DescribeEnvironmentsOutput, table
    describeEnvironmentStatus: function(Client, types.DescribeEnvironmentStatusInput): types.DescribeEnvironmentStatusOutput, table
    listEnvironments: function(Client, types.ListEnvironmentsInput): types.ListEnvironmentsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateEnvironment: function(Client, types.UpdateEnvironmentInput): types.UpdateEnvironmentOutput, table
    updateEnvironmentMembership: function(Client, types.UpdateEnvironmentMembershipInput): types.UpdateEnvironmentMembershipOutput, table
end

local record M
    new: function(table): Client
end

return M
