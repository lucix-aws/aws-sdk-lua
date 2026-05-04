local record GetRoutingControlStateInput
    RoutingControlArn: string
end

local record GetRoutingControlStateOutput
    RoutingControlArn: string
    RoutingControlState: string
    RoutingControlName: string
end

local record ListRoutingControlsInput
    ControlPanelArn: string
    NextToken: string
    MaxResults: number
end

local record ListRoutingControlsOutput
    RoutingControls: {RoutingControl}
    NextToken: string
end

local record UpdateRoutingControlStateInput
    RoutingControlArn: string
    RoutingControlState: string
    SafetyRulesToOverride: {string}
end

local record UpdateRoutingControlStateOutput
end

local record UpdateRoutingControlStatesInput
    UpdateRoutingControlStateEntries: {UpdateRoutingControlStateEntry}
    SafetyRulesToOverride: {string}
end

local record UpdateRoutingControlStatesOutput
end

local record AccessDeniedException
    message: string
end

local record EndpointTemporarilyUnavailableException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record EndpointTemporarilyUnavailableException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record EndpointTemporarilyUnavailableException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record EndpointTemporarilyUnavailableException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceLimitExceededException
    message: string
    resourceId: string
    resourceType: string
    limitCode: string
    serviceCode: string
end

local record ThrottlingException
    message: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local type RoutingControlState = "On" | "Off"

local record M
    GetRoutingControlStateInput: GetRoutingControlStateInput
    GetRoutingControlStateOutput: GetRoutingControlStateOutput
    ListRoutingControlsInput: ListRoutingControlsInput
    ListRoutingControlsOutput: ListRoutingControlsOutput
    UpdateRoutingControlStateInput: UpdateRoutingControlStateInput
    UpdateRoutingControlStateOutput: UpdateRoutingControlStateOutput
    UpdateRoutingControlStatesInput: UpdateRoutingControlStatesInput
    UpdateRoutingControlStatesOutput: UpdateRoutingControlStatesOutput
end

return M
