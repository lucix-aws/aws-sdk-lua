local record CreateIndexInput
    vectorBucketName: string
    vectorBucketArn: string
    indexName: string
    dataType: string
    dimension: number
    distanceMetric: string
    metadataConfiguration: MetadataConfiguration
    encryptionConfiguration: EncryptionConfiguration
    tags: {string : string}
end

local record CreateIndexOutput
    indexArn: string
end

local record CreateVectorBucketInput
    vectorBucketName: string
    encryptionConfiguration: EncryptionConfiguration
    tags: {string : string}
end

local record CreateVectorBucketOutput
    vectorBucketArn: string
end

local record DeleteIndexInput
    vectorBucketName: string
    indexName: string
    indexArn: string
end

local record DeleteIndexOutput
end

local record DeleteVectorBucketInput
    vectorBucketName: string
    vectorBucketArn: string
end

local record DeleteVectorBucketOutput
end

local record DeleteVectorBucketPolicyInput
    vectorBucketName: string
    vectorBucketArn: string
end

local record DeleteVectorBucketPolicyOutput
end

local record DeleteVectorsInput
    vectorBucketName: string
    indexName: string
    indexArn: string
    keys: {string}
end

local record DeleteVectorsOutput
end

local record GetIndexInput
    vectorBucketName: string
    indexName: string
    indexArn: string
end

local record GetIndexOutput
    index: Index
end

local record GetVectorBucketInput
    vectorBucketName: string
    vectorBucketArn: string
end

local record GetVectorBucketOutput
    vectorBucket: VectorBucket
end

local record GetVectorBucketPolicyInput
    vectorBucketName: string
    vectorBucketArn: string
end

local record GetVectorBucketPolicyOutput
    policy: string
end

local record GetVectorsInput
    vectorBucketName: string
    indexName: string
    indexArn: string
    keys: {string}
    returnData: boolean
    returnMetadata: boolean
end

local record GetVectorsOutput
    vectors: {GetOutputVector}
end

local record ListIndexesInput
    vectorBucketName: string
    vectorBucketArn: string
    maxResults: number
    nextToken: string
    prefix: string
end

local record ListIndexesOutput
    nextToken: string
    indexes: {IndexSummary}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListVectorBucketsInput
    maxResults: number
    nextToken: string
    prefix: string
end

local record ListVectorBucketsOutput
    nextToken: string
    vectorBuckets: {VectorBucketSummary}
end

local record ListVectorsInput
    vectorBucketName: string
    indexName: string
    indexArn: string
    maxResults: number
    nextToken: string
    segmentCount: number
    segmentIndex: number
    returnData: boolean
    returnMetadata: boolean
end

local record ListVectorsOutput
    nextToken: string
    vectors: {ListOutputVector}
end

local record PutVectorBucketPolicyInput
    vectorBucketName: string
    vectorBucketArn: string
    policy: string
end

local record PutVectorBucketPolicyOutput
end

local record PutVectorsInput
    vectorBucketName: string
    indexName: string
    indexArn: string
    vectors: {PutInputVector}
end

local record PutVectorsOutput
end

local record QueryVectorsInput
    vectorBucketName: string
    indexName: string
    indexArn: string
    topK: number
    queryVector: VectorData
    filter: any
    returnMetadata: boolean
    returnDistance: boolean
end

local record QueryVectorsOutput
    vectors: {QueryOutputVector}
    distanceMetric: string
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

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record KmsDisabledException
    message: string
end

local record KmsInvalidKeyUsageException
    message: string
end

local record KmsInvalidStateException
    message: string
end

local record KmsNotFoundException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record KmsDisabledException
    message: string
end

local record KmsInvalidKeyUsageException
    message: string
end

local record KmsInvalidStateException
    message: string
end

local record KmsNotFoundException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record KmsDisabledException
    message: string
end

local record KmsInvalidKeyUsageException
    message: string
end

local record KmsInvalidStateException
    message: string
end

local record KmsNotFoundException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record KmsDisabledException
    message: string
end

local record KmsInvalidKeyUsageException
    message: string
end

local record KmsInvalidStateException
    message: string
end

local record KmsNotFoundException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record NotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local type DistanceMetric = "euclidean" | "cosine"

local type DataType = "float32"

local record M
    CreateIndexInput: CreateIndexInput
    CreateIndexOutput: CreateIndexOutput
    CreateVectorBucketInput: CreateVectorBucketInput
    CreateVectorBucketOutput: CreateVectorBucketOutput
    DeleteIndexInput: DeleteIndexInput
    DeleteIndexOutput: DeleteIndexOutput
    DeleteVectorBucketInput: DeleteVectorBucketInput
    DeleteVectorBucketOutput: DeleteVectorBucketOutput
    DeleteVectorBucketPolicyInput: DeleteVectorBucketPolicyInput
    DeleteVectorBucketPolicyOutput: DeleteVectorBucketPolicyOutput
    DeleteVectorsInput: DeleteVectorsInput
    DeleteVectorsOutput: DeleteVectorsOutput
    GetIndexInput: GetIndexInput
    GetIndexOutput: GetIndexOutput
    GetVectorBucketInput: GetVectorBucketInput
    GetVectorBucketOutput: GetVectorBucketOutput
    GetVectorBucketPolicyInput: GetVectorBucketPolicyInput
    GetVectorBucketPolicyOutput: GetVectorBucketPolicyOutput
    GetVectorsInput: GetVectorsInput
    GetVectorsOutput: GetVectorsOutput
    ListIndexesInput: ListIndexesInput
    ListIndexesOutput: ListIndexesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListVectorBucketsInput: ListVectorBucketsInput
    ListVectorBucketsOutput: ListVectorBucketsOutput
    ListVectorsInput: ListVectorsInput
    ListVectorsOutput: ListVectorsOutput
    PutVectorBucketPolicyInput: PutVectorBucketPolicyInput
    PutVectorBucketPolicyOutput: PutVectorBucketPolicyOutput
    PutVectorsInput: PutVectorsInput
    PutVectorsOutput: PutVectorsOutput
    QueryVectorsInput: QueryVectorsInput
    QueryVectorsOutput: QueryVectorsOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
