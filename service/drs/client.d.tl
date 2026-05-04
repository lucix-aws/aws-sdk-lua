local types = require("drs.types")

local record Client
    associateSourceNetworkStack: function(Client, types.AssociateSourceNetworkStackInput): types.AssociateSourceNetworkStackOutput, table
    createExtendedSourceServer: function(Client, types.CreateExtendedSourceServerInput): types.CreateExtendedSourceServerOutput, table
    createLaunchConfigurationTemplate: function(Client, types.CreateLaunchConfigurationTemplateInput): types.CreateLaunchConfigurationTemplateOutput, table
    createReplicationConfigurationTemplate: function(Client, types.CreateReplicationConfigurationTemplateInput): types.CreateReplicationConfigurationTemplateOutput, table
    createSourceNetwork: function(Client, types.CreateSourceNetworkInput): types.CreateSourceNetworkOutput, table
    deleteJob: function(Client, types.DeleteJobInput): types.DeleteJobOutput, table
    deleteLaunchAction: function(Client, types.DeleteLaunchActionInput): types.DeleteLaunchActionOutput, table
    deleteLaunchConfigurationTemplate: function(Client, types.DeleteLaunchConfigurationTemplateInput): types.DeleteLaunchConfigurationTemplateOutput, table
    deleteRecoveryInstance: function(Client, types.DeleteRecoveryInstanceInput): types.DeleteRecoveryInstanceOutput, table
    deleteReplicationConfigurationTemplate: function(Client, types.DeleteReplicationConfigurationTemplateInput): types.DeleteReplicationConfigurationTemplateOutput, table
    deleteSourceNetwork: function(Client, types.DeleteSourceNetworkInput): types.DeleteSourceNetworkOutput, table
    deleteSourceServer: function(Client, types.DeleteSourceServerInput): types.DeleteSourceServerOutput, table
    describeJobLogItems: function(Client, types.DescribeJobLogItemsInput): types.DescribeJobLogItemsOutput, table
    describeJobs: function(Client, types.DescribeJobsInput): types.DescribeJobsOutput, table
    describeLaunchConfigurationTemplates: function(Client, types.DescribeLaunchConfigurationTemplatesInput): types.DescribeLaunchConfigurationTemplatesOutput, table
    describeRecoveryInstances: function(Client, types.DescribeRecoveryInstancesInput): types.DescribeRecoveryInstancesOutput, table
    describeRecoverySnapshots: function(Client, types.DescribeRecoverySnapshotsInput): types.DescribeRecoverySnapshotsOutput, table
    describeReplicationConfigurationTemplates: function(Client, types.DescribeReplicationConfigurationTemplatesInput): types.DescribeReplicationConfigurationTemplatesOutput, table
    describeSourceNetworks: function(Client, types.DescribeSourceNetworksInput): types.DescribeSourceNetworksOutput, table
    describeSourceServers: function(Client, types.DescribeSourceServersInput): types.DescribeSourceServersOutput, table
    disconnectRecoveryInstance: function(Client, types.DisconnectRecoveryInstanceInput): types.DisconnectRecoveryInstanceOutput, table
    disconnectSourceServer: function(Client, types.DisconnectSourceServerInput): types.DisconnectSourceServerOutput, table
    exportSourceNetworkCfnTemplate: function(Client, types.ExportSourceNetworkCfnTemplateInput): types.ExportSourceNetworkCfnTemplateOutput, table
    getFailbackReplicationConfiguration: function(Client, types.GetFailbackReplicationConfigurationInput): types.GetFailbackReplicationConfigurationOutput, table
    getLaunchConfiguration: function(Client, types.GetLaunchConfigurationInput): types.GetLaunchConfigurationOutput, table
    getReplicationConfiguration: function(Client, types.GetReplicationConfigurationInput): types.GetReplicationConfigurationOutput, table
    initializeService: function(Client, types.InitializeServiceInput): types.InitializeServiceOutput, table
    listExtensibleSourceServers: function(Client, types.ListExtensibleSourceServersInput): types.ListExtensibleSourceServersOutput, table
    listLaunchActions: function(Client, types.ListLaunchActionsInput): types.ListLaunchActionsOutput, table
    listStagingAccounts: function(Client, types.ListStagingAccountsInput): types.ListStagingAccountsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putLaunchAction: function(Client, types.PutLaunchActionInput): types.PutLaunchActionOutput, table
    retryDataReplication: function(Client, types.RetryDataReplicationInput): types.RetryDataReplicationOutput, table
    reverseReplication: function(Client, types.ReverseReplicationInput): types.ReverseReplicationOutput, table
    startFailbackLaunch: function(Client, types.StartFailbackLaunchInput): types.StartFailbackLaunchOutput, table
    startRecovery: function(Client, types.StartRecoveryInput): types.StartRecoveryOutput, table
    startReplication: function(Client, types.StartReplicationInput): types.StartReplicationOutput, table
    startSourceNetworkRecovery: function(Client, types.StartSourceNetworkRecoveryInput): types.StartSourceNetworkRecoveryOutput, table
    startSourceNetworkReplication: function(Client, types.StartSourceNetworkReplicationInput): types.StartSourceNetworkReplicationOutput, table
    stopFailback: function(Client, types.StopFailbackInput): types.StopFailbackOutput, table
    stopReplication: function(Client, types.StopReplicationInput): types.StopReplicationOutput, table
    stopSourceNetworkReplication: function(Client, types.StopSourceNetworkReplicationInput): types.StopSourceNetworkReplicationOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    terminateRecoveryInstances: function(Client, types.TerminateRecoveryInstancesInput): types.TerminateRecoveryInstancesOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateFailbackReplicationConfiguration: function(Client, types.UpdateFailbackReplicationConfigurationInput): types.UpdateFailbackReplicationConfigurationOutput, table
    updateLaunchConfiguration: function(Client, types.UpdateLaunchConfigurationInput): types.UpdateLaunchConfigurationOutput, table
    updateLaunchConfigurationTemplate: function(Client, types.UpdateLaunchConfigurationTemplateInput): types.UpdateLaunchConfigurationTemplateOutput, table
    updateReplicationConfiguration: function(Client, types.UpdateReplicationConfigurationInput): types.UpdateReplicationConfigurationOutput, table
    updateReplicationConfigurationTemplate: function(Client, types.UpdateReplicationConfigurationTemplateInput): types.UpdateReplicationConfigurationTemplateOutput, table
end

local record M
    new: function(table): Client
end

return M
