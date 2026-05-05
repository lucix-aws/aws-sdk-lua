local record AddApplicationCloudWatchLoggingOptionInput
    ApplicationName: string
    CurrentApplicationVersionId: number
    CloudWatchLoggingOption: CloudWatchLoggingOption
    ConditionalToken: string
end

local record AddApplicationCloudWatchLoggingOptionOutput
    ApplicationARN: string
    ApplicationVersionId: number
    CloudWatchLoggingOptionDescriptions: {CloudWatchLoggingOptionDescription}
    OperationId: string
end

local record AddApplicationInputInput
    ApplicationName: string
    CurrentApplicationVersionId: number
    Input: Input
end

local record AddApplicationInputOutput
    ApplicationARN: string
    ApplicationVersionId: number
    InputDescriptions: {InputDescription}
end

local record AddApplicationInputProcessingConfigurationInput
    ApplicationName: string
    CurrentApplicationVersionId: number
    InputId: string
    InputProcessingConfiguration: InputProcessingConfiguration
end

local record AddApplicationInputProcessingConfigurationOutput
    ApplicationARN: string
    ApplicationVersionId: number
    InputId: string
    InputProcessingConfigurationDescription: InputProcessingConfigurationDescription
end

local record AddApplicationOutputInput
    ApplicationName: string
    CurrentApplicationVersionId: number
    Output: Output
end

local record AddApplicationOutputOutput
    ApplicationARN: string
    ApplicationVersionId: number
    OutputDescriptions: {OutputDescription}
end

local record AddApplicationReferenceDataSourceInput
    ApplicationName: string
    CurrentApplicationVersionId: number
    ReferenceDataSource: ReferenceDataSource
end

local record AddApplicationReferenceDataSourceOutput
    ApplicationARN: string
    ApplicationVersionId: number
    ReferenceDataSourceDescriptions: {ReferenceDataSourceDescription}
end

local record AddApplicationVpcConfigurationInput
    ApplicationName: string
    CurrentApplicationVersionId: number
    VpcConfiguration: VpcConfiguration
    ConditionalToken: string
end

local record AddApplicationVpcConfigurationOutput
    ApplicationARN: string
    ApplicationVersionId: number
    VpcConfigurationDescription: VpcConfigurationDescription
    OperationId: string
end

local record CreateApplicationInput
    ApplicationName: string
    ApplicationDescription: string
    RuntimeEnvironment: string
    ServiceExecutionRole: string
    ApplicationConfiguration: ApplicationConfiguration
    CloudWatchLoggingOptions: {CloudWatchLoggingOption}
    Tags: {Tag}
    ApplicationMode: string
end

local record CreateApplicationOutput
    ApplicationDetail: ApplicationDetail
end

local record CreateApplicationPresignedUrlInput
    ApplicationName: string
    UrlType: string
    SessionExpirationDurationInSeconds: number
end

local record CreateApplicationPresignedUrlOutput
    AuthorizedUrl: string
end

local record CreateApplicationSnapshotInput
    ApplicationName: string
    SnapshotName: string
end

local record CreateApplicationSnapshotOutput
end

local record DeleteApplicationInput
    ApplicationName: string
    CreateTimestamp: number
end

local record DeleteApplicationOperationOutput
end

local record DeleteApplicationCloudWatchLoggingOptionInput
    ApplicationName: string
    CurrentApplicationVersionId: number
    CloudWatchLoggingOptionId: string
    ConditionalToken: string
end

local record DeleteApplicationCloudWatchLoggingOptionOutput
    ApplicationARN: string
    ApplicationVersionId: number
    CloudWatchLoggingOptionDescriptions: {CloudWatchLoggingOptionDescription}
    OperationId: string
end

local record DeleteApplicationInputProcessingConfigurationInput
    ApplicationName: string
    CurrentApplicationVersionId: number
    InputId: string
end

local record DeleteApplicationInputProcessingConfigurationOutput
    ApplicationARN: string
    ApplicationVersionId: number
end

local record DeleteApplicationOutputInput
    ApplicationName: string
    CurrentApplicationVersionId: number
    OutputId: string
end

local record DeleteApplicationOutputOutput
    ApplicationARN: string
    ApplicationVersionId: number
end

local record DeleteApplicationReferenceDataSourceInput
    ApplicationName: string
    CurrentApplicationVersionId: number
    ReferenceId: string
end

local record DeleteApplicationReferenceDataSourceOutput
    ApplicationARN: string
    ApplicationVersionId: number
end

local record DeleteApplicationSnapshotInput
    ApplicationName: string
    SnapshotName: string
    SnapshotCreationTimestamp: number
end

local record DeleteApplicationSnapshotOutput
end

local record DeleteApplicationVpcConfigurationInput
    ApplicationName: string
    CurrentApplicationVersionId: number
    VpcConfigurationId: string
    ConditionalToken: string
end

local record DeleteApplicationVpcConfigurationOutput
    ApplicationARN: string
    ApplicationVersionId: number
    OperationId: string
end

local record DescribeApplicationInput
    ApplicationName: string
    IncludeAdditionalDetails: boolean
end

local record DescribeApplicationOutput
    ApplicationDetail: ApplicationDetail
end

local record DescribeApplicationOperationInput
    ApplicationName: string
    OperationId: string
end

local record DescribeApplicationOperationOutput
    ApplicationOperationInfoDetails: ApplicationOperationInfoDetails
end

local record DescribeApplicationSnapshotInput
    ApplicationName: string
    SnapshotName: string
end

local record DescribeApplicationSnapshotOutput
    SnapshotDetails: SnapshotDetails
end

local record DescribeApplicationVersionInput
    ApplicationName: string
    ApplicationVersionId: number
end

local record DescribeApplicationVersionOutput
    ApplicationVersionDetail: ApplicationDetail
end

local record DiscoverInputSchemaInput
    ResourceARN: string
    ServiceExecutionRole: string
    InputStartingPositionConfiguration: InputStartingPositionConfiguration
    S3Configuration: S3Configuration
    InputProcessingConfiguration: InputProcessingConfiguration
end

local record DiscoverInputSchemaOutput
    InputSchema: SourceSchema
    ParsedInputRecords: {{string}}
    ProcessedInputRecords: {string}
    RawInputRecords: {string}
end

local record ListApplicationOperationsInput
    ApplicationName: string
    Limit: number
    NextToken: string
    Operation: string
    OperationStatus: string
end

local record ListApplicationOperationsOutput
    ApplicationOperationInfoList: {ApplicationOperationInfo}
    NextToken: string
end

local record ListApplicationsInput
    Limit: number
    NextToken: string
end

local record ListApplicationsOutput
    ApplicationSummaries: {ApplicationSummary}
    NextToken: string
end

local record ListApplicationSnapshotsInput
    ApplicationName: string
    Limit: number
    NextToken: string
end

local record ListApplicationSnapshotsOutput
    SnapshotSummaries: {SnapshotDetails}
    NextToken: string
end

local record ListApplicationVersionsInput
    ApplicationName: string
    Limit: number
    NextToken: string
end

local record ListApplicationVersionsOutput
    ApplicationVersionSummaries: {ApplicationVersionSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record RollbackApplicationInput
    ApplicationName: string
    CurrentApplicationVersionId: number
end

local record RollbackApplicationOutput
    ApplicationDetail: ApplicationDetail
    OperationId: string
end

local record StartApplicationInput
    ApplicationName: string
    RunConfiguration: RunConfiguration
end

local record StartApplicationOutput
    OperationId: string
end

local record StopApplicationInput
    ApplicationName: string
    Force: boolean
end

local record StopApplicationOutput
    OperationId: string
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

local record UpdateApplicationInput
    ApplicationName: string
    CurrentApplicationVersionId: number
    ApplicationConfigurationUpdate: ApplicationConfigurationUpdate
    ServiceExecutionRoleUpdate: string
    RunConfigurationUpdate: RunConfigurationUpdate
    CloudWatchLoggingOptionUpdates: {CloudWatchLoggingOptionUpdate}
    ConditionalToken: string
    RuntimeEnvironmentUpdate: string
end

local record UpdateApplicationOutput
    ApplicationDetail: ApplicationDetail
    OperationId: string
end

local record UpdateApplicationMaintenanceConfigurationInput
    ApplicationName: string
    ApplicationMaintenanceConfigurationUpdate: ApplicationMaintenanceConfigurationUpdate
end

local record UpdateApplicationMaintenanceConfigurationOutput
    ApplicationARN: string
    ApplicationMaintenanceConfigurationDescription: ApplicationMaintenanceConfigurationDescription
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidApplicationConfigurationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record CodeValidationException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidApplicationConfigurationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record CodeValidationException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record TooManyTagsException
    message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidApplicationConfigurationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidApplicationConfigurationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidApplicationConfigurationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidApplicationConfigurationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceProvisionedThroughputExceededException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record UnableToDetectSchemaException
    Message: string
    RawInputRecords: {string}
    ProcessedInputRecords: {string}
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record InvalidApplicationConfigurationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidApplicationConfigurationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyTagsException
    message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TooManyTagsException
    message: string
end

local record CodeValidationException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidApplicationConfigurationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local type UrlType = "FLINK_DASHBOARD_URL" | "ZEPPELIN_UI_URL"

local type ApplicationMode = "STREAMING" | "INTERACTIVE"

local type RuntimeEnvironment = "SQL-1_0" | "FLINK-1_6" | "FLINK-1_8" | "ZEPPELIN-FLINK-1_0" | "FLINK-1_11" | "FLINK-1_13" | "ZEPPELIN-FLINK-2_0" | "FLINK-1_15" | "ZEPPELIN-FLINK-3_0" | "FLINK-1_18" | "FLINK-1_19" | "FLINK-1_20" | "FLINK-2_2"

local type OperationStatus = "IN_PROGRESS" | "CANCELLED" | "SUCCESSFUL" | "FAILED"

local record M
    AddApplicationCloudWatchLoggingOptionInput: AddApplicationCloudWatchLoggingOptionInput
    AddApplicationCloudWatchLoggingOptionOutput: AddApplicationCloudWatchLoggingOptionOutput
    AddApplicationInputInput: AddApplicationInputInput
    AddApplicationInputOutput: AddApplicationInputOutput
    AddApplicationInputProcessingConfigurationInput: AddApplicationInputProcessingConfigurationInput
    AddApplicationInputProcessingConfigurationOutput: AddApplicationInputProcessingConfigurationOutput
    AddApplicationOutputInput: AddApplicationOutputInput
    AddApplicationOutputOutput: AddApplicationOutputOutput
    AddApplicationReferenceDataSourceInput: AddApplicationReferenceDataSourceInput
    AddApplicationReferenceDataSourceOutput: AddApplicationReferenceDataSourceOutput
    AddApplicationVpcConfigurationInput: AddApplicationVpcConfigurationInput
    AddApplicationVpcConfigurationOutput: AddApplicationVpcConfigurationOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateApplicationPresignedUrlInput: CreateApplicationPresignedUrlInput
    CreateApplicationPresignedUrlOutput: CreateApplicationPresignedUrlOutput
    CreateApplicationSnapshotInput: CreateApplicationSnapshotInput
    CreateApplicationSnapshotOutput: CreateApplicationSnapshotOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOperationOutput: DeleteApplicationOperationOutput
    DeleteApplicationCloudWatchLoggingOptionInput: DeleteApplicationCloudWatchLoggingOptionInput
    DeleteApplicationCloudWatchLoggingOptionOutput: DeleteApplicationCloudWatchLoggingOptionOutput
    DeleteApplicationInputProcessingConfigurationInput: DeleteApplicationInputProcessingConfigurationInput
    DeleteApplicationInputProcessingConfigurationOutput: DeleteApplicationInputProcessingConfigurationOutput
    DeleteApplicationOutputInput: DeleteApplicationOutputInput
    DeleteApplicationOutputOutput: DeleteApplicationOutputOutput
    DeleteApplicationReferenceDataSourceInput: DeleteApplicationReferenceDataSourceInput
    DeleteApplicationReferenceDataSourceOutput: DeleteApplicationReferenceDataSourceOutput
    DeleteApplicationSnapshotInput: DeleteApplicationSnapshotInput
    DeleteApplicationSnapshotOutput: DeleteApplicationSnapshotOutput
    DeleteApplicationVpcConfigurationInput: DeleteApplicationVpcConfigurationInput
    DeleteApplicationVpcConfigurationOutput: DeleteApplicationVpcConfigurationOutput
    DescribeApplicationInput: DescribeApplicationInput
    DescribeApplicationOutput: DescribeApplicationOutput
    DescribeApplicationOperationInput: DescribeApplicationOperationInput
    DescribeApplicationOperationOutput: DescribeApplicationOperationOutput
    DescribeApplicationSnapshotInput: DescribeApplicationSnapshotInput
    DescribeApplicationSnapshotOutput: DescribeApplicationSnapshotOutput
    DescribeApplicationVersionInput: DescribeApplicationVersionInput
    DescribeApplicationVersionOutput: DescribeApplicationVersionOutput
    DiscoverInputSchemaInput: DiscoverInputSchemaInput
    DiscoverInputSchemaOutput: DiscoverInputSchemaOutput
    ListApplicationOperationsInput: ListApplicationOperationsInput
    ListApplicationOperationsOutput: ListApplicationOperationsOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListApplicationSnapshotsInput: ListApplicationSnapshotsInput
    ListApplicationSnapshotsOutput: ListApplicationSnapshotsOutput
    ListApplicationVersionsInput: ListApplicationVersionsInput
    ListApplicationVersionsOutput: ListApplicationVersionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RollbackApplicationInput: RollbackApplicationInput
    RollbackApplicationOutput: RollbackApplicationOutput
    StartApplicationInput: StartApplicationInput
    StartApplicationOutput: StartApplicationOutput
    StopApplicationInput: StopApplicationInput
    StopApplicationOutput: StopApplicationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateApplicationMaintenanceConfigurationInput: UpdateApplicationMaintenanceConfigurationInput
    UpdateApplicationMaintenanceConfigurationOutput: UpdateApplicationMaintenanceConfigurationOutput
end

return M
