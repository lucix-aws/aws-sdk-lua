local record AnalyzeDocumentInput
    Document: Document
    FeatureTypes: {string}
    HumanLoopConfig: HumanLoopConfig
    QueriesConfig: QueriesConfig
    AdaptersConfig: AdaptersConfig
end

local record AnalyzeDocumentOutput
    DocumentMetadata: DocumentMetadata
    Blocks: {Block}
    HumanLoopActivationOutput: HumanLoopActivationOutput
    AnalyzeDocumentModelVersion: string
end

local record AnalyzeExpenseInput
    Document: Document
end

local record AnalyzeExpenseOutput
    DocumentMetadata: DocumentMetadata
    ExpenseDocuments: {ExpenseDocument}
end

local record AnalyzeIDInput
    DocumentPages: {Document}
end

local record AnalyzeIDOutput
    IdentityDocuments: {IdentityDocument}
    DocumentMetadata: DocumentMetadata
    AnalyzeIDModelVersion: string
end

local record CreateAdapterInput
    AdapterName: string
    ClientRequestToken: string
    Description: string
    FeatureTypes: {string}
    AutoUpdate: string
    Tags: {string : string}
end

local record CreateAdapterOutput
    AdapterId: string
end

local record CreateAdapterVersionInput
    AdapterId: string
    ClientRequestToken: string
    DatasetConfig: AdapterVersionDatasetConfig
    KMSKeyId: string
    OutputConfig: OutputConfig
    Tags: {string : string}
end

local record CreateAdapterVersionOutput
    AdapterId: string
    AdapterVersion: string
end

local record DeleteAdapterInput
    AdapterId: string
end

local record DeleteAdapterOutput
end

local record DeleteAdapterVersionInput
    AdapterId: string
    AdapterVersion: string
end

local record DeleteAdapterVersionOutput
end

local record DetectDocumentTextInput
    Document: Document
end

local record DetectDocumentTextOutput
    DocumentMetadata: DocumentMetadata
    Blocks: {Block}
    DetectDocumentTextModelVersion: string
end

local record GetAdapterInput
    AdapterId: string
end

local record GetAdapterOutput
    AdapterId: string
    AdapterName: string
    CreationTime: number
    Description: string
    FeatureTypes: {string}
    AutoUpdate: string
    Tags: {string : string}
end

local record GetAdapterVersionInput
    AdapterId: string
    AdapterVersion: string
end

local record GetAdapterVersionOutput
    AdapterId: string
    AdapterVersion: string
    CreationTime: number
    FeatureTypes: {string}
    Status: string
    StatusMessage: string
    DatasetConfig: AdapterVersionDatasetConfig
    KMSKeyId: string
    OutputConfig: OutputConfig
    EvaluationMetrics: {AdapterVersionEvaluationMetric}
    Tags: {string : string}
end

local record GetDocumentAnalysisInput
    JobId: string
    MaxResults: number
    NextToken: string
end

local record GetDocumentAnalysisOutput
    DocumentMetadata: DocumentMetadata
    JobStatus: string
    NextToken: string
    Blocks: {Block}
    Warnings: {Warning}
    StatusMessage: string
    AnalyzeDocumentModelVersion: string
end

local record GetDocumentTextDetectionInput
    JobId: string
    MaxResults: number
    NextToken: string
end

local record GetDocumentTextDetectionOutput
    DocumentMetadata: DocumentMetadata
    JobStatus: string
    NextToken: string
    Blocks: {Block}
    Warnings: {Warning}
    StatusMessage: string
    DetectDocumentTextModelVersion: string
end

local record GetExpenseAnalysisInput
    JobId: string
    MaxResults: number
    NextToken: string
end

local record GetExpenseAnalysisOutput
    DocumentMetadata: DocumentMetadata
    JobStatus: string
    NextToken: string
    ExpenseDocuments: {ExpenseDocument}
    Warnings: {Warning}
    StatusMessage: string
    AnalyzeExpenseModelVersion: string
end

local record GetLendingAnalysisInput
    JobId: string
    MaxResults: number
    NextToken: string
end

local record GetLendingAnalysisOutput
    DocumentMetadata: DocumentMetadata
    JobStatus: string
    NextToken: string
    Results: {LendingResult}
    Warnings: {Warning}
    StatusMessage: string
    AnalyzeLendingModelVersion: string
end

local record GetLendingAnalysisSummaryInput
    JobId: string
end

local record GetLendingAnalysisSummaryOutput
    DocumentMetadata: DocumentMetadata
    JobStatus: string
    Summary: LendingSummary
    Warnings: {Warning}
    StatusMessage: string
    AnalyzeLendingModelVersion: string
end

local record ListAdaptersInput
    AfterCreationTime: number
    BeforeCreationTime: number
    MaxResults: number
    NextToken: string
end

local record ListAdaptersOutput
    Adapters: {AdapterOverview}
    NextToken: string
end

local record ListAdapterVersionsInput
    AdapterId: string
    AfterCreationTime: number
    BeforeCreationTime: number
    MaxResults: number
    NextToken: string
end

local record ListAdapterVersionsOutput
    AdapterVersions: {AdapterVersionOverview}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record StartDocumentAnalysisInput
    DocumentLocation: DocumentLocation
    FeatureTypes: {string}
    ClientRequestToken: string
    JobTag: string
    NotificationChannel: NotificationChannel
    OutputConfig: OutputConfig
    KMSKeyId: string
    QueriesConfig: QueriesConfig
    AdaptersConfig: AdaptersConfig
end

local record StartDocumentAnalysisOutput
    JobId: string
end

local record StartDocumentTextDetectionInput
    DocumentLocation: DocumentLocation
    ClientRequestToken: string
    JobTag: string
    NotificationChannel: NotificationChannel
    OutputConfig: OutputConfig
    KMSKeyId: string
end

local record StartDocumentTextDetectionOutput
    JobId: string
end

local record StartExpenseAnalysisInput
    DocumentLocation: DocumentLocation
    ClientRequestToken: string
    JobTag: string
    NotificationChannel: NotificationChannel
    OutputConfig: OutputConfig
    KMSKeyId: string
end

local record StartExpenseAnalysisOutput
    JobId: string
end

local record StartLendingAnalysisInput
    DocumentLocation: DocumentLocation
    ClientRequestToken: string
    JobTag: string
    NotificationChannel: NotificationChannel
    OutputConfig: OutputConfig
    KMSKeyId: string
end

local record StartLendingAnalysisOutput
    JobId: string
end

local record TagResourceInput
    ResourceARN: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAdapterInput
    AdapterId: string
    Description: string
    AdapterName: string
    AutoUpdate: string
end

local record UpdateAdapterOutput
    AdapterId: string
    AdapterName: string
    CreationTime: number
    Description: string
    FeatureTypes: {string}
    AutoUpdate: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record BadDocumentException
    Message: string
    Code: string
end

local record DocumentTooLargeException
    Message: string
    Code: string
end

local record HumanLoopQuotaExceededException
    ResourceType: string
    QuotaCode: string
    ServiceCode: string
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record UnsupportedDocumentException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record BadDocumentException
    Message: string
    Code: string
end

local record DocumentTooLargeException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record UnsupportedDocumentException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record BadDocumentException
    Message: string
    Code: string
end

local record DocumentTooLargeException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record UnsupportedDocumentException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidKMSKeyException
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record BadDocumentException
    Message: string
    Code: string
end

local record DocumentTooLargeException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record UnsupportedDocumentException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidJobIdException
    Message: string
    Code: string
end

local record InvalidKMSKeyException
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidJobIdException
    Message: string
    Code: string
end

local record InvalidKMSKeyException
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidJobIdException
    Message: string
    Code: string
end

local record InvalidKMSKeyException
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidJobIdException
    Message: string
    Code: string
end

local record InvalidKMSKeyException
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidJobIdException
    Message: string
    Code: string
end

local record InvalidKMSKeyException
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record BadDocumentException
    Message: string
    Code: string
end

local record DocumentTooLargeException
    Message: string
    Code: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidKMSKeyException
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record UnsupportedDocumentException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record BadDocumentException
    Message: string
    Code: string
end

local record DocumentTooLargeException
    Message: string
    Code: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidKMSKeyException
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record UnsupportedDocumentException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record BadDocumentException
    Message: string
    Code: string
end

local record DocumentTooLargeException
    Message: string
    Code: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidKMSKeyException
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record UnsupportedDocumentException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record BadDocumentException
    Message: string
    Code: string
end

local record DocumentTooLargeException
    Message: string
    Code: string
end

local record IdempotentParameterMismatchException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidKMSKeyException
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record InvalidS3ObjectException
    Message: string
    Code: string
end

local record LimitExceededException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record UnsupportedDocumentException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ServiceQuotaExceededException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local record AccessDeniedException
    Message: string
    Code: string
end

local record ConflictException
    Message: string
    Code: string
end

local record InternalServerError
    Message: string
    Code: string
end

local record InvalidParameterException
    Message: string
    Code: string
end

local record ProvisionedThroughputExceededException
    Message: string
    Code: string
end

local record ResourceNotFoundException
    Message: string
    Code: string
end

local record ThrottlingException
    Message: string
    Code: string
end

local record ValidationException
    Message: string
    Code: string
end

local type JobStatus = "IN_PROGRESS" | "SUCCEEDED" | "FAILED" | "PARTIAL_SUCCESS"

local type AutoUpdate = "ENABLED" | "DISABLED"

local type AdapterVersionStatus = "ACTIVE" | "AT_RISK" | "DEPRECATED" | "CREATION_ERROR" | "CREATION_IN_PROGRESS"

local record M
    AnalyzeDocumentInput: AnalyzeDocumentInput
    AnalyzeDocumentOutput: AnalyzeDocumentOutput
    AnalyzeExpenseInput: AnalyzeExpenseInput
    AnalyzeExpenseOutput: AnalyzeExpenseOutput
    AnalyzeIDInput: AnalyzeIDInput
    AnalyzeIDOutput: AnalyzeIDOutput
    CreateAdapterInput: CreateAdapterInput
    CreateAdapterOutput: CreateAdapterOutput
    CreateAdapterVersionInput: CreateAdapterVersionInput
    CreateAdapterVersionOutput: CreateAdapterVersionOutput
    DeleteAdapterInput: DeleteAdapterInput
    DeleteAdapterOutput: DeleteAdapterOutput
    DeleteAdapterVersionInput: DeleteAdapterVersionInput
    DeleteAdapterVersionOutput: DeleteAdapterVersionOutput
    DetectDocumentTextInput: DetectDocumentTextInput
    DetectDocumentTextOutput: DetectDocumentTextOutput
    GetAdapterInput: GetAdapterInput
    GetAdapterOutput: GetAdapterOutput
    GetAdapterVersionInput: GetAdapterVersionInput
    GetAdapterVersionOutput: GetAdapterVersionOutput
    GetDocumentAnalysisInput: GetDocumentAnalysisInput
    GetDocumentAnalysisOutput: GetDocumentAnalysisOutput
    GetDocumentTextDetectionInput: GetDocumentTextDetectionInput
    GetDocumentTextDetectionOutput: GetDocumentTextDetectionOutput
    GetExpenseAnalysisInput: GetExpenseAnalysisInput
    GetExpenseAnalysisOutput: GetExpenseAnalysisOutput
    GetLendingAnalysisInput: GetLendingAnalysisInput
    GetLendingAnalysisOutput: GetLendingAnalysisOutput
    GetLendingAnalysisSummaryInput: GetLendingAnalysisSummaryInput
    GetLendingAnalysisSummaryOutput: GetLendingAnalysisSummaryOutput
    ListAdaptersInput: ListAdaptersInput
    ListAdaptersOutput: ListAdaptersOutput
    ListAdapterVersionsInput: ListAdapterVersionsInput
    ListAdapterVersionsOutput: ListAdapterVersionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartDocumentAnalysisInput: StartDocumentAnalysisInput
    StartDocumentAnalysisOutput: StartDocumentAnalysisOutput
    StartDocumentTextDetectionInput: StartDocumentTextDetectionInput
    StartDocumentTextDetectionOutput: StartDocumentTextDetectionOutput
    StartExpenseAnalysisInput: StartExpenseAnalysisInput
    StartExpenseAnalysisOutput: StartExpenseAnalysisOutput
    StartLendingAnalysisInput: StartLendingAnalysisInput
    StartLendingAnalysisOutput: StartLendingAnalysisOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAdapterInput: UpdateAdapterInput
    UpdateAdapterOutput: UpdateAdapterOutput
end

return M
