local record ActivateEventSourceInput
    Name: string
end

local record ActivateEventSourceOutput
end

local record CancelReplayInput
    ReplayName: string
end

local record CancelReplayOutput
    ReplayArn: string
    State: string
    StateReason: string
end

local record CreateApiDestinationInput
    Name: string
    Description: string
    ConnectionArn: string
    InvocationEndpoint: string
    HttpMethod: string
    InvocationRateLimitPerSecond: number
end

local record CreateApiDestinationOutput
    ApiDestinationArn: string
    ApiDestinationState: string
    CreationTime: number
    LastModifiedTime: number
end

local record CreateArchiveInput
    ArchiveName: string
    EventSourceArn: string
    Description: string
    EventPattern: string
    RetentionDays: number
    KmsKeyIdentifier: string
end

local record CreateArchiveOutput
    ArchiveArn: string
    State: string
    StateReason: string
    CreationTime: number
end

local record CreateConnectionInput
    Name: string
    Description: string
    AuthorizationType: string
    AuthParameters: CreateConnectionAuthRequestParameters
    InvocationConnectivityParameters: ConnectivityResourceParameters
    KmsKeyIdentifier: string
end

local record CreateConnectionOutput
    ConnectionArn: string
    ConnectionState: string
    CreationTime: number
    LastModifiedTime: number
end

local record CreateEndpointInput
    Name: string
    Description: string
    RoutingConfig: RoutingConfig
    ReplicationConfig: ReplicationConfig
    EventBuses: {EndpointEventBus}
    RoleArn: string
end

local record CreateEndpointOutput
    Name: string
    Arn: string
    RoutingConfig: RoutingConfig
    ReplicationConfig: ReplicationConfig
    EventBuses: {EndpointEventBus}
    RoleArn: string
    State: string
end

local record CreateEventBusInput
    Name: string
    EventSourceName: string
    Description: string
    KmsKeyIdentifier: string
    DeadLetterConfig: DeadLetterConfig
    LogConfig: LogConfig
    Tags: {Tag}
end

local record CreateEventBusOutput
    EventBusArn: string
    Description: string
    KmsKeyIdentifier: string
    DeadLetterConfig: DeadLetterConfig
    LogConfig: LogConfig
end

local record CreatePartnerEventSourceInput
    Name: string
    Account: string
end

local record CreatePartnerEventSourceOutput
    EventSourceArn: string
end

local record DeactivateEventSourceInput
    Name: string
end

local record DeactivateEventSourceOutput
end

local record DeauthorizeConnectionInput
    Name: string
end

local record DeauthorizeConnectionOutput
    ConnectionArn: string
    ConnectionState: string
    CreationTime: number
    LastModifiedTime: number
    LastAuthorizedTime: number
end

local record DeleteApiDestinationInput
    Name: string
end

local record DeleteApiDestinationOutput
end

local record DeleteArchiveInput
    ArchiveName: string
end

local record DeleteArchiveOutput
end

local record DeleteConnectionInput
    Name: string
end

local record DeleteConnectionOutput
    ConnectionArn: string
    ConnectionState: string
    CreationTime: number
    LastModifiedTime: number
    LastAuthorizedTime: number
end

local record DeleteEndpointInput
    Name: string
end

local record DeleteEndpointOutput
end

local record DeleteEventBusInput
    Name: string
end

local record DeleteEventBusOutput
end

local record DeletePartnerEventSourceInput
    Name: string
    Account: string
end

local record DeletePartnerEventSourceOutput
end

local record DeleteRuleInput
    Name: string
    EventBusName: string
    Force: boolean
end

local record DeleteRuleOutput
end

local record DescribeApiDestinationInput
    Name: string
end

local record DescribeApiDestinationOutput
    ApiDestinationArn: string
    Name: string
    Description: string
    ApiDestinationState: string
    ConnectionArn: string
    InvocationEndpoint: string
    HttpMethod: string
    InvocationRateLimitPerSecond: number
    CreationTime: number
    LastModifiedTime: number
end

local record DescribeArchiveInput
    ArchiveName: string
end

local record DescribeArchiveOutput
    ArchiveArn: string
    ArchiveName: string
    EventSourceArn: string
    Description: string
    EventPattern: string
    State: string
    StateReason: string
    KmsKeyIdentifier: string
    RetentionDays: number
    SizeBytes: number
    EventCount: number
    CreationTime: number
end

local record DescribeConnectionInput
    Name: string
end

local record DescribeConnectionOutput
    ConnectionArn: string
    Name: string
    Description: string
    InvocationConnectivityParameters: DescribeConnectionConnectivityParameters
    ConnectionState: string
    StateReason: string
    AuthorizationType: string
    SecretArn: string
    KmsKeyIdentifier: string
    AuthParameters: ConnectionAuthResponseParameters
    CreationTime: number
    LastModifiedTime: number
    LastAuthorizedTime: number
end

local record DescribeEndpointInput
    Name: string
    HomeRegion: string
end

local record DescribeEndpointOutput
    Name: string
    Description: string
    Arn: string
    RoutingConfig: RoutingConfig
    ReplicationConfig: ReplicationConfig
    EventBuses: {EndpointEventBus}
    RoleArn: string
    EndpointId: string
    EndpointUrl: string
    State: string
    StateReason: string
    CreationTime: number
    LastModifiedTime: number
end

local record DescribeEventBusInput
    Name: string
end

local record DescribeEventBusOutput
    Name: string
    Arn: string
    Description: string
    KmsKeyIdentifier: string
    DeadLetterConfig: DeadLetterConfig
    Policy: string
    LogConfig: LogConfig
    CreationTime: number
    LastModifiedTime: number
end

local record DescribeEventSourceInput
    Name: string
end

local record DescribeEventSourceOutput
    Arn: string
    CreatedBy: string
    CreationTime: number
    ExpirationTime: number
    Name: string
    State: string
end

local record DescribePartnerEventSourceInput
    Name: string
end

local record DescribePartnerEventSourceOutput
    Arn: string
    Name: string
end

local record DescribeReplayInput
    ReplayName: string
end

local record DescribeReplayOutput
    ReplayName: string
    ReplayArn: string
    Description: string
    State: string
    StateReason: string
    EventSourceArn: string
    Destination: ReplayDestination
    EventStartTime: number
    EventEndTime: number
    EventLastReplayedTime: number
    ReplayStartTime: number
    ReplayEndTime: number
end

local record DescribeRuleInput
    Name: string
    EventBusName: string
end

local record DescribeRuleOutput
    Name: string
    Arn: string
    EventPattern: string
    ScheduleExpression: string
    State: string
    Description: string
    RoleArn: string
    ManagedBy: string
    EventBusName: string
    CreatedBy: string
end

local record DisableRuleInput
    Name: string
    EventBusName: string
end

local record DisableRuleOutput
end

local record EnableRuleInput
    Name: string
    EventBusName: string
end

local record EnableRuleOutput
end

local record ListApiDestinationsInput
    NamePrefix: string
    ConnectionArn: string
    NextToken: string
    Limit: number
end

local record ListApiDestinationsOutput
    ApiDestinations: {ApiDestination}
    NextToken: string
end

local record ListArchivesInput
    NamePrefix: string
    EventSourceArn: string
    State: string
    NextToken: string
    Limit: number
end

local record ListArchivesOutput
    Archives: {Archive}
    NextToken: string
end

local record ListConnectionsInput
    NamePrefix: string
    ConnectionState: string
    NextToken: string
    Limit: number
end

local record ListConnectionsOutput
    Connections: {Connection}
    NextToken: string
end

local record ListEndpointsInput
    NamePrefix: string
    HomeRegion: string
    NextToken: string
    MaxResults: number
end

local record ListEndpointsOutput
    Endpoints: {Endpoint}
    NextToken: string
end

local record ListEventBusesInput
    NamePrefix: string
    NextToken: string
    Limit: number
end

local record ListEventBusesOutput
    EventBuses: {EventBus}
    NextToken: string
end

local record ListEventSourcesInput
    NamePrefix: string
    NextToken: string
    Limit: number
end

local record ListEventSourcesOutput
    EventSources: {EventSource}
    NextToken: string
end

local record ListPartnerEventSourceAccountsInput
    EventSourceName: string
    NextToken: string
    Limit: number
end

local record ListPartnerEventSourceAccountsOutput
    PartnerEventSourceAccounts: {PartnerEventSourceAccount}
    NextToken: string
end

local record ListPartnerEventSourcesInput
    NamePrefix: string
    NextToken: string
    Limit: number
end

local record ListPartnerEventSourcesOutput
    PartnerEventSources: {PartnerEventSource}
    NextToken: string
end

local record ListReplaysInput
    NamePrefix: string
    State: string
    EventSourceArn: string
    NextToken: string
    Limit: number
end

local record ListReplaysOutput
    Replays: {Replay}
    NextToken: string
end

local record ListRuleNamesByTargetInput
    TargetArn: string
    EventBusName: string
    NextToken: string
    Limit: number
end

local record ListRuleNamesByTargetOutput
    RuleNames: {string}
    NextToken: string
end

local record ListRulesInput
    NamePrefix: string
    EventBusName: string
    NextToken: string
    Limit: number
end

local record ListRulesOutput
    Rules: {Rule}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListTargetsByRuleInput
    Rule: string
    EventBusName: string
    NextToken: string
    Limit: number
end

local record ListTargetsByRuleOutput
    Targets: {Target}
    NextToken: string
end

local record PutEventsInput
    Entries: {PutEventsRequestEntry}
    EndpointId: string
end

local record PutEventsOutput
    FailedEntryCount: number
    Entries: {PutEventsResultEntry}
end

local record PutPartnerEventsInput
    Entries: {PutPartnerEventsRequestEntry}
end

local record PutPartnerEventsOutput
    FailedEntryCount: number
    Entries: {PutPartnerEventsResultEntry}
end

local record PutPermissionInput
    EventBusName: string
    Action: string
    Principal: string
    StatementId: string
    Condition: Condition
    Policy: string
end

local record PutPermissionOutput
end

local record PutRuleInput
    Name: string
    ScheduleExpression: string
    EventPattern: string
    State: string
    Description: string
    RoleArn: string
    Tags: {Tag}
    EventBusName: string
end

local record PutRuleOutput
    RuleArn: string
end

local record PutTargetsInput
    Rule: string
    EventBusName: string
    Targets: {Target}
end

local record PutTargetsOutput
    FailedEntryCount: number
    FailedEntries: {PutTargetsResultEntry}
end

local record RemovePermissionInput
    StatementId: string
    RemoveAllPermissions: boolean
    EventBusName: string
end

local record RemovePermissionOutput
end

local record RemoveTargetsInput
    Rule: string
    EventBusName: string
    Ids: {string}
    Force: boolean
end

local record RemoveTargetsOutput
    FailedEntryCount: number
    FailedEntries: {RemoveTargetsResultEntry}
end

local record StartReplayInput
    ReplayName: string
    Description: string
    EventSourceArn: string
    EventStartTime: number
    EventEndTime: number
    Destination: ReplayDestination
end

local record StartReplayOutput
    ReplayArn: string
    State: string
    StateReason: string
    ReplayStartTime: number
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record TestEventPatternInput
    EventPattern: string
    Event: string
end

local record TestEventPatternOutput
    Result: boolean
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateApiDestinationInput
    Name: string
    Description: string
    ConnectionArn: string
    InvocationEndpoint: string
    HttpMethod: string
    InvocationRateLimitPerSecond: number
end

local record UpdateApiDestinationOutput
    ApiDestinationArn: string
    ApiDestinationState: string
    CreationTime: number
    LastModifiedTime: number
end

local record UpdateArchiveInput
    ArchiveName: string
    Description: string
    EventPattern: string
    RetentionDays: number
    KmsKeyIdentifier: string
end

local record UpdateArchiveOutput
    ArchiveArn: string
    State: string
    StateReason: string
    CreationTime: number
end

local record UpdateConnectionInput
    Name: string
    Description: string
    AuthorizationType: string
    AuthParameters: UpdateConnectionAuthRequestParameters
    InvocationConnectivityParameters: ConnectivityResourceParameters
    KmsKeyIdentifier: string
end

local record UpdateConnectionOutput
    ConnectionArn: string
    ConnectionState: string
    CreationTime: number
    LastModifiedTime: number
    LastAuthorizedTime: number
end

local record UpdateEndpointInput
    Name: string
    Description: string
    RoutingConfig: RoutingConfig
    ReplicationConfig: ReplicationConfig
    EventBuses: {EndpointEventBus}
    RoleArn: string
end

local record UpdateEndpointOutput
    Name: string
    Arn: string
    RoutingConfig: RoutingConfig
    ReplicationConfig: ReplicationConfig
    EventBuses: {EndpointEventBus}
    RoleArn: string
    EndpointId: string
    EndpointUrl: string
    State: string
end

local record UpdateEventBusInput
    Name: string
    KmsKeyIdentifier: string
    Description: string
    DeadLetterConfig: DeadLetterConfig
    LogConfig: LogConfig
end

local record UpdateEventBusOutput
    Arn: string
    Name: string
    KmsKeyIdentifier: string
    Description: string
    DeadLetterConfig: DeadLetterConfig
    LogConfig: LogConfig
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record InvalidStateException
    message: string
end

local record OperationDisabledException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record IllegalStatusException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record InvalidEventPatternException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record InvalidStateException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationDisabledException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record OperationDisabledException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record InvalidStateException
    message: string
end

local record OperationDisabledException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record OperationDisabledException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ManagedRuleException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record OperationDisabledException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record OperationDisabledException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ManagedRuleException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ManagedRuleException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record InternalException
    message: string
end

local record InternalException
    message: string
end

local record InternalException
    message: string
end

local record OperationDisabledException
    message: string
end

local record InternalException
    message: string
end

local record OperationDisabledException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record OperationDisabledException
    message: string
end

local record InternalException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record InternalException
    message: string
end

local record OperationDisabledException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record OperationDisabledException
    message: string
end

local record PolicyLengthExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record InvalidEventPatternException
    message: string
end

local record LimitExceededException
    message: string
end

local record ManagedRuleException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ManagedRuleException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record OperationDisabledException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ManagedRuleException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record InvalidEventPatternException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ManagedRuleException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalException
    message: string
end

local record InvalidEventPatternException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ManagedRuleException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record InvalidEventPatternException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InternalException
    message: string
end

local record OperationDisabledException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local type EndpointState = "ACTIVE" | "CREATING" | "UPDATING" | "DELETING" | "CREATE_FAILED" | "UPDATE_FAILED" | "DELETE_FAILED"

local type ConnectionState = "CREATING" | "UPDATING" | "DELETING" | "AUTHORIZED" | "DEAUTHORIZED" | "AUTHORIZING" | "DEAUTHORIZING" | "ACTIVE" | "FAILED_CONNECTIVITY"

local type EventSourceState = "PENDING" | "ACTIVE" | "DELETED"

local type RuleState = "ENABLED" | "DISABLED" | "ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS"

local type ApiDestinationState = "ACTIVE" | "INACTIVE"

local type ArchiveState = "ENABLED" | "DISABLED" | "CREATING" | "UPDATING" | "CREATE_FAILED" | "UPDATE_FAILED"

local type ApiDestinationHttpMethod = "POST" | "GET" | "HEAD" | "OPTIONS" | "PUT" | "PATCH" | "DELETE"

local type ConnectionAuthorizationType = "BASIC" | "OAUTH_CLIENT_CREDENTIALS" | "API_KEY"

local type ReplayState = "STARTING" | "RUNNING" | "CANCELLING" | "COMPLETED" | "CANCELLED" | "FAILED"

local record M
    ActivateEventSourceInput: ActivateEventSourceInput
    ActivateEventSourceOutput: ActivateEventSourceOutput
    CancelReplayInput: CancelReplayInput
    CancelReplayOutput: CancelReplayOutput
    CreateApiDestinationInput: CreateApiDestinationInput
    CreateApiDestinationOutput: CreateApiDestinationOutput
    CreateArchiveInput: CreateArchiveInput
    CreateArchiveOutput: CreateArchiveOutput
    CreateConnectionInput: CreateConnectionInput
    CreateConnectionOutput: CreateConnectionOutput
    CreateEndpointInput: CreateEndpointInput
    CreateEndpointOutput: CreateEndpointOutput
    CreateEventBusInput: CreateEventBusInput
    CreateEventBusOutput: CreateEventBusOutput
    CreatePartnerEventSourceInput: CreatePartnerEventSourceInput
    CreatePartnerEventSourceOutput: CreatePartnerEventSourceOutput
    DeactivateEventSourceInput: DeactivateEventSourceInput
    DeactivateEventSourceOutput: DeactivateEventSourceOutput
    DeauthorizeConnectionInput: DeauthorizeConnectionInput
    DeauthorizeConnectionOutput: DeauthorizeConnectionOutput
    DeleteApiDestinationInput: DeleteApiDestinationInput
    DeleteApiDestinationOutput: DeleteApiDestinationOutput
    DeleteArchiveInput: DeleteArchiveInput
    DeleteArchiveOutput: DeleteArchiveOutput
    DeleteConnectionInput: DeleteConnectionInput
    DeleteConnectionOutput: DeleteConnectionOutput
    DeleteEndpointInput: DeleteEndpointInput
    DeleteEndpointOutput: DeleteEndpointOutput
    DeleteEventBusInput: DeleteEventBusInput
    DeleteEventBusOutput: DeleteEventBusOutput
    DeletePartnerEventSourceInput: DeletePartnerEventSourceInput
    DeletePartnerEventSourceOutput: DeletePartnerEventSourceOutput
    DeleteRuleInput: DeleteRuleInput
    DeleteRuleOutput: DeleteRuleOutput
    DescribeApiDestinationInput: DescribeApiDestinationInput
    DescribeApiDestinationOutput: DescribeApiDestinationOutput
    DescribeArchiveInput: DescribeArchiveInput
    DescribeArchiveOutput: DescribeArchiveOutput
    DescribeConnectionInput: DescribeConnectionInput
    DescribeConnectionOutput: DescribeConnectionOutput
    DescribeEndpointInput: DescribeEndpointInput
    DescribeEndpointOutput: DescribeEndpointOutput
    DescribeEventBusInput: DescribeEventBusInput
    DescribeEventBusOutput: DescribeEventBusOutput
    DescribeEventSourceInput: DescribeEventSourceInput
    DescribeEventSourceOutput: DescribeEventSourceOutput
    DescribePartnerEventSourceInput: DescribePartnerEventSourceInput
    DescribePartnerEventSourceOutput: DescribePartnerEventSourceOutput
    DescribeReplayInput: DescribeReplayInput
    DescribeReplayOutput: DescribeReplayOutput
    DescribeRuleInput: DescribeRuleInput
    DescribeRuleOutput: DescribeRuleOutput
    DisableRuleInput: DisableRuleInput
    DisableRuleOutput: DisableRuleOutput
    EnableRuleInput: EnableRuleInput
    EnableRuleOutput: EnableRuleOutput
    ListApiDestinationsInput: ListApiDestinationsInput
    ListApiDestinationsOutput: ListApiDestinationsOutput
    ListArchivesInput: ListArchivesInput
    ListArchivesOutput: ListArchivesOutput
    ListConnectionsInput: ListConnectionsInput
    ListConnectionsOutput: ListConnectionsOutput
    ListEndpointsInput: ListEndpointsInput
    ListEndpointsOutput: ListEndpointsOutput
    ListEventBusesInput: ListEventBusesInput
    ListEventBusesOutput: ListEventBusesOutput
    ListEventSourcesInput: ListEventSourcesInput
    ListEventSourcesOutput: ListEventSourcesOutput
    ListPartnerEventSourceAccountsInput: ListPartnerEventSourceAccountsInput
    ListPartnerEventSourceAccountsOutput: ListPartnerEventSourceAccountsOutput
    ListPartnerEventSourcesInput: ListPartnerEventSourcesInput
    ListPartnerEventSourcesOutput: ListPartnerEventSourcesOutput
    ListReplaysInput: ListReplaysInput
    ListReplaysOutput: ListReplaysOutput
    ListRuleNamesByTargetInput: ListRuleNamesByTargetInput
    ListRuleNamesByTargetOutput: ListRuleNamesByTargetOutput
    ListRulesInput: ListRulesInput
    ListRulesOutput: ListRulesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTargetsByRuleInput: ListTargetsByRuleInput
    ListTargetsByRuleOutput: ListTargetsByRuleOutput
    PutEventsInput: PutEventsInput
    PutEventsOutput: PutEventsOutput
    PutPartnerEventsInput: PutPartnerEventsInput
    PutPartnerEventsOutput: PutPartnerEventsOutput
    PutPermissionInput: PutPermissionInput
    PutPermissionOutput: PutPermissionOutput
    PutRuleInput: PutRuleInput
    PutRuleOutput: PutRuleOutput
    PutTargetsInput: PutTargetsInput
    PutTargetsOutput: PutTargetsOutput
    RemovePermissionInput: RemovePermissionInput
    RemovePermissionOutput: RemovePermissionOutput
    RemoveTargetsInput: RemoveTargetsInput
    RemoveTargetsOutput: RemoveTargetsOutput
    StartReplayInput: StartReplayInput
    StartReplayOutput: StartReplayOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestEventPatternInput: TestEventPatternInput
    TestEventPatternOutput: TestEventPatternOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApiDestinationInput: UpdateApiDestinationInput
    UpdateApiDestinationOutput: UpdateApiDestinationOutput
    UpdateArchiveInput: UpdateArchiveInput
    UpdateArchiveOutput: UpdateArchiveOutput
    UpdateConnectionInput: UpdateConnectionInput
    UpdateConnectionOutput: UpdateConnectionOutput
    UpdateEndpointInput: UpdateEndpointInput
    UpdateEndpointOutput: UpdateEndpointOutput
    UpdateEventBusInput: UpdateEventBusInput
    UpdateEventBusOutput: UpdateEventBusOutput
end

return M
