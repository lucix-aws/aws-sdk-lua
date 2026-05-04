local record CreateNotificationRuleInput
    Name: string
    EventTypeIds: {string}
    Resource: string
    Targets: {Target}
    DetailType: string
    ClientRequestToken: string
    Tags: {string : string}
    Status: string
end

local record CreateNotificationRuleOutput
    Arn: string
end

local record DeleteNotificationRuleInput
    Arn: string
end

local record DeleteNotificationRuleOutput
    Arn: string
end

local record DeleteTargetInput
    TargetAddress: string
    ForceUnsubscribeAll: boolean
end

local record DeleteTargetOutput
end

local record DescribeNotificationRuleInput
    Arn: string
end

local record DescribeNotificationRuleOutput
    Arn: string
    Name: string
    EventTypes: {EventTypeSummary}
    Resource: string
    Targets: {TargetSummary}
    DetailType: string
    CreatedBy: string
    Status: string
    CreatedTimestamp: number
    LastModifiedTimestamp: number
    Tags: {string : string}
end

local record ListEventTypesInput
    Filters: {ListEventTypesFilter}
    NextToken: string
    MaxResults: number
end

local record ListEventTypesOutput
    EventTypes: {EventTypeSummary}
    NextToken: string
end

local record ListNotificationRulesInput
    Filters: {ListNotificationRulesFilter}
    NextToken: string
    MaxResults: number
end

local record ListNotificationRulesOutput
    NextToken: string
    NotificationRules: {NotificationRuleSummary}
end

local record ListTagsForResourceInput
    Arn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListTargetsInput
    Filters: {ListTargetsFilter}
    NextToken: string
    MaxResults: number
end

local record ListTargetsOutput
    Targets: {TargetSummary}
    NextToken: string
end

local record SubscribeInput
    Arn: string
    Target: Target
    ClientRequestToken: string
end

local record SubscribeOutput
    Arn: string
end

local record TagResourceInput
    Arn: string
    Tags: {string : string}
end

local record TagResourceOutput
    Tags: {string : string}
end

local record UnsubscribeInput
    Arn: string
    TargetAddress: string
end

local record UnsubscribeOutput
    Arn: string
end

local record UntagResourceInput
    Arn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateNotificationRuleInput
    Arn: string
    Name: string
    Status: string
    EventTypeIds: {string}
    Targets: {Target}
    DetailType: string
end

local record UpdateNotificationRuleOutput
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record ConfigurationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ValidationException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record InvalidNextTokenException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConfigurationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConfigurationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local type DetailType = "BASIC" | "FULL"

local type NotificationRuleStatus = "ENABLED" | "DISABLED"

local record M
    CreateNotificationRuleInput: CreateNotificationRuleInput
    CreateNotificationRuleOutput: CreateNotificationRuleOutput
    DeleteNotificationRuleInput: DeleteNotificationRuleInput
    DeleteNotificationRuleOutput: DeleteNotificationRuleOutput
    DeleteTargetInput: DeleteTargetInput
    DeleteTargetOutput: DeleteTargetOutput
    DescribeNotificationRuleInput: DescribeNotificationRuleInput
    DescribeNotificationRuleOutput: DescribeNotificationRuleOutput
    ListEventTypesInput: ListEventTypesInput
    ListEventTypesOutput: ListEventTypesOutput
    ListNotificationRulesInput: ListNotificationRulesInput
    ListNotificationRulesOutput: ListNotificationRulesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTargetsInput: ListTargetsInput
    ListTargetsOutput: ListTargetsOutput
    SubscribeInput: SubscribeInput
    SubscribeOutput: SubscribeOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UnsubscribeInput: UnsubscribeInput
    UnsubscribeOutput: UnsubscribeOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateNotificationRuleInput: UpdateNotificationRuleInput
    UpdateNotificationRuleOutput: UpdateNotificationRuleOutput
end

return M
