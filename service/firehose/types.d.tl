local record CreateDeliveryStreamInput
    DeliveryStreamName: string
    DeliveryStreamType: string
    DirectPutSourceConfiguration: DirectPutSourceConfiguration
    KinesisStreamSourceConfiguration: KinesisStreamSourceConfiguration
    DeliveryStreamEncryptionConfigurationInput: DeliveryStreamEncryptionConfigurationInput
    S3DestinationConfiguration: S3DestinationConfiguration
    ExtendedS3DestinationConfiguration: ExtendedS3DestinationConfiguration
    RedshiftDestinationConfiguration: RedshiftDestinationConfiguration
    ElasticsearchDestinationConfiguration: ElasticsearchDestinationConfiguration
    AmazonopensearchserviceDestinationConfiguration: AmazonopensearchserviceDestinationConfiguration
    SplunkDestinationConfiguration: SplunkDestinationConfiguration
    HttpEndpointDestinationConfiguration: HttpEndpointDestinationConfiguration
    Tags: {Tag}
    AmazonOpenSearchServerlessDestinationConfiguration: AmazonOpenSearchServerlessDestinationConfiguration
    MSKSourceConfiguration: MSKSourceConfiguration
    SnowflakeDestinationConfiguration: SnowflakeDestinationConfiguration
    IcebergDestinationConfiguration: IcebergDestinationConfiguration
    DatabaseSourceConfiguration: DatabaseSourceConfiguration
end

local record CreateDeliveryStreamOutput
    DeliveryStreamARN: string
end

local record DeleteDeliveryStreamInput
    DeliveryStreamName: string
    AllowForceDelete: boolean
end

local record DeleteDeliveryStreamOutput
end

local record DescribeDeliveryStreamInput
    DeliveryStreamName: string
    Limit: number
    ExclusiveStartDestinationId: string
end

local record DescribeDeliveryStreamOutput
    DeliveryStreamDescription: DeliveryStreamDescription
end

local record ListDeliveryStreamsInput
    Limit: number
    DeliveryStreamType: string
    ExclusiveStartDeliveryStreamName: string
end

local record ListDeliveryStreamsOutput
    DeliveryStreamNames: {string}
    HasMoreDeliveryStreams: boolean
end

local record ListTagsForDeliveryStreamInput
    DeliveryStreamName: string
    ExclusiveStartTagKey: string
    Limit: number
end

local record ListTagsForDeliveryStreamOutput
    Tags: {Tag}
    HasMoreTags: boolean
end

local record PutRecordInput
    DeliveryStreamName: string
    Record: Record
end

local record PutRecordOutput
    RecordId: string
    Encrypted: boolean
end

local record PutRecordBatchInput
    DeliveryStreamName: string
    Records: {Record}
end

local record PutRecordBatchOutput
    FailedPutCount: number
    Encrypted: boolean
    RequestResponses: {PutRecordBatchResponseEntry}
end

local record StartDeliveryStreamEncryptionInput
    DeliveryStreamName: string
    DeliveryStreamEncryptionConfigurationInput: DeliveryStreamEncryptionConfigurationInput
end

local record StartDeliveryStreamEncryptionOutput
end

local record StopDeliveryStreamEncryptionInput
    DeliveryStreamName: string
end

local record StopDeliveryStreamEncryptionOutput
end

local record TagDeliveryStreamInput
    DeliveryStreamName: string
    Tags: {Tag}
end

local record TagDeliveryStreamOutput
end

local record UntagDeliveryStreamInput
    DeliveryStreamName: string
    TagKeys: {string}
end

local record UntagDeliveryStreamOutput
end

local record UpdateDestinationInput
    DeliveryStreamName: string
    CurrentDeliveryStreamVersionId: string
    DestinationId: string
    S3DestinationUpdate: S3DestinationUpdate
    ExtendedS3DestinationUpdate: ExtendedS3DestinationUpdate
    RedshiftDestinationUpdate: RedshiftDestinationUpdate
    ElasticsearchDestinationUpdate: ElasticsearchDestinationUpdate
    AmazonopensearchserviceDestinationUpdate: AmazonopensearchserviceDestinationUpdate
    SplunkDestinationUpdate: SplunkDestinationUpdate
    HttpEndpointDestinationUpdate: HttpEndpointDestinationUpdate
    AmazonOpenSearchServerlessDestinationUpdate: AmazonOpenSearchServerlessDestinationUpdate
    SnowflakeDestinationUpdate: SnowflakeDestinationUpdate
    IcebergDestinationUpdate: IcebergDestinationUpdate
end

local record UpdateDestinationOutput
end

local record InvalidArgumentException
    message: string
end

local record InvalidKMSResourceException
    code: string
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record InvalidKMSResourceException
    code: string
    message: string
end

local record InvalidSourceException
    code: string
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record InvalidKMSResourceException
    code: string
    message: string
end

local record InvalidSourceException
    code: string
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record InvalidKMSResourceException
    code: string
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidArgumentException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local type DeliveryStreamType = "DirectPut" | "KinesisStreamAsSource" | "MSKAsSource" | "DatabaseAsSource"

local record M
    CreateDeliveryStreamInput: CreateDeliveryStreamInput
    CreateDeliveryStreamOutput: CreateDeliveryStreamOutput
    DeleteDeliveryStreamInput: DeleteDeliveryStreamInput
    DeleteDeliveryStreamOutput: DeleteDeliveryStreamOutput
    DescribeDeliveryStreamInput: DescribeDeliveryStreamInput
    DescribeDeliveryStreamOutput: DescribeDeliveryStreamOutput
    ListDeliveryStreamsInput: ListDeliveryStreamsInput
    ListDeliveryStreamsOutput: ListDeliveryStreamsOutput
    ListTagsForDeliveryStreamInput: ListTagsForDeliveryStreamInput
    ListTagsForDeliveryStreamOutput: ListTagsForDeliveryStreamOutput
    PutRecordInput: PutRecordInput
    PutRecordOutput: PutRecordOutput
    PutRecordBatchInput: PutRecordBatchInput
    PutRecordBatchOutput: PutRecordBatchOutput
    StartDeliveryStreamEncryptionInput: StartDeliveryStreamEncryptionInput
    StartDeliveryStreamEncryptionOutput: StartDeliveryStreamEncryptionOutput
    StopDeliveryStreamEncryptionInput: StopDeliveryStreamEncryptionInput
    StopDeliveryStreamEncryptionOutput: StopDeliveryStreamEncryptionOutput
    TagDeliveryStreamInput: TagDeliveryStreamInput
    TagDeliveryStreamOutput: TagDeliveryStreamOutput
    UntagDeliveryStreamInput: UntagDeliveryStreamInput
    UntagDeliveryStreamOutput: UntagDeliveryStreamOutput
    UpdateDestinationInput: UpdateDestinationInput
    UpdateDestinationOutput: UpdateDestinationOutput
end

return M
