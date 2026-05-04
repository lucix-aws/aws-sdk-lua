local record ListRealtimeContactAnalysisSegmentsInput
    InstanceId: string
    ContactId: string
    MaxResults: number
    NextToken: string
end

local record ListRealtimeContactAnalysisSegmentsOutput
    Segments: {RealtimeContactAnalysisSegment}
    NextToken: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record M
    ListRealtimeContactAnalysisSegmentsInput: ListRealtimeContactAnalysisSegmentsInput
    ListRealtimeContactAnalysisSegmentsOutput: ListRealtimeContactAnalysisSegmentsOutput
end

return M
