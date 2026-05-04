local types = require("synthetics.types")

local record Client
    associateResource: function(Client, types.AssociateResourceInput): types.AssociateResourceOutput, table
    createCanary: function(Client, types.CreateCanaryInput): types.CreateCanaryOutput, table
    createGroup: function(Client, types.CreateGroupInput): types.CreateGroupOutput, table
    deleteCanary: function(Client, types.DeleteCanaryInput): types.DeleteCanaryOutput, table
    deleteGroup: function(Client, types.DeleteGroupInput): types.DeleteGroupOutput, table
    describeCanaries: function(Client, types.DescribeCanariesInput): types.DescribeCanariesOutput, table
    describeCanariesLastRun: function(Client, types.DescribeCanariesLastRunInput): types.DescribeCanariesLastRunOutput, table
    describeRuntimeVersions: function(Client, types.DescribeRuntimeVersionsInput): types.DescribeRuntimeVersionsOutput, table
    disassociateResource: function(Client, types.DisassociateResourceInput): types.DisassociateResourceOutput, table
    getCanary: function(Client, types.GetCanaryInput): types.GetCanaryOutput, table
    getCanaryRuns: function(Client, types.GetCanaryRunsInput): types.GetCanaryRunsOutput, table
    getGroup: function(Client, types.GetGroupInput): types.GetGroupOutput, table
    listAssociatedGroups: function(Client, types.ListAssociatedGroupsInput): types.ListAssociatedGroupsOutput, table
    listGroupResources: function(Client, types.ListGroupResourcesInput): types.ListGroupResourcesOutput, table
    listGroups: function(Client, types.ListGroupsInput): types.ListGroupsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startCanary: function(Client, types.StartCanaryInput): types.StartCanaryOutput, table
    startCanaryDryRun: function(Client, types.StartCanaryDryRunInput): types.StartCanaryDryRunOutput, table
    stopCanary: function(Client, types.StopCanaryInput): types.StopCanaryOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateCanary: function(Client, types.UpdateCanaryInput): types.UpdateCanaryOutput, table
end

local record M
    new: function(table): Client
end

return M
