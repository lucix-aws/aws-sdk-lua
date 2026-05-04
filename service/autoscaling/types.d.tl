local record AttachInstancesInput
    InstanceIds: {string}
    AutoScalingGroupName: string
end

local record AttachInstancesOutput
end

local record AttachLoadBalancersInput
    AutoScalingGroupName: string
    LoadBalancerNames: {string}
end

local record AttachLoadBalancersOutput
end

local record AttachLoadBalancerTargetGroupsInput
    AutoScalingGroupName: string
    TargetGroupARNs: {string}
end

local record AttachLoadBalancerTargetGroupsOutput
end

local record AttachTrafficSourcesInput
    AutoScalingGroupName: string
    TrafficSources: {TrafficSourceIdentifier}
    SkipZonalShiftValidation: boolean
end

local record AttachTrafficSourcesOutput
end

local record BatchDeleteScheduledActionInput
    AutoScalingGroupName: string
    ScheduledActionNames: {string}
end

local record BatchDeleteScheduledActionOutput
    FailedScheduledActions: {FailedScheduledUpdateGroupActionRequest}
end

local record BatchPutScheduledUpdateGroupActionInput
    AutoScalingGroupName: string
    ScheduledUpdateGroupActions: {ScheduledUpdateGroupActionRequest}
end

local record BatchPutScheduledUpdateGroupActionOutput
    FailedScheduledUpdateGroupActions: {FailedScheduledUpdateGroupActionRequest}
end

local record CancelInstanceRefreshInput
    AutoScalingGroupName: string
    WaitForTransitioningInstances: boolean
end

local record CancelInstanceRefreshOutput
    InstanceRefreshId: string
end

local record CompleteLifecycleActionInput
    LifecycleHookName: string
    AutoScalingGroupName: string
    LifecycleActionToken: string
    LifecycleActionResult: string
    InstanceId: string
end

local record CompleteLifecycleActionOutput
end

local record CreateAutoScalingGroupInput
    AutoScalingGroupName: string
    LaunchConfigurationName: string
    LaunchTemplate: LaunchTemplateSpecification
    MixedInstancesPolicy: MixedInstancesPolicy
    InstanceId: string
    MinSize: number
    MaxSize: number
    DesiredCapacity: number
    DefaultCooldown: number
    AvailabilityZones: {string}
    AvailabilityZoneIds: {string}
    LoadBalancerNames: {string}
    TargetGroupARNs: {string}
    HealthCheckType: string
    HealthCheckGracePeriod: number
    PlacementGroup: string
    VPCZoneIdentifier: string
    TerminationPolicies: {string}
    NewInstancesProtectedFromScaleIn: boolean
    CapacityRebalance: boolean
    LifecycleHookSpecificationList: {LifecycleHookSpecification}
    DeletionProtection: string
    Tags: {Tag}
    ServiceLinkedRoleARN: string
    MaxInstanceLifetime: number
    Context: string
    DesiredCapacityType: string
    DefaultInstanceWarmup: number
    TrafficSources: {TrafficSourceIdentifier}
    InstanceMaintenancePolicy: InstanceMaintenancePolicy
    AvailabilityZoneDistribution: AvailabilityZoneDistribution
    AvailabilityZoneImpairmentPolicy: AvailabilityZoneImpairmentPolicy
    SkipZonalShiftValidation: boolean
    CapacityReservationSpecification: CapacityReservationSpecification
    InstanceLifecyclePolicy: InstanceLifecyclePolicy
end

local record CreateAutoScalingGroupOutput
end

local record CreateLaunchConfigurationInput
    LaunchConfigurationName: string
    ImageId: string
    KeyName: string
    SecurityGroups: {string}
    ClassicLinkVPCId: string
    ClassicLinkVPCSecurityGroups: {string}
    UserData: string
    InstanceId: string
    InstanceType: string
    KernelId: string
    RamdiskId: string
    BlockDeviceMappings: {BlockDeviceMapping}
    InstanceMonitoring: InstanceMonitoring
    SpotPrice: string
    IamInstanceProfile: string
    EbsOptimized: boolean
    AssociatePublicIpAddress: boolean
    PlacementTenancy: string
    MetadataOptions: InstanceMetadataOptions
end

local record CreateLaunchConfigurationOutput
end

local record CreateOrUpdateTagsInput
    Tags: {Tag}
end

local record CreateOrUpdateTagsOutput
end

local record DeleteAutoScalingGroupInput
    AutoScalingGroupName: string
    ForceDelete: boolean
end

local record DeleteAutoScalingGroupOutput
end

local record DeleteLaunchConfigurationInput
    LaunchConfigurationName: string
end

local record DeleteLaunchConfigurationOutput
end

local record DeleteLifecycleHookInput
    LifecycleHookName: string
    AutoScalingGroupName: string
end

local record DeleteLifecycleHookOutput
end

local record DeleteNotificationConfigurationInput
    AutoScalingGroupName: string
    TopicARN: string
end

local record DeleteNotificationConfigurationOutput
end

local record DeletePolicyInput
    AutoScalingGroupName: string
    PolicyName: string
end

local record DeletePolicyOutput
end

local record DeleteScheduledActionInput
    AutoScalingGroupName: string
    ScheduledActionName: string
end

local record DeleteScheduledActionOutput
end

local record DeleteTagsInput
    Tags: {Tag}
end

local record DeleteTagsOutput
end

local record DeleteWarmPoolInput
    AutoScalingGroupName: string
    ForceDelete: boolean
end

local record DeleteWarmPoolOutput
end

local record DescribeAccountLimitsInput
end

local record DescribeAccountLimitsOutput
    MaxNumberOfAutoScalingGroups: number
    MaxNumberOfLaunchConfigurations: number
    NumberOfAutoScalingGroups: number
    NumberOfLaunchConfigurations: number
end

local record DescribeAdjustmentTypesInput
end

local record DescribeAdjustmentTypesOutput
    AdjustmentTypes: {AdjustmentType}
end

local record DescribeAutoScalingGroupsInput
    AutoScalingGroupNames: {string}
    IncludeInstances: boolean
    NextToken: string
    MaxRecords: number
    Filters: {Filter}
end

local record DescribeAutoScalingGroupsOutput
    AutoScalingGroups: {AutoScalingGroup}
    NextToken: string
end

local record DescribeAutoScalingInstancesInput
    InstanceIds: {string}
    MaxRecords: number
    NextToken: string
end

local record DescribeAutoScalingInstancesOutput
    AutoScalingInstances: {AutoScalingInstanceDetails}
    NextToken: string
end

local record DescribeAutoScalingNotificationTypesInput
end

local record DescribeAutoScalingNotificationTypesOutput
    AutoScalingNotificationTypes: {string}
end

local record DescribeInstanceRefreshesInput
    AutoScalingGroupName: string
    InstanceRefreshIds: {string}
    NextToken: string
    MaxRecords: number
end

local record DescribeInstanceRefreshesOutput
    InstanceRefreshes: {InstanceRefresh}
    NextToken: string
end

local record DescribeLaunchConfigurationsInput
    LaunchConfigurationNames: {string}
    NextToken: string
    MaxRecords: number
end

local record DescribeLaunchConfigurationsOutput
    LaunchConfigurations: {LaunchConfiguration}
    NextToken: string
end

local record DescribeLifecycleHooksInput
    AutoScalingGroupName: string
    LifecycleHookNames: {string}
end

local record DescribeLifecycleHooksOutput
    LifecycleHooks: {LifecycleHook}
end

local record DescribeLifecycleHookTypesInput
end

local record DescribeLifecycleHookTypesOutput
    LifecycleHookTypes: {string}
end

local record DescribeLoadBalancersInput
    AutoScalingGroupName: string
    NextToken: string
    MaxRecords: number
end

local record DescribeLoadBalancersOutput
    LoadBalancers: {LoadBalancerState}
    NextToken: string
end

local record DescribeLoadBalancerTargetGroupsInput
    AutoScalingGroupName: string
    NextToken: string
    MaxRecords: number
end

local record DescribeLoadBalancerTargetGroupsOutput
    LoadBalancerTargetGroups: {LoadBalancerTargetGroupState}
    NextToken: string
end

local record DescribeMetricCollectionTypesInput
end

local record DescribeMetricCollectionTypesOutput
    Metrics: {MetricCollectionType}
    Granularities: {MetricGranularityType}
end

local record DescribeNotificationConfigurationsInput
    AutoScalingGroupNames: {string}
    NextToken: string
    MaxRecords: number
end

local record DescribeNotificationConfigurationsOutput
    NotificationConfigurations: {NotificationConfiguration}
    NextToken: string
end

local record DescribePoliciesInput
    AutoScalingGroupName: string
    PolicyNames: {string}
    PolicyTypes: {string}
    NextToken: string
    MaxRecords: number
end

local record DescribePoliciesOutput
    ScalingPolicies: {ScalingPolicy}
    NextToken: string
end

local record DescribeScalingActivitiesInput
    ActivityIds: {string}
    AutoScalingGroupName: string
    IncludeDeletedGroups: boolean
    MaxRecords: number
    NextToken: string
    Filters: {Filter}
end

local record DescribeScalingActivitiesOutput
    Activities: {Activity}
    NextToken: string
end

local record DescribeScalingProcessTypesInput
end

local record DescribeScalingProcessTypesOutput
    Processes: {ProcessType}
end

local record DescribeScheduledActionsInput
    AutoScalingGroupName: string
    ScheduledActionNames: {string}
    StartTime: number
    EndTime: number
    NextToken: string
    MaxRecords: number
end

local record DescribeScheduledActionsOutput
    ScheduledUpdateGroupActions: {ScheduledUpdateGroupAction}
    NextToken: string
end

local record DescribeTagsInput
    Filters: {Filter}
    NextToken: string
    MaxRecords: number
end

local record DescribeTagsOutput
    Tags: {TagDescription}
    NextToken: string
end

local record DescribeTerminationPolicyTypesInput
end

local record DescribeTerminationPolicyTypesOutput
    TerminationPolicyTypes: {string}
end

local record DescribeTrafficSourcesInput
    AutoScalingGroupName: string
    TrafficSourceType: string
    NextToken: string
    MaxRecords: number
end

local record DescribeTrafficSourcesOutput
    TrafficSources: {TrafficSourceState}
    NextToken: string
end

local record DescribeWarmPoolInput
    AutoScalingGroupName: string
    MaxRecords: number
    NextToken: string
end

local record DescribeWarmPoolOutput
    WarmPoolConfiguration: WarmPoolConfiguration
    Instances: {Instance}
    NextToken: string
end

local record DetachInstancesInput
    InstanceIds: {string}
    AutoScalingGroupName: string
    ShouldDecrementDesiredCapacity: boolean
end

local record DetachInstancesOutput
    Activities: {Activity}
end

local record DetachLoadBalancersInput
    AutoScalingGroupName: string
    LoadBalancerNames: {string}
end

local record DetachLoadBalancersOutput
end

local record DetachLoadBalancerTargetGroupsInput
    AutoScalingGroupName: string
    TargetGroupARNs: {string}
end

local record DetachLoadBalancerTargetGroupsOutput
end

local record DetachTrafficSourcesInput
    AutoScalingGroupName: string
    TrafficSources: {TrafficSourceIdentifier}
end

local record DetachTrafficSourcesOutput
end

local record DisableMetricsCollectionInput
    AutoScalingGroupName: string
    Metrics: {string}
end

local record DisableMetricsCollectionOutput
end

local record EnableMetricsCollectionInput
    AutoScalingGroupName: string
    Metrics: {string}
    Granularity: string
end

local record EnableMetricsCollectionOutput
end

local record EnterStandbyInput
    InstanceIds: {string}
    AutoScalingGroupName: string
    ShouldDecrementDesiredCapacity: boolean
end

local record EnterStandbyOutput
    Activities: {Activity}
end

local record ExecutePolicyInput
    AutoScalingGroupName: string
    PolicyName: string
    HonorCooldown: boolean
    MetricValue: number
    BreachThreshold: number
end

local record ExecutePolicyOutput
end

local record ExitStandbyInput
    InstanceIds: {string}
    AutoScalingGroupName: string
end

local record ExitStandbyOutput
    Activities: {Activity}
end

local record GetPredictiveScalingForecastInput
    AutoScalingGroupName: string
    PolicyName: string
    StartTime: number
    EndTime: number
end

local record GetPredictiveScalingForecastOutput
    LoadForecast: {LoadForecast}
    CapacityForecast: CapacityForecast
    UpdateTime: number
end

local record LaunchInstancesInput
    AutoScalingGroupName: string
    RequestedCapacity: number
    ClientToken: string
    AvailabilityZones: {string}
    AvailabilityZoneIds: {string}
    SubnetIds: {string}
    RetryStrategy: string
end

local record LaunchInstancesOutput
    AutoScalingGroupName: string
    ClientToken: string
    Instances: {InstanceCollection}
    Errors: {LaunchInstancesError}
end

local record PutLifecycleHookInput
    LifecycleHookName: string
    AutoScalingGroupName: string
    LifecycleTransition: string
    RoleARN: string
    NotificationTargetARN: string
    NotificationMetadata: string
    HeartbeatTimeout: number
    DefaultResult: string
end

local record PutLifecycleHookOutput
end

local record PutNotificationConfigurationInput
    AutoScalingGroupName: string
    TopicARN: string
    NotificationTypes: {string}
end

local record PutNotificationConfigurationOutput
end

local record PutScalingPolicyInput
    AutoScalingGroupName: string
    PolicyName: string
    PolicyType: string
    AdjustmentType: string
    MinAdjustmentStep: number
    MinAdjustmentMagnitude: number
    ScalingAdjustment: number
    Cooldown: number
    MetricAggregationType: string
    StepAdjustments: {StepAdjustment}
    EstimatedInstanceWarmup: number
    TargetTrackingConfiguration: TargetTrackingConfiguration
    Enabled: boolean
    PredictiveScalingConfiguration: PredictiveScalingConfiguration
end

local record PutScalingPolicyOutput
    PolicyARN: string
    Alarms: {Alarm}
end

local record PutScheduledUpdateGroupActionInput
    AutoScalingGroupName: string
    ScheduledActionName: string
    Time: number
    StartTime: number
    EndTime: number
    Recurrence: string
    MinSize: number
    MaxSize: number
    DesiredCapacity: number
    TimeZone: string
end

local record PutScheduledUpdateGroupActionOutput
end

local record PutWarmPoolInput
    AutoScalingGroupName: string
    MaxGroupPreparedCapacity: number
    MinSize: number
    PoolState: string
    InstanceReusePolicy: InstanceReusePolicy
end

local record PutWarmPoolOutput
end

local record RecordLifecycleActionHeartbeatInput
    LifecycleHookName: string
    AutoScalingGroupName: string
    LifecycleActionToken: string
    InstanceId: string
end

local record RecordLifecycleActionHeartbeatOutput
end

local record ResumeProcessesInput
    AutoScalingGroupName: string
    ScalingProcesses: {string}
end

local record ResumeProcessesOutput
end

local record RollbackInstanceRefreshInput
    AutoScalingGroupName: string
end

local record RollbackInstanceRefreshOutput
    InstanceRefreshId: string
end

local record SetDesiredCapacityInput
    AutoScalingGroupName: string
    DesiredCapacity: number
    HonorCooldown: boolean
end

local record SetDesiredCapacityOutput
end

local record SetInstanceHealthInput
    InstanceId: string
    HealthStatus: string
    ShouldRespectGracePeriod: boolean
end

local record SetInstanceHealthOutput
end

local record SetInstanceProtectionInput
    InstanceIds: {string}
    AutoScalingGroupName: string
    ProtectedFromScaleIn: boolean
end

local record SetInstanceProtectionOutput
end

local record StartInstanceRefreshInput
    AutoScalingGroupName: string
    Strategy: string
    DesiredConfiguration: DesiredConfiguration
    Preferences: RefreshPreferences
end

local record StartInstanceRefreshOutput
    InstanceRefreshId: string
end

local record SuspendProcessesInput
    AutoScalingGroupName: string
    ScalingProcesses: {string}
end

local record SuspendProcessesOutput
end

local record TerminateInstanceInAutoScalingGroupInput
    InstanceId: string
    ShouldDecrementDesiredCapacity: boolean
end

local record TerminateInstanceInAutoScalingGroupOutput
    Activity: Activity
end

local record UpdateAutoScalingGroupInput
    AutoScalingGroupName: string
    LaunchConfigurationName: string
    LaunchTemplate: LaunchTemplateSpecification
    MixedInstancesPolicy: MixedInstancesPolicy
    MinSize: number
    MaxSize: number
    DesiredCapacity: number
    DefaultCooldown: number
    AvailabilityZones: {string}
    AvailabilityZoneIds: {string}
    HealthCheckType: string
    HealthCheckGracePeriod: number
    PlacementGroup: string
    VPCZoneIdentifier: string
    TerminationPolicies: {string}
    NewInstancesProtectedFromScaleIn: boolean
    ServiceLinkedRoleARN: string
    MaxInstanceLifetime: number
    CapacityRebalance: boolean
    Context: string
    DesiredCapacityType: string
    DefaultInstanceWarmup: number
    InstanceMaintenancePolicy: InstanceMaintenancePolicy
    AvailabilityZoneDistribution: AvailabilityZoneDistribution
    AvailabilityZoneImpairmentPolicy: AvailabilityZoneImpairmentPolicy
    SkipZonalShiftValidation: boolean
    CapacityReservationSpecification: CapacityReservationSpecification
    InstanceLifecyclePolicy: InstanceLifecyclePolicy
    DeletionProtection: string
end

local record UpdateAutoScalingGroupOutput
end

local record ResourceContentionFault
    message: string
end

local record ServiceLinkedRoleFailure
    message: string
end

local record InstanceRefreshInProgressFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ServiceLinkedRoleFailure
    message: string
end

local record InstanceRefreshInProgressFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ServiceLinkedRoleFailure
    message: string
end

local record InstanceRefreshInProgressFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ServiceLinkedRoleFailure
    message: string
end

local record ResourceContentionFault
    message: string
end

local record AlreadyExistsFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ActiveInstanceRefreshNotFoundFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record AlreadyExistsFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ServiceLinkedRoleFailure
    message: string
end

local record AlreadyExistsFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record AlreadyExistsFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceInUseFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceInUseFault
    message: string
end

local record ScalingActivityInProgressFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceInUseFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ServiceLinkedRoleFailure
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceInUseFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceInUseFault
    message: string
end

local record ScalingActivityInProgressFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ServiceLinkedRoleFailure
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InvalidNextToken
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InvalidNextToken
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ScalingActivityInProgressFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record IdempotentParameterMismatchError
    Message: string
end

local record ResourceContentionFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ServiceLinkedRoleFailure
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ServiceLinkedRoleFailure
    message: string
end

local record AlreadyExistsFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InstanceRefreshInProgressFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceInUseFault
    message: string
end

local record ActiveInstanceRefreshNotFoundFault
    message: string
end

local record IrreversibleInstanceRefreshFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ScalingActivityInProgressFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record InstanceRefreshInProgressFault
    message: string
end

local record LimitExceededFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ResourceInUseFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ScalingActivityInProgressFault
    message: string
end

local record ResourceContentionFault
    message: string
end

local record ScalingActivityInProgressFault
    message: string
end

local record ServiceLinkedRoleFailure
    message: string
end

local type RetryStrategy = "retry-with-group-configuration" | "none"

local type DeletionProtection = "none" | "prevent-force-deletion" | "prevent-all-deletion"

local type WarmPoolState = "Stopped" | "Running" | "Hibernated"

local type RefreshStrategy = "Rolling" | "ReplaceRootVolume"

local record M
    AttachInstancesInput: AttachInstancesInput
    AttachInstancesOutput: AttachInstancesOutput
    AttachLoadBalancersInput: AttachLoadBalancersInput
    AttachLoadBalancersOutput: AttachLoadBalancersOutput
    AttachLoadBalancerTargetGroupsInput: AttachLoadBalancerTargetGroupsInput
    AttachLoadBalancerTargetGroupsOutput: AttachLoadBalancerTargetGroupsOutput
    AttachTrafficSourcesInput: AttachTrafficSourcesInput
    AttachTrafficSourcesOutput: AttachTrafficSourcesOutput
    BatchDeleteScheduledActionInput: BatchDeleteScheduledActionInput
    BatchDeleteScheduledActionOutput: BatchDeleteScheduledActionOutput
    BatchPutScheduledUpdateGroupActionInput: BatchPutScheduledUpdateGroupActionInput
    BatchPutScheduledUpdateGroupActionOutput: BatchPutScheduledUpdateGroupActionOutput
    CancelInstanceRefreshInput: CancelInstanceRefreshInput
    CancelInstanceRefreshOutput: CancelInstanceRefreshOutput
    CompleteLifecycleActionInput: CompleteLifecycleActionInput
    CompleteLifecycleActionOutput: CompleteLifecycleActionOutput
    CreateAutoScalingGroupInput: CreateAutoScalingGroupInput
    CreateAutoScalingGroupOutput: CreateAutoScalingGroupOutput
    CreateLaunchConfigurationInput: CreateLaunchConfigurationInput
    CreateLaunchConfigurationOutput: CreateLaunchConfigurationOutput
    CreateOrUpdateTagsInput: CreateOrUpdateTagsInput
    CreateOrUpdateTagsOutput: CreateOrUpdateTagsOutput
    DeleteAutoScalingGroupInput: DeleteAutoScalingGroupInput
    DeleteAutoScalingGroupOutput: DeleteAutoScalingGroupOutput
    DeleteLaunchConfigurationInput: DeleteLaunchConfigurationInput
    DeleteLaunchConfigurationOutput: DeleteLaunchConfigurationOutput
    DeleteLifecycleHookInput: DeleteLifecycleHookInput
    DeleteLifecycleHookOutput: DeleteLifecycleHookOutput
    DeleteNotificationConfigurationInput: DeleteNotificationConfigurationInput
    DeleteNotificationConfigurationOutput: DeleteNotificationConfigurationOutput
    DeletePolicyInput: DeletePolicyInput
    DeletePolicyOutput: DeletePolicyOutput
    DeleteScheduledActionInput: DeleteScheduledActionInput
    DeleteScheduledActionOutput: DeleteScheduledActionOutput
    DeleteTagsInput: DeleteTagsInput
    DeleteTagsOutput: DeleteTagsOutput
    DeleteWarmPoolInput: DeleteWarmPoolInput
    DeleteWarmPoolOutput: DeleteWarmPoolOutput
    DescribeAccountLimitsInput: DescribeAccountLimitsInput
    DescribeAccountLimitsOutput: DescribeAccountLimitsOutput
    DescribeAdjustmentTypesInput: DescribeAdjustmentTypesInput
    DescribeAdjustmentTypesOutput: DescribeAdjustmentTypesOutput
    DescribeAutoScalingGroupsInput: DescribeAutoScalingGroupsInput
    DescribeAutoScalingGroupsOutput: DescribeAutoScalingGroupsOutput
    DescribeAutoScalingInstancesInput: DescribeAutoScalingInstancesInput
    DescribeAutoScalingInstancesOutput: DescribeAutoScalingInstancesOutput
    DescribeAutoScalingNotificationTypesInput: DescribeAutoScalingNotificationTypesInput
    DescribeAutoScalingNotificationTypesOutput: DescribeAutoScalingNotificationTypesOutput
    DescribeInstanceRefreshesInput: DescribeInstanceRefreshesInput
    DescribeInstanceRefreshesOutput: DescribeInstanceRefreshesOutput
    DescribeLaunchConfigurationsInput: DescribeLaunchConfigurationsInput
    DescribeLaunchConfigurationsOutput: DescribeLaunchConfigurationsOutput
    DescribeLifecycleHooksInput: DescribeLifecycleHooksInput
    DescribeLifecycleHooksOutput: DescribeLifecycleHooksOutput
    DescribeLifecycleHookTypesInput: DescribeLifecycleHookTypesInput
    DescribeLifecycleHookTypesOutput: DescribeLifecycleHookTypesOutput
    DescribeLoadBalancersInput: DescribeLoadBalancersInput
    DescribeLoadBalancersOutput: DescribeLoadBalancersOutput
    DescribeLoadBalancerTargetGroupsInput: DescribeLoadBalancerTargetGroupsInput
    DescribeLoadBalancerTargetGroupsOutput: DescribeLoadBalancerTargetGroupsOutput
    DescribeMetricCollectionTypesInput: DescribeMetricCollectionTypesInput
    DescribeMetricCollectionTypesOutput: DescribeMetricCollectionTypesOutput
    DescribeNotificationConfigurationsInput: DescribeNotificationConfigurationsInput
    DescribeNotificationConfigurationsOutput: DescribeNotificationConfigurationsOutput
    DescribePoliciesInput: DescribePoliciesInput
    DescribePoliciesOutput: DescribePoliciesOutput
    DescribeScalingActivitiesInput: DescribeScalingActivitiesInput
    DescribeScalingActivitiesOutput: DescribeScalingActivitiesOutput
    DescribeScalingProcessTypesInput: DescribeScalingProcessTypesInput
    DescribeScalingProcessTypesOutput: DescribeScalingProcessTypesOutput
    DescribeScheduledActionsInput: DescribeScheduledActionsInput
    DescribeScheduledActionsOutput: DescribeScheduledActionsOutput
    DescribeTagsInput: DescribeTagsInput
    DescribeTagsOutput: DescribeTagsOutput
    DescribeTerminationPolicyTypesInput: DescribeTerminationPolicyTypesInput
    DescribeTerminationPolicyTypesOutput: DescribeTerminationPolicyTypesOutput
    DescribeTrafficSourcesInput: DescribeTrafficSourcesInput
    DescribeTrafficSourcesOutput: DescribeTrafficSourcesOutput
    DescribeWarmPoolInput: DescribeWarmPoolInput
    DescribeWarmPoolOutput: DescribeWarmPoolOutput
    DetachInstancesInput: DetachInstancesInput
    DetachInstancesOutput: DetachInstancesOutput
    DetachLoadBalancersInput: DetachLoadBalancersInput
    DetachLoadBalancersOutput: DetachLoadBalancersOutput
    DetachLoadBalancerTargetGroupsInput: DetachLoadBalancerTargetGroupsInput
    DetachLoadBalancerTargetGroupsOutput: DetachLoadBalancerTargetGroupsOutput
    DetachTrafficSourcesInput: DetachTrafficSourcesInput
    DetachTrafficSourcesOutput: DetachTrafficSourcesOutput
    DisableMetricsCollectionInput: DisableMetricsCollectionInput
    DisableMetricsCollectionOutput: DisableMetricsCollectionOutput
    EnableMetricsCollectionInput: EnableMetricsCollectionInput
    EnableMetricsCollectionOutput: EnableMetricsCollectionOutput
    EnterStandbyInput: EnterStandbyInput
    EnterStandbyOutput: EnterStandbyOutput
    ExecutePolicyInput: ExecutePolicyInput
    ExecutePolicyOutput: ExecutePolicyOutput
    ExitStandbyInput: ExitStandbyInput
    ExitStandbyOutput: ExitStandbyOutput
    GetPredictiveScalingForecastInput: GetPredictiveScalingForecastInput
    GetPredictiveScalingForecastOutput: GetPredictiveScalingForecastOutput
    LaunchInstancesInput: LaunchInstancesInput
    LaunchInstancesOutput: LaunchInstancesOutput
    PutLifecycleHookInput: PutLifecycleHookInput
    PutLifecycleHookOutput: PutLifecycleHookOutput
    PutNotificationConfigurationInput: PutNotificationConfigurationInput
    PutNotificationConfigurationOutput: PutNotificationConfigurationOutput
    PutScalingPolicyInput: PutScalingPolicyInput
    PutScalingPolicyOutput: PutScalingPolicyOutput
    PutScheduledUpdateGroupActionInput: PutScheduledUpdateGroupActionInput
    PutScheduledUpdateGroupActionOutput: PutScheduledUpdateGroupActionOutput
    PutWarmPoolInput: PutWarmPoolInput
    PutWarmPoolOutput: PutWarmPoolOutput
    RecordLifecycleActionHeartbeatInput: RecordLifecycleActionHeartbeatInput
    RecordLifecycleActionHeartbeatOutput: RecordLifecycleActionHeartbeatOutput
    ResumeProcessesInput: ResumeProcessesInput
    ResumeProcessesOutput: ResumeProcessesOutput
    RollbackInstanceRefreshInput: RollbackInstanceRefreshInput
    RollbackInstanceRefreshOutput: RollbackInstanceRefreshOutput
    SetDesiredCapacityInput: SetDesiredCapacityInput
    SetDesiredCapacityOutput: SetDesiredCapacityOutput
    SetInstanceHealthInput: SetInstanceHealthInput
    SetInstanceHealthOutput: SetInstanceHealthOutput
    SetInstanceProtectionInput: SetInstanceProtectionInput
    SetInstanceProtectionOutput: SetInstanceProtectionOutput
    StartInstanceRefreshInput: StartInstanceRefreshInput
    StartInstanceRefreshOutput: StartInstanceRefreshOutput
    SuspendProcessesInput: SuspendProcessesInput
    SuspendProcessesOutput: SuspendProcessesOutput
    TerminateInstanceInAutoScalingGroupInput: TerminateInstanceInAutoScalingGroupInput
    TerminateInstanceInAutoScalingGroupOutput: TerminateInstanceInAutoScalingGroupOutput
    UpdateAutoScalingGroupInput: UpdateAutoScalingGroupInput
    UpdateAutoScalingGroupOutput: UpdateAutoScalingGroupOutput
end

return M
