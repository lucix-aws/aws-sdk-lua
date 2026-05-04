local record DeleteReportDefinitionInput
    reportId: string
end

local record DeleteReportDefinitionOutput
    reportId: string
end

local record GetReportDefinitionInput
    reportId: string
end

local record GetReportDefinitionOutput
    reportId: string
    reportDescription: string
    reportFrequency: string
    format: string
    destinationS3Location: S3Location
    createdAt: number
    lastUpdated: number
end

local record ImportApplicationUsageInput
    sourceS3Location: SourceS3Location
end

local record ImportApplicationUsageOutput
    importId: string
end

local record ListReportDefinitionsInput
    nextToken: string
    maxResults: number
end

local record ListReportDefinitionsOutput
    reportDefinitions: {ReportDefinition}
    nextToken: string
end

local record PutReportDefinitionInput
    reportId: string
    reportDescription: string
    reportFrequency: string
    format: string
    destinationS3Location: S3Location
end

local record PutReportDefinitionOutput
    reportId: string
end

local record UpdateReportDefinitionInput
    reportId: string
    reportDescription: string
    reportFrequency: string
    format: string
    destinationS3Location: S3Location
end

local record UpdateReportDefinitionOutput
    reportId: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
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
end

local record ValidationException
    message: string
end

local type ReportFrequency = "MONTHLY" | "DAILY" | "ALL"

local type Format = "CSV" | "PARQUET"

local record M
    DeleteReportDefinitionInput: DeleteReportDefinitionInput
    DeleteReportDefinitionOutput: DeleteReportDefinitionOutput
    GetReportDefinitionInput: GetReportDefinitionInput
    GetReportDefinitionOutput: GetReportDefinitionOutput
    ImportApplicationUsageInput: ImportApplicationUsageInput
    ImportApplicationUsageOutput: ImportApplicationUsageOutput
    ListReportDefinitionsInput: ListReportDefinitionsInput
    ListReportDefinitionsOutput: ListReportDefinitionsOutput
    PutReportDefinitionInput: PutReportDefinitionInput
    PutReportDefinitionOutput: PutReportDefinitionOutput
    UpdateReportDefinitionInput: UpdateReportDefinitionInput
    UpdateReportDefinitionOutput: UpdateReportDefinitionOutput
end

return M
