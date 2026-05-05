local record DeleteEarthObservationJobInput
    Arn: string
end

local record DeleteEarthObservationJobOutput
end

local record DeleteVectorEnrichmentJobInput
    Arn: string
end

local record DeleteVectorEnrichmentJobOutput
end

local record ExportEarthObservationJobInput
    Arn: string
    ClientToken: string
    ExecutionRoleArn: string
    OutputConfig: OutputConfigInput
    ExportSourceImages: boolean
end

local record ExportEarthObservationJobOutput
    Arn: string
    CreationTime: number
    ExportStatus: string
    ExecutionRoleArn: string
    OutputConfig: OutputConfigInput
    ExportSourceImages: boolean
end

local record ExportVectorEnrichmentJobInput
    Arn: string
    ClientToken: string
    ExecutionRoleArn: string
    OutputConfig: ExportVectorEnrichmentJobOutputConfig
end

local record ExportVectorEnrichmentJobOutput
    Arn: string
    CreationTime: number
    ExecutionRoleArn: string
    ExportStatus: string
    OutputConfig: ExportVectorEnrichmentJobOutputConfig
end

local record GetEarthObservationJobInput
    Arn: string
end

local record GetEarthObservationJobOutput
    Arn: string
    Name: string
    CreationTime: number
    DurationInSeconds: number
    Status: string
    KmsKeyId: string
    InputConfig: InputConfigOutput
    JobConfig: JobConfigInput
    OutputBands: {OutputBand}
    ExecutionRoleArn: string
    ErrorDetails: EarthObservationJobErrorDetails
    ExportStatus: string
    ExportErrorDetails: ExportErrorDetails
    Tags: {string : string}
end

local record GetRasterDataCollectionInput
    Arn: string
end

local record GetRasterDataCollectionOutput
    Name: string
    Arn: string
    Type: string
    Description: string
    DescriptionPageUrl: string
    SupportedFilters: {Filter}
    ImageSourceBands: {string}
    Tags: {string : string}
end

local record GetTileInput
    x: number
    y: number
    z: number
    ImageAssets: {string}
    Target: string
    Arn: string
    ImageMask: boolean
    OutputFormat: string
    TimeRangeFilter: string
    PropertyFilters: string
    OutputDataType: string
    ExecutionRoleArn: string
end

local record GetTileOutput
    BinaryFile: function(): string, string
end

local record GetVectorEnrichmentJobInput
    Arn: string
end

local record GetVectorEnrichmentJobOutput
    Arn: string
    Type: string
    Name: string
    CreationTime: number
    DurationInSeconds: number
    Status: string
    KmsKeyId: string
    InputConfig: VectorEnrichmentJobInputConfig
    JobConfig: VectorEnrichmentJobConfig
    ExecutionRoleArn: string
    ErrorDetails: VectorEnrichmentJobErrorDetails
    ExportStatus: string
    ExportErrorDetails: VectorEnrichmentJobExportErrorDetails
    Tags: {string : string}
end

local record ListEarthObservationJobsInput
    StatusEquals: string
    SortOrder: string
    SortBy: string
    NextToken: string
    MaxResults: number
end

local record ListEarthObservationJobsOutput
    EarthObservationJobSummaries: {ListEarthObservationJobOutputConfig}
    NextToken: string
end

local record ListRasterDataCollectionsInput
    NextToken: string
    MaxResults: number
end

local record ListRasterDataCollectionsOutput
    RasterDataCollectionSummaries: {RasterDataCollectionMetadata}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListVectorEnrichmentJobsInput
    StatusEquals: string
    SortOrder: string
    SortBy: string
    NextToken: string
    MaxResults: number
end

local record ListVectorEnrichmentJobsOutput
    VectorEnrichmentJobSummaries: {ListVectorEnrichmentJobOutputConfig}
    NextToken: string
end

local record SearchRasterDataCollectionInput
    Arn: string
    RasterDataCollectionQuery: RasterDataCollectionQueryWithBandFilterInput
    NextToken: string
end

local record SearchRasterDataCollectionOutput
    ApproximateResultCount: number
    NextToken: string
    Items: {ItemSource}
end

local record StartEarthObservationJobInput
    Name: string
    ClientToken: string
    KmsKeyId: string
    InputConfig: InputConfigInput
    JobConfig: JobConfigInput
    ExecutionRoleArn: string
    Tags: {string : string}
end

local record StartEarthObservationJobOutput
    Name: string
    Arn: string
    CreationTime: number
    DurationInSeconds: number
    Status: string
    KmsKeyId: string
    InputConfig: InputConfigOutput
    JobConfig: JobConfigInput
    ExecutionRoleArn: string
    Tags: {string : string}
end

local record StartVectorEnrichmentJobInput
    Name: string
    ClientToken: string
    KmsKeyId: string
    InputConfig: VectorEnrichmentJobInputConfig
    JobConfig: VectorEnrichmentJobConfig
    ExecutionRoleArn: string
    Tags: {string : string}
end

local record StartVectorEnrichmentJobOutput
    Name: string
    Arn: string
    Type: string
    CreationTime: number
    DurationInSeconds: number
    Status: string
    KmsKeyId: string
    InputConfig: VectorEnrichmentJobInputConfig
    JobConfig: VectorEnrichmentJobConfig
    ExecutionRoleArn: string
    Tags: {string : string}
end

local record StopEarthObservationJobInput
    Arn: string
end

local record StopEarthObservationJobOutput
end

local record StopVectorEnrichmentJobInput
    Arn: string
end

local record StopVectorEnrichmentJobOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ServiceQuotaExceededException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
    ResourceId: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
end

local record ThrottlingException
    Message: string
    ResourceId: string
end

local record ValidationException
    Message: string
    ResourceId: string
end

local record M
    DeleteEarthObservationJobInput: DeleteEarthObservationJobInput
    DeleteEarthObservationJobOutput: DeleteEarthObservationJobOutput
    DeleteVectorEnrichmentJobInput: DeleteVectorEnrichmentJobInput
    DeleteVectorEnrichmentJobOutput: DeleteVectorEnrichmentJobOutput
    ExportEarthObservationJobInput: ExportEarthObservationJobInput
    ExportEarthObservationJobOutput: ExportEarthObservationJobOutput
    ExportVectorEnrichmentJobInput: ExportVectorEnrichmentJobInput
    ExportVectorEnrichmentJobOutput: ExportVectorEnrichmentJobOutput
    GetEarthObservationJobInput: GetEarthObservationJobInput
    GetEarthObservationJobOutput: GetEarthObservationJobOutput
    GetRasterDataCollectionInput: GetRasterDataCollectionInput
    GetRasterDataCollectionOutput: GetRasterDataCollectionOutput
    GetTileInput: GetTileInput
    GetTileOutput: GetTileOutput
    GetVectorEnrichmentJobInput: GetVectorEnrichmentJobInput
    GetVectorEnrichmentJobOutput: GetVectorEnrichmentJobOutput
    ListEarthObservationJobsInput: ListEarthObservationJobsInput
    ListEarthObservationJobsOutput: ListEarthObservationJobsOutput
    ListRasterDataCollectionsInput: ListRasterDataCollectionsInput
    ListRasterDataCollectionsOutput: ListRasterDataCollectionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListVectorEnrichmentJobsInput: ListVectorEnrichmentJobsInput
    ListVectorEnrichmentJobsOutput: ListVectorEnrichmentJobsOutput
    SearchRasterDataCollectionInput: SearchRasterDataCollectionInput
    SearchRasterDataCollectionOutput: SearchRasterDataCollectionOutput
    StartEarthObservationJobInput: StartEarthObservationJobInput
    StartEarthObservationJobOutput: StartEarthObservationJobOutput
    StartVectorEnrichmentJobInput: StartVectorEnrichmentJobInput
    StartVectorEnrichmentJobOutput: StartVectorEnrichmentJobOutput
    StopEarthObservationJobInput: StopEarthObservationJobInput
    StopEarthObservationJobOutput: StopEarthObservationJobOutput
    StopVectorEnrichmentJobInput: StopVectorEnrichmentJobInput
    StopVectorEnrichmentJobOutput: StopVectorEnrichmentJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
