local record AssociateTrackerConsumerInput
    TrackerName: string
    ConsumerArn: string
end

local record AssociateTrackerConsumerOutput
end

local record BatchDeleteDevicePositionHistoryInput
    TrackerName: string
    DeviceIds: {string}
end

local record BatchDeleteDevicePositionHistoryOutput
    Errors: {BatchDeleteDevicePositionHistoryError}
end

local record BatchDeleteGeofenceInput
    CollectionName: string
    GeofenceIds: {string}
end

local record BatchDeleteGeofenceOutput
    Errors: {BatchDeleteGeofenceError}
end

local record BatchEvaluateGeofencesInput
    CollectionName: string
    DevicePositionUpdates: {DevicePositionUpdate}
end

local record BatchEvaluateGeofencesOutput
    Errors: {BatchEvaluateGeofencesError}
end

local record BatchGetDevicePositionInput
    TrackerName: string
    DeviceIds: {string}
end

local record BatchGetDevicePositionOutput
    Errors: {BatchGetDevicePositionError}
    DevicePositions: {DevicePosition}
end

local record BatchPutGeofenceInput
    CollectionName: string
    Entries: {BatchPutGeofenceRequestEntry}
end

local record BatchPutGeofenceOutput
    Successes: {BatchPutGeofenceSuccess}
    Errors: {BatchPutGeofenceError}
end

local record BatchUpdateDevicePositionInput
    TrackerName: string
    Updates: {DevicePositionUpdate}
end

local record BatchUpdateDevicePositionOutput
    Errors: {BatchUpdateDevicePositionError}
end

local record CalculateRouteInput
    CalculatorName: string
    DeparturePosition: {number}
    DestinationPosition: {number}
    WaypointPositions: {{number}}
    TravelMode: string
    DepartureTime: number
    DepartNow: boolean
    DistanceUnit: string
    IncludeLegGeometry: boolean
    CarModeOptions: CalculateRouteCarModeOptions
    TruckModeOptions: CalculateRouteTruckModeOptions
    ArrivalTime: number
    OptimizeFor: string
    Key: string
end

local record CalculateRouteOutput
    Legs: {Leg}
    Summary: CalculateRouteSummary
end

local record CalculateRouteMatrixInput
    CalculatorName: string
    DeparturePositions: {{number}}
    DestinationPositions: {{number}}
    TravelMode: string
    DepartureTime: number
    DepartNow: boolean
    DistanceUnit: string
    CarModeOptions: CalculateRouteCarModeOptions
    TruckModeOptions: CalculateRouteTruckModeOptions
    Key: string
end

local record CalculateRouteMatrixOutput
    RouteMatrix: {{RouteMatrixEntry}}
    SnappedDeparturePositions: {{number}}
    SnappedDestinationPositions: {{number}}
    Summary: CalculateRouteMatrixSummary
end

local record CancelJobInput
    JobId: string
end

local record CancelJobOutput
    JobArn: string
    JobId: string
    Status: string
end

local record CreateGeofenceCollectionInput
    CollectionName: string
    PricingPlan: string
    PricingPlanDataSource: string
    Description: string
    Tags: {string : string}
    KmsKeyId: string
end

local record CreateGeofenceCollectionOutput
    CollectionName: string
    CollectionArn: string
    CreateTime: number
end

local record CreateKeyInput
    KeyName: string
    Restrictions: ApiKeyRestrictions
    Description: string
    ExpireTime: number
    NoExpiry: boolean
    Tags: {string : string}
end

local record CreateKeyOutput
    Key: string
    KeyArn: string
    KeyName: string
    CreateTime: number
end

local record CreateMapInput
    MapName: string
    Configuration: MapConfiguration
    PricingPlan: string
    Description: string
    Tags: {string : string}
end

local record CreateMapOutput
    MapName: string
    MapArn: string
    CreateTime: number
end

local record CreatePlaceIndexInput
    IndexName: string
    DataSource: string
    PricingPlan: string
    Description: string
    DataSourceConfiguration: DataSourceConfiguration
    Tags: {string : string}
end

local record CreatePlaceIndexOutput
    IndexName: string
    IndexArn: string
    CreateTime: number
end

local record CreateRouteCalculatorInput
    CalculatorName: string
    DataSource: string
    PricingPlan: string
    Description: string
    Tags: {string : string}
end

local record CreateRouteCalculatorOutput
    CalculatorName: string
    CalculatorArn: string
    CreateTime: number
end

local record CreateTrackerInput
    TrackerName: string
    PricingPlan: string
    KmsKeyId: string
    PricingPlanDataSource: string
    Description: string
    Tags: {string : string}
    PositionFiltering: string
    EventBridgeEnabled: boolean
    KmsKeyEnableGeospatialQueries: boolean
end

local record CreateTrackerOutput
    TrackerName: string
    TrackerArn: string
    CreateTime: number
end

local record DeleteGeofenceCollectionInput
    CollectionName: string
end

local record DeleteGeofenceCollectionOutput
end

local record DeleteKeyInput
    KeyName: string
    ForceDelete: boolean
end

local record DeleteKeyOutput
end

local record DeleteMapInput
    MapName: string
end

local record DeleteMapOutput
end

local record DeletePlaceIndexInput
    IndexName: string
end

local record DeletePlaceIndexOutput
end

local record DeleteRouteCalculatorInput
    CalculatorName: string
end

local record DeleteRouteCalculatorOutput
end

local record DeleteTrackerInput
    TrackerName: string
end

local record DeleteTrackerOutput
end

local record DescribeGeofenceCollectionInput
    CollectionName: string
end

local record DescribeGeofenceCollectionOutput
    CollectionName: string
    CollectionArn: string
    Description: string
    PricingPlan: string
    PricingPlanDataSource: string
    KmsKeyId: string
    Tags: {string : string}
    CreateTime: number
    UpdateTime: number
    GeofenceCount: number
end

local record DescribeKeyInput
    KeyName: string
end

local record DescribeKeyOutput
    Key: string
    KeyArn: string
    KeyName: string
    Restrictions: ApiKeyRestrictions
    CreateTime: number
    ExpireTime: number
    UpdateTime: number
    Description: string
    Tags: {string : string}
end

local record DescribeMapInput
    MapName: string
end

local record DescribeMapOutput
    MapName: string
    MapArn: string
    PricingPlan: string
    DataSource: string
    Configuration: MapConfiguration
    Description: string
    Tags: {string : string}
    CreateTime: number
    UpdateTime: number
end

local record DescribePlaceIndexInput
    IndexName: string
end

local record DescribePlaceIndexOutput
    IndexName: string
    IndexArn: string
    PricingPlan: string
    Description: string
    CreateTime: number
    UpdateTime: number
    DataSource: string
    DataSourceConfiguration: DataSourceConfiguration
    Tags: {string : string}
end

local record DescribeRouteCalculatorInput
    CalculatorName: string
end

local record DescribeRouteCalculatorOutput
    CalculatorName: string
    CalculatorArn: string
    PricingPlan: string
    Description: string
    CreateTime: number
    UpdateTime: number
    DataSource: string
    Tags: {string : string}
end

local record DescribeTrackerInput
    TrackerName: string
end

local record DescribeTrackerOutput
    TrackerName: string
    TrackerArn: string
    Description: string
    PricingPlan: string
    PricingPlanDataSource: string
    Tags: {string : string}
    CreateTime: number
    UpdateTime: number
    KmsKeyId: string
    PositionFiltering: string
    EventBridgeEnabled: boolean
    KmsKeyEnableGeospatialQueries: boolean
end

local record DisassociateTrackerConsumerInput
    TrackerName: string
    ConsumerArn: string
end

local record DisassociateTrackerConsumerOutput
end

local record ForecastGeofenceEventsInput
    CollectionName: string
    DeviceState: ForecastGeofenceEventsDeviceState
    TimeHorizonMinutes: number
    DistanceUnit: string
    SpeedUnit: string
    NextToken: string
    MaxResults: number
end

local record ForecastGeofenceEventsOutput
    ForecastedEvents: {ForecastedEvent}
    NextToken: string
    DistanceUnit: string
    SpeedUnit: string
end

local record GetDevicePositionInput
    TrackerName: string
    DeviceId: string
end

local record GetDevicePositionOutput
    DeviceId: string
    SampleTime: number
    ReceivedTime: number
    Position: {number}
    Accuracy: PositionalAccuracy
    PositionProperties: {string : string}
end

local record GetDevicePositionHistoryInput
    TrackerName: string
    DeviceId: string
    NextToken: string
    StartTimeInclusive: number
    EndTimeExclusive: number
    MaxResults: number
end

local record GetDevicePositionHistoryOutput
    DevicePositions: {DevicePosition}
    NextToken: string
end

local record GetGeofenceInput
    CollectionName: string
    GeofenceId: string
end

local record GetGeofenceOutput
    GeofenceId: string
    Geometry: GeofenceGeometry
    Status: string
    CreateTime: number
    UpdateTime: number
    GeofenceProperties: {string : string}
end

local record GetJobInput
    JobId: string
end

local record GetJobOutput
    Action: string
    ActionOptions: JobActionOptions
    CreatedAt: number
    EndedAt: number
    Error: JobError
    ExecutionRoleArn: string
    InputOptions: JobInputOptions
    JobArn: string
    JobId: string
    Name: string
    OutputOptions: JobOutputOptions
    Status: string
    UpdatedAt: number
    Tags: {string : string}
end

local record GetMapGlyphsInput
    MapName: string
    FontStack: string
    FontUnicodeRange: string
    Key: string
end

local record GetMapGlyphsOutput
    Blob: string
    ContentType: string
    CacheControl: string
end

local record GetMapSpritesInput
    MapName: string
    FileName: string
    Key: string
end

local record GetMapSpritesOutput
    Blob: string
    ContentType: string
    CacheControl: string
end

local record GetMapStyleDescriptorInput
    MapName: string
    Key: string
end

local record GetMapStyleDescriptorOutput
    Blob: string
    ContentType: string
    CacheControl: string
end

local record GetMapTileInput
    MapName: string
    Z: string
    X: string
    Y: string
    Key: string
end

local record GetMapTileOutput
    Blob: string
    ContentType: string
    CacheControl: string
end

local record GetPlaceInput
    IndexName: string
    PlaceId: string
    Language: string
    Key: string
end

local record GetPlaceOutput
    Place: Place
end

local record ListDevicePositionsInput
    TrackerName: string
    MaxResults: number
    NextToken: string
    FilterGeometry: TrackingFilterGeometry
end

local record ListDevicePositionsOutput
    Entries: {ListDevicePositionsResponseEntry}
    NextToken: string
end

local record ListGeofenceCollectionsInput
    MaxResults: number
    NextToken: string
end

local record ListGeofenceCollectionsOutput
    Entries: {ListGeofenceCollectionsResponseEntry}
    NextToken: string
end

local record ListGeofencesInput
    CollectionName: string
    NextToken: string
    MaxResults: number
end

local record ListGeofencesOutput
    Entries: {ListGeofenceResponseEntry}
    NextToken: string
end

local record ListJobsInput
    Filter: JobsFilter
    MaxResults: number
    NextToken: string
end

local record ListJobsOutput
    Entries: {ListJobsResponseEntry}
    NextToken: string
end

local record ListKeysInput
    MaxResults: number
    NextToken: string
    Filter: ApiKeyFilter
end

local record ListKeysOutput
    Entries: {ListKeysResponseEntry}
    NextToken: string
end

local record ListMapsInput
    MaxResults: number
    NextToken: string
end

local record ListMapsOutput
    Entries: {ListMapsResponseEntry}
    NextToken: string
end

local record ListPlaceIndexesInput
    MaxResults: number
    NextToken: string
end

local record ListPlaceIndexesOutput
    Entries: {ListPlaceIndexesResponseEntry}
    NextToken: string
end

local record ListRouteCalculatorsInput
    MaxResults: number
    NextToken: string
end

local record ListRouteCalculatorsOutput
    Entries: {ListRouteCalculatorsResponseEntry}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record ListTrackerConsumersInput
    TrackerName: string
    MaxResults: number
    NextToken: string
end

local record ListTrackerConsumersOutput
    ConsumerArns: {string}
    NextToken: string
end

local record ListTrackersInput
    MaxResults: number
    NextToken: string
end

local record ListTrackersOutput
    Entries: {ListTrackersResponseEntry}
    NextToken: string
end

local record PutGeofenceInput
    CollectionName: string
    GeofenceId: string
    Geometry: GeofenceGeometry
    GeofenceProperties: {string : string}
end

local record PutGeofenceOutput
    GeofenceId: string
    CreateTime: number
    UpdateTime: number
end

local record SearchPlaceIndexForPositionInput
    IndexName: string
    Position: {number}
    MaxResults: number
    Language: string
    Key: string
end

local record SearchPlaceIndexForPositionOutput
    Summary: SearchPlaceIndexForPositionSummary
    Results: {SearchForPositionResult}
end

local record SearchPlaceIndexForSuggestionsInput
    IndexName: string
    Text: string
    BiasPosition: {number}
    FilterBBox: {number}
    FilterCountries: {string}
    MaxResults: number
    Language: string
    FilterCategories: {string}
    Key: string
end

local record SearchPlaceIndexForSuggestionsOutput
    Summary: SearchPlaceIndexForSuggestionsSummary
    Results: {SearchForSuggestionsResult}
end

local record SearchPlaceIndexForTextInput
    IndexName: string
    Text: string
    BiasPosition: {number}
    FilterBBox: {number}
    FilterCountries: {string}
    MaxResults: number
    Language: string
    FilterCategories: {string}
    Key: string
end

local record SearchPlaceIndexForTextOutput
    Summary: SearchPlaceIndexForTextSummary
    Results: {SearchForTextResult}
end

local record StartJobInput
    ClientToken: string
    Action: string
    ActionOptions: JobActionOptions
    ExecutionRoleArn: string
    InputOptions: JobInputOptions
    Name: string
    OutputOptions: JobOutputOptions
    Tags: {string : string}
end

local record StartJobOutput
    CreatedAt: number
    JobArn: string
    JobId: string
    Status: string
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

local record UpdateGeofenceCollectionInput
    CollectionName: string
    PricingPlan: string
    PricingPlanDataSource: string
    Description: string
end

local record UpdateGeofenceCollectionOutput
    CollectionName: string
    CollectionArn: string
    UpdateTime: number
end

local record UpdateKeyInput
    KeyName: string
    Description: string
    ExpireTime: number
    NoExpiry: boolean
    ForceUpdate: boolean
    Restrictions: ApiKeyRestrictions
end

local record UpdateKeyOutput
    KeyArn: string
    KeyName: string
    UpdateTime: number
end

local record UpdateMapInput
    MapName: string
    PricingPlan: string
    Description: string
    ConfigurationUpdate: MapConfigurationUpdate
end

local record UpdateMapOutput
    MapName: string
    MapArn: string
    UpdateTime: number
end

local record UpdatePlaceIndexInput
    IndexName: string
    PricingPlan: string
    Description: string
    DataSourceConfiguration: DataSourceConfiguration
end

local record UpdatePlaceIndexOutput
    IndexName: string
    IndexArn: string
    UpdateTime: number
end

local record UpdateRouteCalculatorInput
    CalculatorName: string
    PricingPlan: string
    Description: string
end

local record UpdateRouteCalculatorOutput
    CalculatorName: string
    CalculatorArn: string
    UpdateTime: number
end

local record UpdateTrackerInput
    TrackerName: string
    PricingPlan: string
    PricingPlanDataSource: string
    Description: string
    PositionFiltering: string
    EventBridgeEnabled: boolean
    KmsKeyEnableGeospatialQueries: boolean
end

local record UpdateTrackerOutput
    TrackerName: string
    TrackerArn: string
    UpdateTime: number
end

local record VerifyDevicePositionInput
    TrackerName: string
    DeviceState: DeviceState
    DistanceUnit: string
end

local record VerifyDevicePositionOutput
    InferredState: InferredState
    DeviceId: string
    SampleTime: number
    ReceivedTime: number
    DistanceUnit: string
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

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
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
    Reason: string
    FieldList: {ValidationExceptionField}
end

local record M
    AssociateTrackerConsumerInput: AssociateTrackerConsumerInput
    AssociateTrackerConsumerOutput: AssociateTrackerConsumerOutput
    BatchDeleteDevicePositionHistoryInput: BatchDeleteDevicePositionHistoryInput
    BatchDeleteDevicePositionHistoryOutput: BatchDeleteDevicePositionHistoryOutput
    BatchDeleteGeofenceInput: BatchDeleteGeofenceInput
    BatchDeleteGeofenceOutput: BatchDeleteGeofenceOutput
    BatchEvaluateGeofencesInput: BatchEvaluateGeofencesInput
    BatchEvaluateGeofencesOutput: BatchEvaluateGeofencesOutput
    BatchGetDevicePositionInput: BatchGetDevicePositionInput
    BatchGetDevicePositionOutput: BatchGetDevicePositionOutput
    BatchPutGeofenceInput: BatchPutGeofenceInput
    BatchPutGeofenceOutput: BatchPutGeofenceOutput
    BatchUpdateDevicePositionInput: BatchUpdateDevicePositionInput
    BatchUpdateDevicePositionOutput: BatchUpdateDevicePositionOutput
    CalculateRouteInput: CalculateRouteInput
    CalculateRouteOutput: CalculateRouteOutput
    CalculateRouteMatrixInput: CalculateRouteMatrixInput
    CalculateRouteMatrixOutput: CalculateRouteMatrixOutput
    CancelJobInput: CancelJobInput
    CancelJobOutput: CancelJobOutput
    CreateGeofenceCollectionInput: CreateGeofenceCollectionInput
    CreateGeofenceCollectionOutput: CreateGeofenceCollectionOutput
    CreateKeyInput: CreateKeyInput
    CreateKeyOutput: CreateKeyOutput
    CreateMapInput: CreateMapInput
    CreateMapOutput: CreateMapOutput
    CreatePlaceIndexInput: CreatePlaceIndexInput
    CreatePlaceIndexOutput: CreatePlaceIndexOutput
    CreateRouteCalculatorInput: CreateRouteCalculatorInput
    CreateRouteCalculatorOutput: CreateRouteCalculatorOutput
    CreateTrackerInput: CreateTrackerInput
    CreateTrackerOutput: CreateTrackerOutput
    DeleteGeofenceCollectionInput: DeleteGeofenceCollectionInput
    DeleteGeofenceCollectionOutput: DeleteGeofenceCollectionOutput
    DeleteKeyInput: DeleteKeyInput
    DeleteKeyOutput: DeleteKeyOutput
    DeleteMapInput: DeleteMapInput
    DeleteMapOutput: DeleteMapOutput
    DeletePlaceIndexInput: DeletePlaceIndexInput
    DeletePlaceIndexOutput: DeletePlaceIndexOutput
    DeleteRouteCalculatorInput: DeleteRouteCalculatorInput
    DeleteRouteCalculatorOutput: DeleteRouteCalculatorOutput
    DeleteTrackerInput: DeleteTrackerInput
    DeleteTrackerOutput: DeleteTrackerOutput
    DescribeGeofenceCollectionInput: DescribeGeofenceCollectionInput
    DescribeGeofenceCollectionOutput: DescribeGeofenceCollectionOutput
    DescribeKeyInput: DescribeKeyInput
    DescribeKeyOutput: DescribeKeyOutput
    DescribeMapInput: DescribeMapInput
    DescribeMapOutput: DescribeMapOutput
    DescribePlaceIndexInput: DescribePlaceIndexInput
    DescribePlaceIndexOutput: DescribePlaceIndexOutput
    DescribeRouteCalculatorInput: DescribeRouteCalculatorInput
    DescribeRouteCalculatorOutput: DescribeRouteCalculatorOutput
    DescribeTrackerInput: DescribeTrackerInput
    DescribeTrackerOutput: DescribeTrackerOutput
    DisassociateTrackerConsumerInput: DisassociateTrackerConsumerInput
    DisassociateTrackerConsumerOutput: DisassociateTrackerConsumerOutput
    ForecastGeofenceEventsInput: ForecastGeofenceEventsInput
    ForecastGeofenceEventsOutput: ForecastGeofenceEventsOutput
    GetDevicePositionInput: GetDevicePositionInput
    GetDevicePositionOutput: GetDevicePositionOutput
    GetDevicePositionHistoryInput: GetDevicePositionHistoryInput
    GetDevicePositionHistoryOutput: GetDevicePositionHistoryOutput
    GetGeofenceInput: GetGeofenceInput
    GetGeofenceOutput: GetGeofenceOutput
    GetJobInput: GetJobInput
    GetJobOutput: GetJobOutput
    GetMapGlyphsInput: GetMapGlyphsInput
    GetMapGlyphsOutput: GetMapGlyphsOutput
    GetMapSpritesInput: GetMapSpritesInput
    GetMapSpritesOutput: GetMapSpritesOutput
    GetMapStyleDescriptorInput: GetMapStyleDescriptorInput
    GetMapStyleDescriptorOutput: GetMapStyleDescriptorOutput
    GetMapTileInput: GetMapTileInput
    GetMapTileOutput: GetMapTileOutput
    GetPlaceInput: GetPlaceInput
    GetPlaceOutput: GetPlaceOutput
    ListDevicePositionsInput: ListDevicePositionsInput
    ListDevicePositionsOutput: ListDevicePositionsOutput
    ListGeofenceCollectionsInput: ListGeofenceCollectionsInput
    ListGeofenceCollectionsOutput: ListGeofenceCollectionsOutput
    ListGeofencesInput: ListGeofencesInput
    ListGeofencesOutput: ListGeofencesOutput
    ListJobsInput: ListJobsInput
    ListJobsOutput: ListJobsOutput
    ListKeysInput: ListKeysInput
    ListKeysOutput: ListKeysOutput
    ListMapsInput: ListMapsInput
    ListMapsOutput: ListMapsOutput
    ListPlaceIndexesInput: ListPlaceIndexesInput
    ListPlaceIndexesOutput: ListPlaceIndexesOutput
    ListRouteCalculatorsInput: ListRouteCalculatorsInput
    ListRouteCalculatorsOutput: ListRouteCalculatorsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTrackerConsumersInput: ListTrackerConsumersInput
    ListTrackerConsumersOutput: ListTrackerConsumersOutput
    ListTrackersInput: ListTrackersInput
    ListTrackersOutput: ListTrackersOutput
    PutGeofenceInput: PutGeofenceInput
    PutGeofenceOutput: PutGeofenceOutput
    SearchPlaceIndexForPositionInput: SearchPlaceIndexForPositionInput
    SearchPlaceIndexForPositionOutput: SearchPlaceIndexForPositionOutput
    SearchPlaceIndexForSuggestionsInput: SearchPlaceIndexForSuggestionsInput
    SearchPlaceIndexForSuggestionsOutput: SearchPlaceIndexForSuggestionsOutput
    SearchPlaceIndexForTextInput: SearchPlaceIndexForTextInput
    SearchPlaceIndexForTextOutput: SearchPlaceIndexForTextOutput
    StartJobInput: StartJobInput
    StartJobOutput: StartJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateGeofenceCollectionInput: UpdateGeofenceCollectionInput
    UpdateGeofenceCollectionOutput: UpdateGeofenceCollectionOutput
    UpdateKeyInput: UpdateKeyInput
    UpdateKeyOutput: UpdateKeyOutput
    UpdateMapInput: UpdateMapInput
    UpdateMapOutput: UpdateMapOutput
    UpdatePlaceIndexInput: UpdatePlaceIndexInput
    UpdatePlaceIndexOutput: UpdatePlaceIndexOutput
    UpdateRouteCalculatorInput: UpdateRouteCalculatorInput
    UpdateRouteCalculatorOutput: UpdateRouteCalculatorOutput
    UpdateTrackerInput: UpdateTrackerInput
    UpdateTrackerOutput: UpdateTrackerOutput
    VerifyDevicePositionInput: VerifyDevicePositionInput
    VerifyDevicePositionOutput: VerifyDevicePositionOutput
end

return M
