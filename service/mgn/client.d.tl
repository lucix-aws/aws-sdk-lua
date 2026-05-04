local types = require("mgn.types")

local record Client
    archiveApplication: function(Client, types.ArchiveApplicationInput): types.ArchiveApplicationOutput, table
    archiveWave: function(Client, types.ArchiveWaveInput): types.ArchiveWaveOutput, table
    associateApplications: function(Client, types.AssociateApplicationsInput): types.AssociateApplicationsOutput, table
    associateSourceServers: function(Client, types.AssociateSourceServersInput): types.AssociateSourceServersOutput, table
    changeServerLifeCycleState: function(Client, types.ChangeServerLifeCycleStateInput): types.ChangeServerLifeCycleStateOutput, table
    createApplication: function(Client, types.CreateApplicationInput): types.CreateApplicationOutput, table
    createConnector: function(Client, types.CreateConnectorInput): types.CreateConnectorOutput, table
    createLaunchConfigurationTemplate: function(Client, types.CreateLaunchConfigurationTemplateInput): types.CreateLaunchConfigurationTemplateOutput, table
    createNetworkMigrationDefinition: function(Client, types.CreateNetworkMigrationDefinitionInput): types.CreateNetworkMigrationDefinitionOutput, table
    createReplicationConfigurationTemplate: function(Client, types.CreateReplicationConfigurationTemplateInput): types.CreateReplicationConfigurationTemplateOutput, table
    createWave: function(Client, types.CreateWaveInput): types.CreateWaveOutput, table
    deleteApplication: function(Client, types.DeleteApplicationInput): types.DeleteApplicationOutput, table
    deleteConnector: function(Client, types.DeleteConnectorInput): types.DeleteConnectorOutput, table
    deleteJob: function(Client, types.DeleteJobInput): types.DeleteJobOutput, table
    deleteLaunchConfigurationTemplate: function(Client, types.DeleteLaunchConfigurationTemplateInput): types.DeleteLaunchConfigurationTemplateOutput, table
    deleteNetworkMigrationDefinition: function(Client, types.DeleteNetworkMigrationDefinitionInput): types.DeleteNetworkMigrationDefinitionOutput, table
    deleteReplicationConfigurationTemplate: function(Client, types.DeleteReplicationConfigurationTemplateInput): types.DeleteReplicationConfigurationTemplateOutput, table
    deleteSourceServer: function(Client, types.DeleteSourceServerInput): types.DeleteSourceServerOutput, table
    deleteVcenterClient: function(Client, types.DeleteVcenterClientInput): types.DeleteVcenterClientOutput, table
    deleteWave: function(Client, types.DeleteWaveInput): types.DeleteWaveOutput, table
    describeJobLogItems: function(Client, types.DescribeJobLogItemsInput): types.DescribeJobLogItemsOutput, table
    describeJobs: function(Client, types.DescribeJobsInput): types.DescribeJobsOutput, table
    describeLaunchConfigurationTemplates: function(Client, types.DescribeLaunchConfigurationTemplatesInput): types.DescribeLaunchConfigurationTemplatesOutput, table
    describeReplicationConfigurationTemplates: function(Client, types.DescribeReplicationConfigurationTemplatesInput): types.DescribeReplicationConfigurationTemplatesOutput, table
    describeSourceServers: function(Client, types.DescribeSourceServersInput): types.DescribeSourceServersOutput, table
    describeVcenterClients: function(Client, types.DescribeVcenterClientsInput): types.DescribeVcenterClientsOutput, table
    disassociateApplications: function(Client, types.DisassociateApplicationsInput): types.DisassociateApplicationsOutput, table
    disassociateSourceServers: function(Client, types.DisassociateSourceServersInput): types.DisassociateSourceServersOutput, table
    disconnectFromService: function(Client, types.DisconnectFromServiceInput): types.DisconnectFromServiceOutput, table
    finalizeCutover: function(Client, types.FinalizeCutoverInput): types.FinalizeCutoverOutput, table
    getLaunchConfiguration: function(Client, types.GetLaunchConfigurationInput): types.GetLaunchConfigurationOutput, table
    getNetworkMigrationDefinition: function(Client, types.GetNetworkMigrationDefinitionInput): types.GetNetworkMigrationDefinitionOutput, table
    getNetworkMigrationMapperSegmentConstruct: function(Client, types.GetNetworkMigrationMapperSegmentConstructInput): types.GetNetworkMigrationMapperSegmentConstructOutput, table
    getReplicationConfiguration: function(Client, types.GetReplicationConfigurationInput): types.GetReplicationConfigurationOutput, table
    initializeService: function(Client, types.InitializeServiceInput): types.InitializeServiceOutput, table
    listApplications: function(Client, types.ListApplicationsInput): types.ListApplicationsOutput, table
    listConnectors: function(Client, types.ListConnectorsInput): types.ListConnectorsOutput, table
    listExportErrors: function(Client, types.ListExportErrorsInput): types.ListExportErrorsOutput, table
    listExports: function(Client, types.ListExportsInput): types.ListExportsOutput, table
    listImportErrors: function(Client, types.ListImportErrorsInput): types.ListImportErrorsOutput, table
    listImportFileEnrichments: function(Client, types.ListImportFileEnrichmentsInput): types.ListImportFileEnrichmentsOutput, table
    listImports: function(Client, types.ListImportsInput): types.ListImportsOutput, table
    listManagedAccounts: function(Client, types.ListManagedAccountsInput): types.ListManagedAccountsOutput, table
    listNetworkMigrationAnalyses: function(Client, types.ListNetworkMigrationAnalysesInput): types.ListNetworkMigrationAnalysesOutput, table
    listNetworkMigrationAnalysisResults: function(Client, types.ListNetworkMigrationAnalysisResultsInput): types.ListNetworkMigrationAnalysisResultsOutput, table
    listNetworkMigrationCodeGenerations: function(Client, types.ListNetworkMigrationCodeGenerationsInput): types.ListNetworkMigrationCodeGenerationsOutput, table
    listNetworkMigrationCodeGenerationSegments: function(Client, types.ListNetworkMigrationCodeGenerationSegmentsInput): types.ListNetworkMigrationCodeGenerationSegmentsOutput, table
    listNetworkMigrationDefinitions: function(Client, types.ListNetworkMigrationDefinitionsInput): types.ListNetworkMigrationDefinitionsOutput, table
    listNetworkMigrationDeployedStacks: function(Client, types.ListNetworkMigrationDeployedStacksInput): types.ListNetworkMigrationDeployedStacksOutput, table
    listNetworkMigrationDeployments: function(Client, types.ListNetworkMigrationDeploymentsInput): types.ListNetworkMigrationDeploymentsOutput, table
    listNetworkMigrationExecutions: function(Client, types.ListNetworkMigrationExecutionsInput): types.ListNetworkMigrationExecutionsOutput, table
    listNetworkMigrationMapperSegmentConstructs: function(Client, types.ListNetworkMigrationMapperSegmentConstructsInput): types.ListNetworkMigrationMapperSegmentConstructsOutput, table
    listNetworkMigrationMapperSegments: function(Client, types.ListNetworkMigrationMapperSegmentsInput): types.ListNetworkMigrationMapperSegmentsOutput, table
    listNetworkMigrationMappings: function(Client, types.ListNetworkMigrationMappingsInput): types.ListNetworkMigrationMappingsOutput, table
    listNetworkMigrationMappingUpdates: function(Client, types.ListNetworkMigrationMappingUpdatesInput): types.ListNetworkMigrationMappingUpdatesOutput, table
    listSourceServerActions: function(Client, types.ListSourceServerActionsInput): types.ListSourceServerActionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTemplateActions: function(Client, types.ListTemplateActionsInput): types.ListTemplateActionsOutput, table
    listWaves: function(Client, types.ListWavesInput): types.ListWavesOutput, table
    markAsArchived: function(Client, types.MarkAsArchivedInput): types.MarkAsArchivedOutput, table
    pauseReplication: function(Client, types.PauseReplicationInput): types.PauseReplicationOutput, table
    putSourceServerAction: function(Client, types.PutSourceServerActionInput): types.PutSourceServerActionOutput, table
    putTemplateAction: function(Client, types.PutTemplateActionInput): types.PutTemplateActionOutput, table
    removeSourceServerAction: function(Client, types.RemoveSourceServerActionInput): types.RemoveSourceServerActionOutput, table
    removeTemplateAction: function(Client, types.RemoveTemplateActionInput): types.RemoveTemplateActionOutput, table
    resumeReplication: function(Client, types.ResumeReplicationInput): types.ResumeReplicationOutput, table
    retryDataReplication: function(Client, types.RetryDataReplicationInput): types.RetryDataReplicationOutput, table
    startCutover: function(Client, types.StartCutoverInput): types.StartCutoverOutput, table
    startExport: function(Client, types.StartExportInput): types.StartExportOutput, table
    startImport: function(Client, types.StartImportInput): types.StartImportOutput, table
    startImportFileEnrichment: function(Client, types.StartImportFileEnrichmentInput): types.StartImportFileEnrichmentOutput, table
    startNetworkMigrationAnalysis: function(Client, types.StartNetworkMigrationAnalysisInput): types.StartNetworkMigrationAnalysisOutput, table
    startNetworkMigrationCodeGeneration: function(Client, types.StartNetworkMigrationCodeGenerationInput): types.StartNetworkMigrationCodeGenerationOutput, table
    startNetworkMigrationDeployment: function(Client, types.StartNetworkMigrationDeploymentInput): types.StartNetworkMigrationDeploymentOutput, table
    startNetworkMigrationMapping: function(Client, types.StartNetworkMigrationMappingInput): types.StartNetworkMigrationMappingOutput, table
    startNetworkMigrationMappingUpdate: function(Client, types.StartNetworkMigrationMappingUpdateInput): types.StartNetworkMigrationMappingUpdateOutput, table
    startReplication: function(Client, types.StartReplicationInput): types.StartReplicationOutput, table
    startTest: function(Client, types.StartTestInput): types.StartTestOutput, table
    stopReplication: function(Client, types.StopReplicationInput): types.StopReplicationOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    terminateTargetInstances: function(Client, types.TerminateTargetInstancesInput): types.TerminateTargetInstancesOutput, table
    unarchiveApplication: function(Client, types.UnarchiveApplicationInput): types.UnarchiveApplicationOutput, table
    unarchiveWave: function(Client, types.UnarchiveWaveInput): types.UnarchiveWaveOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateApplication: function(Client, types.UpdateApplicationInput): types.UpdateApplicationOutput, table
    updateConnector: function(Client, types.UpdateConnectorInput): types.UpdateConnectorOutput, table
    updateLaunchConfiguration: function(Client, types.UpdateLaunchConfigurationInput): types.UpdateLaunchConfigurationOutput, table
    updateLaunchConfigurationTemplate: function(Client, types.UpdateLaunchConfigurationTemplateInput): types.UpdateLaunchConfigurationTemplateOutput, table
    updateNetworkMigrationDefinition: function(Client, types.UpdateNetworkMigrationDefinitionInput): types.UpdateNetworkMigrationDefinitionOutput, table
    updateNetworkMigrationMapperSegment: function(Client, types.UpdateNetworkMigrationMapperSegmentInput): types.UpdateNetworkMigrationMapperSegmentOutput, table
    updateReplicationConfiguration: function(Client, types.UpdateReplicationConfigurationInput): types.UpdateReplicationConfigurationOutput, table
    updateReplicationConfigurationTemplate: function(Client, types.UpdateReplicationConfigurationTemplateInput): types.UpdateReplicationConfigurationTemplateOutput, table
    updateSourceServer: function(Client, types.UpdateSourceServerInput): types.UpdateSourceServerOutput, table
    updateSourceServerReplicationType: function(Client, types.UpdateSourceServerReplicationTypeInput): types.UpdateSourceServerReplicationTypeOutput, table
    updateWave: function(Client, types.UpdateWaveInput): types.UpdateWaveOutput, table
end

local record M
    new: function(table): Client
end

return M
