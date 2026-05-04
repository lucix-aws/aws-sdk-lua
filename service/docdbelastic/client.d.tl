local types = require("docdbelastic.types")

local record Client
    applyPendingMaintenanceAction: function(Client, types.ApplyPendingMaintenanceActionInput): types.ApplyPendingMaintenanceActionOutput, table
    copyClusterSnapshot: function(Client, types.CopyClusterSnapshotInput): types.CopyClusterSnapshotOutput, table
    createCluster: function(Client, types.CreateClusterInput): types.CreateClusterOutput, table
    createClusterSnapshot: function(Client, types.CreateClusterSnapshotInput): types.CreateClusterSnapshotOutput, table
    deleteCluster: function(Client, types.DeleteClusterInput): types.DeleteClusterOutput, table
    deleteClusterSnapshot: function(Client, types.DeleteClusterSnapshotInput): types.DeleteClusterSnapshotOutput, table
    getCluster: function(Client, types.GetClusterInput): types.GetClusterOutput, table
    getClusterSnapshot: function(Client, types.GetClusterSnapshotInput): types.GetClusterSnapshotOutput, table
    getPendingMaintenanceAction: function(Client, types.GetPendingMaintenanceActionInput): types.GetPendingMaintenanceActionOutput, table
    listClusters: function(Client, types.ListClustersInput): types.ListClustersOutput, table
    listClusterSnapshots: function(Client, types.ListClusterSnapshotsInput): types.ListClusterSnapshotsOutput, table
    listPendingMaintenanceActions: function(Client, types.ListPendingMaintenanceActionsInput): types.ListPendingMaintenanceActionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    restoreClusterFromSnapshot: function(Client, types.RestoreClusterFromSnapshotInput): types.RestoreClusterFromSnapshotOutput, table
    startCluster: function(Client, types.StartClusterInput): types.StartClusterOutput, table
    stopCluster: function(Client, types.StopClusterInput): types.StopClusterOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateCluster: function(Client, types.UpdateClusterInput): types.UpdateClusterOutput, table
end

local record M
    new: function(table): Client
end

return M
