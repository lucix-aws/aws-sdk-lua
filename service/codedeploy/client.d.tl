local types = require("codedeploy.types")

local record Client
    addTagsToOnPremisesInstances: function(Client, types.AddTagsToOnPremisesInstancesInput): types.AddTagsToOnPremisesInstancesOutput, table
    batchGetApplicationRevisions: function(Client, types.BatchGetApplicationRevisionsInput): types.BatchGetApplicationRevisionsOutput, table
    batchGetApplications: function(Client, types.BatchGetApplicationsInput): types.BatchGetApplicationsOutput, table
    batchGetDeploymentGroups: function(Client, types.BatchGetDeploymentGroupsInput): types.BatchGetDeploymentGroupsOutput, table
    batchGetDeploymentInstances: function(Client, types.BatchGetDeploymentInstancesInput): types.BatchGetDeploymentInstancesOutput, table
    batchGetDeployments: function(Client, types.BatchGetDeploymentsInput): types.BatchGetDeploymentsOutput, table
    batchGetDeploymentTargets: function(Client, types.BatchGetDeploymentTargetsInput): types.BatchGetDeploymentTargetsOutput, table
    batchGetOnPremisesInstances: function(Client, types.BatchGetOnPremisesInstancesInput): types.BatchGetOnPremisesInstancesOutput, table
    continueDeployment: function(Client, types.ContinueDeploymentInput): types.ContinueDeploymentOutput, table
    createApplication: function(Client, types.CreateApplicationInput): types.CreateApplicationOutput, table
    createDeployment: function(Client, types.CreateDeploymentInput): types.CreateDeploymentOutput, table
    createDeploymentConfig: function(Client, types.CreateDeploymentConfigInput): types.CreateDeploymentConfigOutput, table
    createDeploymentGroup: function(Client, types.CreateDeploymentGroupInput): types.CreateDeploymentGroupOutput, table
    deleteApplication: function(Client, types.DeleteApplicationInput): types.DeleteApplicationOutput, table
    deleteDeploymentConfig: function(Client, types.DeleteDeploymentConfigInput): types.DeleteDeploymentConfigOutput, table
    deleteDeploymentGroup: function(Client, types.DeleteDeploymentGroupInput): types.DeleteDeploymentGroupOutput, table
    deleteGitHubAccountToken: function(Client, types.DeleteGitHubAccountTokenInput): types.DeleteGitHubAccountTokenOutput, table
    deleteResourcesByExternalId: function(Client, types.DeleteResourcesByExternalIdInput): types.DeleteResourcesByExternalIdOutput, table
    deregisterOnPremisesInstance: function(Client, types.DeregisterOnPremisesInstanceInput): types.DeregisterOnPremisesInstanceOutput, table
    getApplication: function(Client, types.GetApplicationInput): types.GetApplicationOutput, table
    getApplicationRevision: function(Client, types.GetApplicationRevisionInput): types.GetApplicationRevisionOutput, table
    getDeployment: function(Client, types.GetDeploymentInput): types.GetDeploymentOutput, table
    getDeploymentConfig: function(Client, types.GetDeploymentConfigInput): types.GetDeploymentConfigOutput, table
    getDeploymentGroup: function(Client, types.GetDeploymentGroupInput): types.GetDeploymentGroupOutput, table
    getDeploymentInstance: function(Client, types.GetDeploymentInstanceInput): types.GetDeploymentInstanceOutput, table
    getDeploymentTarget: function(Client, types.GetDeploymentTargetInput): types.GetDeploymentTargetOutput, table
    getOnPremisesInstance: function(Client, types.GetOnPremisesInstanceInput): types.GetOnPremisesInstanceOutput, table
    listApplicationRevisions: function(Client, types.ListApplicationRevisionsInput): types.ListApplicationRevisionsOutput, table
    listApplications: function(Client, types.ListApplicationsInput): types.ListApplicationsOutput, table
    listDeploymentConfigs: function(Client, types.ListDeploymentConfigsInput): types.ListDeploymentConfigsOutput, table
    listDeploymentGroups: function(Client, types.ListDeploymentGroupsInput): types.ListDeploymentGroupsOutput, table
    listDeploymentInstances: function(Client, types.ListDeploymentInstancesInput): types.ListDeploymentInstancesOutput, table
    listDeployments: function(Client, types.ListDeploymentsInput): types.ListDeploymentsOutput, table
    listDeploymentTargets: function(Client, types.ListDeploymentTargetsInput): types.ListDeploymentTargetsOutput, table
    listGitHubAccountTokenNames: function(Client, types.ListGitHubAccountTokenNamesInput): types.ListGitHubAccountTokenNamesOutput, table
    listOnPremisesInstances: function(Client, types.ListOnPremisesInstancesInput): types.ListOnPremisesInstancesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putLifecycleEventHookExecutionStatus: function(Client, types.PutLifecycleEventHookExecutionStatusInput): types.PutLifecycleEventHookExecutionStatusOutput, table
    registerApplicationRevision: function(Client, types.RegisterApplicationRevisionInput): types.RegisterApplicationRevisionOutput, table
    registerOnPremisesInstance: function(Client, types.RegisterOnPremisesInstanceInput): types.RegisterOnPremisesInstanceOutput, table
    removeTagsFromOnPremisesInstances: function(Client, types.RemoveTagsFromOnPremisesInstancesInput): types.RemoveTagsFromOnPremisesInstancesOutput, table
    skipWaitTimeForInstanceTermination: function(Client, types.SkipWaitTimeForInstanceTerminationInput): types.SkipWaitTimeForInstanceTerminationOutput, table
    stopDeployment: function(Client, types.StopDeploymentInput): types.StopDeploymentOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateApplication: function(Client, types.UpdateApplicationInput): types.UpdateApplicationOutput, table
    updateDeploymentGroup: function(Client, types.UpdateDeploymentGroupInput): types.UpdateDeploymentGroupOutput, table
end

local record M
    new: function(table): Client
end

return M
