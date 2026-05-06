local record CopyImageSetInput
    datastoreId: string
    sourceImageSetId: string
    copyImageSetInformation: CopyImageSetInformation
    force: boolean
    promoteToPrimary: boolean
end

local record CopyImageSetOutput
    datastoreId: string
    sourceImageSetProperties: CopySourceImageSetProperties
    destinationImageSetProperties: CopyDestinationImageSetProperties
end

local record CreateDatastoreInput
    datastoreName: string
    clientToken: string
    tags: {string : string}
    kmsKeyArn: string
    lambdaAuthorizerArn: string
    losslessStorageFormat: string
end

local record CreateDatastoreOutput
    datastoreId: string
    datastoreStatus: string
end

local record DeleteDatastoreInput
    datastoreId: string
end

local record DeleteDatastoreOutput
    datastoreId: string
    datastoreStatus: string
end

local record DeleteImageSetInput
    datastoreId: string
    imageSetId: string
end

local record DeleteImageSetOutput
    datastoreId: string
    imageSetId: string
    imageSetState: string
    imageSetWorkflowStatus: string
end

local record GetDatastoreInput
    datastoreId: string
end

local record GetDatastoreOutput
    datastoreProperties: DatastoreProperties
end

local record GetDICOMImportJobInput
    datastoreId: string
    jobId: string
end

local record GetDICOMImportJobOutput
    jobProperties: DICOMImportJobProperties
end

local record GetImageFrameInput
    datastoreId: string
    imageSetId: string
    imageFrameInformation: ImageFrameInformation
end

local record GetImageFrameOutput
    imageFrameBlob: function(): string, string
    contentType: string
end

local record GetImageSetInput
    datastoreId: string
    imageSetId: string
    versionId: string
end

local record GetImageSetOutput
    datastoreId: string
    imageSetId: string
    versionId: string
    imageSetState: string
    imageSetWorkflowStatus: string
    createdAt: number
    updatedAt: number
    deletedAt: number
    message: string
    imageSetArn: string
    overrides: Overrides
    isPrimary: boolean
    lastAccessedAt: number
    storageTier: string
end

local record GetImageSetMetadataInput
    datastoreId: string
    imageSetId: string
    versionId: string
end

local record GetImageSetMetadataOutput
    imageSetMetadataBlob: function(): string, string
    contentType: string
    contentEncoding: string
end

local record ListDatastoresInput
    datastoreStatus: string
    nextToken: string
    maxResults: number
end

local record ListDatastoresOutput
    datastoreSummaries: {DatastoreSummary}
    nextToken: string
end

local record ListDICOMImportJobsInput
    datastoreId: string
    jobStatus: string
    nextToken: string
    maxResults: number
end

local record ListDICOMImportJobsOutput
    jobSummaries: {DICOMImportJobSummary}
    nextToken: string
end

local record ListImageSetVersionsInput
    datastoreId: string
    imageSetId: string
    nextToken: string
    maxResults: number
end

local record ListImageSetVersionsOutput
    imageSetPropertiesList: {ImageSetProperties}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record SearchImageSetsInput
    datastoreId: string
    searchCriteria: SearchCriteria
    maxResults: number
    nextToken: string
end

local record SearchImageSetsOutput
    imageSetsMetadataSummaries: {ImageSetsMetadataSummary}
    sort: Sort
    nextToken: string
end

local record StartDICOMImportJobInput
    jobName: string
    dataAccessRoleArn: string
    clientToken: string
    datastoreId: string
    inputS3Uri: string
    outputS3Uri: string
    inputOwnerAccountId: string
    importConfiguration: ImportConfiguration
end

local record StartDICOMImportJobOutput
    datastoreId: string
    jobId: string
    jobStatus: string
    submittedAt: number
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateImageSetMetadataInput
    datastoreId: string
    imageSetId: string
    latestVersionId: string
    force: boolean
    includeStudyImageSets: boolean
    updateImageSetMetadataUpdates: MetadataUpdates
end

local record UpdateImageSetMetadataOutput
    datastoreId: string
    imageSetId: string
    latestVersionId: string
    imageSetState: string
    imageSetWorkflowStatus: string
    createdAt: number
    updatedAt: number
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
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

local record ResourceNotFoundException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
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

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record NotAcceptableException
    message: string
end

local record ResourceNotFoundException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
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

local record ResourceNotFoundException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
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

local record ResourceNotFoundException
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

local record ResourceNotFoundException
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

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
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

local type ImageSetState = "ACTIVE" | "LOCKED" | "DELETED"

local type StorageTier = "FREQUENT_ACCESS" | "ARCHIVE_INSTANT_ACCESS"

local type LosslessStorageFormat = "HTJ2K" | "JPEG_2000_LOSSLESS"

local type DatastoreStatus = "CREATING" | "CREATE_FAILED" | "ACTIVE" | "DELETING" | "DELETED"

local type ImageSetWorkflowStatus = "CREATED" | "COPIED" | "COPYING" | "COPYING_WITH_READ_ONLY_ACCESS" | "COPY_FAILED" | "UPDATING" | "UPDATING_FOR_STUDY_CONSISTENCY" | "UPDATED" | "UPDATE_FAILED" | "DELETING" | "DELETED" | "IMPORTING" | "IMPORTED" | "IMPORT_FAILED"

local type JobStatus = "SUBMITTED" | "IN_PROGRESS" | "COMPLETED" | "FAILED"

local record M
    CopyImageSetInput: CopyImageSetInput
    CopyImageSetOutput: CopyImageSetOutput
    CreateDatastoreInput: CreateDatastoreInput
    CreateDatastoreOutput: CreateDatastoreOutput
    DeleteDatastoreInput: DeleteDatastoreInput
    DeleteDatastoreOutput: DeleteDatastoreOutput
    DeleteImageSetInput: DeleteImageSetInput
    DeleteImageSetOutput: DeleteImageSetOutput
    GetDatastoreInput: GetDatastoreInput
    GetDatastoreOutput: GetDatastoreOutput
    GetDICOMImportJobInput: GetDICOMImportJobInput
    GetDICOMImportJobOutput: GetDICOMImportJobOutput
    GetImageFrameInput: GetImageFrameInput
    GetImageFrameOutput: GetImageFrameOutput
    GetImageSetInput: GetImageSetInput
    GetImageSetOutput: GetImageSetOutput
    GetImageSetMetadataInput: GetImageSetMetadataInput
    GetImageSetMetadataOutput: GetImageSetMetadataOutput
    ListDatastoresInput: ListDatastoresInput
    ListDatastoresOutput: ListDatastoresOutput
    ListDICOMImportJobsInput: ListDICOMImportJobsInput
    ListDICOMImportJobsOutput: ListDICOMImportJobsOutput
    ListImageSetVersionsInput: ListImageSetVersionsInput
    ListImageSetVersionsOutput: ListImageSetVersionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    SearchImageSetsInput: SearchImageSetsInput
    SearchImageSetsOutput: SearchImageSetsOutput
    StartDICOMImportJobInput: StartDICOMImportJobInput
    StartDICOMImportJobOutput: StartDICOMImportJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateImageSetMetadataInput: UpdateImageSetMetadataInput
    UpdateImageSetMetadataOutput: UpdateImageSetMetadataOutput
end

return M
