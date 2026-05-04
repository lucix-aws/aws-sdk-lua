local record CreateExportInput
    Export: Export
    ResourceTags: {ResourceTag}
end

local record CreateExportOutput
    ExportArn: string
end

local record DeleteExportInput
    ExportArn: string
end

local record DeleteExportOutput
    ExportArn: string
end

local record GetExecutionInput
    ExportArn: string
    ExecutionId: string
end

local record GetExecutionOutput
    ExecutionId: string
    Export: Export
    ExecutionStatus: ExecutionStatus
end

local record GetExportInput
    ExportArn: string
end

local record GetExportOutput
    Export: Export
    ExportStatus: ExportStatus
end

local record GetTableInput
    TableName: string
    TableProperties: {string : string}
end

local record GetTableOutput
    TableName: string
    Description: string
    TableProperties: {string : string}
    Schema: {Column}
end

local record ListExecutionsInput
    ExportArn: string
    MaxResults: number
    NextToken: string
end

local record ListExecutionsOutput
    Executions: {ExecutionReference}
    NextToken: string
end

local record ListExportsInput
    MaxResults: number
    NextToken: string
end

local record ListExportsOutput
    Exports: {ExportReference}
    NextToken: string
end

local record ListTablesInput
    NextToken: string
    MaxResults: number
end

local record ListTablesOutput
    Tables: {Table}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
    MaxResults: number
    NextToken: string
end

local record ListTagsForResourceOutput
    ResourceTags: {ResourceTag}
    NextToken: string
end

local record TagResourceInput
    ResourceArn: string
    ResourceTags: {ResourceTag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    ResourceTagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateExportInput
    ExportArn: string
    Export: Export
end

local record UpdateExportOutput
    ExportArn: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
    ResourceType: string
    QuotaCode: string
    ServiceCode: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
    QuotaCode: string
    ServiceCode: string
end

local record ValidationException
    Message: string
    Reason: string
    Fields: {ValidationExceptionField}
end

local record M
    CreateExportInput: CreateExportInput
    CreateExportOutput: CreateExportOutput
    DeleteExportInput: DeleteExportInput
    DeleteExportOutput: DeleteExportOutput
    GetExecutionInput: GetExecutionInput
    GetExecutionOutput: GetExecutionOutput
    GetExportInput: GetExportInput
    GetExportOutput: GetExportOutput
    GetTableInput: GetTableInput
    GetTableOutput: GetTableOutput
    ListExecutionsInput: ListExecutionsInput
    ListExecutionsOutput: ListExecutionsOutput
    ListExportsInput: ListExportsInput
    ListExportsOutput: ListExportsOutput
    ListTablesInput: ListTablesInput
    ListTablesOutput: ListTablesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateExportInput: UpdateExportInput
    UpdateExportOutput: UpdateExportOutput
end

return M
