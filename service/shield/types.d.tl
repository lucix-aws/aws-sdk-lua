local record AssociateDRTLogBucketInput
    LogBucket: string
end

local record AssociateDRTLogBucketOutput
end

local record AssociateDRTRoleInput
    RoleArn: string
end

local record AssociateDRTRoleOutput
end

local record AssociateHealthCheckInput
    ProtectionId: string
    HealthCheckArn: string
end

local record AssociateHealthCheckOutput
end

local record AssociateProactiveEngagementDetailsInput
    EmergencyContactList: {EmergencyContact}
end

local record AssociateProactiveEngagementDetailsOutput
end

local record CreateProtectionInput
    Name: string
    ResourceArn: string
    Tags: {Tag}
end

local record CreateProtectionOutput
    ProtectionId: string
end

local record CreateProtectionGroupInput
    ProtectionGroupId: string
    Aggregation: string
    Pattern: string
    ResourceType: string
    Members: {string}
    Tags: {Tag}
end

local record CreateProtectionGroupOutput
end

local record CreateSubscriptionInput
end

local record CreateSubscriptionOutput
end

local record DeleteProtectionInput
    ProtectionId: string
end

local record DeleteProtectionOutput
end

local record DeleteProtectionGroupInput
    ProtectionGroupId: string
end

local record DeleteProtectionGroupOutput
end

local record DeleteSubscriptionInput
end

local record DeleteSubscriptionOutput
end

local record DescribeAttackInput
    AttackId: string
end

local record DescribeAttackOutput
    Attack: AttackDetail
end

local record DescribeAttackStatisticsInput
end

local record DescribeAttackStatisticsOutput
    TimeRange: TimeRange
    DataItems: {AttackStatisticsDataItem}
end

local record DescribeDRTAccessInput
end

local record DescribeDRTAccessOutput
    RoleArn: string
    LogBucketList: {string}
end

local record DescribeEmergencyContactSettingsInput
end

local record DescribeEmergencyContactSettingsOutput
    EmergencyContactList: {EmergencyContact}
end

local record DescribeProtectionInput
    ProtectionId: string
    ResourceArn: string
end

local record DescribeProtectionOutput
    Protection: Protection
end

local record DescribeProtectionGroupInput
    ProtectionGroupId: string
end

local record DescribeProtectionGroupOutput
    ProtectionGroup: ProtectionGroup
end

local record DescribeSubscriptionInput
end

local record DescribeSubscriptionOutput
    Subscription: Subscription
end

local record DisableApplicationLayerAutomaticResponseInput
    ResourceArn: string
end

local record DisableApplicationLayerAutomaticResponseOutput
end

local record DisableProactiveEngagementInput
end

local record DisableProactiveEngagementOutput
end

local record DisassociateDRTLogBucketInput
    LogBucket: string
end

local record DisassociateDRTLogBucketOutput
end

local record DisassociateDRTRoleInput
end

local record DisassociateDRTRoleOutput
end

local record DisassociateHealthCheckInput
    ProtectionId: string
    HealthCheckArn: string
end

local record DisassociateHealthCheckOutput
end

local record EnableApplicationLayerAutomaticResponseInput
    ResourceArn: string
    Action: ResponseAction
end

local record EnableApplicationLayerAutomaticResponseOutput
end

local record EnableProactiveEngagementInput
end

local record EnableProactiveEngagementOutput
end

local record GetSubscriptionStateInput
end

local record GetSubscriptionStateOutput
    SubscriptionState: string
end

local record ListAttacksInput
    ResourceArns: {string}
    StartTime: TimeRange
    EndTime: TimeRange
    NextToken: string
    MaxResults: number
end

local record ListAttacksOutput
    AttackSummaries: {AttackSummary}
    NextToken: string
end

local record ListProtectionGroupsInput
    NextToken: string
    MaxResults: number
    InclusionFilters: InclusionProtectionGroupFilters
end

local record ListProtectionGroupsOutput
    ProtectionGroups: {ProtectionGroup}
    NextToken: string
end

local record ListProtectionsInput
    NextToken: string
    MaxResults: number
    InclusionFilters: InclusionProtectionFilters
end

local record ListProtectionsOutput
    Protections: {Protection}
    NextToken: string
end

local record ListResourcesInProtectionGroupInput
    ProtectionGroupId: string
    NextToken: string
    MaxResults: number
end

local record ListResourcesInProtectionGroupOutput
    ResourceArns: {string}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateApplicationLayerAutomaticResponseInput
    ResourceArn: string
    Action: ResponseAction
end

local record UpdateApplicationLayerAutomaticResponseOutput
end

local record UpdateEmergencyContactSettingsInput
    EmergencyContactList: {EmergencyContact}
end

local record UpdateEmergencyContactSettingsOutput
end

local record UpdateProtectionGroupInput
    ProtectionGroupId: string
    Aggregation: string
    Pattern: string
    ResourceType: string
    Members: {string}
end

local record UpdateProtectionGroupOutput
end

local record UpdateSubscriptionInput
    AutoRenew: string
end

local record UpdateSubscriptionOutput
end

local record AccessDeniedForDependencyException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record LimitsExceededException
    message: string
    Type: string
    Limit: number
end

local record NoAssociatedRoleException
    message: string
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record AccessDeniedForDependencyException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InvalidResourceException
    message: string
end

local record LimitsExceededException
    message: string
    Type: string
    Limit: number
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InvalidResourceException
    message: string
end

local record LimitsExceededException
    message: string
    Type: string
    Limit: number
end

local record OptimisticLockException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record LimitsExceededException
    message: string
    Type: string
    Limit: number
end

local record OptimisticLockException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record LockedSubscriptionException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record AccessDeniedException
    message: string
end

local record InternalErrorException
    message: string
end

local record InternalErrorException
    message: string
end

local record InternalErrorException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record AccessDeniedForDependencyException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidOperationException
    message: string
end

local record NoAssociatedRoleException
    message: string
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidOperationException
    message: string
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InvalidResourceException
    message: string
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record LimitsExceededException
    message: string
    Type: string
    Limit: number
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InternalErrorException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidPaginationTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidResourceException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InvalidResourceException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record InvalidResourceException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidOperationException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record LockedSubscriptionException
    message: string
end

local record OptimisticLockException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceType: string
end

local type SubscriptionState = "ACTIVE" | "INACTIVE"

local type ProtectedResourceType = "CLOUDFRONT_DISTRIBUTION" | "ROUTE_53_HOSTED_ZONE" | "ELASTIC_IP_ALLOCATION" | "CLASSIC_LOAD_BALANCER" | "APPLICATION_LOAD_BALANCER" | "GLOBAL_ACCELERATOR"

local type ProtectionGroupPattern = "ALL" | "ARBITRARY" | "BY_RESOURCE_TYPE"

local type ProtectionGroupAggregation = "SUM" | "MEAN" | "MAX"

local type AutoRenew = "ENABLED" | "DISABLED"

local record M
    AssociateDRTLogBucketInput: AssociateDRTLogBucketInput
    AssociateDRTLogBucketOutput: AssociateDRTLogBucketOutput
    AssociateDRTRoleInput: AssociateDRTRoleInput
    AssociateDRTRoleOutput: AssociateDRTRoleOutput
    AssociateHealthCheckInput: AssociateHealthCheckInput
    AssociateHealthCheckOutput: AssociateHealthCheckOutput
    AssociateProactiveEngagementDetailsInput: AssociateProactiveEngagementDetailsInput
    AssociateProactiveEngagementDetailsOutput: AssociateProactiveEngagementDetailsOutput
    CreateProtectionInput: CreateProtectionInput
    CreateProtectionOutput: CreateProtectionOutput
    CreateProtectionGroupInput: CreateProtectionGroupInput
    CreateProtectionGroupOutput: CreateProtectionGroupOutput
    CreateSubscriptionInput: CreateSubscriptionInput
    CreateSubscriptionOutput: CreateSubscriptionOutput
    DeleteProtectionInput: DeleteProtectionInput
    DeleteProtectionOutput: DeleteProtectionOutput
    DeleteProtectionGroupInput: DeleteProtectionGroupInput
    DeleteProtectionGroupOutput: DeleteProtectionGroupOutput
    DeleteSubscriptionInput: DeleteSubscriptionInput
    DeleteSubscriptionOutput: DeleteSubscriptionOutput
    DescribeAttackInput: DescribeAttackInput
    DescribeAttackOutput: DescribeAttackOutput
    DescribeAttackStatisticsInput: DescribeAttackStatisticsInput
    DescribeAttackStatisticsOutput: DescribeAttackStatisticsOutput
    DescribeDRTAccessInput: DescribeDRTAccessInput
    DescribeDRTAccessOutput: DescribeDRTAccessOutput
    DescribeEmergencyContactSettingsInput: DescribeEmergencyContactSettingsInput
    DescribeEmergencyContactSettingsOutput: DescribeEmergencyContactSettingsOutput
    DescribeProtectionInput: DescribeProtectionInput
    DescribeProtectionOutput: DescribeProtectionOutput
    DescribeProtectionGroupInput: DescribeProtectionGroupInput
    DescribeProtectionGroupOutput: DescribeProtectionGroupOutput
    DescribeSubscriptionInput: DescribeSubscriptionInput
    DescribeSubscriptionOutput: DescribeSubscriptionOutput
    DisableApplicationLayerAutomaticResponseInput: DisableApplicationLayerAutomaticResponseInput
    DisableApplicationLayerAutomaticResponseOutput: DisableApplicationLayerAutomaticResponseOutput
    DisableProactiveEngagementInput: DisableProactiveEngagementInput
    DisableProactiveEngagementOutput: DisableProactiveEngagementOutput
    DisassociateDRTLogBucketInput: DisassociateDRTLogBucketInput
    DisassociateDRTLogBucketOutput: DisassociateDRTLogBucketOutput
    DisassociateDRTRoleInput: DisassociateDRTRoleInput
    DisassociateDRTRoleOutput: DisassociateDRTRoleOutput
    DisassociateHealthCheckInput: DisassociateHealthCheckInput
    DisassociateHealthCheckOutput: DisassociateHealthCheckOutput
    EnableApplicationLayerAutomaticResponseInput: EnableApplicationLayerAutomaticResponseInput
    EnableApplicationLayerAutomaticResponseOutput: EnableApplicationLayerAutomaticResponseOutput
    EnableProactiveEngagementInput: EnableProactiveEngagementInput
    EnableProactiveEngagementOutput: EnableProactiveEngagementOutput
    GetSubscriptionStateInput: GetSubscriptionStateInput
    GetSubscriptionStateOutput: GetSubscriptionStateOutput
    ListAttacksInput: ListAttacksInput
    ListAttacksOutput: ListAttacksOutput
    ListProtectionGroupsInput: ListProtectionGroupsInput
    ListProtectionGroupsOutput: ListProtectionGroupsOutput
    ListProtectionsInput: ListProtectionsInput
    ListProtectionsOutput: ListProtectionsOutput
    ListResourcesInProtectionGroupInput: ListResourcesInProtectionGroupInput
    ListResourcesInProtectionGroupOutput: ListResourcesInProtectionGroupOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApplicationLayerAutomaticResponseInput: UpdateApplicationLayerAutomaticResponseInput
    UpdateApplicationLayerAutomaticResponseOutput: UpdateApplicationLayerAutomaticResponseOutput
    UpdateEmergencyContactSettingsInput: UpdateEmergencyContactSettingsInput
    UpdateEmergencyContactSettingsOutput: UpdateEmergencyContactSettingsOutput
    UpdateProtectionGroupInput: UpdateProtectionGroupInput
    UpdateProtectionGroupOutput: UpdateProtectionGroupOutput
    UpdateSubscriptionInput: UpdateSubscriptionInput
    UpdateSubscriptionOutput: UpdateSubscriptionOutput
end

return M
