local record DeleteScalingPolicyInput
    PolicyName: string
    ServiceNamespace: string
    ResourceId: string
    ScalableDimension: string
end

local record DeleteScalingPolicyOutput
end

local record DeleteScheduledActionInput
    ServiceNamespace: string
    ScheduledActionName: string
    ResourceId: string
    ScalableDimension: string
end

local record DeleteScheduledActionOutput
end

local record DeregisterScalableTargetInput
    ServiceNamespace: string
    ResourceId: string
    ScalableDimension: string
end

local record DeregisterScalableTargetOutput
end

local record DescribeScalableTargetsInput
    ServiceNamespace: string
    ResourceIds: {string}
    ScalableDimension: string
    MaxResults: number
    NextToken: string
end

local record DescribeScalableTargetsOutput
    ScalableTargets: {ScalableTarget}
    NextToken: string
end

local record DescribeScalingActivitiesInput
    ServiceNamespace: string
    ResourceId: string
    ScalableDimension: string
    MaxResults: number
    NextToken: string
    IncludeNotScaledActivities: boolean
end

local record DescribeScalingActivitiesOutput
    ScalingActivities: {ScalingActivity}
    NextToken: string
end

local record DescribeScalingPoliciesInput
    PolicyNames: {string}
    ServiceNamespace: string
    ResourceId: string
    ScalableDimension: string
    MaxResults: number
    NextToken: string
end

local record DescribeScalingPoliciesOutput
    ScalingPolicies: {ScalingPolicy}
    NextToken: string
end

local record DescribeScheduledActionsInput
    ScheduledActionNames: {string}
    ServiceNamespace: string
    ResourceId: string
    ScalableDimension: string
    MaxResults: number
    NextToken: string
end

local record DescribeScheduledActionsOutput
    ScheduledActions: {ScheduledAction}
    NextToken: string
end

local record GetPredictiveScalingForecastInput
    ServiceNamespace: string
    ResourceId: string
    ScalableDimension: string
    PolicyName: string
    StartTime: number
    EndTime: number
end

local record GetPredictiveScalingForecastOutput
    LoadForecast: {LoadForecast}
    CapacityForecast: CapacityForecast
    UpdateTime: number
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record PutScalingPolicyInput
    PolicyName: string
    ServiceNamespace: string
    ResourceId: string
    ScalableDimension: string
    PolicyType: string
    StepScalingPolicyConfiguration: StepScalingPolicyConfiguration
    TargetTrackingScalingPolicyConfiguration: TargetTrackingScalingPolicyConfiguration
    PredictiveScalingPolicyConfiguration: PredictiveScalingPolicyConfiguration
end

local record PutScalingPolicyOutput
    PolicyARN: string
    Alarms: {Alarm}
end

local record PutScheduledActionInput
    ServiceNamespace: string
    Schedule: string
    Timezone: string
    ScheduledActionName: string
    ResourceId: string
    ScalableDimension: string
    StartTime: number
    EndTime: number
    ScalableTargetAction: ScalableTargetAction
end

local record PutScheduledActionOutput
end

local record RegisterScalableTargetInput
    ServiceNamespace: string
    ResourceId: string
    ScalableDimension: string
    MinCapacity: number
    MaxCapacity: number
    RoleARN: string
    SuspendedState: SuspendedState
    Tags: {string : string}
end

local record RegisterScalableTargetOutput
    ScalableTargetARN: string
end

local record TagResourceInput
    ResourceARN: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record ObjectNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record ObjectNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record ObjectNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentUpdateException
    Message: string
end

local record FailedResourceAccessException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ConcurrentUpdateException
    Message: string
end

local record FailedResourceAccessException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ObjectNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ObjectNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentUpdateException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record TooManyTagsException
    Message: string
    ResourceName: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record ValidationException
    Message: string
end

local type ServiceNamespace = "ecs" | "elasticmapreduce" | "ec2" | "appstream" | "dynamodb" | "rds" | "sagemaker" | "custom-resource" | "comprehend" | "lambda" | "cassandra" | "kafka" | "elasticache" | "neptune" | "workspaces"

local type ScalableDimension = "ecs:service:DesiredCount" | "ec2:spot-fleet-request:TargetCapacity" | "elasticmapreduce:instancegroup:InstanceCount" | "appstream:fleet:DesiredCapacity" | "dynamodb:table:ReadCapacityUnits" | "dynamodb:table:WriteCapacityUnits" | "dynamodb:index:ReadCapacityUnits" | "dynamodb:index:WriteCapacityUnits" | "rds:cluster:ReadReplicaCount" | "sagemaker:variant:DesiredInstanceCount" | "custom-resource:ResourceType:Property" | "comprehend:document-classifier-endpoint:DesiredInferenceUnits" | "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits" | "lambda:function:ProvisionedConcurrency" | "cassandra:table:ReadCapacityUnits" | "cassandra:table:WriteCapacityUnits" | "kafka:broker-storage:VolumeSize" | "elasticache:cache-cluster:Nodes" | "elasticache:replication-group:NodeGroups" | "elasticache:replication-group:Replicas" | "neptune:cluster:ReadReplicaCount" | "sagemaker:variant:DesiredProvisionedConcurrency" | "sagemaker:inference-component:DesiredCopyCount" | "workspaces:workspacespool:DesiredUserSessions"

local type PolicyType = "StepScaling" | "TargetTrackingScaling" | "PredictiveScaling"

local record M
    DeleteScalingPolicyInput: DeleteScalingPolicyInput
    DeleteScalingPolicyOutput: DeleteScalingPolicyOutput
    DeleteScheduledActionInput: DeleteScheduledActionInput
    DeleteScheduledActionOutput: DeleteScheduledActionOutput
    DeregisterScalableTargetInput: DeregisterScalableTargetInput
    DeregisterScalableTargetOutput: DeregisterScalableTargetOutput
    DescribeScalableTargetsInput: DescribeScalableTargetsInput
    DescribeScalableTargetsOutput: DescribeScalableTargetsOutput
    DescribeScalingActivitiesInput: DescribeScalingActivitiesInput
    DescribeScalingActivitiesOutput: DescribeScalingActivitiesOutput
    DescribeScalingPoliciesInput: DescribeScalingPoliciesInput
    DescribeScalingPoliciesOutput: DescribeScalingPoliciesOutput
    DescribeScheduledActionsInput: DescribeScheduledActionsInput
    DescribeScheduledActionsOutput: DescribeScheduledActionsOutput
    GetPredictiveScalingForecastInput: GetPredictiveScalingForecastInput
    GetPredictiveScalingForecastOutput: GetPredictiveScalingForecastOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutScalingPolicyInput: PutScalingPolicyInput
    PutScalingPolicyOutput: PutScalingPolicyOutput
    PutScheduledActionInput: PutScheduledActionInput
    PutScheduledActionOutput: PutScheduledActionOutput
    RegisterScalableTargetInput: RegisterScalableTargetInput
    RegisterScalableTargetOutput: RegisterScalableTargetOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
