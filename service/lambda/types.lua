local M = {}

M.ThrottleReason = {
    ConcurrentInvocationLimitExceeded = "ConcurrentInvocationLimitExceeded",
    FunctionInvocationRateLimitExceeded = "FunctionInvocationRateLimitExceeded",
    ReservedFunctionConcurrentInvocationLimitExceeded = "ReservedFunctionConcurrentInvocationLimitExceeded",
    ReservedFunctionInvocationRateLimitExceeded = "ReservedFunctionInvocationRateLimitExceeded",
    CallerRateLimitExceeded = "CallerRateLimitExceeded",
    ConcurrentSnapshotCreateLimitExceeded = "ConcurrentSnapshotCreateLimitExceeded",
}

M.FunctionUrlAuthType = {
    NONE = "NONE",
    AWS_IAM = "AWS_IAM",
}

M.KafkaSchemaRegistryAuthType = {
    BASIC_AUTH = "BASIC_AUTH",
    CLIENT_CERTIFICATE_TLS_AUTH = "CLIENT_CERTIFICATE_TLS_AUTH",
    SERVER_ROOT_CA_CERTIFICATE = "SERVER_ROOT_CA_CERTIFICATE",
}

M.SchemaRegistryEventRecordFormat = {
    JSON = "JSON",
    SOURCE = "SOURCE",
}

M.KafkaSchemaValidationAttribute = {
    KEY = "KEY",
    VALUE = "VALUE",
}

M.ApplicationLogLevel = {
    Trace = "TRACE",
    Debug = "DEBUG",
    Info = "INFO",
    Warn = "WARN",
    Error = "ERROR",
    Fatal = "FATAL",
}

M.Architecture = {
    x86_64 = "x86_64",
    arm64 = "arm64",
}

M.CapacityProviderScalingMode = {
    Auto = "Auto",
    Manual = "Manual",
}

M.CapacityProviderPredefinedMetricType = {
    LambdaCapacityProviderAverageCPUUtilization = "LambdaCapacityProviderAverageCPUUtilization",
}

M.CapacityProviderState = {
    Pending = "Pending",
    Active = "Active",
    Failed = "Failed",
    Deleting = "Deleting",
}

M.State = {
    Pending = "Pending",
    Active = "Active",
    Inactive = "Inactive",
    Failed = "Failed",
    Deactivating = "Deactivating",
    Deactivated = "Deactivated",
    ActiveNonInvocable = "ActiveNonInvocable",
    Deleting = "Deleting",
}

M.OperationAction = {
    START = "START",
    SUCCEED = "SUCCEED",
    FAIL = "FAIL",
    RETRY = "RETRY",
    CANCEL = "CANCEL",
}

M.OperationType = {
    EXECUTION = "EXECUTION",
    CONTEXT = "CONTEXT",
    STEP = "STEP",
    WAIT = "WAIT",
    CALLBACK = "CALLBACK",
    CHAINED_INVOKE = "CHAINED_INVOKE",
}

M.OperationStatus = {
    STARTED = "STARTED",
    PENDING = "PENDING",
    READY = "READY",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
    TIMED_OUT = "TIMED_OUT",
    STOPPED = "STOPPED",
}

M.CodeSigningPolicy = {
    Warn = "Warn",
    Enforce = "Enforce",
}

M.FullDocument = {
    UpdateLookup = "UpdateLookup",
    Default = "Default",
}

M.FunctionResponseType = {
    ReportBatchItemFailures = "ReportBatchItemFailures",
}

M.EventSourceMappingSystemLogLevel = {
    Debug = "DEBUG",
    Info = "INFO",
    Warn = "WARN",
}

M.EventSourceMappingMetric = {
    EventCount = "EventCount",
    ErrorCount = "ErrorCount",
    KafkaMetrics = "KafkaMetrics",
}

M.EndPointType = {
    KAFKA_BOOTSTRAP_SERVERS = "KAFKA_BOOTSTRAP_SERVERS",
}

M.SourceAccessType = {
    BASIC_AUTH = "BASIC_AUTH",
    VPC_SUBNET = "VPC_SUBNET",
    VPC_SECURITY_GROUP = "VPC_SECURITY_GROUP",
    SASL_SCRAM_512_AUTH = "SASL_SCRAM_512_AUTH",
    SASL_SCRAM_256_AUTH = "SASL_SCRAM_256_AUTH",
    VIRTUAL_HOST = "VIRTUAL_HOST",
    CLIENT_CERTIFICATE_TLS_AUTH = "CLIENT_CERTIFICATE_TLS_AUTH",
    SERVER_ROOT_CA_CERTIFICATE = "SERVER_ROOT_CA_CERTIFICATE",
}

M.EventSourcePosition = {
    TRIM_HORIZON = "TRIM_HORIZON",
    LATEST = "LATEST",
    AT_TIMESTAMP = "AT_TIMESTAMP",
}

M.LogFormat = {
    Json = "JSON",
    Text = "Text",
}

M.SystemLogLevel = {
    Debug = "DEBUG",
    Info = "INFO",
    Warn = "WARN",
}

M.PackageType = {
    Zip = "Zip",
    Image = "Image",
}

M.FunctionVersionLatestPublished = {
    LATEST_PUBLISHED = "LATEST_PUBLISHED",
}

M.Runtime = {
    nodejs = "nodejs",
    nodejs43 = "nodejs4.3",
    nodejs610 = "nodejs6.10",
    nodejs810 = "nodejs8.10",
    nodejs10x = "nodejs10.x",
    nodejs12x = "nodejs12.x",
    nodejs14x = "nodejs14.x",
    nodejs16x = "nodejs16.x",
    java8 = "java8",
    java8al2 = "java8.al2",
    java11 = "java11",
    python27 = "python2.7",
    python36 = "python3.6",
    python37 = "python3.7",
    python38 = "python3.8",
    python39 = "python3.9",
    dotnetcore10 = "dotnetcore1.0",
    dotnetcore20 = "dotnetcore2.0",
    dotnetcore21 = "dotnetcore2.1",
    dotnetcore31 = "dotnetcore3.1",
    dotnet6 = "dotnet6",
    dotnet8 = "dotnet8",
    nodejs43edge = "nodejs4.3-edge",
    go1x = "go1.x",
    ruby25 = "ruby2.5",
    ruby27 = "ruby2.7",
    provided = "provided",
    providedal2 = "provided.al2",
    nodejs18x = "nodejs18.x",
    python310 = "python3.10",
    java17 = "java17",
    ruby32 = "ruby3.2",
    ruby33 = "ruby3.3",
    ruby34 = "ruby3.4",
    python311 = "python3.11",
    nodejs20x = "nodejs20.x",
    providedal2023 = "provided.al2023",
    python312 = "python3.12",
    java21 = "java21",
    python313 = "python3.13",
    nodejs22x = "nodejs22.x",
    nodejs24x = "nodejs24.x",
    python314 = "python3.14",
    java25 = "java25",
    dotnet10 = "dotnet10",
    ruby40 = "ruby4.0",
}

M.SnapStartApplyOn = {
    PublishedVersions = "PublishedVersions",
    None = "None",
}

M.TenantIsolationMode = {
    PER_TENANT = "PER_TENANT",
}

M.TracingMode = {
    Active = "Active",
    PassThrough = "PassThrough",
}

M.LastUpdateStatus = {
    Successful = "Successful",
    Failed = "Failed",
    InProgress = "InProgress",
}

M.LastUpdateStatusReasonCode = {
    EniLimitExceeded = "EniLimitExceeded",
    InsufficientRolePermissions = "InsufficientRolePermissions",
    InvalidConfiguration = "InvalidConfiguration",
    InternalError = "InternalError",
    SubnetOutOfIPAddresses = "SubnetOutOfIPAddresses",
    InvalidSubnet = "InvalidSubnet",
    InvalidSecurityGroup = "InvalidSecurityGroup",
    ImageDeleted = "ImageDeleted",
    ImageAccessDenied = "ImageAccessDenied",
    InvalidImage = "InvalidImage",
    KMSKeyAccessDenied = "KMSKeyAccessDenied",
    KMSKeyNotFound = "KMSKeyNotFound",
    InvalidStateKMSKey = "InvalidStateKMSKey",
    DisabledKMSKey = "DisabledKMSKey",
    EFSIOError = "EFSIOError",
    EFSMountConnectivityError = "EFSMountConnectivityError",
    EFSMountFailure = "EFSMountFailure",
    EFSMountTimeout = "EFSMountTimeout",
    InvalidRuntime = "InvalidRuntime",
    InvalidZipFileException = "InvalidZipFileException",
    FunctionError = "FunctionError",
    VcpuLimitExceeded = "VcpuLimitExceeded",
    CapacityProviderScalingLimitExceeded = "CapacityProviderScalingLimitExceeded",
    InsufficientCapacity = "InsufficientCapacity",
    EC2RequestLimitExceeded = "EC2RequestLimitExceeded",
    FunctionErrorInitTimeout = "FunctionError.InitTimeout",
    FunctionErrorRuntimeInitError = "FunctionError.RuntimeInitError",
    FunctionErrorExtensionInitError = "FunctionError.ExtensionInitError",
    FunctionErrorInvalidEntryPoint = "FunctionError.InvalidEntryPoint",
    FunctionErrorInvalidWorkingDirectory = "FunctionError.InvalidWorkingDirectory",
    FunctionErrorPermissionDenied = "FunctionError.PermissionDenied",
    FunctionErrorTooManyExtensions = "FunctionError.TooManyExtensions",
    FunctionErrorInitResourceExhausted = "FunctionError.InitResourceExhausted",
    DisallowedByVpcEncryptionControl = "DisallowedByVpcEncryptionControl",
}

M.SnapStartOptimizationStatus = {
    On = "On",
    Off = "Off",
}

M.StateReasonCode = {
    Idle = "Idle",
    Creating = "Creating",
    Restoring = "Restoring",
    EniLimitExceeded = "EniLimitExceeded",
    InsufficientRolePermissions = "InsufficientRolePermissions",
    InvalidConfiguration = "InvalidConfiguration",
    InternalError = "InternalError",
    SubnetOutOfIPAddresses = "SubnetOutOfIPAddresses",
    InvalidSubnet = "InvalidSubnet",
    InvalidSecurityGroup = "InvalidSecurityGroup",
    ImageDeleted = "ImageDeleted",
    ImageAccessDenied = "ImageAccessDenied",
    InvalidImage = "InvalidImage",
    KMSKeyAccessDenied = "KMSKeyAccessDenied",
    KMSKeyNotFound = "KMSKeyNotFound",
    InvalidStateKMSKey = "InvalidStateKMSKey",
    DisabledKMSKey = "DisabledKMSKey",
    EFSIOError = "EFSIOError",
    EFSMountConnectivityError = "EFSMountConnectivityError",
    EFSMountFailure = "EFSMountFailure",
    EFSMountTimeout = "EFSMountTimeout",
    InvalidRuntime = "InvalidRuntime",
    InvalidZipFileException = "InvalidZipFileException",
    FunctionError = "FunctionError",
    DrainingDurableExecutions = "DrainingDurableExecutions",
    VcpuLimitExceeded = "VcpuLimitExceeded",
    CapacityProviderScalingLimitExceeded = "CapacityProviderScalingLimitExceeded",
    InsufficientCapacity = "InsufficientCapacity",
    EC2RequestLimitExceeded = "EC2RequestLimitExceeded",
    FunctionErrorInitTimeout = "FunctionError.InitTimeout",
    FunctionErrorRuntimeInitError = "FunctionError.RuntimeInitError",
    FunctionErrorExtensionInitError = "FunctionError.ExtensionInitError",
    FunctionErrorInvalidEntryPoint = "FunctionError.InvalidEntryPoint",
    FunctionErrorInvalidWorkingDirectory = "FunctionError.InvalidWorkingDirectory",
    FunctionErrorPermissionDenied = "FunctionError.PermissionDenied",
    FunctionErrorTooManyExtensions = "FunctionError.TooManyExtensions",
    FunctionErrorInitResourceExhausted = "FunctionError.InitResourceExhausted",
    DisallowedByVpcEncryptionControl = "DisallowedByVpcEncryptionControl",
}

M.InvokeMode = {
    BUFFERED = "BUFFERED",
    RESPONSE_STREAM = "RESPONSE_STREAM",
}

M.RecursiveLoop = {
    Allow = "Allow",
    Terminate = "Terminate",
}

M.UpdateRuntimeOn = {
    Auto = "Auto",
    Manual = "Manual",
    FunctionUpdate = "FunctionUpdate",
}

M.InvocationType = {
    Event = "Event",
    RequestResponse = "RequestResponse",
    DryRun = "DryRun",
}

M.LogType = {
    None = "None",
    Tail = "Tail",
}

M.ResponseStreamingInvocationType = {
    RequestResponse = "RequestResponse",
    DryRun = "DryRun",
}

M.FunctionVersion = {
    ALL = "ALL",
}

M.ProvisionedConcurrencyStatusEnum = {
    IN_PROGRESS = "IN_PROGRESS",
    READY = "READY",
    FAILED = "FAILED",
}

M.ExecutionStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    STOPPED = "STOPPED",
}

M.EventType = {
    ExecutionStarted = "ExecutionStarted",
    ExecutionSucceeded = "ExecutionSucceeded",
    ExecutionFailed = "ExecutionFailed",
    ExecutionTimedOut = "ExecutionTimedOut",
    ExecutionStopped = "ExecutionStopped",
    ContextStarted = "ContextStarted",
    ContextSucceeded = "ContextSucceeded",
    ContextFailed = "ContextFailed",
    WaitStarted = "WaitStarted",
    WaitSucceeded = "WaitSucceeded",
    WaitCancelled = "WaitCancelled",
    StepStarted = "StepStarted",
    StepSucceeded = "StepSucceeded",
    StepFailed = "StepFailed",
    ChainedInvokeStarted = "ChainedInvokeStarted",
    ChainedInvokeSucceeded = "ChainedInvokeSucceeded",
    ChainedInvokeFailed = "ChainedInvokeFailed",
    ChainedInvokeTimedOut = "ChainedInvokeTimedOut",
    ChainedInvokeStopped = "ChainedInvokeStopped",
    CallbackStarted = "CallbackStarted",
    CallbackSucceeded = "CallbackSucceeded",
    CallbackFailed = "CallbackFailed",
    CallbackTimedOut = "CallbackTimedOut",
    InvocationCompleted = "InvocationCompleted",
}

return M
