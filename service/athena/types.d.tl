local record BatchGetNamedQueryInput
    NamedQueryIds: {string}
end

local record BatchGetNamedQueryOutput
    NamedQueries: {NamedQuery}
    UnprocessedNamedQueryIds: {UnprocessedNamedQueryId}
end

local record BatchGetPreparedStatementInput
    PreparedStatementNames: {string}
    WorkGroup: string
end

local record BatchGetPreparedStatementOutput
    PreparedStatements: {PreparedStatement}
    UnprocessedPreparedStatementNames: {UnprocessedPreparedStatementName}
end

local record BatchGetQueryExecutionInput
    QueryExecutionIds: {string}
end

local record BatchGetQueryExecutionOutput
    QueryExecutions: {QueryExecution}
    UnprocessedQueryExecutionIds: {UnprocessedQueryExecutionId}
end

local record CancelCapacityReservationInput
    Name: string
end

local record CancelCapacityReservationOutput
end

local record CreateCapacityReservationInput
    TargetDpus: number
    Name: string
    Tags: {Tag}
end

local record CreateCapacityReservationOutput
end

local record CreateDataCatalogInput
    Name: string
    Type: string
    Description: string
    Parameters: {string : string}
    Tags: {Tag}
end

local record CreateDataCatalogOutput
    DataCatalog: DataCatalog
end

local record CreateNamedQueryInput
    Name: string
    Description: string
    Database: string
    QueryString: string
    ClientRequestToken: string
    WorkGroup: string
end

local record CreateNamedQueryOutput
    NamedQueryId: string
end

local record CreateNotebookInput
    WorkGroup: string
    Name: string
    ClientRequestToken: string
end

local record CreateNotebookOutput
    NotebookId: string
end

local record CreatePreparedStatementInput
    StatementName: string
    WorkGroup: string
    QueryStatement: string
    Description: string
end

local record CreatePreparedStatementOutput
end

local record CreatePresignedNotebookUrlInput
    SessionId: string
end

local record CreatePresignedNotebookUrlOutput
    NotebookUrl: string
    AuthToken: string
    AuthTokenExpirationTime: number
end

local record CreateWorkGroupInput
    Name: string
    Configuration: WorkGroupConfiguration
    Description: string
    Tags: {Tag}
end

local record CreateWorkGroupOutput
end

local record DeleteCapacityReservationInput
    Name: string
end

local record DeleteCapacityReservationOutput
end

local record DeleteDataCatalogInput
    Name: string
    DeleteCatalogOnly: boolean
end

local record DeleteDataCatalogOutput
    DataCatalog: DataCatalog
end

local record DeleteNamedQueryInput
    NamedQueryId: string
end

local record DeleteNamedQueryOutput
end

local record DeleteNotebookInput
    NotebookId: string
end

local record DeleteNotebookOutput
end

local record DeletePreparedStatementInput
    StatementName: string
    WorkGroup: string
end

local record DeletePreparedStatementOutput
end

local record DeleteWorkGroupInput
    WorkGroup: string
    RecursiveDeleteOption: boolean
end

local record DeleteWorkGroupOutput
end

local record ExportNotebookInput
    NotebookId: string
end

local record ExportNotebookOutput
    NotebookMetadata: NotebookMetadata
    Payload: string
end

local record GetCalculationExecutionInput
    CalculationExecutionId: string
end

local record GetCalculationExecutionOutput
    CalculationExecutionId: string
    SessionId: string
    Description: string
    WorkingDirectory: string
    Status: CalculationStatus
    Statistics: CalculationStatistics
    Result: CalculationResult
end

local record GetCalculationExecutionCodeInput
    CalculationExecutionId: string
end

local record GetCalculationExecutionCodeOutput
    CodeBlock: string
end

local record GetCalculationExecutionStatusInput
    CalculationExecutionId: string
end

local record GetCalculationExecutionStatusOutput
    Status: CalculationStatus
    Statistics: CalculationStatistics
end

local record GetCapacityAssignmentConfigurationInput
    CapacityReservationName: string
end

local record GetCapacityAssignmentConfigurationOutput
    CapacityAssignmentConfiguration: CapacityAssignmentConfiguration
end

local record GetCapacityReservationInput
    Name: string
end

local record GetCapacityReservationOutput
    CapacityReservation: CapacityReservation
end

local record GetDatabaseInput
    CatalogName: string
    DatabaseName: string
    WorkGroup: string
end

local record GetDatabaseOutput
    Database: Database
end

local record GetDataCatalogInput
    Name: string
    WorkGroup: string
end

local record GetDataCatalogOutput
    DataCatalog: DataCatalog
end

local record GetNamedQueryInput
    NamedQueryId: string
end

local record GetNamedQueryOutput
    NamedQuery: NamedQuery
end

local record GetNotebookMetadataInput
    NotebookId: string
end

local record GetNotebookMetadataOutput
    NotebookMetadata: NotebookMetadata
end

local record GetPreparedStatementInput
    StatementName: string
    WorkGroup: string
end

local record GetPreparedStatementOutput
    PreparedStatement: PreparedStatement
end

local record GetQueryExecutionInput
    QueryExecutionId: string
end

local record GetQueryExecutionOutput
    QueryExecution: QueryExecution
end

local record GetQueryResultsInput
    QueryExecutionId: string
    NextToken: string
    MaxResults: number
    QueryResultType: string
end

local record GetQueryResultsOutput
    UpdateCount: number
    ResultSet: ResultSet
    NextToken: string
end

local record GetQueryRuntimeStatisticsInput
    QueryExecutionId: string
end

local record GetQueryRuntimeStatisticsOutput
    QueryRuntimeStatistics: QueryRuntimeStatistics
end

local record GetResourceDashboardInput
    ResourceARN: string
end

local record GetResourceDashboardOutput
    Url: string
end

local record GetSessionInput
    SessionId: string
end

local record GetSessionOutput
    SessionId: string
    Description: string
    WorkGroup: string
    EngineVersion: string
    EngineConfiguration: EngineConfiguration
    NotebookVersion: string
    MonitoringConfiguration: MonitoringConfiguration
    SessionConfiguration: SessionConfiguration
    Status: SessionStatus
    Statistics: SessionStatistics
end

local record GetSessionEndpointInput
    SessionId: string
end

local record GetSessionEndpointOutput
    EndpointUrl: string
    AuthToken: string
    AuthTokenExpirationTime: number
end

local record GetSessionStatusInput
    SessionId: string
end

local record GetSessionStatusOutput
    SessionId: string
    Status: SessionStatus
end

local record GetTableMetadataInput
    CatalogName: string
    DatabaseName: string
    TableName: string
    WorkGroup: string
end

local record GetTableMetadataOutput
    TableMetadata: TableMetadata
end

local record GetWorkGroupInput
    WorkGroup: string
end

local record GetWorkGroupOutput
    WorkGroup: WorkGroup
end

local record ImportNotebookInput
    WorkGroup: string
    Name: string
    Payload: string
    Type: string
    NotebookS3LocationUri: string
    ClientRequestToken: string
end

local record ImportNotebookOutput
    NotebookId: string
end

local record ListApplicationDPUSizesInput
    MaxResults: number
    NextToken: string
end

local record ListApplicationDPUSizesOutput
    ApplicationDPUSizes: {ApplicationDPUSizes}
    NextToken: string
end

local record ListCalculationExecutionsInput
    SessionId: string
    StateFilter: string
    MaxResults: number
    NextToken: string
end

local record ListCalculationExecutionsOutput
    NextToken: string
    Calculations: {CalculationSummary}
end

local record ListCapacityReservationsInput
    NextToken: string
    MaxResults: number
end

local record ListCapacityReservationsOutput
    NextToken: string
    CapacityReservations: {CapacityReservation}
end

local record ListDatabasesInput
    CatalogName: string
    NextToken: string
    MaxResults: number
    WorkGroup: string
end

local record ListDatabasesOutput
    DatabaseList: {Database}
    NextToken: string
end

local record ListDataCatalogsInput
    NextToken: string
    MaxResults: number
    WorkGroup: string
end

local record ListDataCatalogsOutput
    DataCatalogsSummary: {DataCatalogSummary}
    NextToken: string
end

local record ListEngineVersionsInput
    NextToken: string
    MaxResults: number
end

local record ListEngineVersionsOutput
    EngineVersions: {EngineVersion}
    NextToken: string
end

local record ListExecutorsInput
    SessionId: string
    ExecutorStateFilter: string
    MaxResults: number
    NextToken: string
end

local record ListExecutorsOutput
    SessionId: string
    NextToken: string
    ExecutorsSummary: {ExecutorsSummary}
end

local record ListNamedQueriesInput
    NextToken: string
    MaxResults: number
    WorkGroup: string
end

local record ListNamedQueriesOutput
    NamedQueryIds: {string}
    NextToken: string
end

local record ListNotebookMetadataInput
    Filters: FilterDefinition
    NextToken: string
    MaxResults: number
    WorkGroup: string
end

local record ListNotebookMetadataOutput
    NextToken: string
    NotebookMetadataList: {NotebookMetadata}
end

local record ListNotebookSessionsInput
    NotebookId: string
    MaxResults: number
    NextToken: string
end

local record ListNotebookSessionsOutput
    NotebookSessionsList: {NotebookSessionSummary}
    NextToken: string
end

local record ListPreparedStatementsInput
    WorkGroup: string
    NextToken: string
    MaxResults: number
end

local record ListPreparedStatementsOutput
    PreparedStatements: {PreparedStatementSummary}
    NextToken: string
end

local record ListQueryExecutionsInput
    NextToken: string
    MaxResults: number
    WorkGroup: string
end

local record ListQueryExecutionsOutput
    QueryExecutionIds: {string}
    NextToken: string
end

local record ListSessionsInput
    WorkGroup: string
    StateFilter: string
    MaxResults: number
    NextToken: string
end

local record ListSessionsOutput
    NextToken: string
    Sessions: {SessionSummary}
end

local record ListTableMetadataInput
    CatalogName: string
    DatabaseName: string
    Expression: string
    NextToken: string
    MaxResults: number
    WorkGroup: string
end

local record ListTableMetadataOutput
    TableMetadataList: {TableMetadata}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
    NextToken: string
    MaxResults: number
end

local record ListTagsForResourceOutput
    Tags: {Tag}
    NextToken: string
end

local record ListWorkGroupsInput
    NextToken: string
    MaxResults: number
end

local record ListWorkGroupsOutput
    WorkGroups: {WorkGroupSummary}
    NextToken: string
end

local record PutCapacityAssignmentConfigurationInput
    CapacityReservationName: string
    CapacityAssignments: {CapacityAssignment}
end

local record PutCapacityAssignmentConfigurationOutput
end

local record StartCalculationExecutionInput
    SessionId: string
    Description: string
    CalculationConfiguration: CalculationConfiguration
    CodeBlock: string
    ClientRequestToken: string
end

local record StartCalculationExecutionOutput
    CalculationExecutionId: string
    State: string
end

local record StartQueryExecutionInput
    QueryString: string
    ClientRequestToken: string
    QueryExecutionContext: QueryExecutionContext
    ResultConfiguration: ResultConfiguration
    WorkGroup: string
    ExecutionParameters: {string}
    ResultReuseConfiguration: ResultReuseConfiguration
    EngineConfiguration: EngineConfiguration
end

local record StartQueryExecutionOutput
    QueryExecutionId: string
end

local record StartSessionInput
    Description: string
    WorkGroup: string
    EngineConfiguration: EngineConfiguration
    ExecutionRole: string
    MonitoringConfiguration: MonitoringConfiguration
    NotebookVersion: string
    SessionIdleTimeoutInMinutes: number
    ClientRequestToken: string
    Tags: {Tag}
    CopyWorkGroupTags: boolean
end

local record StartSessionOutput
    SessionId: string
    State: string
end

local record StopCalculationExecutionInput
    CalculationExecutionId: string
end

local record StopCalculationExecutionOutput
    State: string
end

local record StopQueryExecutionInput
    QueryExecutionId: string
end

local record StopQueryExecutionOutput
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record TerminateSessionInput
    SessionId: string
end

local record TerminateSessionOutput
    State: string
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCapacityReservationInput
    TargetDpus: number
    Name: string
end

local record UpdateCapacityReservationOutput
end

local record UpdateDataCatalogInput
    Name: string
    Type: string
    Description: string
    Parameters: {string : string}
end

local record UpdateDataCatalogOutput
end

local record UpdateNamedQueryInput
    NamedQueryId: string
    Name: string
    Description: string
    QueryString: string
end

local record UpdateNamedQueryOutput
end

local record UpdateNotebookInput
    NotebookId: string
    Payload: string
    Type: string
    SessionId: string
    ClientRequestToken: string
end

local record UpdateNotebookOutput
end

local record UpdateNotebookMetadataInput
    NotebookId: string
    ClientRequestToken: string
    Name: string
end

local record UpdateNotebookMetadataOutput
end

local record UpdatePreparedStatementInput
    StatementName: string
    WorkGroup: string
    QueryStatement: string
    Description: string
end

local record UpdatePreparedStatementOutput
end

local record UpdateWorkGroupInput
    WorkGroup: string
    Description: string
    ConfigurationUpdates: WorkGroupConfigurationUpdates
    State: string
end

local record UpdateWorkGroupOutput
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record TooManyRequestsException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record TooManyRequestsException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record TooManyRequestsException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record MetadataException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record TooManyRequestsException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record TooManyRequestsException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record MetadataException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record TooManyRequestsException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record TooManyRequestsException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record MetadataException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record TooManyRequestsException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record MetadataException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record TooManyRequestsException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record SessionAlreadyExistsException
    Message: string
end

local record TooManyRequestsException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record TooManyRequestsException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record TooManyRequestsException
    Message: string
    Reason: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceName: string
end

local record InternalServerException
    Message: string
end

local record InvalidRequestException
    AthenaErrorCode: string
    Message: string
end

local type ExecutorState = "CREATING" | "CREATED" | "REGISTERED" | "TERMINATING" | "TERMINATED" | "FAILED"

local type CalculationExecutionState = "CREATING" | "CREATED" | "QUEUED" | "RUNNING" | "CANCELING" | "CANCELED" | "COMPLETED" | "FAILED"

local type DataCatalogType = "LAMBDA" | "GLUE" | "HIVE" | "FEDERATED"

local type NotebookType = "IPYNB"

local type WorkGroupState = "ENABLED" | "DISABLED"

local type SessionState = "CREATING" | "CREATED" | "IDLE" | "BUSY" | "TERMINATING" | "TERMINATED" | "DEGRADED" | "FAILED"

local type QueryResultType = "DATA_MANIFEST" | "DATA_ROWS"

local record M
    BatchGetNamedQueryInput: BatchGetNamedQueryInput
    BatchGetNamedQueryOutput: BatchGetNamedQueryOutput
    BatchGetPreparedStatementInput: BatchGetPreparedStatementInput
    BatchGetPreparedStatementOutput: BatchGetPreparedStatementOutput
    BatchGetQueryExecutionInput: BatchGetQueryExecutionInput
    BatchGetQueryExecutionOutput: BatchGetQueryExecutionOutput
    CancelCapacityReservationInput: CancelCapacityReservationInput
    CancelCapacityReservationOutput: CancelCapacityReservationOutput
    CreateCapacityReservationInput: CreateCapacityReservationInput
    CreateCapacityReservationOutput: CreateCapacityReservationOutput
    CreateDataCatalogInput: CreateDataCatalogInput
    CreateDataCatalogOutput: CreateDataCatalogOutput
    CreateNamedQueryInput: CreateNamedQueryInput
    CreateNamedQueryOutput: CreateNamedQueryOutput
    CreateNotebookInput: CreateNotebookInput
    CreateNotebookOutput: CreateNotebookOutput
    CreatePreparedStatementInput: CreatePreparedStatementInput
    CreatePreparedStatementOutput: CreatePreparedStatementOutput
    CreatePresignedNotebookUrlInput: CreatePresignedNotebookUrlInput
    CreatePresignedNotebookUrlOutput: CreatePresignedNotebookUrlOutput
    CreateWorkGroupInput: CreateWorkGroupInput
    CreateWorkGroupOutput: CreateWorkGroupOutput
    DeleteCapacityReservationInput: DeleteCapacityReservationInput
    DeleteCapacityReservationOutput: DeleteCapacityReservationOutput
    DeleteDataCatalogInput: DeleteDataCatalogInput
    DeleteDataCatalogOutput: DeleteDataCatalogOutput
    DeleteNamedQueryInput: DeleteNamedQueryInput
    DeleteNamedQueryOutput: DeleteNamedQueryOutput
    DeleteNotebookInput: DeleteNotebookInput
    DeleteNotebookOutput: DeleteNotebookOutput
    DeletePreparedStatementInput: DeletePreparedStatementInput
    DeletePreparedStatementOutput: DeletePreparedStatementOutput
    DeleteWorkGroupInput: DeleteWorkGroupInput
    DeleteWorkGroupOutput: DeleteWorkGroupOutput
    ExportNotebookInput: ExportNotebookInput
    ExportNotebookOutput: ExportNotebookOutput
    GetCalculationExecutionInput: GetCalculationExecutionInput
    GetCalculationExecutionOutput: GetCalculationExecutionOutput
    GetCalculationExecutionCodeInput: GetCalculationExecutionCodeInput
    GetCalculationExecutionCodeOutput: GetCalculationExecutionCodeOutput
    GetCalculationExecutionStatusInput: GetCalculationExecutionStatusInput
    GetCalculationExecutionStatusOutput: GetCalculationExecutionStatusOutput
    GetCapacityAssignmentConfigurationInput: GetCapacityAssignmentConfigurationInput
    GetCapacityAssignmentConfigurationOutput: GetCapacityAssignmentConfigurationOutput
    GetCapacityReservationInput: GetCapacityReservationInput
    GetCapacityReservationOutput: GetCapacityReservationOutput
    GetDatabaseInput: GetDatabaseInput
    GetDatabaseOutput: GetDatabaseOutput
    GetDataCatalogInput: GetDataCatalogInput
    GetDataCatalogOutput: GetDataCatalogOutput
    GetNamedQueryInput: GetNamedQueryInput
    GetNamedQueryOutput: GetNamedQueryOutput
    GetNotebookMetadataInput: GetNotebookMetadataInput
    GetNotebookMetadataOutput: GetNotebookMetadataOutput
    GetPreparedStatementInput: GetPreparedStatementInput
    GetPreparedStatementOutput: GetPreparedStatementOutput
    GetQueryExecutionInput: GetQueryExecutionInput
    GetQueryExecutionOutput: GetQueryExecutionOutput
    GetQueryResultsInput: GetQueryResultsInput
    GetQueryResultsOutput: GetQueryResultsOutput
    GetQueryRuntimeStatisticsInput: GetQueryRuntimeStatisticsInput
    GetQueryRuntimeStatisticsOutput: GetQueryRuntimeStatisticsOutput
    GetResourceDashboardInput: GetResourceDashboardInput
    GetResourceDashboardOutput: GetResourceDashboardOutput
    GetSessionInput: GetSessionInput
    GetSessionOutput: GetSessionOutput
    GetSessionEndpointInput: GetSessionEndpointInput
    GetSessionEndpointOutput: GetSessionEndpointOutput
    GetSessionStatusInput: GetSessionStatusInput
    GetSessionStatusOutput: GetSessionStatusOutput
    GetTableMetadataInput: GetTableMetadataInput
    GetTableMetadataOutput: GetTableMetadataOutput
    GetWorkGroupInput: GetWorkGroupInput
    GetWorkGroupOutput: GetWorkGroupOutput
    ImportNotebookInput: ImportNotebookInput
    ImportNotebookOutput: ImportNotebookOutput
    ListApplicationDPUSizesInput: ListApplicationDPUSizesInput
    ListApplicationDPUSizesOutput: ListApplicationDPUSizesOutput
    ListCalculationExecutionsInput: ListCalculationExecutionsInput
    ListCalculationExecutionsOutput: ListCalculationExecutionsOutput
    ListCapacityReservationsInput: ListCapacityReservationsInput
    ListCapacityReservationsOutput: ListCapacityReservationsOutput
    ListDatabasesInput: ListDatabasesInput
    ListDatabasesOutput: ListDatabasesOutput
    ListDataCatalogsInput: ListDataCatalogsInput
    ListDataCatalogsOutput: ListDataCatalogsOutput
    ListEngineVersionsInput: ListEngineVersionsInput
    ListEngineVersionsOutput: ListEngineVersionsOutput
    ListExecutorsInput: ListExecutorsInput
    ListExecutorsOutput: ListExecutorsOutput
    ListNamedQueriesInput: ListNamedQueriesInput
    ListNamedQueriesOutput: ListNamedQueriesOutput
    ListNotebookMetadataInput: ListNotebookMetadataInput
    ListNotebookMetadataOutput: ListNotebookMetadataOutput
    ListNotebookSessionsInput: ListNotebookSessionsInput
    ListNotebookSessionsOutput: ListNotebookSessionsOutput
    ListPreparedStatementsInput: ListPreparedStatementsInput
    ListPreparedStatementsOutput: ListPreparedStatementsOutput
    ListQueryExecutionsInput: ListQueryExecutionsInput
    ListQueryExecutionsOutput: ListQueryExecutionsOutput
    ListSessionsInput: ListSessionsInput
    ListSessionsOutput: ListSessionsOutput
    ListTableMetadataInput: ListTableMetadataInput
    ListTableMetadataOutput: ListTableMetadataOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWorkGroupsInput: ListWorkGroupsInput
    ListWorkGroupsOutput: ListWorkGroupsOutput
    PutCapacityAssignmentConfigurationInput: PutCapacityAssignmentConfigurationInput
    PutCapacityAssignmentConfigurationOutput: PutCapacityAssignmentConfigurationOutput
    StartCalculationExecutionInput: StartCalculationExecutionInput
    StartCalculationExecutionOutput: StartCalculationExecutionOutput
    StartQueryExecutionInput: StartQueryExecutionInput
    StartQueryExecutionOutput: StartQueryExecutionOutput
    StartSessionInput: StartSessionInput
    StartSessionOutput: StartSessionOutput
    StopCalculationExecutionInput: StopCalculationExecutionInput
    StopCalculationExecutionOutput: StopCalculationExecutionOutput
    StopQueryExecutionInput: StopQueryExecutionInput
    StopQueryExecutionOutput: StopQueryExecutionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TerminateSessionInput: TerminateSessionInput
    TerminateSessionOutput: TerminateSessionOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCapacityReservationInput: UpdateCapacityReservationInput
    UpdateCapacityReservationOutput: UpdateCapacityReservationOutput
    UpdateDataCatalogInput: UpdateDataCatalogInput
    UpdateDataCatalogOutput: UpdateDataCatalogOutput
    UpdateNamedQueryInput: UpdateNamedQueryInput
    UpdateNamedQueryOutput: UpdateNamedQueryOutput
    UpdateNotebookInput: UpdateNotebookInput
    UpdateNotebookOutput: UpdateNotebookOutput
    UpdateNotebookMetadataInput: UpdateNotebookMetadataInput
    UpdateNotebookMetadataOutput: UpdateNotebookMetadataOutput
    UpdatePreparedStatementInput: UpdatePreparedStatementInput
    UpdatePreparedStatementOutput: UpdatePreparedStatementOutput
    UpdateWorkGroupInput: UpdateWorkGroupInput
    UpdateWorkGroupOutput: UpdateWorkGroupOutput
end

return M
