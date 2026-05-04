local record GetEstimatedCarbonEmissionsInput
    TimePeriod: TimePeriod
    GroupBy: {string}
    FilterBy: FilterExpression
    EmissionsTypes: {string}
    Granularity: string
    GranularityConfiguration: GranularityConfiguration
    MaxResults: number
    NextToken: string
end

local record GetEstimatedCarbonEmissionsOutput
    Results: {EstimatedCarbonEmissions}
    NextToken: string
end

local record GetEstimatedCarbonEmissionsDimensionValuesInput
    TimePeriod: TimePeriod
    Dimensions: {string}
    MaxResults: number
    NextToken: string
end

local record GetEstimatedCarbonEmissionsDimensionValuesOutput
    Results: {DimensionEntry}
    NextToken: string
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

local type TimeGranularity = "YEARLY_CALENDAR" | "YEARLY_FISCAL" | "QUARTERLY_CALENDAR" | "QUARTERLY_FISCAL" | "MONTHLY"

local record M
    GetEstimatedCarbonEmissionsInput: GetEstimatedCarbonEmissionsInput
    GetEstimatedCarbonEmissionsOutput: GetEstimatedCarbonEmissionsOutput
    GetEstimatedCarbonEmissionsDimensionValuesInput: GetEstimatedCarbonEmissionsDimensionValuesInput
    GetEstimatedCarbonEmissionsDimensionValuesOutput: GetEstimatedCarbonEmissionsDimensionValuesOutput
end

return M
