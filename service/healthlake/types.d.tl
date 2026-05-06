local record CreateFHIRDatastoreInput
    DatastoreName: string
    DatastoreTypeVersion: string
    SseConfiguration: SseConfiguration
    PreloadDataConfig: PreloadDataConfig
    ClientToken: string
    Tags: {Tag}
    IdentityProviderConfiguration: IdentityProviderConfiguration
end

local record CreateFHIRDatastoreOutput
    DatastoreId: string
    DatastoreArn: string
    DatastoreStatus: string
    DatastoreEndpoint: string
end

local record DeleteFHIRDatastoreInput
    DatastoreId: string
end

local record DeleteFHIRDatastoreOutput
    DatastoreId: string
    DatastoreArn: string
    DatastoreStatus: string
    DatastoreEndpoint: string
end

local record DescribeFHIRDatastoreInput
    DatastoreId: string
end

local record DescribeFHIRDatastoreOutput
    DatastoreProperties: DatastoreProperties
end

local record DescribeFHIRExportJobInput
    DatastoreId: string
    JobId: string
end

local record DescribeFHIRExportJobOutput
    ExportJobProperties: ExportJobProperties
end

local record DescribeFHIRImportJobInput
    DatastoreId: string
    JobId: string
end

local record DescribeFHIRImportJobOutput
    ImportJobProperties: ImportJobProperties
end

local record ListFHIRDatastoresInput
    Filter: DatastoreFilter
    NextToken: string
    MaxResults: number
end

local record ListFHIRDatastoresOutput
    DatastorePropertiesList: {DatastoreProperties}
    NextToken: string
end

local record ListFHIRExportJobsInput
    DatastoreId: string
    NextToken: string
    MaxResults: number
    JobName: string
    JobStatus: string
    SubmittedBefore: number
    SubmittedAfter: number
end

local record ListFHIRExportJobsOutput
    ExportJobPropertiesList: {ExportJobProperties}
    NextToken: string
end

local record ListFHIRImportJobsInput
    DatastoreId: string
    NextToken: string
    MaxResults: number
    JobName: string
    JobStatus: string
    SubmittedBefore: number
    SubmittedAfter: number
end

local record ListFHIRImportJobsOutput
    ImportJobPropertiesList: {ImportJobProperties}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record StartFHIRExportJobInput
    JobName: string
    OutputDataConfig: OutputDataConfig
    DatastoreId: string
    DataAccessRoleArn: string
    ClientToken: string
end

local record StartFHIRExportJobOutput
    JobId: string
    JobStatus: string
    DatastoreId: string
end

local record StartFHIRImportJobInput
    JobName: string
    InputDataConfig: InputDataConfig
    JobOutputDataConfig: OutputDataConfig
    DatastoreId: string
    DataAccessRoleArn: string
    ClientToken: string
    ValidationLevel: string
end

local record StartFHIRImportJobOutput
    JobId: string
    JobStatus: string
    DatastoreId: string
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
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

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
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

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ValidationException
    Message: string
end

local type DatastoreStatus = "CREATING" | "ACTIVE" | "DELETING" | "DELETED" | "CREATE_FAILED"

local type FHIRVersion = "R4"

local type JobStatus = "SUBMITTED" | "QUEUED" | "IN_PROGRESS" | "COMPLETED_WITH_ERRORS" | "COMPLETED" | "FAILED" | "CANCEL_SUBMITTED" | "CANCEL_IN_PROGRESS" | "CANCEL_COMPLETED" | "CANCEL_FAILED"

local type ValidationLevel = "strict" | "structure-only" | "minimal"

local record M
    CreateFHIRDatastoreInput: CreateFHIRDatastoreInput
    CreateFHIRDatastoreOutput: CreateFHIRDatastoreOutput
    DeleteFHIRDatastoreInput: DeleteFHIRDatastoreInput
    DeleteFHIRDatastoreOutput: DeleteFHIRDatastoreOutput
    DescribeFHIRDatastoreInput: DescribeFHIRDatastoreInput
    DescribeFHIRDatastoreOutput: DescribeFHIRDatastoreOutput
    DescribeFHIRExportJobInput: DescribeFHIRExportJobInput
    DescribeFHIRExportJobOutput: DescribeFHIRExportJobOutput
    DescribeFHIRImportJobInput: DescribeFHIRImportJobInput
    DescribeFHIRImportJobOutput: DescribeFHIRImportJobOutput
    ListFHIRDatastoresInput: ListFHIRDatastoresInput
    ListFHIRDatastoresOutput: ListFHIRDatastoresOutput
    ListFHIRExportJobsInput: ListFHIRExportJobsInput
    ListFHIRExportJobsOutput: ListFHIRExportJobsOutput
    ListFHIRImportJobsInput: ListFHIRImportJobsInput
    ListFHIRImportJobsOutput: ListFHIRImportJobsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartFHIRExportJobInput: StartFHIRExportJobInput
    StartFHIRExportJobOutput: StartFHIRExportJobOutput
    StartFHIRImportJobInput: StartFHIRImportJobInput
    StartFHIRImportJobOutput: StartFHIRImportJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
