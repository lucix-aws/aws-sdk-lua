local types = require("workspacesinstances.types")

local record Client
    associateVolume: function(Client, types.AssociateVolumeInput): types.AssociateVolumeOutput, table
    createVolume: function(Client, types.CreateVolumeInput): types.CreateVolumeOutput, table
    createWorkspaceInstance: function(Client, types.CreateWorkspaceInstanceInput): types.CreateWorkspaceInstanceOutput, table
    deleteVolume: function(Client, types.DeleteVolumeInput): types.DeleteVolumeOutput, table
    deleteWorkspaceInstance: function(Client, types.DeleteWorkspaceInstanceInput): types.DeleteWorkspaceInstanceOutput, table
    disassociateVolume: function(Client, types.DisassociateVolumeInput): types.DisassociateVolumeOutput, table
    getWorkspaceInstance: function(Client, types.GetWorkspaceInstanceInput): types.GetWorkspaceInstanceOutput, table
    listInstanceTypes: function(Client, types.ListInstanceTypesInput): types.ListInstanceTypesOutput, table
    listRegions: function(Client, types.ListRegionsInput): types.ListRegionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listWorkspaceInstances: function(Client, types.ListWorkspaceInstancesInput): types.ListWorkspaceInstancesOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
