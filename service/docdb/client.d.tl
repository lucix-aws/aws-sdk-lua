local types = require("docdb.types")

local record Client
    addSourceIdentifierToSubscription: function(Client, types.AddSourceIdentifierToSubscriptionInput): types.AddSourceIdentifierToSubscriptionOutput, table
    addTagsToResource: function(Client, types.AddTagsToResourceInput): types.AddTagsToResourceOutput, table
    applyPendingMaintenanceAction: function(Client, types.ApplyPendingMaintenanceActionInput): types.ApplyPendingMaintenanceActionOutput, table
    copyDBClusterParameterGroup: function(Client, types.CopyDBClusterParameterGroupInput): types.CopyDBClusterParameterGroupOutput, table
    copyDBClusterSnapshot: function(Client, types.CopyDBClusterSnapshotInput): types.CopyDBClusterSnapshotOutput, table
    createDBCluster: function(Client, types.CreateDBClusterInput): types.CreateDBClusterOutput, table
    createDBClusterParameterGroup: function(Client, types.CreateDBClusterParameterGroupInput): types.CreateDBClusterParameterGroupOutput, table
    createDBClusterSnapshot: function(Client, types.CreateDBClusterSnapshotInput): types.CreateDBClusterSnapshotOutput, table
    createDBInstance: function(Client, types.CreateDBInstanceInput): types.CreateDBInstanceOutput, table
    createDBSubnetGroup: function(Client, types.CreateDBSubnetGroupInput): types.CreateDBSubnetGroupOutput, table
    createEventSubscription: function(Client, types.CreateEventSubscriptionInput): types.CreateEventSubscriptionOutput, table
    createGlobalCluster: function(Client, types.CreateGlobalClusterInput): types.CreateGlobalClusterOutput, table
    deleteDBCluster: function(Client, types.DeleteDBClusterInput): types.DeleteDBClusterOutput, table
    deleteDBClusterParameterGroup: function(Client, types.DeleteDBClusterParameterGroupInput): types.DeleteDBClusterParameterGroupOutput, table
    deleteDBClusterSnapshot: function(Client, types.DeleteDBClusterSnapshotInput): types.DeleteDBClusterSnapshotOutput, table
    deleteDBInstance: function(Client, types.DeleteDBInstanceInput): types.DeleteDBInstanceOutput, table
    deleteDBSubnetGroup: function(Client, types.DeleteDBSubnetGroupInput): types.DeleteDBSubnetGroupOutput, table
    deleteEventSubscription: function(Client, types.DeleteEventSubscriptionInput): types.DeleteEventSubscriptionOutput, table
    deleteGlobalCluster: function(Client, types.DeleteGlobalClusterInput): types.DeleteGlobalClusterOutput, table
    describeCertificates: function(Client, types.DescribeCertificatesInput): types.DescribeCertificatesOutput, table
    describeDBClusterParameterGroups: function(Client, types.DescribeDBClusterParameterGroupsInput): types.DescribeDBClusterParameterGroupsOutput, table
    describeDBClusterParameters: function(Client, types.DescribeDBClusterParametersInput): types.DescribeDBClusterParametersOutput, table
    describeDBClusters: function(Client, types.DescribeDBClustersInput): types.DescribeDBClustersOutput, table
    describeDBClusterSnapshotAttributes: function(Client, types.DescribeDBClusterSnapshotAttributesInput): types.DescribeDBClusterSnapshotAttributesOutput, table
    describeDBClusterSnapshots: function(Client, types.DescribeDBClusterSnapshotsInput): types.DescribeDBClusterSnapshotsOutput, table
    describeDBEngineVersions: function(Client, types.DescribeDBEngineVersionsInput): types.DescribeDBEngineVersionsOutput, table
    describeDBInstances: function(Client, types.DescribeDBInstancesInput): types.DescribeDBInstancesOutput, table
    describeDBSubnetGroups: function(Client, types.DescribeDBSubnetGroupsInput): types.DescribeDBSubnetGroupsOutput, table
    describeEngineDefaultClusterParameters: function(Client, types.DescribeEngineDefaultClusterParametersInput): types.DescribeEngineDefaultClusterParametersOutput, table
    describeEventCategories: function(Client, types.DescribeEventCategoriesInput): types.DescribeEventCategoriesOutput, table
    describeEvents: function(Client, types.DescribeEventsInput): types.DescribeEventsOutput, table
    describeEventSubscriptions: function(Client, types.DescribeEventSubscriptionsInput): types.DescribeEventSubscriptionsOutput, table
    describeGlobalClusters: function(Client, types.DescribeGlobalClustersInput): types.DescribeGlobalClustersOutput, table
    describeOrderableDBInstanceOptions: function(Client, types.DescribeOrderableDBInstanceOptionsInput): types.DescribeOrderableDBInstanceOptionsOutput, table
    describePendingMaintenanceActions: function(Client, types.DescribePendingMaintenanceActionsInput): types.DescribePendingMaintenanceActionsOutput, table
    failoverDBCluster: function(Client, types.FailoverDBClusterInput): types.FailoverDBClusterOutput, table
    failoverGlobalCluster: function(Client, types.FailoverGlobalClusterInput): types.FailoverGlobalClusterOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    modifyDBCluster: function(Client, types.ModifyDBClusterInput): types.ModifyDBClusterOutput, table
    modifyDBClusterParameterGroup: function(Client, types.ModifyDBClusterParameterGroupInput): types.ModifyDBClusterParameterGroupOutput, table
    modifyDBClusterSnapshotAttribute: function(Client, types.ModifyDBClusterSnapshotAttributeInput): types.ModifyDBClusterSnapshotAttributeOutput, table
    modifyDBInstance: function(Client, types.ModifyDBInstanceInput): types.ModifyDBInstanceOutput, table
    modifyDBSubnetGroup: function(Client, types.ModifyDBSubnetGroupInput): types.ModifyDBSubnetGroupOutput, table
    modifyEventSubscription: function(Client, types.ModifyEventSubscriptionInput): types.ModifyEventSubscriptionOutput, table
    modifyGlobalCluster: function(Client, types.ModifyGlobalClusterInput): types.ModifyGlobalClusterOutput, table
    rebootDBInstance: function(Client, types.RebootDBInstanceInput): types.RebootDBInstanceOutput, table
    removeFromGlobalCluster: function(Client, types.RemoveFromGlobalClusterInput): types.RemoveFromGlobalClusterOutput, table
    removeSourceIdentifierFromSubscription: function(Client, types.RemoveSourceIdentifierFromSubscriptionInput): types.RemoveSourceIdentifierFromSubscriptionOutput, table
    removeTagsFromResource: function(Client, types.RemoveTagsFromResourceInput): types.RemoveTagsFromResourceOutput, table
    resetDBClusterParameterGroup: function(Client, types.ResetDBClusterParameterGroupInput): types.ResetDBClusterParameterGroupOutput, table
    restoreDBClusterFromSnapshot: function(Client, types.RestoreDBClusterFromSnapshotInput): types.RestoreDBClusterFromSnapshotOutput, table
    restoreDBClusterToPointInTime: function(Client, types.RestoreDBClusterToPointInTimeInput): types.RestoreDBClusterToPointInTimeOutput, table
    startDBCluster: function(Client, types.StartDBClusterInput): types.StartDBClusterOutput, table
    stopDBCluster: function(Client, types.StopDBClusterInput): types.StopDBClusterOutput, table
    switchoverGlobalCluster: function(Client, types.SwitchoverGlobalClusterInput): types.SwitchoverGlobalClusterOutput, table
end

local record M
    new: function(table): Client
end

return M
