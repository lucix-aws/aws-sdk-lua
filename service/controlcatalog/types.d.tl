local record GetControlInput
    ControlArn: string
end

local record GetControlOutput
    Arn: string
    Aliases: {string}
    Name: string
    Description: string
    Behavior: string
    Severity: string
    RegionConfiguration: RegionConfiguration
    Implementation: ImplementationDetails
    Parameters: {ControlParameter}
    CreateTime: number
    GovernedResources: {string}
end

local record ListCommonControlsInput
    MaxResults: number
    NextToken: string
    CommonControlFilter: CommonControlFilter
end

local record ListCommonControlsOutput
    CommonControls: {CommonControlSummary}
    NextToken: string
end

local record ListControlMappingsInput
    NextToken: string
    MaxResults: number
    Filter: ControlMappingFilter
end

local record ListControlMappingsOutput
    ControlMappings: {ControlMapping}
    NextToken: string
end

local record ListControlsInput
    NextToken: string
    MaxResults: number
    Filter: ControlFilter
end

local record ListControlsOutput
    Controls: {ControlSummary}
    NextToken: string
end

local record ListDomainsInput
    MaxResults: number
    NextToken: string
end

local record ListDomainsOutput
    Domains: {DomainSummary}
    NextToken: string
end

local record ListObjectivesInput
    MaxResults: number
    NextToken: string
    ObjectiveFilter: ObjectiveFilter
end

local record ListObjectivesOutput
    Objectives: {ObjectiveSummary}
    NextToken: string
end

local record AccessDeniedException
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

local record AccessDeniedException
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

local record AccessDeniedException
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

local record AccessDeniedException
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

local record AccessDeniedException
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

local record AccessDeniedException
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

local type ControlSeverity = "LOW" | "MEDIUM" | "HIGH" | "CRITICAL"

local type ControlBehavior = "PREVENTIVE" | "PROACTIVE" | "DETECTIVE"

local record M
    GetControlInput: GetControlInput
    GetControlOutput: GetControlOutput
    ListCommonControlsInput: ListCommonControlsInput
    ListCommonControlsOutput: ListCommonControlsOutput
    ListControlMappingsInput: ListControlMappingsInput
    ListControlMappingsOutput: ListControlMappingsOutput
    ListControlsInput: ListControlsInput
    ListControlsOutput: ListControlsOutput
    ListDomainsInput: ListDomainsInput
    ListDomainsOutput: ListDomainsOutput
    ListObjectivesInput: ListObjectivesInput
    ListObjectivesOutput: ListObjectivesOutput
end

return M
