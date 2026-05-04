local record CreateHomeRegionControlInput
    HomeRegion: string
    Target: Target
    DryRun: boolean
end

local record CreateHomeRegionControlOutput
    HomeRegionControl: HomeRegionControl
end

local record DeleteHomeRegionControlInput
    ControlId: string
end

local record DeleteHomeRegionControlOutput
end

local record DescribeHomeRegionControlsInput
    ControlId: string
    HomeRegion: string
    Target: Target
    MaxResults: number
    NextToken: string
end

local record DescribeHomeRegionControlsOutput
    HomeRegionControls: {HomeRegionControl}
    NextToken: string
end

local record GetHomeRegionInput
end

local record GetHomeRegionOutput
    HomeRegion: string
end

local record AccessDeniedException
    Message: string
end

local record DryRunOperation
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record AccessDeniedException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record AccessDeniedException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record AccessDeniedException
    Message: string
end

local record InternalServerError
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record ThrottlingException
    Message: string
    RetryAfterSeconds: number
end

local record M
    CreateHomeRegionControlInput: CreateHomeRegionControlInput
    CreateHomeRegionControlOutput: CreateHomeRegionControlOutput
    DeleteHomeRegionControlInput: DeleteHomeRegionControlInput
    DeleteHomeRegionControlOutput: DeleteHomeRegionControlOutput
    DescribeHomeRegionControlsInput: DescribeHomeRegionControlsInput
    DescribeHomeRegionControlsOutput: DescribeHomeRegionControlsOutput
    GetHomeRegionInput: GetHomeRegionInput
    GetHomeRegionOutput: GetHomeRegionOutput
end

return M
