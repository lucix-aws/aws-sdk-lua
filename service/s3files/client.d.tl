local types = require("s3files.types")

local record Client
    createAccessPoint: function(Client, types.CreateAccessPointInput): types.CreateAccessPointOutput, table
    createFileSystem: function(Client, types.CreateFileSystemInput): types.CreateFileSystemOutput, table
    createMountTarget: function(Client, types.CreateMountTargetInput): types.CreateMountTargetOutput, table
    deleteAccessPoint: function(Client, types.DeleteAccessPointInput): types.DeleteAccessPointOutput, table
    deleteFileSystem: function(Client, types.DeleteFileSystemInput): types.DeleteFileSystemOutput, table
    deleteFileSystemPolicy: function(Client, types.DeleteFileSystemPolicyInput): types.DeleteFileSystemPolicyOutput, table
    deleteMountTarget: function(Client, types.DeleteMountTargetInput): types.DeleteMountTargetOutput, table
    getAccessPoint: function(Client, types.GetAccessPointInput): types.GetAccessPointOutput, table
    getFileSystem: function(Client, types.GetFileSystemInput): types.GetFileSystemOutput, table
    getFileSystemPolicy: function(Client, types.GetFileSystemPolicyInput): types.GetFileSystemPolicyOutput, table
    getMountTarget: function(Client, types.GetMountTargetInput): types.GetMountTargetOutput, table
    getSynchronizationConfiguration: function(Client, types.GetSynchronizationConfigurationInput): types.GetSynchronizationConfigurationOutput, table
    listAccessPoints: function(Client, types.ListAccessPointsInput): types.ListAccessPointsOutput, table
    listFileSystems: function(Client, types.ListFileSystemsInput): types.ListFileSystemsOutput, table
    listMountTargets: function(Client, types.ListMountTargetsInput): types.ListMountTargetsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putFileSystemPolicy: function(Client, types.PutFileSystemPolicyInput): types.PutFileSystemPolicyOutput, table
    putSynchronizationConfiguration: function(Client, types.PutSynchronizationConfigurationInput): types.PutSynchronizationConfigurationOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateMountTarget: function(Client, types.UpdateMountTargetInput): types.UpdateMountTargetOutput, table
end

local record M
    new: function(table): Client
end

return M
