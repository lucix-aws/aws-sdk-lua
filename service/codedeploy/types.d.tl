local record AddTagsToOnPremisesInstancesInput
    tags: {Tag}
    instanceNames: {string}
end

local record AddTagsToOnPremisesInstancesOutput
end

local record BatchGetApplicationRevisionsInput
    applicationName: string
    revisions: {RevisionLocation}
end

local record BatchGetApplicationRevisionsOutput
    applicationName: string
    errorMessage: string
    revisions: {RevisionInfo}
end

local record BatchGetApplicationsInput
    applicationNames: {string}
end

local record BatchGetApplicationsOutput
    applicationsInfo: {ApplicationInfo}
end

local record BatchGetDeploymentGroupsInput
    applicationName: string
    deploymentGroupNames: {string}
end

local record BatchGetDeploymentGroupsOutput
    deploymentGroupsInfo: {DeploymentGroupInfo}
    errorMessage: string
end

local record BatchGetDeploymentInstancesInput
    deploymentId: string
    instanceIds: {string}
end

local record BatchGetDeploymentInstancesOutput
    instancesSummary: {InstanceSummary}
    errorMessage: string
end

local record BatchGetDeploymentsInput
    deploymentIds: {string}
end

local record BatchGetDeploymentsOutput
    deploymentsInfo: {DeploymentInfo}
end

local record BatchGetDeploymentTargetsInput
    deploymentId: string
    targetIds: {string}
end

local record BatchGetDeploymentTargetsOutput
    deploymentTargets: {DeploymentTarget}
end

local record BatchGetOnPremisesInstancesInput
    instanceNames: {string}
end

local record BatchGetOnPremisesInstancesOutput
    instanceInfos: {InstanceInfo}
end

local record ContinueDeploymentInput
    deploymentId: string
    deploymentWaitType: string
end

local record ContinueDeploymentOutput
end

local record CreateApplicationInput
    applicationName: string
    computePlatform: string
    tags: {Tag}
end

local record CreateApplicationOutput
    applicationId: string
end

local record CreateDeploymentInput
    applicationName: string
    deploymentGroupName: string
    revision: RevisionLocation
    deploymentConfigName: string
    description: string
    ignoreApplicationStopFailures: boolean
    targetInstances: TargetInstances
    autoRollbackConfiguration: AutoRollbackConfiguration
    updateOutdatedInstancesOnly: boolean
    fileExistsBehavior: string
    overrideAlarmConfiguration: AlarmConfiguration
end

local record CreateDeploymentOutput
    deploymentId: string
end

local record CreateDeploymentConfigInput
    deploymentConfigName: string
    minimumHealthyHosts: MinimumHealthyHosts
    trafficRoutingConfig: TrafficRoutingConfig
    computePlatform: string
    zonalConfig: ZonalConfig
end

local record CreateDeploymentConfigOutput
    deploymentConfigId: string
end

local record CreateDeploymentGroupInput
    applicationName: string
    deploymentGroupName: string
    deploymentConfigName: string
    ec2TagFilters: {EC2TagFilter}
    onPremisesInstanceTagFilters: {TagFilter}
    autoScalingGroups: {string}
    serviceRoleArn: string
    triggerConfigurations: {TriggerConfig}
    alarmConfiguration: AlarmConfiguration
    autoRollbackConfiguration: AutoRollbackConfiguration
    outdatedInstancesStrategy: string
    deploymentStyle: DeploymentStyle
    blueGreenDeploymentConfiguration: BlueGreenDeploymentConfiguration
    loadBalancerInfo: LoadBalancerInfo
    ec2TagSet: EC2TagSet
    ecsServices: {ECSService}
    onPremisesTagSet: OnPremisesTagSet
    tags: {Tag}
    terminationHookEnabled: boolean
end

local record CreateDeploymentGroupOutput
    deploymentGroupId: string
end

local record DeleteApplicationInput
    applicationName: string
end

local record DeleteApplicationOutput
end

local record DeleteDeploymentConfigInput
    deploymentConfigName: string
end

local record DeleteDeploymentConfigOutput
end

local record DeleteDeploymentGroupInput
    applicationName: string
    deploymentGroupName: string
end

local record DeleteDeploymentGroupOutput
    hooksNotCleanedUp: {AutoScalingGroup}
end

local record DeleteGitHubAccountTokenInput
    tokenName: string
end

local record DeleteGitHubAccountTokenOutput
    tokenName: string
end

local record DeleteResourcesByExternalIdInput
    externalId: string
end

local record DeleteResourcesByExternalIdOutput
end

local record DeregisterOnPremisesInstanceInput
    instanceName: string
end

local record DeregisterOnPremisesInstanceOutput
end

local record GetApplicationInput
    applicationName: string
end

local record GetApplicationOutput
    application: ApplicationInfo
end

local record GetApplicationRevisionInput
    applicationName: string
    revision: RevisionLocation
end

local record GetApplicationRevisionOutput
    applicationName: string
    revision: RevisionLocation
    revisionInfo: GenericRevisionInfo
end

local record GetDeploymentInput
    deploymentId: string
end

local record GetDeploymentOutput
    deploymentInfo: DeploymentInfo
end

local record GetDeploymentConfigInput
    deploymentConfigName: string
end

local record GetDeploymentConfigOutput
    deploymentConfigInfo: DeploymentConfigInfo
end

local record GetDeploymentGroupInput
    applicationName: string
    deploymentGroupName: string
end

local record GetDeploymentGroupOutput
    deploymentGroupInfo: DeploymentGroupInfo
end

local record GetDeploymentInstanceInput
    deploymentId: string
    instanceId: string
end

local record GetDeploymentInstanceOutput
    instanceSummary: InstanceSummary
end

local record GetDeploymentTargetInput
    deploymentId: string
    targetId: string
end

local record GetDeploymentTargetOutput
    deploymentTarget: DeploymentTarget
end

local record GetOnPremisesInstanceInput
    instanceName: string
end

local record GetOnPremisesInstanceOutput
    instanceInfo: InstanceInfo
end

local record ListApplicationRevisionsInput
    applicationName: string
    sortBy: string
    sortOrder: string
    s3Bucket: string
    s3KeyPrefix: string
    deployed: string
    nextToken: string
end

local record ListApplicationRevisionsOutput
    revisions: {RevisionLocation}
    nextToken: string
end

local record ListApplicationsInput
    nextToken: string
end

local record ListApplicationsOutput
    applications: {string}
    nextToken: string
end

local record ListDeploymentConfigsInput
    nextToken: string
end

local record ListDeploymentConfigsOutput
    deploymentConfigsList: {string}
    nextToken: string
end

local record ListDeploymentGroupsInput
    applicationName: string
    nextToken: string
end

local record ListDeploymentGroupsOutput
    applicationName: string
    deploymentGroups: {string}
    nextToken: string
end

local record ListDeploymentInstancesInput
    deploymentId: string
    nextToken: string
    instanceStatusFilter: {string}
    instanceTypeFilter: {string}
end

local record ListDeploymentInstancesOutput
    instancesList: {string}
    nextToken: string
end

local record ListDeploymentsInput
    applicationName: string
    deploymentGroupName: string
    externalId: string
    includeOnlyStatuses: {string}
    createTimeRange: TimeRange
    nextToken: string
end

local record ListDeploymentsOutput
    deployments: {string}
    nextToken: string
end

local record ListDeploymentTargetsInput
    deploymentId: string
    nextToken: string
    targetFilters: {string : {string}}
end

local record ListDeploymentTargetsOutput
    targetIds: {string}
    nextToken: string
end

local record ListGitHubAccountTokenNamesInput
    nextToken: string
end

local record ListGitHubAccountTokenNamesOutput
    tokenNameList: {string}
    nextToken: string
end

local record ListOnPremisesInstancesInput
    registrationStatus: string
    tagFilters: {TagFilter}
    nextToken: string
end

local record ListOnPremisesInstancesOutput
    instanceNames: {string}
    nextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
    NextToken: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
    NextToken: string
end

local record PutLifecycleEventHookExecutionStatusInput
    deploymentId: string
    lifecycleEventHookExecutionId: string
    status: string
end

local record PutLifecycleEventHookExecutionStatusOutput
    lifecycleEventHookExecutionId: string
end

local record RegisterApplicationRevisionInput
    applicationName: string
    description: string
    revision: RevisionLocation
end

local record RegisterApplicationRevisionOutput
end

local record RegisterOnPremisesInstanceInput
    instanceName: string
    iamSessionArn: string
    iamUserArn: string
end

local record RegisterOnPremisesInstanceOutput
end

local record RemoveTagsFromOnPremisesInstancesInput
    tags: {Tag}
    instanceNames: {string}
end

local record RemoveTagsFromOnPremisesInstancesOutput
end

local record SkipWaitTimeForInstanceTerminationInput
    deploymentId: string
end

local record SkipWaitTimeForInstanceTerminationOutput
end

local record StopDeploymentInput
    deploymentId: string
    autoRollbackEnabled: boolean
end

local record StopDeploymentOutput
    status: string
    statusMessage: string
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateApplicationInput
    applicationName: string
    newApplicationName: string
end

local record UpdateApplicationOutput
end

local record UpdateDeploymentGroupInput
    applicationName: string
    currentDeploymentGroupName: string
    newDeploymentGroupName: string
    deploymentConfigName: string
    ec2TagFilters: {EC2TagFilter}
    onPremisesInstanceTagFilters: {TagFilter}
    autoScalingGroups: {string}
    serviceRoleArn: string
    triggerConfigurations: {TriggerConfig}
    alarmConfiguration: AlarmConfiguration
    autoRollbackConfiguration: AutoRollbackConfiguration
    outdatedInstancesStrategy: string
    deploymentStyle: DeploymentStyle
    blueGreenDeploymentConfiguration: BlueGreenDeploymentConfiguration
    loadBalancerInfo: LoadBalancerInfo
    ec2TagSet: EC2TagSet
    ecsServices: {ECSService}
    onPremisesTagSet: OnPremisesTagSet
    terminationHookEnabled: boolean
end

local record UpdateDeploymentGroupOutput
    hooksNotCleanedUp: {AutoScalingGroup}
end

local record InstanceLimitExceededException
    message: string
end

local record InstanceNameRequiredException
    message: string
end

local record InstanceNotRegisteredException
    message: string
end

local record InvalidInstanceNameException
    message: string
end

local record InvalidTagException
    message: string
end

local record TagLimitExceededException
    message: string
end

local record TagRequiredException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record BatchLimitExceededException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidRevisionException
    message: string
end

local record RevisionRequiredException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record BatchLimitExceededException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record BatchLimitExceededException
    message: string
end

local record DeploymentConfigDoesNotExistException
    message: string
end

local record DeploymentGroupNameRequiredException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidDeploymentGroupNameException
    message: string
end

local record BatchLimitExceededException
    message: string
end

local record DeploymentDoesNotExistException
    message: string
end

local record DeploymentIdRequiredException
    message: string
end

local record InstanceIdRequiredException
    message: string
end

local record InvalidComputePlatformException
    message: string
end

local record InvalidDeploymentIdException
    message: string
end

local record InvalidInstanceNameException
    message: string
end

local record BatchLimitExceededException
    message: string
end

local record DeploymentIdRequiredException
    message: string
end

local record InvalidDeploymentIdException
    message: string
end

local record DeploymentDoesNotExistException
    message: string
end

local record DeploymentIdRequiredException
    message: string
end

local record DeploymentNotStartedException
    message: string
end

local record DeploymentTargetDoesNotExistException
    message: string
end

local record DeploymentTargetIdRequiredException
    message: string
end

local record DeploymentTargetListSizeExceededException
    message: string
end

local record InstanceDoesNotExistException
    message: string
end

local record InvalidDeploymentIdException
    message: string
end

local record InvalidDeploymentTargetIdException
    message: string
end

local record BatchLimitExceededException
    message: string
end

local record InstanceNameRequiredException
    message: string
end

local record InvalidInstanceNameException
    message: string
end

local record DeploymentAlreadyCompletedException
    message: string
end

local record DeploymentDoesNotExistException
    message: string
end

local record DeploymentIdRequiredException
    message: string
end

local record DeploymentIsNotInReadyStateException
    message: string
end

local record InvalidDeploymentIdException
    message: string
end

local record InvalidDeploymentStatusException
    message: string
end

local record InvalidDeploymentWaitTypeException
    message: string
end

local record UnsupportedActionForDeploymentTypeException
    message: string
end

local record ApplicationAlreadyExistsException
    message: string
end

local record ApplicationLimitExceededException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidComputePlatformException
    message: string
end

local record InvalidTagsToAddException
    message: string
end

local record AlarmsLimitExceededException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record DeploymentConfigDoesNotExistException
    message: string
end

local record DeploymentGroupDoesNotExistException
    message: string
end

local record DeploymentGroupNameRequiredException
    message: string
end

local record DeploymentLimitExceededException
    message: string
end

local record DescriptionTooLongException
    message: string
end

local record InvalidAlarmConfigException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidAutoRollbackConfigException
    message: string
end

local record InvalidAutoScalingGroupException
    message: string
end

local record InvalidDeploymentConfigNameException
    message: string
end

local record InvalidDeploymentGroupNameException
    message: string
end

local record InvalidFileExistsBehaviorException
    message: string
end

local record InvalidGitHubAccountTokenException
    message: string
end

local record InvalidIgnoreApplicationStopFailuresValueException
    message: string
end

local record InvalidLoadBalancerInfoException
    message: string
end

local record InvalidRevisionException
    message: string
end

local record InvalidRoleException
    message: string
end

local record InvalidTargetInstancesException
    message: string
end

local record InvalidTrafficRoutingConfigurationException
    message: string
end

local record InvalidUpdateOutdatedInstancesOnlyValueException
    message: string
end

local record RevisionDoesNotExistException
    message: string
end

local record RevisionRequiredException
    message: string
end

local record ThrottlingException
    message: string
end

local record DeploymentConfigAlreadyExistsException
    message: string
end

local record DeploymentConfigLimitExceededException
    message: string
end

local record DeploymentConfigNameRequiredException
    message: string
end

local record InvalidComputePlatformException
    message: string
end

local record InvalidDeploymentConfigNameException
    message: string
end

local record InvalidMinimumHealthyHostValueException
    message: string
end

local record InvalidTrafficRoutingConfigurationException
    message: string
end

local record InvalidZonalDeploymentConfigurationException
    message: string
end

local record AlarmsLimitExceededException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record DeploymentConfigDoesNotExistException
    message: string
end

local record DeploymentGroupAlreadyExistsException
    message: string
end

local record DeploymentGroupLimitExceededException
    message: string
end

local record DeploymentGroupNameRequiredException
    message: string
end

local record ECSServiceMappingLimitExceededException
    message: string
end

local record InvalidAlarmConfigException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidAutoRollbackConfigException
    message: string
end

local record InvalidAutoScalingGroupException
    message: string
end

local record InvalidBlueGreenDeploymentConfigurationException
    message: string
end

local record InvalidDeploymentConfigNameException
    message: string
end

local record InvalidDeploymentGroupNameException
    message: string
end

local record InvalidDeploymentStyleException
    message: string
end

local record InvalidEC2TagCombinationException
    message: string
end

local record InvalidEC2TagException
    message: string
end

local record InvalidECSServiceException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidLoadBalancerInfoException
    message: string
end

local record InvalidOnPremisesTagCombinationException
    message: string
end

local record InvalidRoleException
    message: string
end

local record InvalidTagException
    message: string
end

local record InvalidTagsToAddException
    message: string
end

local record InvalidTargetGroupPairException
    message: string
end

local record InvalidTrafficRoutingConfigurationException
    message: string
end

local record InvalidTriggerConfigException
    message: string
end

local record LifecycleHookLimitExceededException
    message: string
end

local record RoleRequiredException
    message: string
end

local record TagSetListLimitExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record TriggerTargetsLimitExceededException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidRoleException
    message: string
end

local record DeploymentConfigInUseException
    message: string
end

local record DeploymentConfigNameRequiredException
    message: string
end

local record InvalidDeploymentConfigNameException
    message: string
end

local record InvalidOperationException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record DeploymentGroupNameRequiredException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidDeploymentGroupNameException
    message: string
end

local record InvalidRoleException
    message: string
end

local record GitHubAccountTokenDoesNotExistException
    message: string
end

local record GitHubAccountTokenNameRequiredException
    message: string
end

local record InvalidGitHubAccountTokenNameException
    message: string
end

local record OperationNotSupportedException
    message: string
end

local record ResourceValidationException
    message: string
end

local record InstanceNameRequiredException
    message: string
end

local record InvalidInstanceNameException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidRevisionException
    message: string
end

local record RevisionDoesNotExistException
    message: string
end

local record RevisionRequiredException
    message: string
end

local record DeploymentDoesNotExistException
    message: string
end

local record DeploymentIdRequiredException
    message: string
end

local record InvalidDeploymentIdException
    message: string
end

local record DeploymentConfigDoesNotExistException
    message: string
end

local record DeploymentConfigNameRequiredException
    message: string
end

local record InvalidComputePlatformException
    message: string
end

local record InvalidDeploymentConfigNameException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record DeploymentConfigDoesNotExistException
    message: string
end

local record DeploymentGroupDoesNotExistException
    message: string
end

local record DeploymentGroupNameRequiredException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidDeploymentGroupNameException
    message: string
end

local record DeploymentDoesNotExistException
    message: string
end

local record DeploymentIdRequiredException
    message: string
end

local record InstanceDoesNotExistException
    message: string
end

local record InstanceIdRequiredException
    message: string
end

local record InvalidComputePlatformException
    message: string
end

local record InvalidDeploymentIdException
    message: string
end

local record InvalidInstanceNameException
    message: string
end

local record DeploymentDoesNotExistException
    message: string
end

local record DeploymentIdRequiredException
    message: string
end

local record DeploymentNotStartedException
    message: string
end

local record DeploymentTargetDoesNotExistException
    message: string
end

local record DeploymentTargetIdRequiredException
    message: string
end

local record InvalidDeploymentIdException
    message: string
end

local record InvalidDeploymentTargetIdException
    message: string
end

local record InvalidInstanceNameException
    message: string
end

local record InstanceNameRequiredException
    message: string
end

local record InstanceNotRegisteredException
    message: string
end

local record InvalidInstanceNameException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record BucketNameFilterRequiredException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidBucketNameFilterException
    message: string
end

local record InvalidDeployedStateFilterException
    message: string
end

local record InvalidKeyPrefixFilterException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidSortByException
    message: string
end

local record InvalidSortOrderException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record DeploymentDoesNotExistException
    message: string
end

local record DeploymentIdRequiredException
    message: string
end

local record DeploymentNotStartedException
    message: string
end

local record InvalidComputePlatformException
    message: string
end

local record InvalidDeploymentIdException
    message: string
end

local record InvalidDeploymentInstanceTypeException
    message: string
end

local record InvalidInstanceStatusException
    message: string
end

local record InvalidInstanceTypeException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidTargetFilterNameException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record DeploymentGroupDoesNotExistException
    message: string
end

local record DeploymentGroupNameRequiredException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidDeploymentGroupNameException
    message: string
end

local record InvalidDeploymentStatusException
    message: string
end

local record InvalidExternalIdException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidTimeRangeException
    message: string
end

local record DeploymentDoesNotExistException
    message: string
end

local record DeploymentIdRequiredException
    message: string
end

local record DeploymentNotStartedException
    message: string
end

local record InvalidDeploymentIdException
    message: string
end

local record InvalidDeploymentInstanceTypeException
    message: string
end

local record InvalidInstanceStatusException
    message: string
end

local record InvalidInstanceTypeException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidTargetFilterNameException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record OperationNotSupportedException
    message: string
end

local record ResourceValidationException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record InvalidRegistrationStatusException
    message: string
end

local record InvalidTagFilterException
    message: string
end

local record ArnNotSupportedException
    message: string
end

local record InvalidArnException
    message: string
end

local record ResourceArnRequiredException
    message: string
end

local record DeploymentDoesNotExistException
    message: string
end

local record DeploymentIdRequiredException
    message: string
end

local record InvalidDeploymentIdException
    message: string
end

local record InvalidLifecycleEventHookExecutionIdException
    message: string
end

local record InvalidLifecycleEventHookExecutionStatusException
    message: string
end

local record LifecycleEventAlreadyCompletedException
    message: string
end

local record UnsupportedActionForDeploymentTypeException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record DescriptionTooLongException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidRevisionException
    message: string
end

local record RevisionRequiredException
    message: string
end

local record IamArnRequiredException
    message: string
end

local record IamSessionArnAlreadyRegisteredException
    message: string
end

local record IamUserArnAlreadyRegisteredException
    message: string
end

local record IamUserArnRequiredException
    message: string
end

local record InstanceNameAlreadyRegisteredException
    message: string
end

local record InstanceNameRequiredException
    message: string
end

local record InvalidIamSessionArnException
    message: string
end

local record InvalidIamUserArnException
    message: string
end

local record InvalidInstanceNameException
    message: string
end

local record MultipleIamArnsProvidedException
    message: string
end

local record InstanceLimitExceededException
    message: string
end

local record InstanceNameRequiredException
    message: string
end

local record InstanceNotRegisteredException
    message: string
end

local record InvalidInstanceNameException
    message: string
end

local record InvalidTagException
    message: string
end

local record TagLimitExceededException
    message: string
end

local record TagRequiredException
    message: string
end

local record DeploymentAlreadyCompletedException
    message: string
end

local record DeploymentDoesNotExistException
    message: string
end

local record DeploymentIdRequiredException
    message: string
end

local record DeploymentNotStartedException
    message: string
end

local record InvalidDeploymentIdException
    message: string
end

local record UnsupportedActionForDeploymentTypeException
    message: string
end

local record DeploymentAlreadyCompletedException
    message: string
end

local record DeploymentDoesNotExistException
    message: string
end

local record DeploymentGroupDoesNotExistException
    message: string
end

local record DeploymentIdRequiredException
    message: string
end

local record InvalidDeploymentIdException
    message: string
end

local record UnsupportedActionForDeploymentTypeException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ArnNotSupportedException
    message: string
end

local record DeploymentConfigDoesNotExistException
    message: string
end

local record DeploymentGroupDoesNotExistException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidTagsToAddException
    message: string
end

local record ResourceArnRequiredException
    message: string
end

local record TagRequiredException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ArnNotSupportedException
    message: string
end

local record DeploymentConfigDoesNotExistException
    message: string
end

local record DeploymentGroupDoesNotExistException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidTagsToAddException
    message: string
end

local record ResourceArnRequiredException
    message: string
end

local record TagRequiredException
    message: string
end

local record ApplicationAlreadyExistsException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record AlarmsLimitExceededException
    message: string
end

local record ApplicationDoesNotExistException
    message: string
end

local record ApplicationNameRequiredException
    message: string
end

local record DeploymentConfigDoesNotExistException
    message: string
end

local record DeploymentGroupAlreadyExistsException
    message: string
end

local record DeploymentGroupDoesNotExistException
    message: string
end

local record DeploymentGroupNameRequiredException
    message: string
end

local record ECSServiceMappingLimitExceededException
    message: string
end

local record InvalidAlarmConfigException
    message: string
end

local record InvalidApplicationNameException
    message: string
end

local record InvalidAutoRollbackConfigException
    message: string
end

local record InvalidAutoScalingGroupException
    message: string
end

local record InvalidBlueGreenDeploymentConfigurationException
    message: string
end

local record InvalidDeploymentConfigNameException
    message: string
end

local record InvalidDeploymentGroupNameException
    message: string
end

local record InvalidDeploymentStyleException
    message: string
end

local record InvalidEC2TagCombinationException
    message: string
end

local record InvalidEC2TagException
    message: string
end

local record InvalidECSServiceException
    message: string
end

local record InvalidInputException
    message: string
end

local record InvalidLoadBalancerInfoException
    message: string
end

local record InvalidOnPremisesTagCombinationException
    message: string
end

local record InvalidRoleException
    message: string
end

local record InvalidTagException
    message: string
end

local record InvalidTargetGroupPairException
    message: string
end

local record InvalidTrafficRoutingConfigurationException
    message: string
end

local record InvalidTriggerConfigException
    message: string
end

local record LifecycleHookLimitExceededException
    message: string
end

local record TagSetListLimitExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record TriggerTargetsLimitExceededException
    message: string
end

local type ComputePlatform = "Server" | "Lambda" | "ECS"

local type StopStatus = "Pending" | "Succeeded"

local type ListStateFilterAction = "include" | "exclude" | "ignore"

local type OutdatedInstancesStrategy = "UPDATE" | "IGNORE"

local type RegistrationStatus = "Registered" | "Deregistered"

local type SortOrder = "ascending" | "descending"

local type FileExistsBehavior = "DISALLOW" | "OVERWRITE" | "RETAIN"

local type LifecycleEventStatus = "Pending" | "InProgress" | "Succeeded" | "Failed" | "Skipped" | "Unknown"

local type ApplicationRevisionSortBy = "registerTime" | "firstUsedTime" | "lastUsedTime"

local type DeploymentWaitType = "READY_WAIT" | "TERMINATION_WAIT"

local record M
    AddTagsToOnPremisesInstancesInput: AddTagsToOnPremisesInstancesInput
    AddTagsToOnPremisesInstancesOutput: AddTagsToOnPremisesInstancesOutput
    BatchGetApplicationRevisionsInput: BatchGetApplicationRevisionsInput
    BatchGetApplicationRevisionsOutput: BatchGetApplicationRevisionsOutput
    BatchGetApplicationsInput: BatchGetApplicationsInput
    BatchGetApplicationsOutput: BatchGetApplicationsOutput
    BatchGetDeploymentGroupsInput: BatchGetDeploymentGroupsInput
    BatchGetDeploymentGroupsOutput: BatchGetDeploymentGroupsOutput
    BatchGetDeploymentInstancesInput: BatchGetDeploymentInstancesInput
    BatchGetDeploymentInstancesOutput: BatchGetDeploymentInstancesOutput
    BatchGetDeploymentsInput: BatchGetDeploymentsInput
    BatchGetDeploymentsOutput: BatchGetDeploymentsOutput
    BatchGetDeploymentTargetsInput: BatchGetDeploymentTargetsInput
    BatchGetDeploymentTargetsOutput: BatchGetDeploymentTargetsOutput
    BatchGetOnPremisesInstancesInput: BatchGetOnPremisesInstancesInput
    BatchGetOnPremisesInstancesOutput: BatchGetOnPremisesInstancesOutput
    ContinueDeploymentInput: ContinueDeploymentInput
    ContinueDeploymentOutput: ContinueDeploymentOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateDeploymentInput: CreateDeploymentInput
    CreateDeploymentOutput: CreateDeploymentOutput
    CreateDeploymentConfigInput: CreateDeploymentConfigInput
    CreateDeploymentConfigOutput: CreateDeploymentConfigOutput
    CreateDeploymentGroupInput: CreateDeploymentGroupInput
    CreateDeploymentGroupOutput: CreateDeploymentGroupOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteDeploymentConfigInput: DeleteDeploymentConfigInput
    DeleteDeploymentConfigOutput: DeleteDeploymentConfigOutput
    DeleteDeploymentGroupInput: DeleteDeploymentGroupInput
    DeleteDeploymentGroupOutput: DeleteDeploymentGroupOutput
    DeleteGitHubAccountTokenInput: DeleteGitHubAccountTokenInput
    DeleteGitHubAccountTokenOutput: DeleteGitHubAccountTokenOutput
    DeleteResourcesByExternalIdInput: DeleteResourcesByExternalIdInput
    DeleteResourcesByExternalIdOutput: DeleteResourcesByExternalIdOutput
    DeregisterOnPremisesInstanceInput: DeregisterOnPremisesInstanceInput
    DeregisterOnPremisesInstanceOutput: DeregisterOnPremisesInstanceOutput
    GetApplicationInput: GetApplicationInput
    GetApplicationOutput: GetApplicationOutput
    GetApplicationRevisionInput: GetApplicationRevisionInput
    GetApplicationRevisionOutput: GetApplicationRevisionOutput
    GetDeploymentInput: GetDeploymentInput
    GetDeploymentOutput: GetDeploymentOutput
    GetDeploymentConfigInput: GetDeploymentConfigInput
    GetDeploymentConfigOutput: GetDeploymentConfigOutput
    GetDeploymentGroupInput: GetDeploymentGroupInput
    GetDeploymentGroupOutput: GetDeploymentGroupOutput
    GetDeploymentInstanceInput: GetDeploymentInstanceInput
    GetDeploymentInstanceOutput: GetDeploymentInstanceOutput
    GetDeploymentTargetInput: GetDeploymentTargetInput
    GetDeploymentTargetOutput: GetDeploymentTargetOutput
    GetOnPremisesInstanceInput: GetOnPremisesInstanceInput
    GetOnPremisesInstanceOutput: GetOnPremisesInstanceOutput
    ListApplicationRevisionsInput: ListApplicationRevisionsInput
    ListApplicationRevisionsOutput: ListApplicationRevisionsOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListDeploymentConfigsInput: ListDeploymentConfigsInput
    ListDeploymentConfigsOutput: ListDeploymentConfigsOutput
    ListDeploymentGroupsInput: ListDeploymentGroupsInput
    ListDeploymentGroupsOutput: ListDeploymentGroupsOutput
    ListDeploymentInstancesInput: ListDeploymentInstancesInput
    ListDeploymentInstancesOutput: ListDeploymentInstancesOutput
    ListDeploymentsInput: ListDeploymentsInput
    ListDeploymentsOutput: ListDeploymentsOutput
    ListDeploymentTargetsInput: ListDeploymentTargetsInput
    ListDeploymentTargetsOutput: ListDeploymentTargetsOutput
    ListGitHubAccountTokenNamesInput: ListGitHubAccountTokenNamesInput
    ListGitHubAccountTokenNamesOutput: ListGitHubAccountTokenNamesOutput
    ListOnPremisesInstancesInput: ListOnPremisesInstancesInput
    ListOnPremisesInstancesOutput: ListOnPremisesInstancesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutLifecycleEventHookExecutionStatusInput: PutLifecycleEventHookExecutionStatusInput
    PutLifecycleEventHookExecutionStatusOutput: PutLifecycleEventHookExecutionStatusOutput
    RegisterApplicationRevisionInput: RegisterApplicationRevisionInput
    RegisterApplicationRevisionOutput: RegisterApplicationRevisionOutput
    RegisterOnPremisesInstanceInput: RegisterOnPremisesInstanceInput
    RegisterOnPremisesInstanceOutput: RegisterOnPremisesInstanceOutput
    RemoveTagsFromOnPremisesInstancesInput: RemoveTagsFromOnPremisesInstancesInput
    RemoveTagsFromOnPremisesInstancesOutput: RemoveTagsFromOnPremisesInstancesOutput
    SkipWaitTimeForInstanceTerminationInput: SkipWaitTimeForInstanceTerminationInput
    SkipWaitTimeForInstanceTerminationOutput: SkipWaitTimeForInstanceTerminationOutput
    StopDeploymentInput: StopDeploymentInput
    StopDeploymentOutput: StopDeploymentOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateDeploymentGroupInput: UpdateDeploymentGroupInput
    UpdateDeploymentGroupOutput: UpdateDeploymentGroupOutput
end

return M
