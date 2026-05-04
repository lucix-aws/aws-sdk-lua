local types = require("cloudhsmv2.types")

local record Client
    copyBackupToRegion: function(Client, types.CopyBackupToRegionInput): types.CopyBackupToRegionOutput, table
    createCluster: function(Client, types.CreateClusterInput): types.CreateClusterOutput, table
    createHsm: function(Client, types.CreateHsmInput): types.CreateHsmOutput, table
    deleteBackup: function(Client, types.DeleteBackupInput): types.DeleteBackupOutput, table
    deleteCluster: function(Client, types.DeleteClusterInput): types.DeleteClusterOutput, table
    deleteHsm: function(Client, types.DeleteHsmInput): types.DeleteHsmOutput, table
    deleteResourcePolicy: function(Client, types.DeleteResourcePolicyInput): types.DeleteResourcePolicyOutput, table
    describeBackups: function(Client, types.DescribeBackupsInput): types.DescribeBackupsOutput, table
    describeClusters: function(Client, types.DescribeClustersInput): types.DescribeClustersOutput, table
    getResourcePolicy: function(Client, types.GetResourcePolicyInput): types.GetResourcePolicyOutput, table
    initializeCluster: function(Client, types.InitializeClusterInput): types.InitializeClusterOutput, table
    listTags: function(Client, types.ListTagsInput): types.ListTagsOutput, table
    modifyBackupAttributes: function(Client, types.ModifyBackupAttributesInput): types.ModifyBackupAttributesOutput, table
    modifyCluster: function(Client, types.ModifyClusterInput): types.ModifyClusterOutput, table
    putResourcePolicy: function(Client, types.PutResourcePolicyInput): types.PutResourcePolicyOutput, table
    restoreBackup: function(Client, types.RestoreBackupInput): types.RestoreBackupOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
