local types = require("dynamodb.types")

local record Client
    batchExecuteStatement: function(Client, types.BatchExecuteStatementInput): types.BatchExecuteStatementOutput, table
    batchGetItem: function(Client, types.BatchGetItemInput): types.BatchGetItemOutput, table
    batchWriteItem: function(Client, types.BatchWriteItemInput): types.BatchWriteItemOutput, table
    createBackup: function(Client, types.CreateBackupInput): types.CreateBackupOutput, table
    createGlobalTable: function(Client, types.CreateGlobalTableInput): types.CreateGlobalTableOutput, table
    createTable: function(Client, types.CreateTableInput): types.CreateTableOutput, table
    deleteBackup: function(Client, types.DeleteBackupInput): types.DeleteBackupOutput, table
    deleteItem: function(Client, types.DeleteItemInput): types.DeleteItemOutput, table
    deleteResourcePolicy: function(Client, types.DeleteResourcePolicyInput): types.DeleteResourcePolicyOutput, table
    deleteTable: function(Client, types.DeleteTableInput): types.DeleteTableOutput, table
    describeBackup: function(Client, types.DescribeBackupInput): types.DescribeBackupOutput, table
    describeContinuousBackups: function(Client, types.DescribeContinuousBackupsInput): types.DescribeContinuousBackupsOutput, table
    describeContributorInsights: function(Client, types.DescribeContributorInsightsInput): types.DescribeContributorInsightsOutput, table
    describeEndpoints: function(Client, types.DescribeEndpointsInput): types.DescribeEndpointsOutput, table
    describeExport: function(Client, types.DescribeExportInput): types.DescribeExportOutput, table
    describeGlobalTable: function(Client, types.DescribeGlobalTableInput): types.DescribeGlobalTableOutput, table
    describeGlobalTableSettings: function(Client, types.DescribeGlobalTableSettingsInput): types.DescribeGlobalTableSettingsOutput, table
    describeImport: function(Client, types.DescribeImportInput): types.DescribeImportOutput, table
    describeKinesisStreamingDestination: function(Client, types.DescribeKinesisStreamingDestinationInput): types.DescribeKinesisStreamingDestinationOutput, table
    describeLimits: function(Client, types.DescribeLimitsInput): types.DescribeLimitsOutput, table
    describeTable: function(Client, types.DescribeTableInput): types.DescribeTableOutput, table
    describeTableReplicaAutoScaling: function(Client, types.DescribeTableReplicaAutoScalingInput): types.DescribeTableReplicaAutoScalingOutput, table
    describeTimeToLive: function(Client, types.DescribeTimeToLiveInput): types.DescribeTimeToLiveOutput, table
    disableKinesisStreamingDestination: function(Client, types.DisableKinesisStreamingDestinationInput): types.DisableKinesisStreamingDestinationOutput, table
    enableKinesisStreamingDestination: function(Client, types.EnableKinesisStreamingDestinationInput): types.EnableKinesisStreamingDestinationOutput, table
    executeStatement: function(Client, types.ExecuteStatementInput): types.ExecuteStatementOutput, table
    executeTransaction: function(Client, types.ExecuteTransactionInput): types.ExecuteTransactionOutput, table
    exportTableToPointInTime: function(Client, types.ExportTableToPointInTimeInput): types.ExportTableToPointInTimeOutput, table
    getItem: function(Client, types.GetItemInput): types.GetItemOutput, table
    getResourcePolicy: function(Client, types.GetResourcePolicyInput): types.GetResourcePolicyOutput, table
    importTable: function(Client, types.ImportTableInput): types.ImportTableOutput, table
    listBackups: function(Client, types.ListBackupsInput): types.ListBackupsOutput, table
    listContributorInsights: function(Client, types.ListContributorInsightsInput): types.ListContributorInsightsOutput, table
    listExports: function(Client, types.ListExportsInput): types.ListExportsOutput, table
    listGlobalTables: function(Client, types.ListGlobalTablesInput): types.ListGlobalTablesOutput, table
    listImports: function(Client, types.ListImportsInput): types.ListImportsOutput, table
    listTables: function(Client, types.ListTablesInput): types.ListTablesOutput, table
    listTagsOfResource: function(Client, types.ListTagsOfResourceInput): types.ListTagsOfResourceOutput, table
    putItem: function(Client, types.PutItemInput): types.PutItemOutput, table
    putResourcePolicy: function(Client, types.PutResourcePolicyInput): types.PutResourcePolicyOutput, table
    query: function(Client, types.QueryInput): types.QueryOutput, table
    restoreTableFromBackup: function(Client, types.RestoreTableFromBackupInput): types.RestoreTableFromBackupOutput, table
    restoreTableToPointInTime: function(Client, types.RestoreTableToPointInTimeInput): types.RestoreTableToPointInTimeOutput, table
    scan: function(Client, types.ScanInput): types.ScanOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    transactGetItems: function(Client, types.TransactGetItemsInput): types.TransactGetItemsOutput, table
    transactWriteItems: function(Client, types.TransactWriteItemsInput): types.TransactWriteItemsOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateContinuousBackups: function(Client, types.UpdateContinuousBackupsInput): types.UpdateContinuousBackupsOutput, table
    updateContributorInsights: function(Client, types.UpdateContributorInsightsInput): types.UpdateContributorInsightsOutput, table
    updateGlobalTable: function(Client, types.UpdateGlobalTableInput): types.UpdateGlobalTableOutput, table
    updateGlobalTableSettings: function(Client, types.UpdateGlobalTableSettingsInput): types.UpdateGlobalTableSettingsOutput, table
    updateItem: function(Client, types.UpdateItemInput): types.UpdateItemOutput, table
    updateKinesisStreamingDestination: function(Client, types.UpdateKinesisStreamingDestinationInput): types.UpdateKinesisStreamingDestinationOutput, table
    updateTable: function(Client, types.UpdateTableInput): types.UpdateTableOutput, table
    updateTableReplicaAutoScaling: function(Client, types.UpdateTableReplicaAutoScalingInput): types.UpdateTableReplicaAutoScalingOutput, table
    updateTimeToLive: function(Client, types.UpdateTimeToLiveInput): types.UpdateTimeToLiveOutput, table
end

local record M
    new: function(table): Client
end

return M
