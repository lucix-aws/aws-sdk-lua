local record CancelExportTaskInput
    taskIdentifier: string
end

local record CancelExportTaskOutput
    graphId: string
    roleArn: string
    taskId: string
    status: string
    format: string
    destination: string
    kmsKeyIdentifier: string
    parquetType: string
    statusReason: string
end

local record CancelImportTaskInput
    taskIdentifier: string
end

local record CancelImportTaskOutput
    graphId: string
    taskId: string
    source: string
    format: string
    parquetType: string
    roleArn: string
    status: string
end

local record CancelQueryInput
    graphIdentifier: string
    queryId: string
end

local record CancelQueryOutput
end

local record CreateGraphInput
    graphName: string
    tags: {string : string}
    publicConnectivity: boolean
    kmsKeyIdentifier: string
    vectorSearchConfiguration: VectorSearchConfiguration
    replicaCount: number
    deletionProtection: boolean
    provisionedMemory: number
end

local record CreateGraphOutput
    id: string
    name: string
    arn: string
    status: string
    statusReason: string
    createTime: number
    provisionedMemory: number
    endpoint: string
    publicConnectivity: boolean
    vectorSearchConfiguration: VectorSearchConfiguration
    replicaCount: number
    kmsKeyIdentifier: string
    sourceSnapshotId: string
    deletionProtection: boolean
    buildNumber: string
end

local record CreateGraphSnapshotInput
    graphIdentifier: string
    snapshotName: string
    tags: {string : string}
end

local record CreateGraphSnapshotOutput
    id: string
    name: string
    arn: string
    sourceGraphId: string
    snapshotCreateTime: number
    status: string
    kmsKeyIdentifier: string
end

local record CreateGraphUsingImportTaskInput
    graphName: string
    tags: {string : string}
    publicConnectivity: boolean
    kmsKeyIdentifier: string
    vectorSearchConfiguration: VectorSearchConfiguration
    replicaCount: number
    deletionProtection: boolean
    importOptions: ImportOptions
    maxProvisionedMemory: number
    minProvisionedMemory: number
    failOnError: boolean
    source: string
    format: string
    parquetType: string
    blankNodeHandling: string
    roleArn: string
end

local record CreateGraphUsingImportTaskOutput
    graphId: string
    taskId: string
    source: string
    format: string
    parquetType: string
    roleArn: string
    status: string
    importOptions: ImportOptions
end

local record CreatePrivateGraphEndpointInput
    graphIdentifier: string
    vpcId: string
    subnetIds: {string}
    vpcSecurityGroupIds: {string}
end

local record CreatePrivateGraphEndpointOutput
    vpcId: string
    subnetIds: {string}
    status: string
    vpcEndpointId: string
end

local record DeleteGraphInput
    graphIdentifier: string
    skipSnapshot: boolean
end

local record DeleteGraphOutput
    id: string
    name: string
    arn: string
    status: string
    statusReason: string
    createTime: number
    provisionedMemory: number
    endpoint: string
    publicConnectivity: boolean
    vectorSearchConfiguration: VectorSearchConfiguration
    replicaCount: number
    kmsKeyIdentifier: string
    sourceSnapshotId: string
    deletionProtection: boolean
    buildNumber: string
end

local record DeleteGraphSnapshotInput
    snapshotIdentifier: string
end

local record DeleteGraphSnapshotOutput
    id: string
    name: string
    arn: string
    sourceGraphId: string
    snapshotCreateTime: number
    status: string
    kmsKeyIdentifier: string
end

local record DeletePrivateGraphEndpointInput
    graphIdentifier: string
    vpcId: string
end

local record DeletePrivateGraphEndpointOutput
    vpcId: string
    subnetIds: {string}
    status: string
    vpcEndpointId: string
end

local record ExecuteQueryInput
    graphIdentifier: string
    queryString: string
    language: string
    parameters: {string : any}
    planCache: string
    explainMode: string
    queryTimeoutMilliseconds: number
end

local record ExecuteQueryOutput
    payload: string
end

local record GetExportTaskInput
    taskIdentifier: string
end

local record GetExportTaskOutput
    graphId: string
    roleArn: string
    taskId: string
    status: string
    format: string
    destination: string
    kmsKeyIdentifier: string
    parquetType: string
    statusReason: string
    exportTaskDetails: ExportTaskDetails
    exportFilter: ExportFilter
end

local record GetGraphInput
    graphIdentifier: string
end

local record GetGraphOutput
    id: string
    name: string
    arn: string
    status: string
    statusReason: string
    createTime: number
    provisionedMemory: number
    endpoint: string
    publicConnectivity: boolean
    vectorSearchConfiguration: VectorSearchConfiguration
    replicaCount: number
    kmsKeyIdentifier: string
    sourceSnapshotId: string
    deletionProtection: boolean
    buildNumber: string
end

local record GetGraphSnapshotInput
    snapshotIdentifier: string
end

local record GetGraphSnapshotOutput
    id: string
    name: string
    arn: string
    sourceGraphId: string
    snapshotCreateTime: number
    status: string
    kmsKeyIdentifier: string
end

local record GetGraphSummaryInput
    graphIdentifier: string
    mode: string
end

local record GetGraphSummaryOutput
    version: string
    lastStatisticsComputationTime: number
    graphSummary: GraphDataSummary
end

local record GetImportTaskInput
    taskIdentifier: string
end

local record GetImportTaskOutput
    graphId: string
    taskId: string
    source: string
    format: string
    parquetType: string
    roleArn: string
    status: string
    importOptions: ImportOptions
    importTaskDetails: ImportTaskDetails
    attemptNumber: number
    statusReason: string
end

local record GetPrivateGraphEndpointInput
    graphIdentifier: string
    vpcId: string
end

local record GetPrivateGraphEndpointOutput
    vpcId: string
    subnetIds: {string}
    status: string
    vpcEndpointId: string
end

local record GetQueryInput
    graphIdentifier: string
    queryId: string
end

local record GetQueryOutput
    id: string
    queryString: string
    waited: number
    elapsed: number
    state: string
end

local record ListExportTasksInput
    graphIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListExportTasksOutput
    tasks: {ExportTaskSummary}
    nextToken: string
end

local record ListGraphsInput
    nextToken: string
    maxResults: number
end

local record ListGraphsOutput
    graphs: {GraphSummary}
    nextToken: string
end

local record ListGraphSnapshotsInput
    graphIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListGraphSnapshotsOutput
    graphSnapshots: {GraphSnapshotSummary}
    nextToken: string
end

local record ListImportTasksInput
    nextToken: string
    maxResults: number
end

local record ListImportTasksOutput
    tasks: {ImportTaskSummary}
    nextToken: string
end

local record ListPrivateGraphEndpointsInput
    graphIdentifier: string
    nextToken: string
    maxResults: number
end

local record ListPrivateGraphEndpointsOutput
    privateGraphEndpoints: {PrivateGraphEndpointSummary}
    nextToken: string
end

local record ListQueriesInput
    graphIdentifier: string
    maxResults: number
    state: string
end

local record ListQueriesOutput
    queries: {QuerySummary}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ResetGraphInput
    graphIdentifier: string
    skipSnapshot: boolean
end

local record ResetGraphOutput
    id: string
    name: string
    arn: string
    status: string
    statusReason: string
    createTime: number
    provisionedMemory: number
    endpoint: string
    publicConnectivity: boolean
    vectorSearchConfiguration: VectorSearchConfiguration
    replicaCount: number
    kmsKeyIdentifier: string
    sourceSnapshotId: string
    deletionProtection: boolean
    buildNumber: string
end

local record RestoreGraphFromSnapshotInput
    snapshotIdentifier: string
    graphName: string
    provisionedMemory: number
    deletionProtection: boolean
    tags: {string : string}
    replicaCount: number
    publicConnectivity: boolean
end

local record RestoreGraphFromSnapshotOutput
    id: string
    name: string
    arn: string
    status: string
    statusReason: string
    createTime: number
    provisionedMemory: number
    endpoint: string
    publicConnectivity: boolean
    vectorSearchConfiguration: VectorSearchConfiguration
    replicaCount: number
    kmsKeyIdentifier: string
    sourceSnapshotId: string
    deletionProtection: boolean
    buildNumber: string
end

local record StartExportTaskInput
    graphIdentifier: string
    roleArn: string
    format: string
    destination: string
    kmsKeyIdentifier: string
    parquetType: string
    exportFilter: ExportFilter
    tags: {string : string}
end

local record StartExportTaskOutput
    graphId: string
    roleArn: string
    taskId: string
    status: string
    format: string
    destination: string
    kmsKeyIdentifier: string
    parquetType: string
    statusReason: string
    exportFilter: ExportFilter
end

local record StartGraphInput
    graphIdentifier: string
end

local record StartGraphOutput
    id: string
    name: string
    arn: string
    status: string
    statusReason: string
    createTime: number
    provisionedMemory: number
    endpoint: string
    publicConnectivity: boolean
    vectorSearchConfiguration: VectorSearchConfiguration
    replicaCount: number
    kmsKeyIdentifier: string
    sourceSnapshotId: string
    deletionProtection: boolean
    buildNumber: string
end

local record StartImportTaskInput
    importOptions: ImportOptions
    failOnError: boolean
    source: string
    format: string
    parquetType: string
    blankNodeHandling: string
    graphIdentifier: string
    roleArn: string
end

local record StartImportTaskOutput
    graphId: string
    taskId: string
    source: string
    format: string
    parquetType: string
    roleArn: string
    status: string
    importOptions: ImportOptions
end

local record StopGraphInput
    graphIdentifier: string
end

local record StopGraphOutput
    id: string
    name: string
    arn: string
    status: string
    statusReason: string
    createTime: number
    provisionedMemory: number
    endpoint: string
    publicConnectivity: boolean
    vectorSearchConfiguration: VectorSearchConfiguration
    replicaCount: number
    kmsKeyIdentifier: string
    sourceSnapshotId: string
    deletionProtection: boolean
    buildNumber: string
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

local record UpdateGraphInput
    graphIdentifier: string
    publicConnectivity: boolean
    provisionedMemory: number
    deletionProtection: boolean
end

local record UpdateGraphOutput
    id: string
    name: string
    arn: string
    status: string
    statusReason: string
    createTime: number
    provisionedMemory: number
    endpoint: string
    publicConnectivity: boolean
    vectorSearchConfiguration: VectorSearchConfiguration
    replicaCount: number
    kmsKeyIdentifier: string
    sourceSnapshotId: string
    deletionProtection: boolean
    buildNumber: string
end

local record ConflictException
    message: string
    reason: string
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
    reason: string
end

local record ConflictException
    message: string
    reason: string
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
    reason: string
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
    reason: string
end

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
    reason: string
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
    reason: string
end

local record ConflictException
    message: string
    reason: string
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
    reason: string
end

local record ConflictException
    message: string
    reason: string
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
    reason: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnprocessableException
    message: string
    reason: string
end

local record ValidationException
    message: string
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
end

local record ConflictException
    message: string
    reason: string
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
    reason: string
end

local record ConflictException
    message: string
    reason: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
    reason: string
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
    reason: string
end

local record ConflictException
    message: string
    reason: string
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
    reason: string
end

local record ConflictException
    message: string
    reason: string
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
    reason: string
end

local record ConflictException
    message: string
    reason: string
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
    reason: string
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
    reason: string
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
    reason: string
end

local record ConflictException
    message: string
    reason: string
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
    reason: string
end

local type ParquetType = "COLUMNAR"

local type QueryStateInput = "ALL" | "RUNNING" | "WAITING" | "CANCELLING"

local type ExplainMode = "STATIC" | "DETAILS"

local type QueryState = "RUNNING" | "WAITING" | "CANCELLING"

local type PlanCacheType = "ENABLED" | "DISABLED" | "AUTO"

local type ExportFormat = "PARQUET" | "CSV"

local type GraphStatus = "CREATING" | "AVAILABLE" | "DELETING" | "RESETTING" | "UPDATING" | "SNAPSHOTTING" | "FAILED" | "IMPORTING" | "STARTING" | "STOPPING" | "STOPPED"

local type ImportTaskStatus = "INITIALIZING" | "EXPORTING" | "ANALYZING_DATA" | "IMPORTING" | "REPROVISIONING" | "ROLLING_BACK" | "SUCCEEDED" | "FAILED" | "CANCELLING" | "CANCELLED" | "DELETED"

local type Format = "CSV" | "OPEN_CYPHER" | "PARQUET" | "NTRIPLES"

local type SnapshotStatus = "CREATING" | "AVAILABLE" | "DELETING" | "FAILED"

local type PrivateGraphEndpointStatus = "CREATING" | "AVAILABLE" | "DELETING" | "FAILED"

local type GraphSummaryMode = "BASIC" | "DETAILED"

local type ExportTaskStatus = "INITIALIZING" | "EXPORTING" | "SUCCEEDED" | "FAILED" | "CANCELLING" | "CANCELLED" | "DELETED"

local type QueryLanguage = "OPEN_CYPHER"

local type BlankNodeHandling = "convertToIri"

local record M
    CancelExportTaskInput: CancelExportTaskInput
    CancelExportTaskOutput: CancelExportTaskOutput
    CancelImportTaskInput: CancelImportTaskInput
    CancelImportTaskOutput: CancelImportTaskOutput
    CancelQueryInput: CancelQueryInput
    CancelQueryOutput: CancelQueryOutput
    CreateGraphInput: CreateGraphInput
    CreateGraphOutput: CreateGraphOutput
    CreateGraphSnapshotInput: CreateGraphSnapshotInput
    CreateGraphSnapshotOutput: CreateGraphSnapshotOutput
    CreateGraphUsingImportTaskInput: CreateGraphUsingImportTaskInput
    CreateGraphUsingImportTaskOutput: CreateGraphUsingImportTaskOutput
    CreatePrivateGraphEndpointInput: CreatePrivateGraphEndpointInput
    CreatePrivateGraphEndpointOutput: CreatePrivateGraphEndpointOutput
    DeleteGraphInput: DeleteGraphInput
    DeleteGraphOutput: DeleteGraphOutput
    DeleteGraphSnapshotInput: DeleteGraphSnapshotInput
    DeleteGraphSnapshotOutput: DeleteGraphSnapshotOutput
    DeletePrivateGraphEndpointInput: DeletePrivateGraphEndpointInput
    DeletePrivateGraphEndpointOutput: DeletePrivateGraphEndpointOutput
    ExecuteQueryInput: ExecuteQueryInput
    ExecuteQueryOutput: ExecuteQueryOutput
    GetExportTaskInput: GetExportTaskInput
    GetExportTaskOutput: GetExportTaskOutput
    GetGraphInput: GetGraphInput
    GetGraphOutput: GetGraphOutput
    GetGraphSnapshotInput: GetGraphSnapshotInput
    GetGraphSnapshotOutput: GetGraphSnapshotOutput
    GetGraphSummaryInput: GetGraphSummaryInput
    GetGraphSummaryOutput: GetGraphSummaryOutput
    GetImportTaskInput: GetImportTaskInput
    GetImportTaskOutput: GetImportTaskOutput
    GetPrivateGraphEndpointInput: GetPrivateGraphEndpointInput
    GetPrivateGraphEndpointOutput: GetPrivateGraphEndpointOutput
    GetQueryInput: GetQueryInput
    GetQueryOutput: GetQueryOutput
    ListExportTasksInput: ListExportTasksInput
    ListExportTasksOutput: ListExportTasksOutput
    ListGraphsInput: ListGraphsInput
    ListGraphsOutput: ListGraphsOutput
    ListGraphSnapshotsInput: ListGraphSnapshotsInput
    ListGraphSnapshotsOutput: ListGraphSnapshotsOutput
    ListImportTasksInput: ListImportTasksInput
    ListImportTasksOutput: ListImportTasksOutput
    ListPrivateGraphEndpointsInput: ListPrivateGraphEndpointsInput
    ListPrivateGraphEndpointsOutput: ListPrivateGraphEndpointsOutput
    ListQueriesInput: ListQueriesInput
    ListQueriesOutput: ListQueriesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ResetGraphInput: ResetGraphInput
    ResetGraphOutput: ResetGraphOutput
    RestoreGraphFromSnapshotInput: RestoreGraphFromSnapshotInput
    RestoreGraphFromSnapshotOutput: RestoreGraphFromSnapshotOutput
    StartExportTaskInput: StartExportTaskInput
    StartExportTaskOutput: StartExportTaskOutput
    StartGraphInput: StartGraphInput
    StartGraphOutput: StartGraphOutput
    StartImportTaskInput: StartImportTaskInput
    StartImportTaskOutput: StartImportTaskOutput
    StopGraphInput: StopGraphInput
    StopGraphOutput: StopGraphOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateGraphInput: UpdateGraphInput
    UpdateGraphOutput: UpdateGraphOutput
end

return M
