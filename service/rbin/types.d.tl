local record CreateRuleInput
    RetentionPeriod: RetentionPeriod
    Description: string
    Tags: {Tag}
    ResourceType: string
    ResourceTags: {ResourceTag}
    LockConfiguration: LockConfiguration
    ExcludeResourceTags: {ResourceTag}
end

local record CreateRuleOutput
    Identifier: string
    RetentionPeriod: RetentionPeriod
    Description: string
    Tags: {Tag}
    ResourceType: string
    ResourceTags: {ResourceTag}
    Status: string
    LockConfiguration: LockConfiguration
    LockState: string
    RuleArn: string
    ExcludeResourceTags: {ResourceTag}
end

local record DeleteRuleInput
    Identifier: string
end

local record DeleteRuleOutput
end

local record GetRuleInput
    Identifier: string
end

local record GetRuleOutput
    Identifier: string
    Description: string
    ResourceType: string
    RetentionPeriod: RetentionPeriod
    ResourceTags: {ResourceTag}
    Status: string
    LockConfiguration: LockConfiguration
    LockState: string
    LockEndTime: number
    RuleArn: string
    ExcludeResourceTags: {ResourceTag}
end

local record ListRulesInput
    MaxResults: number
    NextToken: string
    ResourceType: string
    ResourceTags: {ResourceTag}
    LockState: string
    ExcludeResourceTags: {ResourceTag}
end

local record ListRulesOutput
    Rules: {RuleSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record LockRuleInput
    Identifier: string
    LockConfiguration: LockConfiguration
end

local record LockRuleOutput
    Identifier: string
    Description: string
    ResourceType: string
    RetentionPeriod: RetentionPeriod
    ResourceTags: {ResourceTag}
    Status: string
    LockConfiguration: LockConfiguration
    LockState: string
    RuleArn: string
    ExcludeResourceTags: {ResourceTag}
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UnlockRuleInput
    Identifier: string
end

local record UnlockRuleOutput
    Identifier: string
    Description: string
    ResourceType: string
    RetentionPeriod: RetentionPeriod
    ResourceTags: {ResourceTag}
    Status: string
    LockConfiguration: LockConfiguration
    LockState: string
    LockEndTime: number
    RuleArn: string
    ExcludeResourceTags: {ResourceTag}
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateRuleInput
    Identifier: string
    RetentionPeriod: RetentionPeriod
    Description: string
    ResourceType: string
    ResourceTags: {ResourceTag}
    ExcludeResourceTags: {ResourceTag}
end

local record UpdateRuleOutput
    Identifier: string
    RetentionPeriod: RetentionPeriod
    Description: string
    ResourceType: string
    ResourceTags: {ResourceTag}
    Status: string
    LockState: string
    LockEndTime: number
    RuleArn: string
    ExcludeResourceTags: {ResourceTag}
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local record ConflictException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    Reason: string
end

local record ServiceQuotaExceededException
    Message: string
    Reason: string
end

local record ValidationException
    Message: string
    Reason: string
end

local type ResourceType = "EBS_SNAPSHOT" | "EC2_IMAGE" | "EBS_VOLUME"

local type LockState = "locked" | "pending_unlock" | "unlocked"

local type RuleStatus = "pending" | "available"

local record M
    CreateRuleInput: CreateRuleInput
    CreateRuleOutput: CreateRuleOutput
    DeleteRuleInput: DeleteRuleInput
    DeleteRuleOutput: DeleteRuleOutput
    GetRuleInput: GetRuleInput
    GetRuleOutput: GetRuleOutput
    ListRulesInput: ListRulesInput
    ListRulesOutput: ListRulesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    LockRuleInput: LockRuleInput
    LockRuleOutput: LockRuleOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UnlockRuleInput: UnlockRuleInput
    UnlockRuleOutput: UnlockRuleOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateRuleInput: UpdateRuleInput
    UpdateRuleOutput: UpdateRuleOutput
end

return M
