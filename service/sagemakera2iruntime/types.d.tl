local record DeleteHumanLoopInput
    HumanLoopName: string
end

local record DeleteHumanLoopOutput
end

local record DescribeHumanLoopInput
    HumanLoopName: string
end

local record DescribeHumanLoopOutput
    CreationTime: number
    FailureReason: string
    FailureCode: string
    HumanLoopStatus: string
    HumanLoopName: string
    HumanLoopArn: string
    FlowDefinitionArn: string
    HumanLoopOutput: HumanLoopOutput
end

local record ListHumanLoopsInput
    CreationTimeAfter: number
    CreationTimeBefore: number
    FlowDefinitionArn: string
    SortOrder: string
    NextToken: string
    MaxResults: number
end

local record ListHumanLoopsOutput
    HumanLoopSummaries: {HumanLoopSummary}
    NextToken: string
end

local record StartHumanLoopInput
    HumanLoopName: string
    FlowDefinitionArn: string
    HumanLoopInput: HumanLoopInput
    DataAttributes: HumanLoopDataAttributes
end

local record StartHumanLoopOutput
    HumanLoopArn: string
end

local record StopHumanLoopInput
    HumanLoopName: string
end

local record StopHumanLoopOutput
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

local type SortOrder = "Ascending" | "Descending"

local type HumanLoopStatus = "InProgress" | "Failed" | "Completed" | "Stopped" | "Stopping"

local record M
    DeleteHumanLoopInput: DeleteHumanLoopInput
    DeleteHumanLoopOutput: DeleteHumanLoopOutput
    DescribeHumanLoopInput: DescribeHumanLoopInput
    DescribeHumanLoopOutput: DescribeHumanLoopOutput
    ListHumanLoopsInput: ListHumanLoopsInput
    ListHumanLoopsOutput: ListHumanLoopsOutput
    StartHumanLoopInput: StartHumanLoopInput
    StartHumanLoopOutput: StartHumanLoopOutput
    StopHumanLoopInput: StopHumanLoopInput
    StopHumanLoopOutput: StopHumanLoopOutput
end

return M
