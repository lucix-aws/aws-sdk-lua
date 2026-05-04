local record BatchGetIncidentFindingsInput
    incidentRecordArn: string
    findingIds: {string}
end

local record BatchGetIncidentFindingsOutput
    findings: {Finding}
    errors: {BatchGetIncidentFindingsError}
end

local record CreateReplicationSetInput
    regions: {string : RegionMapInputValue}
    clientToken: string
    tags: {string : string}
end

local record CreateReplicationSetOutput
    arn: string
end

local record CreateResponsePlanInput
    clientToken: string
    name: string
    displayName: string
    incidentTemplate: IncidentTemplate
    chatChannel: ChatChannel
    engagements: {string}
    actions: {Action}
    tags: {string : string}
    integrations: {Integration}
end

local record CreateResponsePlanOutput
    arn: string
end

local record CreateTimelineEventInput
    clientToken: string
    incidentRecordArn: string
    eventTime: number
    eventType: string
    eventData: string
    eventReferences: {EventReference}
end

local record CreateTimelineEventOutput
    incidentRecordArn: string
    eventId: string
end

local record DeleteIncidentRecordInput
    arn: string
end

local record DeleteIncidentRecordOutput
end

local record DeleteReplicationSetInput
    arn: string
end

local record DeleteReplicationSetOutput
end

local record DeleteResourcePolicyInput
    resourceArn: string
    policyId: string
end

local record DeleteResourcePolicyOutput
end

local record DeleteResponsePlanInput
    arn: string
end

local record DeleteResponsePlanOutput
end

local record DeleteTimelineEventInput
    incidentRecordArn: string
    eventId: string
end

local record DeleteTimelineEventOutput
end

local record GetIncidentRecordInput
    arn: string
end

local record GetIncidentRecordOutput
    incidentRecord: IncidentRecord
end

local record GetReplicationSetInput
    arn: string
end

local record GetReplicationSetOutput
    replicationSet: ReplicationSet
end

local record GetResourcePoliciesInput
    resourceArn: string
    maxResults: number
    nextToken: string
end

local record GetResourcePoliciesOutput
    resourcePolicies: {ResourcePolicy}
    nextToken: string
end

local record GetResponsePlanInput
    arn: string
end

local record GetResponsePlanOutput
    arn: string
    name: string
    displayName: string
    incidentTemplate: IncidentTemplate
    chatChannel: ChatChannel
    engagements: {string}
    actions: {Action}
    integrations: {Integration}
end

local record GetTimelineEventInput
    incidentRecordArn: string
    eventId: string
end

local record GetTimelineEventOutput
    event: TimelineEvent
end

local record ListIncidentFindingsInput
    incidentRecordArn: string
    maxResults: number
    nextToken: string
end

local record ListIncidentFindingsOutput
    findings: {FindingSummary}
    nextToken: string
end

local record ListIncidentRecordsInput
    filters: {Filter}
    maxResults: number
    nextToken: string
end

local record ListIncidentRecordsOutput
    incidentRecordSummaries: {IncidentRecordSummary}
    nextToken: string
end

local record ListRelatedItemsInput
    incidentRecordArn: string
    maxResults: number
    nextToken: string
end

local record ListRelatedItemsOutput
    relatedItems: {RelatedItem}
    nextToken: string
end

local record ListReplicationSetsInput
    maxResults: number
    nextToken: string
end

local record ListReplicationSetsOutput
    replicationSetArns: {string}
    nextToken: string
end

local record ListResponsePlansInput
    maxResults: number
    nextToken: string
end

local record ListResponsePlansOutput
    responsePlanSummaries: {ResponsePlanSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTimelineEventsInput
    incidentRecordArn: string
    filters: {Filter}
    sortBy: string
    sortOrder: string
    maxResults: number
    nextToken: string
end

local record ListTimelineEventsOutput
    eventSummaries: {EventSummary}
    nextToken: string
end

local record PutResourcePolicyInput
    resourceArn: string
    policy: string
end

local record PutResourcePolicyOutput
    policyId: string
end

local record StartIncidentInput
    clientToken: string
    responsePlanArn: string
    title: string
    impact: number
    triggerDetails: TriggerDetails
    relatedItems: {RelatedItem}
end

local record StartIncidentOutput
    incidentRecordArn: string
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateDeletionProtectionInput
    arn: string
    deletionProtected: boolean
    clientToken: string
end

local record UpdateDeletionProtectionOutput
end

local record UpdateIncidentRecordInput
    clientToken: string
    arn: string
    title: string
    summary: string
    impact: number
    status: string
    chatChannel: ChatChannel
    notificationTargets: {NotificationTargetItem}
end

local record UpdateIncidentRecordOutput
end

local record UpdateRelatedItemsInput
    clientToken: string
    incidentRecordArn: string
    relatedItemsUpdate: RelatedItemsUpdate
end

local record UpdateRelatedItemsOutput
end

local record UpdateReplicationSetInput
    arn: string
    actions: {UpdateReplicationSetAction}
    clientToken: string
end

local record UpdateReplicationSetOutput
end

local record UpdateResponsePlanInput
    clientToken: string
    arn: string
    displayName: string
    incidentTemplateTitle: string
    incidentTemplateImpact: number
    incidentTemplateSummary: string
    incidentTemplateDedupeString: string
    incidentTemplateNotificationTargets: {NotificationTargetItem}
    chatChannel: ChatChannel
    engagements: {string}
    actions: {Action}
    incidentTemplateTags: {string : string}
    integrations: {Integration}
end

local record UpdateResponsePlanOutput
end

local record UpdateTimelineEventInput
    clientToken: string
    incidentRecordArn: string
    eventId: string
    eventTime: number
    eventType: string
    eventData: string
    eventReferences: {EventReference}
end

local record UpdateTimelineEventOutput
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceIdentifier: string
    resourceType: string
    retryAfter: number
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    resourceIdentifier: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceIdentifier: string
    resourceType: string
    retryAfter: number
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceIdentifier: string
    resourceType: string
    retryAfter: number
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceIdentifier: string
    resourceType: string
    retryAfter: number
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceIdentifier: string
    resourceType: string
    retryAfter: number
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceIdentifier: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceIdentifier: string
    resourceType: string
    retryAfter: number
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceIdentifier: string
    resourceType: string
    retryAfter: number
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceIdentifier: string
    resourceType: string
    retryAfter: number
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceIdentifier: string
    resourceType: string
    retryAfter: number
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceIdentifier: string
    resourceType: string
    retryAfter: number
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceIdentifier: string
    resourceType: string
    retryAfter: number
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceIdentifier: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
end

local record ValidationException
    message: string
end

local record M
    BatchGetIncidentFindingsInput: BatchGetIncidentFindingsInput
    BatchGetIncidentFindingsOutput: BatchGetIncidentFindingsOutput
    CreateReplicationSetInput: CreateReplicationSetInput
    CreateReplicationSetOutput: CreateReplicationSetOutput
    CreateResponsePlanInput: CreateResponsePlanInput
    CreateResponsePlanOutput: CreateResponsePlanOutput
    CreateTimelineEventInput: CreateTimelineEventInput
    CreateTimelineEventOutput: CreateTimelineEventOutput
    DeleteIncidentRecordInput: DeleteIncidentRecordInput
    DeleteIncidentRecordOutput: DeleteIncidentRecordOutput
    DeleteReplicationSetInput: DeleteReplicationSetInput
    DeleteReplicationSetOutput: DeleteReplicationSetOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteResponsePlanInput: DeleteResponsePlanInput
    DeleteResponsePlanOutput: DeleteResponsePlanOutput
    DeleteTimelineEventInput: DeleteTimelineEventInput
    DeleteTimelineEventOutput: DeleteTimelineEventOutput
    GetIncidentRecordInput: GetIncidentRecordInput
    GetIncidentRecordOutput: GetIncidentRecordOutput
    GetReplicationSetInput: GetReplicationSetInput
    GetReplicationSetOutput: GetReplicationSetOutput
    GetResourcePoliciesInput: GetResourcePoliciesInput
    GetResourcePoliciesOutput: GetResourcePoliciesOutput
    GetResponsePlanInput: GetResponsePlanInput
    GetResponsePlanOutput: GetResponsePlanOutput
    GetTimelineEventInput: GetTimelineEventInput
    GetTimelineEventOutput: GetTimelineEventOutput
    ListIncidentFindingsInput: ListIncidentFindingsInput
    ListIncidentFindingsOutput: ListIncidentFindingsOutput
    ListIncidentRecordsInput: ListIncidentRecordsInput
    ListIncidentRecordsOutput: ListIncidentRecordsOutput
    ListRelatedItemsInput: ListRelatedItemsInput
    ListRelatedItemsOutput: ListRelatedItemsOutput
    ListReplicationSetsInput: ListReplicationSetsInput
    ListReplicationSetsOutput: ListReplicationSetsOutput
    ListResponsePlansInput: ListResponsePlansInput
    ListResponsePlansOutput: ListResponsePlansOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTimelineEventsInput: ListTimelineEventsInput
    ListTimelineEventsOutput: ListTimelineEventsOutput
    PutResourcePolicyInput: PutResourcePolicyInput
    PutResourcePolicyOutput: PutResourcePolicyOutput
    StartIncidentInput: StartIncidentInput
    StartIncidentOutput: StartIncidentOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateDeletionProtectionInput: UpdateDeletionProtectionInput
    UpdateDeletionProtectionOutput: UpdateDeletionProtectionOutput
    UpdateIncidentRecordInput: UpdateIncidentRecordInput
    UpdateIncidentRecordOutput: UpdateIncidentRecordOutput
    UpdateRelatedItemsInput: UpdateRelatedItemsInput
    UpdateRelatedItemsOutput: UpdateRelatedItemsOutput
    UpdateReplicationSetInput: UpdateReplicationSetInput
    UpdateReplicationSetOutput: UpdateReplicationSetOutput
    UpdateResponsePlanInput: UpdateResponsePlanInput
    UpdateResponsePlanOutput: UpdateResponsePlanOutput
    UpdateTimelineEventInput: UpdateTimelineEventInput
    UpdateTimelineEventOutput: UpdateTimelineEventOutput
end

return M
