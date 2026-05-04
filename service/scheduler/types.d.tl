local record CreateScheduleInput
    Name: string
    GroupName: string
    ScheduleExpression: string
    StartDate: number
    EndDate: number
    Description: string
    ScheduleExpressionTimezone: string
    State: string
    KmsKeyArn: string
    Target: Target
    FlexibleTimeWindow: FlexibleTimeWindow
    ClientToken: string
    ActionAfterCompletion: string
end

local record CreateScheduleOutput
    ScheduleArn: string
end

local record CreateScheduleGroupInput
    Name: string
    Tags: {Tag}
    ClientToken: string
end

local record CreateScheduleGroupOutput
    ScheduleGroupArn: string
end

local record DeleteScheduleInput
    Name: string
    GroupName: string
    ClientToken: string
end

local record DeleteScheduleOutput
end

local record DeleteScheduleGroupInput
    Name: string
    ClientToken: string
end

local record DeleteScheduleGroupOutput
end

local record GetScheduleInput
    Name: string
    GroupName: string
end

local record GetScheduleOutput
    Arn: string
    GroupName: string
    Name: string
    ScheduleExpression: string
    StartDate: number
    EndDate: number
    Description: string
    ScheduleExpressionTimezone: string
    State: string
    CreationDate: number
    LastModificationDate: number
    KmsKeyArn: string
    Target: Target
    FlexibleTimeWindow: FlexibleTimeWindow
    ActionAfterCompletion: string
end

local record GetScheduleGroupInput
    Name: string
end

local record GetScheduleGroupOutput
    Arn: string
    Name: string
    State: string
    CreationDate: number
    LastModificationDate: number
end

local record ListScheduleGroupsInput
    NamePrefix: string
    NextToken: string
    MaxResults: number
end

local record ListScheduleGroupsOutput
    NextToken: string
    ScheduleGroups: {ScheduleGroupSummary}
end

local record ListSchedulesInput
    GroupName: string
    NamePrefix: string
    State: string
    NextToken: string
    MaxResults: number
end

local record ListSchedulesOutput
    NextToken: string
    Schedules: {ScheduleSummary}
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
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

local record UpdateScheduleInput
    Name: string
    GroupName: string
    ScheduleExpression: string
    StartDate: number
    EndDate: number
    Description: string
    ScheduleExpressionTimezone: string
    State: string
    KmsKeyArn: string
    Target: Target
    FlexibleTimeWindow: FlexibleTimeWindow
    ClientToken: string
    ActionAfterCompletion: string
end

local record UpdateScheduleOutput
    ScheduleArn: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ConflictException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record M
    CreateScheduleInput: CreateScheduleInput
    CreateScheduleOutput: CreateScheduleOutput
    CreateScheduleGroupInput: CreateScheduleGroupInput
    CreateScheduleGroupOutput: CreateScheduleGroupOutput
    DeleteScheduleInput: DeleteScheduleInput
    DeleteScheduleOutput: DeleteScheduleOutput
    DeleteScheduleGroupInput: DeleteScheduleGroupInput
    DeleteScheduleGroupOutput: DeleteScheduleGroupOutput
    GetScheduleInput: GetScheduleInput
    GetScheduleOutput: GetScheduleOutput
    GetScheduleGroupInput: GetScheduleGroupInput
    GetScheduleGroupOutput: GetScheduleGroupOutput
    ListScheduleGroupsInput: ListScheduleGroupsInput
    ListScheduleGroupsOutput: ListScheduleGroupsOutput
    ListSchedulesInput: ListSchedulesInput
    ListSchedulesOutput: ListSchedulesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateScheduleInput: UpdateScheduleInput
    UpdateScheduleOutput: UpdateScheduleOutput
end

return M
