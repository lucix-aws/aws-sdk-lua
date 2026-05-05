local record AddInstanceFleetInput
    ClusterId: string
    InstanceFleet: InstanceFleetConfig
end

local record AddInstanceFleetOutput
    ClusterId: string
    InstanceFleetId: string
    ClusterArn: string
end

local record AddInstanceGroupsInput
    InstanceGroups: {InstanceGroupConfig}
    JobFlowId: string
end

local record AddInstanceGroupsOutput
    JobFlowId: string
    InstanceGroupIds: {string}
    ClusterArn: string
end

local record AddJobFlowStepsInput
    JobFlowId: string
    Steps: {StepConfig}
    ExecutionRoleArn: string
end

local record AddJobFlowStepsOutput
    StepIds: {string}
end

local record AddTagsInput
    ResourceId: string
    Tags: {Tag}
end

local record AddTagsOutput
end

local record CancelStepsInput
    ClusterId: string
    StepIds: {string}
    StepCancellationOption: string
end

local record CancelStepsOutput
    CancelStepsInfoList: {CancelStepsInfo}
end

local record CreatePersistentAppUIInput
    TargetResourceArn: string
    EMRContainersConfig: EMRContainersConfig
    Tags: {Tag}
    XReferer: string
    ProfilerType: string
end

local record CreatePersistentAppUIOutput
    PersistentAppUIId: string
    RuntimeRoleEnabledCluster: boolean
end

local record CreateSecurityConfigurationInput
    Name: string
    SecurityConfiguration: string
end

local record CreateSecurityConfigurationOutput
    Name: string
    CreationDateTime: number
end

local record CreateStudioInput
    Name: string
    Description: string
    AuthMode: string
    VpcId: string
    SubnetIds: {string}
    ServiceRole: string
    UserRole: string
    WorkspaceSecurityGroupId: string
    EngineSecurityGroupId: string
    DefaultS3Location: string
    IdpAuthUrl: string
    IdpRelayStateParameterName: string
    Tags: {Tag}
    TrustedIdentityPropagationEnabled: boolean
    IdcUserAssignment: string
    IdcInstanceArn: string
    EncryptionKeyArn: string
end

local record CreateStudioOutput
    StudioId: string
    Url: string
end

local record CreateStudioSessionMappingInput
    StudioId: string
    IdentityId: string
    IdentityName: string
    IdentityType: string
    SessionPolicyArn: string
end

local record CreateStudioSessionMappingOutput
end

local record DeleteSecurityConfigurationInput
    Name: string
end

local record DeleteSecurityConfigurationOutput
end

local record DeleteStudioInput
    StudioId: string
end

local record DeleteStudioOutput
end

local record DeleteStudioSessionMappingInput
    StudioId: string
    IdentityId: string
    IdentityName: string
    IdentityType: string
end

local record DeleteStudioSessionMappingOutput
end

local record DescribeClusterInput
    ClusterId: string
end

local record DescribeClusterOutput
    Cluster: Cluster
end

local record DescribeJobFlowsInput
    CreatedAfter: number
    CreatedBefore: number
    JobFlowIds: {string}
    JobFlowStates: {string}
end

local record DescribeJobFlowsOutput
    JobFlows: {JobFlowDetail}
end

local record DescribeNotebookExecutionInput
    NotebookExecutionId: string
end

local record DescribeNotebookExecutionOutput
    NotebookExecution: NotebookExecution
end

local record DescribePersistentAppUIInput
    PersistentAppUIId: string
end

local record DescribePersistentAppUIOutput
    PersistentAppUI: PersistentAppUI
end

local record DescribeReleaseLabelInput
    ReleaseLabel: string
    NextToken: string
    MaxResults: number
end

local record DescribeReleaseLabelOutput
    ReleaseLabel: string
    Applications: {SimplifiedApplication}
    NextToken: string
    AvailableOSReleases: {OSRelease}
end

local record DescribeSecurityConfigurationInput
    Name: string
end

local record DescribeSecurityConfigurationOutput
    Name: string
    SecurityConfiguration: string
    CreationDateTime: number
end

local record DescribeStepInput
    ClusterId: string
    StepId: string
end

local record DescribeStepOutput
    Step: Step
end

local record DescribeStudioInput
    StudioId: string
end

local record DescribeStudioOutput
    Studio: Studio
end

local record GetAutoTerminationPolicyInput
    ClusterId: string
end

local record GetAutoTerminationPolicyOutput
    AutoTerminationPolicy: AutoTerminationPolicy
end

local record GetBlockPublicAccessConfigurationInput
end

local record GetBlockPublicAccessConfigurationOutput
    BlockPublicAccessConfiguration: BlockPublicAccessConfiguration
    BlockPublicAccessConfigurationMetadata: BlockPublicAccessConfigurationMetadata
end

local record GetClusterSessionCredentialsInput
    ClusterId: string
    ExecutionRoleArn: string
end

local record GetClusterSessionCredentialsOutput
    Credentials: Credentials
    ExpiresAt: number
end

local record GetManagedScalingPolicyInput
    ClusterId: string
end

local record GetManagedScalingPolicyOutput
    ManagedScalingPolicy: ManagedScalingPolicy
end

local record GetOnClusterAppUIPresignedURLInput
    ClusterId: string
    OnClusterAppUIType: string
    ApplicationId: string
    DryRun: boolean
    ExecutionRoleArn: string
end

local record GetOnClusterAppUIPresignedURLOutput
    PresignedURLReady: boolean
    PresignedURL: string
end

local record GetPersistentAppUIPresignedURLInput
    PersistentAppUIId: string
    PersistentAppUIType: string
    ApplicationId: string
    AuthProxyCall: boolean
    ExecutionRoleArn: string
end

local record GetPersistentAppUIPresignedURLOutput
    PresignedURLReady: boolean
    PresignedURL: string
end

local record GetStudioSessionMappingInput
    StudioId: string
    IdentityId: string
    IdentityName: string
    IdentityType: string
end

local record GetStudioSessionMappingOutput
    SessionMapping: SessionMappingDetail
end

local record ListBootstrapActionsInput
    ClusterId: string
    Marker: string
end

local record ListBootstrapActionsOutput
    BootstrapActions: {Command}
    Marker: string
end

local record ListClustersInput
    CreatedAfter: number
    CreatedBefore: number
    ClusterStates: {string}
    Marker: string
end

local record ListClustersOutput
    Clusters: {ClusterSummary}
    Marker: string
end

local record ListInstanceFleetsInput
    ClusterId: string
    Marker: string
end

local record ListInstanceFleetsOutput
    InstanceFleets: {InstanceFleet}
    Marker: string
end

local record ListInstanceGroupsInput
    ClusterId: string
    Marker: string
end

local record ListInstanceGroupsOutput
    InstanceGroups: {InstanceGroup}
    Marker: string
end

local record ListInstancesInput
    ClusterId: string
    InstanceGroupId: string
    InstanceGroupTypes: {string}
    InstanceFleetId: string
    InstanceFleetType: string
    InstanceStates: {string}
    Marker: string
end

local record ListInstancesOutput
    Instances: {Instance}
    Marker: string
end

local record ListNotebookExecutionsInput
    EditorId: string
    Status: string
    From: number
    To: number
    Marker: string
    ExecutionEngineId: string
end

local record ListNotebookExecutionsOutput
    NotebookExecutions: {NotebookExecutionSummary}
    Marker: string
end

local record ListReleaseLabelsInput
    Filters: ReleaseLabelFilter
    NextToken: string
    MaxResults: number
end

local record ListReleaseLabelsOutput
    ReleaseLabels: {string}
    NextToken: string
end

local record ListSecurityConfigurationsInput
    Marker: string
end

local record ListSecurityConfigurationsOutput
    SecurityConfigurations: {SecurityConfigurationSummary}
    Marker: string
end

local record ListStepsInput
    ClusterId: string
    StepStates: {string}
    StepIds: {string}
    Marker: string
end

local record ListStepsOutput
    Steps: {StepSummary}
    Marker: string
end

local record ListStudiosInput
    Marker: string
end

local record ListStudiosOutput
    Studios: {StudioSummary}
    Marker: string
end

local record ListStudioSessionMappingsInput
    StudioId: string
    IdentityType: string
    Marker: string
end

local record ListStudioSessionMappingsOutput
    SessionMappings: {SessionMappingSummary}
    Marker: string
end

local record ListSupportedInstanceTypesInput
    ReleaseLabel: string
    Marker: string
end

local record ListSupportedInstanceTypesOutput
    SupportedInstanceTypes: {SupportedInstanceType}
    Marker: string
end

local record ModifyClusterInput
    ClusterId: string
    StepConcurrencyLevel: number
    ExtendedSupport: boolean
end

local record ModifyClusterOutput
    StepConcurrencyLevel: number
    ExtendedSupport: boolean
end

local record ModifyInstanceFleetInput
    ClusterId: string
    InstanceFleet: InstanceFleetModifyConfig
end

local record ModifyInstanceFleetOutput
end

local record ModifyInstanceGroupsInput
    ClusterId: string
    InstanceGroups: {InstanceGroupModifyConfig}
end

local record ModifyInstanceGroupsOutput
end

local record PutAutoScalingPolicyInput
    ClusterId: string
    InstanceGroupId: string
    AutoScalingPolicy: AutoScalingPolicy
end

local record PutAutoScalingPolicyOutput
    ClusterId: string
    InstanceGroupId: string
    AutoScalingPolicy: AutoScalingPolicyDescription
    ClusterArn: string
end

local record PutAutoTerminationPolicyInput
    ClusterId: string
    AutoTerminationPolicy: AutoTerminationPolicy
end

local record PutAutoTerminationPolicyOutput
end

local record PutBlockPublicAccessConfigurationInput
    BlockPublicAccessConfiguration: BlockPublicAccessConfiguration
end

local record PutBlockPublicAccessConfigurationOutput
end

local record PutManagedScalingPolicyInput
    ClusterId: string
    ManagedScalingPolicy: ManagedScalingPolicy
end

local record PutManagedScalingPolicyOutput
end

local record RemoveAutoScalingPolicyInput
    ClusterId: string
    InstanceGroupId: string
end

local record RemoveAutoScalingPolicyOutput
end

local record RemoveAutoTerminationPolicyInput
    ClusterId: string
end

local record RemoveAutoTerminationPolicyOutput
end

local record RemoveManagedScalingPolicyInput
    ClusterId: string
end

local record RemoveManagedScalingPolicyOutput
end

local record RemoveTagsInput
    ResourceId: string
    TagKeys: {string}
end

local record RemoveTagsOutput
end

local record RunJobFlowInput
    Name: string
    LogUri: string
    LogEncryptionKmsKeyId: string
    AdditionalInfo: string
    AmiVersion: string
    ReleaseLabel: string
    Instances: JobFlowInstancesConfig
    Steps: {StepConfig}
    StepExecutionRoleArn: string
    BootstrapActions: {BootstrapActionConfig}
    SupportedProducts: {string}
    NewSupportedProducts: {SupportedProductConfig}
    Applications: {Application}
    Configurations: {Configuration}
    VisibleToAllUsers: boolean
    JobFlowRole: string
    ServiceRole: string
    Tags: {Tag}
    SecurityConfiguration: string
    AutoScalingRole: string
    ScaleDownBehavior: string
    CustomAmiId: string
    EbsRootVolumeSize: number
    RepoUpgradeOnBoot: string
    KerberosAttributes: KerberosAttributes
    StepConcurrencyLevel: number
    ManagedScalingPolicy: ManagedScalingPolicy
    PlacementGroupConfigs: {PlacementGroupConfig}
    AutoTerminationPolicy: AutoTerminationPolicy
    OSReleaseLabel: string
    EbsRootVolumeIops: number
    EbsRootVolumeThroughput: number
    ExtendedSupport: boolean
    MonitoringConfiguration: MonitoringConfiguration
end

local record RunJobFlowOutput
    JobFlowId: string
    ClusterArn: string
end

local record SetKeepJobFlowAliveWhenNoStepsInput
    JobFlowIds: {string}
    KeepJobFlowAliveWhenNoSteps: boolean
end

local record SetKeepJobFlowAliveWhenNoStepsOutput
end

local record SetTerminationProtectionInput
    JobFlowIds: {string}
    TerminationProtected: boolean
end

local record SetTerminationProtectionOutput
end

local record SetUnhealthyNodeReplacementInput
    JobFlowIds: {string}
    UnhealthyNodeReplacement: boolean
end

local record SetUnhealthyNodeReplacementOutput
end

local record SetVisibleToAllUsersInput
    JobFlowIds: {string}
    VisibleToAllUsers: boolean
end

local record SetVisibleToAllUsersOutput
end

local record StartNotebookExecutionInput
    EditorId: string
    RelativePath: string
    NotebookExecutionName: string
    NotebookParams: string
    ExecutionEngine: ExecutionEngineConfig
    ServiceRole: string
    NotebookInstanceSecurityGroupId: string
    Tags: {Tag}
    NotebookS3Location: NotebookS3LocationFromInput
    OutputNotebookS3Location: OutputNotebookS3LocationFromInput
    OutputNotebookFormat: string
    EnvironmentVariables: {string : string}
end

local record StartNotebookExecutionOutput
    NotebookExecutionId: string
end

local record StopNotebookExecutionInput
    NotebookExecutionId: string
end

local record StopNotebookExecutionOutput
end

local record TerminateJobFlowsInput
    JobFlowIds: {string}
end

local record TerminateJobFlowsOutput
end

local record UpdateStudioInput
    StudioId: string
    Name: string
    Description: string
    SubnetIds: {string}
    DefaultS3Location: string
    EncryptionKeyArn: string
end

local record UpdateStudioOutput
end

local record UpdateStudioSessionMappingInput
    StudioId: string
    IdentityId: string
    IdentityName: string
    IdentityType: string
    SessionPolicyArn: string
end

local record UpdateStudioSessionMappingOutput
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InternalServerError
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InternalServerError
end

local record InternalServerError
end

local record InternalServerError
end

local record InternalServerError
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local record InternalServerError
end

local record InvalidRequestException
    ErrorCode: string
    Message: string
end

local type ProfilerType = "SHS" | "TEZUI" | "YTS"

local type AuthMode = "SSO" | "IAM"

local type OnClusterAppUIType = "SparkHistoryServer" | "YarnTimelineService" | "TezUI" | "ApplicationMaster" | "JobHistoryServer" | "ResourceManager"

local type IdentityType = "USER" | "GROUP"

local type ScaleDownBehavior = "TERMINATE_AT_INSTANCE_HOUR" | "TERMINATE_AT_TASK_COMPLETION"

local type StepCancellationOption = "SEND_INTERRUPT" | "TERMINATE_PROCESS"

local type OutputNotebookFormat = "HTML"

local type IdcUserAssignment = "REQUIRED" | "OPTIONAL"

local type NotebookExecutionStatus = "START_PENDING" | "STARTING" | "RUNNING" | "FINISHING" | "FINISHED" | "FAILING" | "FAILED" | "STOP_PENDING" | "STOPPING" | "STOPPED"

local type PersistentAppUIType = "SHS" | "TEZ" | "YTS"

local type InstanceFleetType = "MASTER" | "CORE" | "TASK"

local type RepoUpgradeOnBoot = "SECURITY" | "NONE"

local record M
    AddInstanceFleetInput: AddInstanceFleetInput
    AddInstanceFleetOutput: AddInstanceFleetOutput
    AddInstanceGroupsInput: AddInstanceGroupsInput
    AddInstanceGroupsOutput: AddInstanceGroupsOutput
    AddJobFlowStepsInput: AddJobFlowStepsInput
    AddJobFlowStepsOutput: AddJobFlowStepsOutput
    AddTagsInput: AddTagsInput
    AddTagsOutput: AddTagsOutput
    CancelStepsInput: CancelStepsInput
    CancelStepsOutput: CancelStepsOutput
    CreatePersistentAppUIInput: CreatePersistentAppUIInput
    CreatePersistentAppUIOutput: CreatePersistentAppUIOutput
    CreateSecurityConfigurationInput: CreateSecurityConfigurationInput
    CreateSecurityConfigurationOutput: CreateSecurityConfigurationOutput
    CreateStudioInput: CreateStudioInput
    CreateStudioOutput: CreateStudioOutput
    CreateStudioSessionMappingInput: CreateStudioSessionMappingInput
    CreateStudioSessionMappingOutput: CreateStudioSessionMappingOutput
    DeleteSecurityConfigurationInput: DeleteSecurityConfigurationInput
    DeleteSecurityConfigurationOutput: DeleteSecurityConfigurationOutput
    DeleteStudioInput: DeleteStudioInput
    DeleteStudioOutput: DeleteStudioOutput
    DeleteStudioSessionMappingInput: DeleteStudioSessionMappingInput
    DeleteStudioSessionMappingOutput: DeleteStudioSessionMappingOutput
    DescribeClusterInput: DescribeClusterInput
    DescribeClusterOutput: DescribeClusterOutput
    DescribeJobFlowsInput: DescribeJobFlowsInput
    DescribeJobFlowsOutput: DescribeJobFlowsOutput
    DescribeNotebookExecutionInput: DescribeNotebookExecutionInput
    DescribeNotebookExecutionOutput: DescribeNotebookExecutionOutput
    DescribePersistentAppUIInput: DescribePersistentAppUIInput
    DescribePersistentAppUIOutput: DescribePersistentAppUIOutput
    DescribeReleaseLabelInput: DescribeReleaseLabelInput
    DescribeReleaseLabelOutput: DescribeReleaseLabelOutput
    DescribeSecurityConfigurationInput: DescribeSecurityConfigurationInput
    DescribeSecurityConfigurationOutput: DescribeSecurityConfigurationOutput
    DescribeStepInput: DescribeStepInput
    DescribeStepOutput: DescribeStepOutput
    DescribeStudioInput: DescribeStudioInput
    DescribeStudioOutput: DescribeStudioOutput
    GetAutoTerminationPolicyInput: GetAutoTerminationPolicyInput
    GetAutoTerminationPolicyOutput: GetAutoTerminationPolicyOutput
    GetBlockPublicAccessConfigurationInput: GetBlockPublicAccessConfigurationInput
    GetBlockPublicAccessConfigurationOutput: GetBlockPublicAccessConfigurationOutput
    GetClusterSessionCredentialsInput: GetClusterSessionCredentialsInput
    GetClusterSessionCredentialsOutput: GetClusterSessionCredentialsOutput
    GetManagedScalingPolicyInput: GetManagedScalingPolicyInput
    GetManagedScalingPolicyOutput: GetManagedScalingPolicyOutput
    GetOnClusterAppUIPresignedURLInput: GetOnClusterAppUIPresignedURLInput
    GetOnClusterAppUIPresignedURLOutput: GetOnClusterAppUIPresignedURLOutput
    GetPersistentAppUIPresignedURLInput: GetPersistentAppUIPresignedURLInput
    GetPersistentAppUIPresignedURLOutput: GetPersistentAppUIPresignedURLOutput
    GetStudioSessionMappingInput: GetStudioSessionMappingInput
    GetStudioSessionMappingOutput: GetStudioSessionMappingOutput
    ListBootstrapActionsInput: ListBootstrapActionsInput
    ListBootstrapActionsOutput: ListBootstrapActionsOutput
    ListClustersInput: ListClustersInput
    ListClustersOutput: ListClustersOutput
    ListInstanceFleetsInput: ListInstanceFleetsInput
    ListInstanceFleetsOutput: ListInstanceFleetsOutput
    ListInstanceGroupsInput: ListInstanceGroupsInput
    ListInstanceGroupsOutput: ListInstanceGroupsOutput
    ListInstancesInput: ListInstancesInput
    ListInstancesOutput: ListInstancesOutput
    ListNotebookExecutionsInput: ListNotebookExecutionsInput
    ListNotebookExecutionsOutput: ListNotebookExecutionsOutput
    ListReleaseLabelsInput: ListReleaseLabelsInput
    ListReleaseLabelsOutput: ListReleaseLabelsOutput
    ListSecurityConfigurationsInput: ListSecurityConfigurationsInput
    ListSecurityConfigurationsOutput: ListSecurityConfigurationsOutput
    ListStepsInput: ListStepsInput
    ListStepsOutput: ListStepsOutput
    ListStudiosInput: ListStudiosInput
    ListStudiosOutput: ListStudiosOutput
    ListStudioSessionMappingsInput: ListStudioSessionMappingsInput
    ListStudioSessionMappingsOutput: ListStudioSessionMappingsOutput
    ListSupportedInstanceTypesInput: ListSupportedInstanceTypesInput
    ListSupportedInstanceTypesOutput: ListSupportedInstanceTypesOutput
    ModifyClusterInput: ModifyClusterInput
    ModifyClusterOutput: ModifyClusterOutput
    ModifyInstanceFleetInput: ModifyInstanceFleetInput
    ModifyInstanceFleetOutput: ModifyInstanceFleetOutput
    ModifyInstanceGroupsInput: ModifyInstanceGroupsInput
    ModifyInstanceGroupsOutput: ModifyInstanceGroupsOutput
    PutAutoScalingPolicyInput: PutAutoScalingPolicyInput
    PutAutoScalingPolicyOutput: PutAutoScalingPolicyOutput
    PutAutoTerminationPolicyInput: PutAutoTerminationPolicyInput
    PutAutoTerminationPolicyOutput: PutAutoTerminationPolicyOutput
    PutBlockPublicAccessConfigurationInput: PutBlockPublicAccessConfigurationInput
    PutBlockPublicAccessConfigurationOutput: PutBlockPublicAccessConfigurationOutput
    PutManagedScalingPolicyInput: PutManagedScalingPolicyInput
    PutManagedScalingPolicyOutput: PutManagedScalingPolicyOutput
    RemoveAutoScalingPolicyInput: RemoveAutoScalingPolicyInput
    RemoveAutoScalingPolicyOutput: RemoveAutoScalingPolicyOutput
    RemoveAutoTerminationPolicyInput: RemoveAutoTerminationPolicyInput
    RemoveAutoTerminationPolicyOutput: RemoveAutoTerminationPolicyOutput
    RemoveManagedScalingPolicyInput: RemoveManagedScalingPolicyInput
    RemoveManagedScalingPolicyOutput: RemoveManagedScalingPolicyOutput
    RemoveTagsInput: RemoveTagsInput
    RemoveTagsOutput: RemoveTagsOutput
    RunJobFlowInput: RunJobFlowInput
    RunJobFlowOutput: RunJobFlowOutput
    SetKeepJobFlowAliveWhenNoStepsInput: SetKeepJobFlowAliveWhenNoStepsInput
    SetKeepJobFlowAliveWhenNoStepsOutput: SetKeepJobFlowAliveWhenNoStepsOutput
    SetTerminationProtectionInput: SetTerminationProtectionInput
    SetTerminationProtectionOutput: SetTerminationProtectionOutput
    SetUnhealthyNodeReplacementInput: SetUnhealthyNodeReplacementInput
    SetUnhealthyNodeReplacementOutput: SetUnhealthyNodeReplacementOutput
    SetVisibleToAllUsersInput: SetVisibleToAllUsersInput
    SetVisibleToAllUsersOutput: SetVisibleToAllUsersOutput
    StartNotebookExecutionInput: StartNotebookExecutionInput
    StartNotebookExecutionOutput: StartNotebookExecutionOutput
    StopNotebookExecutionInput: StopNotebookExecutionInput
    StopNotebookExecutionOutput: StopNotebookExecutionOutput
    TerminateJobFlowsInput: TerminateJobFlowsInput
    TerminateJobFlowsOutput: TerminateJobFlowsOutput
    UpdateStudioInput: UpdateStudioInput
    UpdateStudioOutput: UpdateStudioOutput
    UpdateStudioSessionMappingInput: UpdateStudioSessionMappingInput
    UpdateStudioSessionMappingOutput: UpdateStudioSessionMappingOutput
end

return M
