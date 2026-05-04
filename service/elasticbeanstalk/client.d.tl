local types = require("elasticbeanstalk.types")

local record Client
    abortEnvironmentUpdate: function(Client, types.AbortEnvironmentUpdateInput): types.AbortEnvironmentUpdateOutput, table
    applyEnvironmentManagedAction: function(Client, types.ApplyEnvironmentManagedActionInput): types.ApplyEnvironmentManagedActionOutput, table
    associateEnvironmentOperationsRole: function(Client, types.AssociateEnvironmentOperationsRoleInput): types.AssociateEnvironmentOperationsRoleOutput, table
    checkDNSAvailability: function(Client, types.CheckDNSAvailabilityInput): types.CheckDNSAvailabilityOutput, table
    composeEnvironments: function(Client, types.ComposeEnvironmentsInput): types.ComposeEnvironmentsOutput, table
    createApplication: function(Client, types.CreateApplicationInput): types.CreateApplicationOutput, table
    createApplicationVersion: function(Client, types.CreateApplicationVersionInput): types.CreateApplicationVersionOutput, table
    createConfigurationTemplate: function(Client, types.CreateConfigurationTemplateInput): types.CreateConfigurationTemplateOutput, table
    createEnvironment: function(Client, types.CreateEnvironmentInput): types.CreateEnvironmentOutput, table
    createPlatformVersion: function(Client, types.CreatePlatformVersionInput): types.CreatePlatformVersionOutput, table
    createStorageLocation: function(Client, types.CreateStorageLocationInput): types.CreateStorageLocationOutput, table
    deleteApplication: function(Client, types.DeleteApplicationInput): types.DeleteApplicationOutput, table
    deleteApplicationVersion: function(Client, types.DeleteApplicationVersionInput): types.DeleteApplicationVersionOutput, table
    deleteConfigurationTemplate: function(Client, types.DeleteConfigurationTemplateInput): types.DeleteConfigurationTemplateOutput, table
    deleteEnvironmentConfiguration: function(Client, types.DeleteEnvironmentConfigurationInput): types.DeleteEnvironmentConfigurationOutput, table
    deletePlatformVersion: function(Client, types.DeletePlatformVersionInput): types.DeletePlatformVersionOutput, table
    describeAccountAttributes: function(Client, types.DescribeAccountAttributesInput): types.DescribeAccountAttributesOutput, table
    describeApplications: function(Client, types.DescribeApplicationsInput): types.DescribeApplicationsOutput, table
    describeApplicationVersions: function(Client, types.DescribeApplicationVersionsInput): types.DescribeApplicationVersionsOutput, table
    describeConfigurationOptions: function(Client, types.DescribeConfigurationOptionsInput): types.DescribeConfigurationOptionsOutput, table
    describeConfigurationSettings: function(Client, types.DescribeConfigurationSettingsInput): types.DescribeConfigurationSettingsOutput, table
    describeEnvironmentHealth: function(Client, types.DescribeEnvironmentHealthInput): types.DescribeEnvironmentHealthOutput, table
    describeEnvironmentManagedActionHistory: function(Client, types.DescribeEnvironmentManagedActionHistoryInput): types.DescribeEnvironmentManagedActionHistoryOutput, table
    describeEnvironmentManagedActions: function(Client, types.DescribeEnvironmentManagedActionsInput): types.DescribeEnvironmentManagedActionsOutput, table
    describeEnvironmentResources: function(Client, types.DescribeEnvironmentResourcesInput): types.DescribeEnvironmentResourcesOutput, table
    describeEnvironments: function(Client, types.DescribeEnvironmentsInput): types.DescribeEnvironmentsOutput, table
    describeEvents: function(Client, types.DescribeEventsInput): types.DescribeEventsOutput, table
    describeInstancesHealth: function(Client, types.DescribeInstancesHealthInput): types.DescribeInstancesHealthOutput, table
    describePlatformVersion: function(Client, types.DescribePlatformVersionInput): types.DescribePlatformVersionOutput, table
    disassociateEnvironmentOperationsRole: function(Client, types.DisassociateEnvironmentOperationsRoleInput): types.DisassociateEnvironmentOperationsRoleOutput, table
    listAvailableSolutionStacks: function(Client, types.ListAvailableSolutionStacksInput): types.ListAvailableSolutionStacksOutput, table
    listPlatformBranches: function(Client, types.ListPlatformBranchesInput): types.ListPlatformBranchesOutput, table
    listPlatformVersions: function(Client, types.ListPlatformVersionsInput): types.ListPlatformVersionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    rebuildEnvironment: function(Client, types.RebuildEnvironmentInput): types.RebuildEnvironmentOutput, table
    requestEnvironmentInfo: function(Client, types.RequestEnvironmentInfoInput): types.RequestEnvironmentInfoOutput, table
    restartAppServer: function(Client, types.RestartAppServerInput): types.RestartAppServerOutput, table
    retrieveEnvironmentInfo: function(Client, types.RetrieveEnvironmentInfoInput): types.RetrieveEnvironmentInfoOutput, table
    swapEnvironmentCNAMEs: function(Client, types.SwapEnvironmentCNAMEsInput): types.SwapEnvironmentCNAMEsOutput, table
    terminateEnvironment: function(Client, types.TerminateEnvironmentInput): types.TerminateEnvironmentOutput, table
    updateApplication: function(Client, types.UpdateApplicationInput): types.UpdateApplicationOutput, table
    updateApplicationResourceLifecycle: function(Client, types.UpdateApplicationResourceLifecycleInput): types.UpdateApplicationResourceLifecycleOutput, table
    updateApplicationVersion: function(Client, types.UpdateApplicationVersionInput): types.UpdateApplicationVersionOutput, table
    updateConfigurationTemplate: function(Client, types.UpdateConfigurationTemplateInput): types.UpdateConfigurationTemplateOutput, table
    updateEnvironment: function(Client, types.UpdateEnvironmentInput): types.UpdateEnvironmentOutput, table
    updateTagsForResource: function(Client, types.UpdateTagsForResourceInput): types.UpdateTagsForResourceOutput, table
    validateConfigurationSettings: function(Client, types.ValidateConfigurationSettingsInput): types.ValidateConfigurationSettingsOutput, table
end

local record M
    new: function(table): Client
end

return M
