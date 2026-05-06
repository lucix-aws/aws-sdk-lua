local record BulkPublishInput
    IdentityPoolId: string
end

local record BulkPublishOutput
    IdentityPoolId: string
end

local record DeleteDatasetInput
    IdentityPoolId: string
    IdentityId: string
    DatasetName: string
end

local record DeleteDatasetOutput
    Dataset: Dataset
end

local record DescribeDatasetInput
    IdentityPoolId: string
    IdentityId: string
    DatasetName: string
end

local record DescribeDatasetOutput
    Dataset: Dataset
end

local record DescribeIdentityPoolUsageInput
    IdentityPoolId: string
end

local record DescribeIdentityPoolUsageOutput
    IdentityPoolUsage: IdentityPoolUsage
end

local record DescribeIdentityUsageInput
    IdentityPoolId: string
    IdentityId: string
end

local record DescribeIdentityUsageOutput
    IdentityUsage: IdentityUsage
end

local record GetBulkPublishDetailsInput
    IdentityPoolId: string
end

local record GetBulkPublishDetailsOutput
    IdentityPoolId: string
    BulkPublishStartTime: number
    BulkPublishCompleteTime: number
    BulkPublishStatus: string
    FailureMessage: string
end

local record GetCognitoEventsInput
    IdentityPoolId: string
end

local record GetCognitoEventsOutput
    Events: {string : string}
end

local record GetIdentityPoolConfigurationInput
    IdentityPoolId: string
end

local record GetIdentityPoolConfigurationOutput
    IdentityPoolId: string
    PushSync: PushSync
    CognitoStreams: CognitoStreams
end

local record ListDatasetsInput
    IdentityPoolId: string
    IdentityId: string
    NextToken: string
    MaxResults: number
end

local record ListDatasetsOutput
    Datasets: {Dataset}
    Count: number
    NextToken: string
end

local record ListIdentityPoolUsageInput
    NextToken: string
    MaxResults: number
end

local record ListIdentityPoolUsageOutput
    IdentityPoolUsages: {IdentityPoolUsage}
    MaxResults: number
    Count: number
    NextToken: string
end

local record ListRecordsInput
    IdentityPoolId: string
    IdentityId: string
    DatasetName: string
    LastSyncCount: number
    NextToken: string
    MaxResults: number
    SyncSessionToken: string
end

local record ListRecordsOutput
    Records: {Record}
    NextToken: string
    Count: number
    DatasetSyncCount: number
    LastModifiedBy: string
    MergedDatasetNames: {string}
    DatasetExists: boolean
    DatasetDeletedAfterRequestedSyncCount: boolean
    SyncSessionToken: string
end

local record RegisterDeviceInput
    IdentityPoolId: string
    IdentityId: string
    Platform: string
    Token: string
end

local record RegisterDeviceOutput
    DeviceId: string
end

local record SetCognitoEventsInput
    IdentityPoolId: string
    Events: {string : string}
end

local record SetCognitoEventsOutput
end

local record SetIdentityPoolConfigurationInput
    IdentityPoolId: string
    PushSync: PushSync
    CognitoStreams: CognitoStreams
end

local record SetIdentityPoolConfigurationOutput
    IdentityPoolId: string
    PushSync: PushSync
    CognitoStreams: CognitoStreams
end

local record SubscribeToDatasetInput
    IdentityPoolId: string
    IdentityId: string
    DatasetName: string
    DeviceId: string
end

local record SubscribeToDatasetOutput
end

local record UnsubscribeFromDatasetInput
    IdentityPoolId: string
    IdentityId: string
    DatasetName: string
    DeviceId: string
end

local record UnsubscribeFromDatasetOutput
end

local record UpdateRecordsInput
    IdentityPoolId: string
    IdentityId: string
    DatasetName: string
    DeviceId: string
    RecordPatches: {RecordPatch}
    SyncSessionToken: string
    ClientContext: string
end

local record UpdateRecordsOutput
    Records: {Record}
end

local record AlreadyStreamedException
    message: string
end

local record DuplicateRequestException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidConfigurationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidConfigurationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidConfigurationException
    message: string
end

local record InvalidParameterException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local record InternalErrorException
    message: string
end

local record InvalidLambdaFunctionOutputException
    message: string
end

local record InvalidParameterException
    message: string
end

local record LambdaThrottledException
    message: string
end

local record LimitExceededException
    message: string
end

local record NotAuthorizedException
    message: string
end

local record ResourceConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyRequestsException
    message: string
end

local type BulkPublishStatus = "NOT_STARTED" | "IN_PROGRESS" | "FAILED" | "SUCCEEDED"

local type Platform = "APNS" | "APNS_SANDBOX" | "GCM" | "ADM"

local record M
    BulkPublishInput: BulkPublishInput
    BulkPublishOutput: BulkPublishOutput
    DeleteDatasetInput: DeleteDatasetInput
    DeleteDatasetOutput: DeleteDatasetOutput
    DescribeDatasetInput: DescribeDatasetInput
    DescribeDatasetOutput: DescribeDatasetOutput
    DescribeIdentityPoolUsageInput: DescribeIdentityPoolUsageInput
    DescribeIdentityPoolUsageOutput: DescribeIdentityPoolUsageOutput
    DescribeIdentityUsageInput: DescribeIdentityUsageInput
    DescribeIdentityUsageOutput: DescribeIdentityUsageOutput
    GetBulkPublishDetailsInput: GetBulkPublishDetailsInput
    GetBulkPublishDetailsOutput: GetBulkPublishDetailsOutput
    GetCognitoEventsInput: GetCognitoEventsInput
    GetCognitoEventsOutput: GetCognitoEventsOutput
    GetIdentityPoolConfigurationInput: GetIdentityPoolConfigurationInput
    GetIdentityPoolConfigurationOutput: GetIdentityPoolConfigurationOutput
    ListDatasetsInput: ListDatasetsInput
    ListDatasetsOutput: ListDatasetsOutput
    ListIdentityPoolUsageInput: ListIdentityPoolUsageInput
    ListIdentityPoolUsageOutput: ListIdentityPoolUsageOutput
    ListRecordsInput: ListRecordsInput
    ListRecordsOutput: ListRecordsOutput
    RegisterDeviceInput: RegisterDeviceInput
    RegisterDeviceOutput: RegisterDeviceOutput
    SetCognitoEventsInput: SetCognitoEventsInput
    SetCognitoEventsOutput: SetCognitoEventsOutput
    SetIdentityPoolConfigurationInput: SetIdentityPoolConfigurationInput
    SetIdentityPoolConfigurationOutput: SetIdentityPoolConfigurationOutput
    SubscribeToDatasetInput: SubscribeToDatasetInput
    SubscribeToDatasetOutput: SubscribeToDatasetOutput
    UnsubscribeFromDatasetInput: UnsubscribeFromDatasetInput
    UnsubscribeFromDatasetOutput: UnsubscribeFromDatasetOutput
    UpdateRecordsInput: UpdateRecordsInput
    UpdateRecordsOutput: UpdateRecordsOutput
end

return M
