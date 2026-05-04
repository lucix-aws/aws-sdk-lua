local M = {}

M.AccountLimit = {
    type = "structure",
    id = "AccountLimit",
    members = {
        TotalCodeSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CodeSizeUnzipped = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CodeSizeZipped = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ConcurrentExecutions = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        UnreservedConcurrentExecutions = {
            type = "integer",
        },
    },
}

M.AccountUsage = {
    type = "structure",
    id = "AccountUsage",
    members = {
        TotalCodeSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        FunctionCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.AddLayerVersionPermissionInput = {
    type = "structure",
    id = "AddLayerVersionPermissionInput",
    members = {
        LayerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                default = nil,
                http_label = true,
                required = true,
            },
        },
        StatementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationId = {
            type = "string",
        },
        RevisionId = {
            type = "string",
            traits = {
                http_query = "RevisionId",
            },
        },
    },
}

M.AddLayerVersionPermissionOutput = {
    type = "structure",
    id = "AddLayerVersionPermissionOutput",
    members = {
        Statement = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    id = "InvalidParameterValueException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.PolicyLengthExceededException = {
    type = "structure",
    id = "PolicyLengthExceededException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.PreconditionFailedException = {
    type = "structure",
    id = "PreconditionFailedException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ResourceConflictException = {
    type = "structure",
    id = "ResourceConflictException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ServiceException = {
    type = "structure",
    id = "ServiceException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ThrottleReason = {
    ConcurrentInvocationLimitExceeded = "ConcurrentInvocationLimitExceeded",
    FunctionInvocationRateLimitExceeded = "FunctionInvocationRateLimitExceeded",
    ReservedFunctionConcurrentInvocationLimitExceeded = "ReservedFunctionConcurrentInvocationLimitExceeded",
    ReservedFunctionInvocationRateLimitExceeded = "ReservedFunctionInvocationRateLimitExceeded",
    CallerRateLimitExceeded = "CallerRateLimitExceeded",
    ConcurrentSnapshotCreateLimitExceeded = "ConcurrentSnapshotCreateLimitExceeded",
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        retryAfterSeconds = {
            type = "string",
            traits = {
                http_header = "Retry-After",
            },
        },
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.FunctionUrlAuthType = {
    NONE = "NONE",
    AWS_IAM = "AWS_IAM",
}

M.AddPermissionInput = {
    type = "structure",
    id = "AddPermissionInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StatementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Principal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceArn = {
            type = "string",
        },
        SourceAccount = {
            type = "string",
        },
        EventSourceToken = {
            type = "string",
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
        RevisionId = {
            type = "string",
        },
        PrincipalOrgID = {
            type = "string",
        },
        FunctionUrlAuthType = {
            type = "string",
        },
        InvokedViaFunctionUrl = {
            type = "boolean",
        },
    },
}

M.AddPermissionOutput = {
    type = "structure",
    id = "AddPermissionOutput",
    members = {
        Statement = {
            type = "string",
        },
    },
}

M.AliasRoutingConfiguration = {
    type = "structure",
    id = "AliasRoutingConfiguration",
    members = {
        AdditionalVersionWeights = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
    },
}

M.AliasConfiguration = {
    type = "structure",
    id = "AliasConfiguration",
    members = {
        AliasArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        FunctionVersion = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoutingConfig = M.AliasRoutingConfiguration,
        RevisionId = {
            type = "string",
        },
    },
}

M.AllowedPublishers = {
    type = "structure",
    id = "AllowedPublishers",
    members = {
        SigningProfileVersionArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.KafkaSchemaRegistryAuthType = {
    BASIC_AUTH = "BASIC_AUTH",
    CLIENT_CERTIFICATE_TLS_AUTH = "CLIENT_CERTIFICATE_TLS_AUTH",
    SERVER_ROOT_CA_CERTIFICATE = "SERVER_ROOT_CA_CERTIFICATE",
}

M.KafkaSchemaRegistryAccessConfig = {
    type = "structure",
    id = "KafkaSchemaRegistryAccessConfig",
    members = {
        Type = {
            type = "string",
        },
        URI = {
            type = "string",
        },
    },
}

M.SchemaRegistryEventRecordFormat = {
    JSON = "JSON",
    SOURCE = "SOURCE",
}

M.KafkaSchemaValidationAttribute = {
    KEY = "KEY",
    VALUE = "VALUE",
}

M.KafkaSchemaValidationConfig = {
    type = "structure",
    id = "KafkaSchemaValidationConfig",
    members = {
        Attribute = {
            type = "string",
        },
    },
}

M.KafkaSchemaRegistryConfig = {
    type = "structure",
    id = "KafkaSchemaRegistryConfig",
    members = {
        SchemaRegistryURI = {
            type = "string",
        },
        EventRecordFormat = {
            type = "string",
        },
        AccessConfigs = {
            type = "list",
            member = M.KafkaSchemaRegistryAccessConfig,
        },
        SchemaValidationConfigs = {
            type = "list",
            member = M.KafkaSchemaValidationConfig,
        },
    },
}

M.AmazonManagedKafkaEventSourceConfig = {
    type = "structure",
    id = "AmazonManagedKafkaEventSourceConfig",
    members = {
        ConsumerGroupId = {
            type = "string",
        },
        SchemaRegistryConfig = M.KafkaSchemaRegistryConfig,
    },
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

M.CapacityProviderLimitExceededException = {
    type = "structure",
    id = "CapacityProviderLimitExceededException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.CapacityProviderScalingMode = {
    Auto = "Auto",
    Manual = "Manual",
}

M.CapacityProviderPredefinedMetricType = {
    LambdaCapacityProviderAverageCPUUtilization = "LambdaCapacityProviderAverageCPUUtilization",
}

M.TargetTrackingScalingPolicy = {
    type = "structure",
    id = "TargetTrackingScalingPolicy",
    members = {
        PredefinedMetricType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.CapacityProviderScalingConfig = {
    type = "structure",
    id = "CapacityProviderScalingConfig",
    members = {
        MaxVCpuCount = {
            type = "integer",
        },
        ScalingMode = {
            type = "string",
        },
        ScalingPolicies = {
            type = "list",
            member = M.TargetTrackingScalingPolicy,
        },
    },
}

M.InstanceRequirements = {
    type = "structure",
    id = "InstanceRequirements",
    members = {
        Architectures = {
            type = "list",
            member = { type = "string" },
        },
        AllowedInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        ExcludedInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CapacityProviderPermissionsConfig = {
    type = "structure",
    id = "CapacityProviderPermissionsConfig",
    members = {
        CapacityProviderOperatorRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CapacityProviderVpcConfig = {
    type = "structure",
    id = "CapacityProviderVpcConfig",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCapacityProviderInput = {
    type = "structure",
    id = "CreateCapacityProviderInput",
    members = {
        CapacityProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityProviderVpcConfig }),
        PermissionsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityProviderPermissionsConfig }),
        InstanceRequirements = M.InstanceRequirements,
        CapacityProviderScalingConfig = M.CapacityProviderScalingConfig,
        KmsKeyArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CapacityProviderState = {
    Pending = "Pending",
    Active = "Active",
    Failed = "Failed",
    Deleting = "Deleting",
}

M.CapacityProvider = {
    type = "structure",
    id = "CapacityProvider",
    members = {
        CapacityProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityProviderVpcConfig }),
        PermissionsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityProviderPermissionsConfig }),
        InstanceRequirements = M.InstanceRequirements,
        CapacityProviderScalingConfig = M.CapacityProviderScalingConfig,
        KmsKeyArn = {
            type = "string",
        },
        LastModified = {
            type = "string",
        },
    },
}

M.CreateCapacityProviderOutput = {
    type = "structure",
    id = "CreateCapacityProviderOutput",
    members = {
        CapacityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityProvider }),
    },
}

M.DeleteCapacityProviderInput = {
    type = "structure",
    id = "DeleteCapacityProviderInput",
    members = {
        CapacityProviderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCapacityProviderOutput = {
    type = "structure",
    id = "DeleteCapacityProviderOutput",
    members = {
        CapacityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityProvider }),
    },
}

M.GetCapacityProviderInput = {
    type = "structure",
    id = "GetCapacityProviderInput",
    members = {
        CapacityProviderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCapacityProviderOutput = {
    type = "structure",
    id = "GetCapacityProviderOutput",
    members = {
        CapacityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityProvider }),
    },
}

M.ListCapacityProvidersInput = {
    type = "structure",
    id = "ListCapacityProvidersInput",
    members = {
        State = {
            type = "string",
            traits = {
                http_query = "State",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListCapacityProvidersOutput = {
    type = "structure",
    id = "ListCapacityProvidersOutput",
    members = {
        CapacityProviders = {
            type = "list",
            member = M.CapacityProvider,
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.ListFunctionVersionsByCapacityProviderInput = {
    type = "structure",
    id = "ListFunctionVersionsByCapacityProviderInput",
    members = {
        CapacityProviderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
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

M.FunctionVersionsByCapacityProviderListItem = {
    type = "structure",
    id = "FunctionVersionsByCapacityProviderListItem",
    members = {
        FunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFunctionVersionsByCapacityProviderOutput = {
    type = "structure",
    id = "ListFunctionVersionsByCapacityProviderOutput",
    members = {
        CapacityProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionVersions = {
            type = "list",
            member = M.FunctionVersionsByCapacityProviderListItem,
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.UpdateCapacityProviderInput = {
    type = "structure",
    id = "UpdateCapacityProviderInput",
    members = {
        CapacityProviderName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CapacityProviderScalingConfig = M.CapacityProviderScalingConfig,
    },
}

M.UpdateCapacityProviderOutput = {
    type = "structure",
    id = "UpdateCapacityProviderOutput",
    members = {
        CapacityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityProvider }),
    },
}

M.OperationAction = {
    START = "START",
    SUCCEED = "SUCCEED",
    FAIL = "FAIL",
    RETRY = "RETRY",
    CANCEL = "CANCEL",
}

M.CallbackOptions = {
    type = "structure",
    id = "CallbackOptions",
    members = {
        TimeoutSeconds = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        HeartbeatTimeoutSeconds = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ChainedInvokeOptions = {
    type = "structure",
    id = "ChainedInvokeOptions",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TenantId = {
            type = "string",
        },
    },
}

M.ContextOptions = {
    type = "structure",
    id = "ContextOptions",
    members = {
        ReplayChildren = {
            type = "boolean",
        },
    },
}

M.ErrorObject = {
    type = "structure",
    id = "ErrorObject",
    members = {
        ErrorMessage = {
            type = "string",
        },
        ErrorType = {
            type = "string",
        },
        ErrorData = {
            type = "string",
        },
        StackTrace = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StepOptions = {
    type = "structure",
    id = "StepOptions",
    members = {
        NextAttemptDelaySeconds = {
            type = "integer",
        },
    },
}

M.OperationType = {
    EXECUTION = "EXECUTION",
    CONTEXT = "CONTEXT",
    STEP = "STEP",
    WAIT = "WAIT",
    CALLBACK = "CALLBACK",
    CHAINED_INVOKE = "CHAINED_INVOKE",
}

M.WaitOptions = {
    type = "structure",
    id = "WaitOptions",
    members = {
        WaitSeconds = {
            type = "integer",
        },
    },
}

M.OperationUpdate = {
    type = "structure",
    id = "OperationUpdate",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParentId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubType = {
            type = "string",
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Payload = {
            type = "string",
        },
        Error = M.ErrorObject,
        ContextOptions = M.ContextOptions,
        StepOptions = M.StepOptions,
        WaitOptions = M.WaitOptions,
        CallbackOptions = M.CallbackOptions,
        ChainedInvokeOptions = M.ChainedInvokeOptions,
    },
}

M.CheckpointDurableExecutionInput = {
    type = "structure",
    id = "CheckpointDurableExecutionInput",
    members = {
        DurableExecutionArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CheckpointToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Updates = {
            type = "list",
            member = M.OperationUpdate,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CallbackDetails = {
    type = "structure",
    id = "CallbackDetails",
    members = {
        CallbackId = {
            type = "string",
        },
        Result = {
            type = "string",
        },
        Error = M.ErrorObject,
    },
}

M.ChainedInvokeDetails = {
    type = "structure",
    id = "ChainedInvokeDetails",
    members = {
        Result = {
            type = "string",
        },
        Error = M.ErrorObject,
    },
}

M.ContextDetails = {
    type = "structure",
    id = "ContextDetails",
    members = {
        ReplayChildren = {
            type = "boolean",
        },
        Result = {
            type = "string",
        },
        Error = M.ErrorObject,
    },
}

M.ExecutionDetails = {
    type = "structure",
    id = "ExecutionDetails",
    members = {
        InputPayload = {
            type = "string",
        },
    },
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

M.StepDetails = {
    type = "structure",
    id = "StepDetails",
    members = {
        Attempt = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextAttemptTimestamp = {
            type = "timestamp",
        },
        Result = {
            type = "string",
        },
        Error = M.ErrorObject,
    },
}

M.WaitDetails = {
    type = "structure",
    id = "WaitDetails",
    members = {
        ScheduledEndTimestamp = {
            type = "timestamp",
        },
    },
}

M.Operation = {
    type = "structure",
    id = "Operation",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ParentId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubType = {
            type = "string",
        },
        StartTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTimestamp = {
            type = "timestamp",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionDetails = M.ExecutionDetails,
        ContextDetails = M.ContextDetails,
        StepDetails = M.StepDetails,
        WaitDetails = M.WaitDetails,
        CallbackDetails = M.CallbackDetails,
        ChainedInvokeDetails = M.ChainedInvokeDetails,
    },
}

M.CheckpointUpdatedExecutionState = {
    type = "structure",
    id = "CheckpointUpdatedExecutionState",
    members = {
        Operations = {
            type = "list",
            member = M.Operation,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.CheckpointDurableExecutionOutput = {
    type = "structure",
    id = "CheckpointDurableExecutionOutput",
    members = {
        CheckpointToken = {
            type = "string",
        },
        NewExecutionState = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CheckpointUpdatedExecutionState }),
    },
}

M.CodeSigningPolicy = {
    Warn = "Warn",
    Enforce = "Enforce",
}

M.CodeSigningPolicies = {
    type = "structure",
    id = "CodeSigningPolicies",
    members = {
        UntrustedArtifactOnDeployment = {
            type = "string",
        },
    },
}

M.CreateCodeSigningConfigInput = {
    type = "structure",
    id = "CreateCodeSigningConfigInput",
    members = {
        Description = {
            type = "string",
        },
        AllowedPublishers = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AllowedPublishers }),
        CodeSigningPolicies = M.CodeSigningPolicies,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CodeSigningConfig = {
    type = "structure",
    id = "CodeSigningConfig",
    members = {
        CodeSigningConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CodeSigningConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AllowedPublishers = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AllowedPublishers }),
        CodeSigningPolicies = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSigningPolicies }),
        LastModified = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCodeSigningConfigOutput = {
    type = "structure",
    id = "CreateCodeSigningConfigOutput",
    members = {
        CodeSigningConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSigningConfig }),
    },
}

M.DeleteCodeSigningConfigInput = {
    type = "structure",
    id = "DeleteCodeSigningConfigInput",
    members = {
        CodeSigningConfigArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCodeSigningConfigOutput = {
    type = "structure",
    id = "DeleteCodeSigningConfigOutput",
}

M.GetCodeSigningConfigInput = {
    type = "structure",
    id = "GetCodeSigningConfigInput",
    members = {
        CodeSigningConfigArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCodeSigningConfigOutput = {
    type = "structure",
    id = "GetCodeSigningConfigOutput",
    members = {
        CodeSigningConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSigningConfig }),
    },
}

M.ListCodeSigningConfigsInput = {
    type = "structure",
    id = "ListCodeSigningConfigsInput",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListCodeSigningConfigsOutput = {
    type = "structure",
    id = "ListCodeSigningConfigsOutput",
    members = {
        NextMarker = {
            type = "string",
        },
        CodeSigningConfigs = {
            type = "list",
            member = M.CodeSigningConfig,
        },
    },
}

M.ListFunctionsByCodeSigningConfigInput = {
    type = "structure",
    id = "ListFunctionsByCodeSigningConfigInput",
    members = {
        CodeSigningConfigArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListFunctionsByCodeSigningConfigOutput = {
    type = "structure",
    id = "ListFunctionsByCodeSigningConfigOutput",
    members = {
        NextMarker = {
            type = "string",
        },
        FunctionArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateCodeSigningConfigInput = {
    type = "structure",
    id = "UpdateCodeSigningConfigInput",
    members = {
        CodeSigningConfigArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        AllowedPublishers = M.AllowedPublishers,
        CodeSigningPolicies = M.CodeSigningPolicies,
    },
}

M.UpdateCodeSigningConfigOutput = {
    type = "structure",
    id = "UpdateCodeSigningConfigOutput",
    members = {
        CodeSigningConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSigningConfig }),
    },
}

M.DeleteFunctionInput = {
    type = "structure",
    id = "DeleteFunctionInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
    },
}

M.DeleteFunctionOutput = {
    type = "structure",
    id = "DeleteFunctionOutput",
    members = {
        StatusCode = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.DeleteFunctionEventInvokeConfigInput = {
    type = "structure",
    id = "DeleteFunctionEventInvokeConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
    },
}

M.DeleteFunctionEventInvokeConfigOutput = {
    type = "structure",
    id = "DeleteFunctionEventInvokeConfigOutput",
}

M.OnFailure = {
    type = "structure",
    id = "OnFailure",
    members = {
        Destination = {
            type = "string",
        },
    },
}

M.OnSuccess = {
    type = "structure",
    id = "OnSuccess",
    members = {
        Destination = {
            type = "string",
        },
    },
}

M.DestinationConfig = {
    type = "structure",
    id = "DestinationConfig",
    members = {
        OnSuccess = M.OnSuccess,
        OnFailure = M.OnFailure,
    },
}

M.FullDocument = {
    UpdateLookup = "UpdateLookup",
    Default = "Default",
}

M.DocumentDBEventSourceConfig = {
    type = "structure",
    id = "DocumentDBEventSourceConfig",
    members = {
        DatabaseName = {
            type = "string",
        },
        CollectionName = {
            type = "string",
        },
        FullDocument = {
            type = "string",
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        Pattern = {
            type = "string",
        },
    },
}

M.FilterCriteria = {
    type = "structure",
    id = "FilterCriteria",
    members = {
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.FunctionResponseType = {
    ReportBatchItemFailures = "ReportBatchItemFailures",
}

M.EventSourceMappingSystemLogLevel = {
    Debug = "DEBUG",
    Info = "INFO",
    Warn = "WARN",
}

M.EventSourceMappingLoggingConfig = {
    type = "structure",
    id = "EventSourceMappingLoggingConfig",
    members = {
        SystemLogLevel = {
            type = "string",
        },
    },
}

M.EventSourceMappingMetric = {
    EventCount = "EventCount",
    ErrorCount = "ErrorCount",
    KafkaMetrics = "KafkaMetrics",
}

M.EventSourceMappingMetricsConfig = {
    type = "structure",
    id = "EventSourceMappingMetricsConfig",
    members = {
        Metrics = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ProvisionedPollerConfig = {
    type = "structure",
    id = "ProvisionedPollerConfig",
    members = {
        MinimumPollers = {
            type = "integer",
        },
        MaximumPollers = {
            type = "integer",
        },
        PollerGroupName = {
            type = "string",
        },
    },
}

M.ScalingConfig = {
    type = "structure",
    id = "ScalingConfig",
    members = {
        MaximumConcurrency = {
            type = "integer",
        },
    },
}

M.EndPointType = {
    KAFKA_BOOTSTRAP_SERVERS = "KAFKA_BOOTSTRAP_SERVERS",
}

M.SelfManagedEventSource = {
    type = "structure",
    id = "SelfManagedEventSource",
    members = {
        Endpoints = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.SelfManagedKafkaEventSourceConfig = {
    type = "structure",
    id = "SelfManagedKafkaEventSourceConfig",
    members = {
        ConsumerGroupId = {
            type = "string",
        },
        SchemaRegistryConfig = M.KafkaSchemaRegistryConfig,
    },
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

M.SourceAccessConfiguration = {
    type = "structure",
    id = "SourceAccessConfiguration",
    members = {
        Type = {
            type = "string",
        },
        URI = {
            type = "string",
        },
    },
}

M.EventSourcePosition = {
    TRIM_HORIZON = "TRIM_HORIZON",
    LATEST = "LATEST",
    AT_TIMESTAMP = "AT_TIMESTAMP",
}

M.CreateEventSourceMappingInput = {
    type = "structure",
    id = "CreateEventSourceMappingInput",
    members = {
        EventSourceArn = {
            type = "string",
        },
        FunctionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
        },
        BatchSize = {
            type = "integer",
        },
        FilterCriteria = M.FilterCriteria,
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        ParallelizationFactor = {
            type = "integer",
        },
        StartingPosition = {
            type = "string",
        },
        StartingPositionTimestamp = {
            type = "timestamp",
        },
        DestinationConfig = M.DestinationConfig,
        MaximumRecordAgeInSeconds = {
            type = "integer",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TumblingWindowInSeconds = {
            type = "integer",
        },
        Topics = {
            type = "list",
            member = { type = "string" },
        },
        Queues = {
            type = "list",
            member = { type = "string" },
        },
        SourceAccessConfigurations = {
            type = "list",
            member = M.SourceAccessConfiguration,
        },
        SelfManagedEventSource = M.SelfManagedEventSource,
        FunctionResponseTypes = {
            type = "list",
            member = { type = "string" },
        },
        AmazonManagedKafkaEventSourceConfig = M.AmazonManagedKafkaEventSourceConfig,
        SelfManagedKafkaEventSourceConfig = M.SelfManagedKafkaEventSourceConfig,
        ScalingConfig = M.ScalingConfig,
        DocumentDBEventSourceConfig = M.DocumentDBEventSourceConfig,
        KMSKeyArn = {
            type = "string",
        },
        MetricsConfig = M.EventSourceMappingMetricsConfig,
        LoggingConfig = M.EventSourceMappingLoggingConfig,
        ProvisionedPollerConfig = M.ProvisionedPollerConfig,
    },
}

M.FilterCriteriaError = {
    type = "structure",
    id = "FilterCriteriaError",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.CreateEventSourceMappingOutput = {
    type = "structure",
    id = "CreateEventSourceMappingOutput",
    members = {
        UUID = {
            type = "string",
        },
        StartingPosition = {
            type = "string",
        },
        StartingPositionTimestamp = {
            type = "timestamp",
        },
        BatchSize = {
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        ParallelizationFactor = {
            type = "integer",
        },
        EventSourceArn = {
            type = "string",
        },
        FilterCriteria = M.FilterCriteria,
        FunctionArn = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
        },
        LastProcessingResult = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateTransitionReason = {
            type = "string",
        },
        DestinationConfig = M.DestinationConfig,
        Topics = {
            type = "list",
            member = { type = "string" },
        },
        Queues = {
            type = "list",
            member = { type = "string" },
        },
        SourceAccessConfigurations = {
            type = "list",
            member = M.SourceAccessConfiguration,
        },
        SelfManagedEventSource = M.SelfManagedEventSource,
        MaximumRecordAgeInSeconds = {
            type = "integer",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        TumblingWindowInSeconds = {
            type = "integer",
        },
        FunctionResponseTypes = {
            type = "list",
            member = { type = "string" },
        },
        AmazonManagedKafkaEventSourceConfig = M.AmazonManagedKafkaEventSourceConfig,
        SelfManagedKafkaEventSourceConfig = M.SelfManagedKafkaEventSourceConfig,
        ScalingConfig = M.ScalingConfig,
        DocumentDBEventSourceConfig = M.DocumentDBEventSourceConfig,
        KMSKeyArn = {
            type = "string",
        },
        FilterCriteriaError = M.FilterCriteriaError,
        EventSourceMappingArn = {
            type = "string",
        },
        MetricsConfig = M.EventSourceMappingMetricsConfig,
        LoggingConfig = M.EventSourceMappingLoggingConfig,
        ProvisionedPollerConfig = M.ProvisionedPollerConfig,
    },
}

M.DeleteEventSourceMappingInput = {
    type = "structure",
    id = "DeleteEventSourceMappingInput",
    members = {
        UUID = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEventSourceMappingOutput = {
    type = "structure",
    id = "DeleteEventSourceMappingOutput",
    members = {
        UUID = {
            type = "string",
        },
        StartingPosition = {
            type = "string",
        },
        StartingPositionTimestamp = {
            type = "timestamp",
        },
        BatchSize = {
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        ParallelizationFactor = {
            type = "integer",
        },
        EventSourceArn = {
            type = "string",
        },
        FilterCriteria = M.FilterCriteria,
        FunctionArn = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
        },
        LastProcessingResult = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateTransitionReason = {
            type = "string",
        },
        DestinationConfig = M.DestinationConfig,
        Topics = {
            type = "list",
            member = { type = "string" },
        },
        Queues = {
            type = "list",
            member = { type = "string" },
        },
        SourceAccessConfigurations = {
            type = "list",
            member = M.SourceAccessConfiguration,
        },
        SelfManagedEventSource = M.SelfManagedEventSource,
        MaximumRecordAgeInSeconds = {
            type = "integer",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        TumblingWindowInSeconds = {
            type = "integer",
        },
        FunctionResponseTypes = {
            type = "list",
            member = { type = "string" },
        },
        AmazonManagedKafkaEventSourceConfig = M.AmazonManagedKafkaEventSourceConfig,
        SelfManagedKafkaEventSourceConfig = M.SelfManagedKafkaEventSourceConfig,
        ScalingConfig = M.ScalingConfig,
        DocumentDBEventSourceConfig = M.DocumentDBEventSourceConfig,
        KMSKeyArn = {
            type = "string",
        },
        FilterCriteriaError = M.FilterCriteriaError,
        EventSourceMappingArn = {
            type = "string",
        },
        MetricsConfig = M.EventSourceMappingMetricsConfig,
        LoggingConfig = M.EventSourceMappingLoggingConfig,
        ProvisionedPollerConfig = M.ProvisionedPollerConfig,
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.GetEventSourceMappingInput = {
    type = "structure",
    id = "GetEventSourceMappingInput",
    members = {
        UUID = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEventSourceMappingOutput = {
    type = "structure",
    id = "GetEventSourceMappingOutput",
    members = {
        UUID = {
            type = "string",
        },
        StartingPosition = {
            type = "string",
        },
        StartingPositionTimestamp = {
            type = "timestamp",
        },
        BatchSize = {
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        ParallelizationFactor = {
            type = "integer",
        },
        EventSourceArn = {
            type = "string",
        },
        FilterCriteria = M.FilterCriteria,
        FunctionArn = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
        },
        LastProcessingResult = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateTransitionReason = {
            type = "string",
        },
        DestinationConfig = M.DestinationConfig,
        Topics = {
            type = "list",
            member = { type = "string" },
        },
        Queues = {
            type = "list",
            member = { type = "string" },
        },
        SourceAccessConfigurations = {
            type = "list",
            member = M.SourceAccessConfiguration,
        },
        SelfManagedEventSource = M.SelfManagedEventSource,
        MaximumRecordAgeInSeconds = {
            type = "integer",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        TumblingWindowInSeconds = {
            type = "integer",
        },
        FunctionResponseTypes = {
            type = "list",
            member = { type = "string" },
        },
        AmazonManagedKafkaEventSourceConfig = M.AmazonManagedKafkaEventSourceConfig,
        SelfManagedKafkaEventSourceConfig = M.SelfManagedKafkaEventSourceConfig,
        ScalingConfig = M.ScalingConfig,
        DocumentDBEventSourceConfig = M.DocumentDBEventSourceConfig,
        KMSKeyArn = {
            type = "string",
        },
        FilterCriteriaError = M.FilterCriteriaError,
        EventSourceMappingArn = {
            type = "string",
        },
        MetricsConfig = M.EventSourceMappingMetricsConfig,
        LoggingConfig = M.EventSourceMappingLoggingConfig,
        ProvisionedPollerConfig = M.ProvisionedPollerConfig,
    },
}

M.ListEventSourceMappingsInput = {
    type = "structure",
    id = "ListEventSourceMappingsInput",
    members = {
        EventSourceArn = {
            type = "string",
            traits = {
                http_query = "EventSourceArn",
            },
        },
        FunctionName = {
            type = "string",
            traits = {
                http_query = "FunctionName",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.EventSourceMappingConfiguration = {
    type = "structure",
    id = "EventSourceMappingConfiguration",
    members = {
        UUID = {
            type = "string",
        },
        StartingPosition = {
            type = "string",
        },
        StartingPositionTimestamp = {
            type = "timestamp",
        },
        BatchSize = {
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        ParallelizationFactor = {
            type = "integer",
        },
        EventSourceArn = {
            type = "string",
        },
        FilterCriteria = M.FilterCriteria,
        FunctionArn = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
        },
        LastProcessingResult = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateTransitionReason = {
            type = "string",
        },
        DestinationConfig = M.DestinationConfig,
        Topics = {
            type = "list",
            member = { type = "string" },
        },
        Queues = {
            type = "list",
            member = { type = "string" },
        },
        SourceAccessConfigurations = {
            type = "list",
            member = M.SourceAccessConfiguration,
        },
        SelfManagedEventSource = M.SelfManagedEventSource,
        MaximumRecordAgeInSeconds = {
            type = "integer",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        TumblingWindowInSeconds = {
            type = "integer",
        },
        FunctionResponseTypes = {
            type = "list",
            member = { type = "string" },
        },
        AmazonManagedKafkaEventSourceConfig = M.AmazonManagedKafkaEventSourceConfig,
        SelfManagedKafkaEventSourceConfig = M.SelfManagedKafkaEventSourceConfig,
        ScalingConfig = M.ScalingConfig,
        DocumentDBEventSourceConfig = M.DocumentDBEventSourceConfig,
        KMSKeyArn = {
            type = "string",
        },
        FilterCriteriaError = M.FilterCriteriaError,
        EventSourceMappingArn = {
            type = "string",
        },
        MetricsConfig = M.EventSourceMappingMetricsConfig,
        LoggingConfig = M.EventSourceMappingLoggingConfig,
        ProvisionedPollerConfig = M.ProvisionedPollerConfig,
    },
}

M.ListEventSourceMappingsOutput = {
    type = "structure",
    id = "ListEventSourceMappingsOutput",
    members = {
        NextMarker = {
            type = "string",
        },
        EventSourceMappings = {
            type = "list",
            member = M.EventSourceMappingConfiguration,
        },
    },
}

M.UpdateEventSourceMappingInput = {
    type = "structure",
    id = "UpdateEventSourceMappingInput",
    members = {
        UUID = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FunctionName = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        BatchSize = {
            type = "integer",
        },
        FilterCriteria = M.FilterCriteria,
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        DestinationConfig = M.DestinationConfig,
        MaximumRecordAgeInSeconds = {
            type = "integer",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        ParallelizationFactor = {
            type = "integer",
        },
        SourceAccessConfigurations = {
            type = "list",
            member = M.SourceAccessConfiguration,
        },
        TumblingWindowInSeconds = {
            type = "integer",
        },
        FunctionResponseTypes = {
            type = "list",
            member = { type = "string" },
        },
        ScalingConfig = M.ScalingConfig,
        AmazonManagedKafkaEventSourceConfig = M.AmazonManagedKafkaEventSourceConfig,
        SelfManagedKafkaEventSourceConfig = M.SelfManagedKafkaEventSourceConfig,
        DocumentDBEventSourceConfig = M.DocumentDBEventSourceConfig,
        KMSKeyArn = {
            type = "string",
        },
        MetricsConfig = M.EventSourceMappingMetricsConfig,
        LoggingConfig = M.EventSourceMappingLoggingConfig,
        ProvisionedPollerConfig = M.ProvisionedPollerConfig,
    },
}

M.UpdateEventSourceMappingOutput = {
    type = "structure",
    id = "UpdateEventSourceMappingOutput",
    members = {
        UUID = {
            type = "string",
        },
        StartingPosition = {
            type = "string",
        },
        StartingPositionTimestamp = {
            type = "timestamp",
        },
        BatchSize = {
            type = "integer",
        },
        MaximumBatchingWindowInSeconds = {
            type = "integer",
        },
        ParallelizationFactor = {
            type = "integer",
        },
        EventSourceArn = {
            type = "string",
        },
        FilterCriteria = M.FilterCriteria,
        FunctionArn = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
        },
        LastProcessingResult = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateTransitionReason = {
            type = "string",
        },
        DestinationConfig = M.DestinationConfig,
        Topics = {
            type = "list",
            member = { type = "string" },
        },
        Queues = {
            type = "list",
            member = { type = "string" },
        },
        SourceAccessConfigurations = {
            type = "list",
            member = M.SourceAccessConfiguration,
        },
        SelfManagedEventSource = M.SelfManagedEventSource,
        MaximumRecordAgeInSeconds = {
            type = "integer",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        TumblingWindowInSeconds = {
            type = "integer",
        },
        FunctionResponseTypes = {
            type = "list",
            member = { type = "string" },
        },
        AmazonManagedKafkaEventSourceConfig = M.AmazonManagedKafkaEventSourceConfig,
        SelfManagedKafkaEventSourceConfig = M.SelfManagedKafkaEventSourceConfig,
        ScalingConfig = M.ScalingConfig,
        DocumentDBEventSourceConfig = M.DocumentDBEventSourceConfig,
        KMSKeyArn = {
            type = "string",
        },
        FilterCriteriaError = M.FilterCriteriaError,
        EventSourceMappingArn = {
            type = "string",
        },
        MetricsConfig = M.EventSourceMappingMetricsConfig,
        LoggingConfig = M.EventSourceMappingLoggingConfig,
        ProvisionedPollerConfig = M.ProvisionedPollerConfig,
    },
}

M.CodeSigningConfigNotFoundException = {
    type = "structure",
    id = "CodeSigningConfigNotFoundException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.CodeStorageExceededException = {
    type = "structure",
    id = "CodeStorageExceededException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.CodeVerificationFailedException = {
    type = "structure",
    id = "CodeVerificationFailedException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.LambdaManagedInstancesCapacityProviderConfig = {
    type = "structure",
    id = "LambdaManagedInstancesCapacityProviderConfig",
    members = {
        CapacityProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PerExecutionEnvironmentMaxConcurrency = {
            type = "integer",
        },
        ExecutionEnvironmentMemoryGiBPerVCpu = {
            type = "double",
        },
    },
}

M.CapacityProviderConfig = {
    type = "structure",
    id = "CapacityProviderConfig",
    members = {
        LambdaManagedInstancesCapacityProviderConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LambdaManagedInstancesCapacityProviderConfig }),
    },
}

M.FunctionCode = {
    type = "structure",
    id = "FunctionCode",
    members = {
        ZipFile = {
            type = "blob",
        },
        S3Bucket = {
            type = "string",
        },
        S3Key = {
            type = "string",
        },
        S3ObjectVersion = {
            type = "string",
        },
        ImageUri = {
            type = "string",
        },
        SourceKMSKeyArn = {
            type = "string",
        },
    },
}

M.DeadLetterConfig = {
    type = "structure",
    id = "DeadLetterConfig",
    members = {
        TargetArn = {
            type = "string",
        },
    },
}

M.DurableConfig = {
    type = "structure",
    id = "DurableConfig",
    members = {
        RetentionPeriodInDays = {
            type = "integer",
        },
        ExecutionTimeout = {
            type = "integer",
        },
    },
}

M.Environment = {
    type = "structure",
    id = "Environment",
    members = {
        Variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.EphemeralStorage = {
    type = "structure",
    id = "EphemeralStorage",
    members = {
        Size = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.FileSystemConfig = {
    type = "structure",
    id = "FileSystemConfig",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LocalMountPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageConfig = {
    type = "structure",
    id = "ImageConfig",
    members = {
        EntryPoint = {
            type = "list",
            member = { type = "string" },
        },
        Command = {
            type = "list",
            member = { type = "string" },
        },
        WorkingDirectory = {
            type = "string",
        },
    },
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

M.LoggingConfig = {
    type = "structure",
    id = "LoggingConfig",
    members = {
        LogFormat = {
            type = "string",
        },
        ApplicationLogLevel = {
            type = "string",
        },
        SystemLogLevel = {
            type = "string",
        },
        LogGroup = {
            type = "string",
        },
    },
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

M.SnapStart = {
    type = "structure",
    id = "SnapStart",
    members = {
        ApplyOn = {
            type = "string",
        },
    },
}

M.TenantIsolationMode = {
    PER_TENANT = "PER_TENANT",
}

M.TenancyConfig = {
    type = "structure",
    id = "TenancyConfig",
    members = {
        TenantIsolationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TracingMode = {
    Active = "Active",
    PassThrough = "PassThrough",
}

M.TracingConfig = {
    type = "structure",
    id = "TracingConfig",
    members = {
        Mode = {
            type = "string",
        },
    },
}

M.VpcConfig = {
    type = "structure",
    id = "VpcConfig",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Ipv6AllowedForDualStack = {
            type = "boolean",
        },
    },
}

M.CreateFunctionInput = {
    type = "structure",
    id = "CreateFunctionInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Runtime = {
            type = "string",
        },
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Handler = {
            type = "string",
        },
        Code = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FunctionCode }),
        Description = {
            type = "string",
        },
        Timeout = {
            type = "integer",
        },
        MemorySize = {
            type = "integer",
        },
        Publish = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        VpcConfig = M.VpcConfig,
        PackageType = {
            type = "string",
        },
        DeadLetterConfig = M.DeadLetterConfig,
        Environment = M.Environment,
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = M.TracingConfig,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Layers = {
            type = "list",
            member = { type = "string" },
        },
        FileSystemConfigs = {
            type = "list",
            member = M.FileSystemConfig,
        },
        ImageConfig = M.ImageConfig,
        CodeSigningConfigArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member = { type = "string" },
        },
        EphemeralStorage = M.EphemeralStorage,
        SnapStart = M.SnapStart,
        LoggingConfig = M.LoggingConfig,
        CapacityProviderConfig = M.CapacityProviderConfig,
        PublishTo = {
            type = "string",
        },
        DurableConfig = M.DurableConfig,
        TenancyConfig = M.TenancyConfig,
    },
}

M.EnvironmentError = {
    type = "structure",
    id = "EnvironmentError",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.EnvironmentResponse = {
    type = "structure",
    id = "EnvironmentResponse",
    members = {
        Variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Error = M.EnvironmentError,
    },
}

M.ImageConfigError = {
    type = "structure",
    id = "ImageConfigError",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ImageConfigResponse = {
    type = "structure",
    id = "ImageConfigResponse",
    members = {
        ImageConfig = M.ImageConfig,
        Error = M.ImageConfigError,
    },
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

M.Layer = {
    type = "structure",
    id = "Layer",
    members = {
        Arn = {
            type = "string",
        },
        CodeSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
    },
}

M.RuntimeVersionError = {
    type = "structure",
    id = "RuntimeVersionError",
    members = {
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.RuntimeVersionConfig = {
    type = "structure",
    id = "RuntimeVersionConfig",
    members = {
        RuntimeVersionArn = {
            type = "string",
        },
        Error = M.RuntimeVersionError,
    },
}

M.SnapStartOptimizationStatus = {
    On = "On",
    Off = "Off",
}

M.SnapStartResponse = {
    type = "structure",
    id = "SnapStartResponse",
    members = {
        ApplyOn = {
            type = "string",
        },
        OptimizationStatus = {
            type = "string",
        },
    },
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

M.TracingConfigResponse = {
    type = "structure",
    id = "TracingConfigResponse",
    members = {
        Mode = {
            type = "string",
        },
    },
}

M.VpcConfigResponse = {
    type = "structure",
    id = "VpcConfigResponse",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        VpcId = {
            type = "string",
        },
        Ipv6AllowedForDualStack = {
            type = "boolean",
        },
    },
}

M.CreateFunctionOutput = {
    type = "structure",
    id = "CreateFunctionOutput",
    members = {
        FunctionName = {
            type = "string",
        },
        FunctionArn = {
            type = "string",
        },
        Runtime = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Handler = {
            type = "string",
        },
        CodeSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "integer",
        },
        MemorySize = {
            type = "integer",
        },
        LastModified = {
            type = "string",
        },
        CodeSha256 = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        VpcConfig = M.VpcConfigResponse,
        DeadLetterConfig = M.DeadLetterConfig,
        Environment = M.EnvironmentResponse,
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = M.TracingConfigResponse,
        MasterArn = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member = M.Layer,
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        StateReasonCode = {
            type = "string",
        },
        LastUpdateStatus = {
            type = "string",
        },
        LastUpdateStatusReason = {
            type = "string",
        },
        LastUpdateStatusReasonCode = {
            type = "string",
        },
        FileSystemConfigs = {
            type = "list",
            member = M.FileSystemConfig,
        },
        PackageType = {
            type = "string",
        },
        ImageConfigResponse = M.ImageConfigResponse,
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member = { type = "string" },
        },
        EphemeralStorage = M.EphemeralStorage,
        SnapStart = M.SnapStartResponse,
        RuntimeVersionConfig = M.RuntimeVersionConfig,
        LoggingConfig = M.LoggingConfig,
        CapacityProviderConfig = M.CapacityProviderConfig,
        ConfigSha256 = {
            type = "string",
        },
        DurableConfig = M.DurableConfig,
        TenancyConfig = M.TenancyConfig,
    },
}

M.FunctionVersionsPerCapacityProviderLimitExceededException = {
    type = "structure",
    id = "FunctionVersionsPerCapacityProviderLimitExceededException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.InvalidCodeSignatureException = {
    type = "structure",
    id = "InvalidCodeSignatureException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.Cors = {
    type = "structure",
    id = "Cors",
    members = {
        AllowCredentials = {
            type = "boolean",
        },
        AllowHeaders = {
            type = "list",
            member = { type = "string" },
        },
        AllowMethods = {
            type = "list",
            member = { type = "string" },
        },
        AllowOrigins = {
            type = "list",
            member = { type = "string" },
        },
        ExposeHeaders = {
            type = "list",
            member = { type = "string" },
        },
        MaxAge = {
            type = "integer",
        },
    },
}

M.InvokeMode = {
    BUFFERED = "BUFFERED",
    RESPONSE_STREAM = "RESPONSE_STREAM",
}

M.CreateFunctionUrlConfigInput = {
    type = "structure",
    id = "CreateFunctionUrlConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
        AuthType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Cors = M.Cors,
        InvokeMode = {
            type = "string",
        },
    },
}

M.CreateFunctionUrlConfigOutput = {
    type = "structure",
    id = "CreateFunctionUrlConfigOutput",
    members = {
        FunctionUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Cors = M.Cors,
        CreationTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvokeMode = {
            type = "string",
        },
    },
}

M.DeleteFunctionCodeSigningConfigInput = {
    type = "structure",
    id = "DeleteFunctionCodeSigningConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFunctionCodeSigningConfigOutput = {
    type = "structure",
    id = "DeleteFunctionCodeSigningConfigOutput",
}

M.DeleteFunctionConcurrencyInput = {
    type = "structure",
    id = "DeleteFunctionConcurrencyInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFunctionConcurrencyOutput = {
    type = "structure",
    id = "DeleteFunctionConcurrencyOutput",
}

M.DeleteFunctionUrlConfigInput = {
    type = "structure",
    id = "DeleteFunctionUrlConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
    },
}

M.DeleteFunctionUrlConfigOutput = {
    type = "structure",
    id = "DeleteFunctionUrlConfigOutput",
}

M.GetFunctionInput = {
    type = "structure",
    id = "GetFunctionInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
    },
}

M.FunctionCodeLocation = {
    type = "structure",
    id = "FunctionCodeLocation",
    members = {
        RepositoryType = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        ImageUri = {
            type = "string",
        },
        ResolvedImageUri = {
            type = "string",
        },
        SourceKMSKeyArn = {
            type = "string",
        },
    },
}

M.Concurrency = {
    type = "structure",
    id = "Concurrency",
    members = {
        ReservedConcurrentExecutions = {
            type = "integer",
        },
    },
}

M.FunctionConfiguration = {
    type = "structure",
    id = "FunctionConfiguration",
    members = {
        FunctionName = {
            type = "string",
        },
        FunctionArn = {
            type = "string",
        },
        Runtime = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Handler = {
            type = "string",
        },
        CodeSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "integer",
        },
        MemorySize = {
            type = "integer",
        },
        LastModified = {
            type = "string",
        },
        CodeSha256 = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        VpcConfig = M.VpcConfigResponse,
        DeadLetterConfig = M.DeadLetterConfig,
        Environment = M.EnvironmentResponse,
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = M.TracingConfigResponse,
        MasterArn = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member = M.Layer,
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        StateReasonCode = {
            type = "string",
        },
        LastUpdateStatus = {
            type = "string",
        },
        LastUpdateStatusReason = {
            type = "string",
        },
        LastUpdateStatusReasonCode = {
            type = "string",
        },
        FileSystemConfigs = {
            type = "list",
            member = M.FileSystemConfig,
        },
        PackageType = {
            type = "string",
        },
        ImageConfigResponse = M.ImageConfigResponse,
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member = { type = "string" },
        },
        EphemeralStorage = M.EphemeralStorage,
        SnapStart = M.SnapStartResponse,
        RuntimeVersionConfig = M.RuntimeVersionConfig,
        LoggingConfig = M.LoggingConfig,
        CapacityProviderConfig = M.CapacityProviderConfig,
        ConfigSha256 = {
            type = "string",
        },
        DurableConfig = M.DurableConfig,
        TenancyConfig = M.TenancyConfig,
    },
}

M.TagsError = {
    type = "structure",
    id = "TagsError",
    members = {
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFunctionOutput = {
    type = "structure",
    id = "GetFunctionOutput",
    members = {
        Configuration = M.FunctionConfiguration,
        Code = M.FunctionCodeLocation,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TagsError = M.TagsError,
        Concurrency = M.Concurrency,
    },
}

M.GetFunctionCodeSigningConfigInput = {
    type = "structure",
    id = "GetFunctionCodeSigningConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFunctionCodeSigningConfigOutput = {
    type = "structure",
    id = "GetFunctionCodeSigningConfigOutput",
    members = {
        CodeSigningConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFunctionConcurrencyInput = {
    type = "structure",
    id = "GetFunctionConcurrencyInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFunctionConcurrencyOutput = {
    type = "structure",
    id = "GetFunctionConcurrencyOutput",
    members = {
        ReservedConcurrentExecutions = {
            type = "integer",
        },
    },
}

M.GetFunctionConfigurationInput = {
    type = "structure",
    id = "GetFunctionConfigurationInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
    },
}

M.GetFunctionConfigurationOutput = {
    type = "structure",
    id = "GetFunctionConfigurationOutput",
    members = {
        FunctionName = {
            type = "string",
        },
        FunctionArn = {
            type = "string",
        },
        Runtime = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Handler = {
            type = "string",
        },
        CodeSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "integer",
        },
        MemorySize = {
            type = "integer",
        },
        LastModified = {
            type = "string",
        },
        CodeSha256 = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        VpcConfig = M.VpcConfigResponse,
        DeadLetterConfig = M.DeadLetterConfig,
        Environment = M.EnvironmentResponse,
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = M.TracingConfigResponse,
        MasterArn = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member = M.Layer,
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        StateReasonCode = {
            type = "string",
        },
        LastUpdateStatus = {
            type = "string",
        },
        LastUpdateStatusReason = {
            type = "string",
        },
        LastUpdateStatusReasonCode = {
            type = "string",
        },
        FileSystemConfigs = {
            type = "list",
            member = M.FileSystemConfig,
        },
        PackageType = {
            type = "string",
        },
        ImageConfigResponse = M.ImageConfigResponse,
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member = { type = "string" },
        },
        EphemeralStorage = M.EphemeralStorage,
        SnapStart = M.SnapStartResponse,
        RuntimeVersionConfig = M.RuntimeVersionConfig,
        LoggingConfig = M.LoggingConfig,
        CapacityProviderConfig = M.CapacityProviderConfig,
        ConfigSha256 = {
            type = "string",
        },
        DurableConfig = M.DurableConfig,
        TenancyConfig = M.TenancyConfig,
    },
}

M.GetFunctionRecursionConfigInput = {
    type = "structure",
    id = "GetFunctionRecursionConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RecursiveLoop = {
    Allow = "Allow",
    Terminate = "Terminate",
}

M.GetFunctionRecursionConfigOutput = {
    type = "structure",
    id = "GetFunctionRecursionConfigOutput",
    members = {
        RecursiveLoop = {
            type = "string",
        },
    },
}

M.GetFunctionScalingConfigInput = {
    type = "structure",
    id = "GetFunctionScalingConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
                required = true,
            },
        },
    },
}

M.FunctionScalingConfig = {
    type = "structure",
    id = "FunctionScalingConfig",
    members = {
        MinExecutionEnvironments = {
            type = "integer",
        },
        MaxExecutionEnvironments = {
            type = "integer",
        },
    },
}

M.GetFunctionScalingConfigOutput = {
    type = "structure",
    id = "GetFunctionScalingConfigOutput",
    members = {
        FunctionArn = {
            type = "string",
        },
        AppliedFunctionScalingConfig = M.FunctionScalingConfig,
        RequestedFunctionScalingConfig = M.FunctionScalingConfig,
    },
}

M.GetFunctionUrlConfigInput = {
    type = "structure",
    id = "GetFunctionUrlConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
    },
}

M.GetFunctionUrlConfigOutput = {
    type = "structure",
    id = "GetFunctionUrlConfigOutput",
    members = {
        FunctionUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Cors = M.Cors,
        CreationTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvokeMode = {
            type = "string",
        },
    },
}

M.GetPolicyInput = {
    type = "structure",
    id = "GetPolicyInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
    },
}

M.GetPolicyOutput = {
    type = "structure",
    id = "GetPolicyOutput",
    members = {
        Policy = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
    },
}

M.GetRuntimeManagementConfigInput = {
    type = "structure",
    id = "GetRuntimeManagementConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
    },
}

M.UpdateRuntimeOn = {
    Auto = "Auto",
    Manual = "Manual",
    FunctionUpdate = "FunctionUpdate",
}

M.GetRuntimeManagementConfigOutput = {
    type = "structure",
    id = "GetRuntimeManagementConfigOutput",
    members = {
        UpdateRuntimeOn = {
            type = "string",
        },
        RuntimeVersionArn = {
            type = "string",
        },
        FunctionArn = {
            type = "string",
        },
    },
}

M.DurableExecutionAlreadyStartedException = {
    type = "structure",
    id = "DurableExecutionAlreadyStartedException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.EC2AccessDeniedException = {
    type = "structure",
    id = "EC2AccessDeniedException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.EC2ThrottledException = {
    type = "structure",
    id = "EC2ThrottledException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.EC2UnexpectedException = {
    type = "structure",
    id = "EC2UnexpectedException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        EC2ErrorCode = {
            type = "string",
        },
    },
}

M.EFSIOException = {
    type = "structure",
    id = "EFSIOException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.EFSMountConnectivityException = {
    type = "structure",
    id = "EFSMountConnectivityException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.EFSMountFailureException = {
    type = "structure",
    id = "EFSMountFailureException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.EFSMountTimeoutException = {
    type = "structure",
    id = "EFSMountTimeoutException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ENILimitReachedException = {
    type = "structure",
    id = "ENILimitReachedException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestContentException = {
    type = "structure",
    id = "InvalidRequestContentException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.InvalidRuntimeException = {
    type = "structure",
    id = "InvalidRuntimeException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.InvalidSecurityGroupIDException = {
    type = "structure",
    id = "InvalidSecurityGroupIDException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.InvalidSubnetIDException = {
    type = "structure",
    id = "InvalidSubnetIDException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.InvalidZipFileException = {
    type = "structure",
    id = "InvalidZipFileException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
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

M.InvokeInput = {
    type = "structure",
    id = "InvokeInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InvocationType = {
            type = "string",
            traits = {
                http_header = "X-Amz-Invocation-Type",
            },
        },
        LogType = {
            type = "string",
            traits = {
                http_header = "X-Amz-Log-Type",
            },
        },
        ClientContext = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Context",
            },
        },
        DurableExecutionName = {
            type = "string",
            traits = {
                http_header = "X-Amz-Durable-Execution-Name",
            },
        },
        Payload = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
        TenantId = {
            type = "string",
            traits = {
                http_header = "X-Amz-Tenant-Id",
            },
        },
    },
}

M.InvokeOutput = {
    type = "structure",
    id = "InvokeOutput",
    members = {
        StatusCode = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        FunctionError = {
            type = "string",
            traits = {
                http_header = "X-Amz-Function-Error",
            },
        },
        LogResult = {
            type = "string",
            traits = {
                http_header = "X-Amz-Log-Result",
            },
        },
        Payload = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ExecutedVersion = {
            type = "string",
            traits = {
                http_header = "X-Amz-Executed-Version",
            },
        },
        DurableExecutionArn = {
            type = "string",
            traits = {
                http_header = "X-Amz-Durable-Execution-Arn",
            },
        },
    },
}

M.KMSAccessDeniedException = {
    type = "structure",
    id = "KMSAccessDeniedException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.KMSDisabledException = {
    type = "structure",
    id = "KMSDisabledException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.KMSInvalidStateException = {
    type = "structure",
    id = "KMSInvalidStateException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.KMSNotFoundException = {
    type = "structure",
    id = "KMSNotFoundException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.NoPublishedVersionException = {
    type = "structure",
    id = "NoPublishedVersionException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.RecursiveInvocationException = {
    type = "structure",
    id = "RecursiveInvocationException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.RequestTooLargeException = {
    type = "structure",
    id = "RequestTooLargeException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ResourceNotReadyException = {
    type = "structure",
    id = "ResourceNotReadyException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.S3FilesMountConnectivityException = {
    type = "structure",
    id = "S3FilesMountConnectivityException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.S3FilesMountFailureException = {
    type = "structure",
    id = "S3FilesMountFailureException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.S3FilesMountTimeoutException = {
    type = "structure",
    id = "S3FilesMountTimeoutException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.SerializedRequestEntityTooLargeException = {
    type = "structure",
    id = "SerializedRequestEntityTooLargeException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.SnapStartException = {
    type = "structure",
    id = "SnapStartException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.SnapStartNotReadyException = {
    type = "structure",
    id = "SnapStartNotReadyException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.SnapStartTimeoutException = {
    type = "structure",
    id = "SnapStartTimeoutException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.SubnetIPAddressLimitReachedException = {
    type = "structure",
    id = "SubnetIPAddressLimitReachedException",
    error = "server",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedMediaTypeException = {
    type = "structure",
    id = "UnsupportedMediaTypeException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.InvokeAsyncInput = {
    type = "structure",
    id = "InvokeAsyncInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InvokeArgs = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.InvokeAsyncOutput = {
    type = "structure",
    id = "InvokeAsyncOutput",
    members = {
        Status = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
    },
}

M.ResponseStreamingInvocationType = {
    RequestResponse = "RequestResponse",
    DryRun = "DryRun",
}

M.InvokeWithResponseStreamInput = {
    type = "structure",
    id = "InvokeWithResponseStreamInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InvocationType = {
            type = "string",
            traits = {
                http_header = "X-Amz-Invocation-Type",
            },
        },
        LogType = {
            type = "string",
            traits = {
                http_header = "X-Amz-Log-Type",
            },
        },
        ClientContext = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Context",
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
        Payload = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        TenantId = {
            type = "string",
            traits = {
                http_header = "X-Amz-Tenant-Id",
            },
        },
    },
}

M.InvokeWithResponseStreamCompleteEvent = {
    type = "structure",
    id = "InvokeWithResponseStreamCompleteEvent",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorDetails = {
            type = "string",
        },
        LogResult = {
            type = "string",
        },
    },
}

M.InvokeResponseStreamUpdate = {
    type = "structure",
    id = "InvokeResponseStreamUpdate",
    members = {
        Payload = {
            type = "blob",
        },
    },
}

M.InvokeWithResponseStreamResponseEvent = {
    type = "union",
    id = "InvokeWithResponseStreamResponseEvent",
    members = {
        PayloadChunk = M.InvokeResponseStreamUpdate,
        InvokeComplete = M.InvokeWithResponseStreamCompleteEvent,
    },
}

M.InvokeWithResponseStreamOutput = {
    type = "structure",
    id = "InvokeWithResponseStreamOutput",
    members = {
        StatusCode = {
            type = "integer",
            traits = {
                default = 0,
                http_response_code = true,
            },
        },
        ExecutedVersion = {
            type = "string",
            traits = {
                http_header = "X-Amz-Executed-Version",
            },
        },
        EventStream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.InvokeWithResponseStreamResponseEvent }),
        ResponseStreamContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
    },
}

M.FunctionVersion = {
    ALL = "ALL",
}

M.ListFunctionsInput = {
    type = "structure",
    id = "ListFunctionsInput",
    members = {
        MasterRegion = {
            type = "string",
            traits = {
                http_query = "MasterRegion",
            },
        },
        FunctionVersion = {
            type = "string",
            traits = {
                http_query = "FunctionVersion",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListFunctionsOutput = {
    type = "structure",
    id = "ListFunctionsOutput",
    members = {
        NextMarker = {
            type = "string",
        },
        Functions = {
            type = "list",
            member = M.FunctionConfiguration,
        },
    },
}

M.ListFunctionUrlConfigsInput = {
    type = "structure",
    id = "ListFunctionUrlConfigsInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.FunctionUrlConfig = {
    type = "structure",
    id = "FunctionUrlConfig",
    members = {
        FunctionUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Cors = M.Cors,
        AuthType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvokeMode = {
            type = "string",
        },
    },
}

M.ListFunctionUrlConfigsOutput = {
    type = "structure",
    id = "ListFunctionUrlConfigsOutput",
    members = {
        FunctionUrlConfigs = {
            type = "list",
            member = M.FunctionUrlConfig,
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.ListProvisionedConcurrencyConfigsInput = {
    type = "structure",
    id = "ListProvisionedConcurrencyConfigsInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ProvisionedConcurrencyStatusEnum = {
    IN_PROGRESS = "IN_PROGRESS",
    READY = "READY",
    FAILED = "FAILED",
}

M.ProvisionedConcurrencyConfigListItem = {
    type = "structure",
    id = "ProvisionedConcurrencyConfigListItem",
    members = {
        FunctionArn = {
            type = "string",
        },
        RequestedProvisionedConcurrentExecutions = {
            type = "integer",
        },
        AvailableProvisionedConcurrentExecutions = {
            type = "integer",
        },
        AllocatedProvisionedConcurrentExecutions = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        LastModified = {
            type = "string",
        },
    },
}

M.ListProvisionedConcurrencyConfigsOutput = {
    type = "structure",
    id = "ListProvisionedConcurrencyConfigsOutput",
    members = {
        ProvisionedConcurrencyConfigs = {
            type = "list",
            member = M.ProvisionedConcurrencyConfigListItem,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.PutFunctionCodeSigningConfigInput = {
    type = "structure",
    id = "PutFunctionCodeSigningConfigInput",
    members = {
        CodeSigningConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PutFunctionCodeSigningConfigOutput = {
    type = "structure",
    id = "PutFunctionCodeSigningConfigOutput",
    members = {
        CodeSigningConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutFunctionConcurrencyInput = {
    type = "structure",
    id = "PutFunctionConcurrencyInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReservedConcurrentExecutions = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PutFunctionConcurrencyOutput = {
    type = "structure",
    id = "PutFunctionConcurrencyOutput",
    members = {
        ReservedConcurrentExecutions = {
            type = "integer",
        },
    },
}

M.PutFunctionRecursionConfigInput = {
    type = "structure",
    id = "PutFunctionRecursionConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RecursiveLoop = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutFunctionRecursionConfigOutput = {
    type = "structure",
    id = "PutFunctionRecursionConfigOutput",
    members = {
        RecursiveLoop = {
            type = "string",
        },
    },
}

M.PutFunctionScalingConfigInput = {
    type = "structure",
    id = "PutFunctionScalingConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
                required = true,
            },
        },
        FunctionScalingConfig = M.FunctionScalingConfig,
    },
}

M.PutFunctionScalingConfigOutput = {
    type = "structure",
    id = "PutFunctionScalingConfigOutput",
    members = {
        FunctionState = {
            type = "string",
        },
    },
}

M.PutRuntimeManagementConfigInput = {
    type = "structure",
    id = "PutRuntimeManagementConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
        UpdateRuntimeOn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuntimeVersionArn = {
            type = "string",
        },
    },
}

M.PutRuntimeManagementConfigOutput = {
    type = "structure",
    id = "PutRuntimeManagementConfigOutput",
    members = {
        UpdateRuntimeOn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuntimeVersionArn = {
            type = "string",
        },
    },
}

M.UpdateFunctionCodeInput = {
    type = "structure",
    id = "UpdateFunctionCodeInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ZipFile = {
            type = "blob",
        },
        S3Bucket = {
            type = "string",
        },
        S3Key = {
            type = "string",
        },
        S3ObjectVersion = {
            type = "string",
        },
        ImageUri = {
            type = "string",
        },
        Publish = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RevisionId = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member = { type = "string" },
        },
        SourceKMSKeyArn = {
            type = "string",
        },
        PublishTo = {
            type = "string",
        },
    },
}

M.UpdateFunctionCodeOutput = {
    type = "structure",
    id = "UpdateFunctionCodeOutput",
    members = {
        FunctionName = {
            type = "string",
        },
        FunctionArn = {
            type = "string",
        },
        Runtime = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Handler = {
            type = "string",
        },
        CodeSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "integer",
        },
        MemorySize = {
            type = "integer",
        },
        LastModified = {
            type = "string",
        },
        CodeSha256 = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        VpcConfig = M.VpcConfigResponse,
        DeadLetterConfig = M.DeadLetterConfig,
        Environment = M.EnvironmentResponse,
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = M.TracingConfigResponse,
        MasterArn = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member = M.Layer,
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        StateReasonCode = {
            type = "string",
        },
        LastUpdateStatus = {
            type = "string",
        },
        LastUpdateStatusReason = {
            type = "string",
        },
        LastUpdateStatusReasonCode = {
            type = "string",
        },
        FileSystemConfigs = {
            type = "list",
            member = M.FileSystemConfig,
        },
        PackageType = {
            type = "string",
        },
        ImageConfigResponse = M.ImageConfigResponse,
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member = { type = "string" },
        },
        EphemeralStorage = M.EphemeralStorage,
        SnapStart = M.SnapStartResponse,
        RuntimeVersionConfig = M.RuntimeVersionConfig,
        LoggingConfig = M.LoggingConfig,
        CapacityProviderConfig = M.CapacityProviderConfig,
        ConfigSha256 = {
            type = "string",
        },
        DurableConfig = M.DurableConfig,
        TenancyConfig = M.TenancyConfig,
    },
}

M.UpdateFunctionConfigurationInput = {
    type = "structure",
    id = "UpdateFunctionConfigurationInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Role = {
            type = "string",
        },
        Handler = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "integer",
        },
        MemorySize = {
            type = "integer",
        },
        VpcConfig = M.VpcConfig,
        Environment = M.Environment,
        Runtime = {
            type = "string",
        },
        DeadLetterConfig = M.DeadLetterConfig,
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = M.TracingConfig,
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member = { type = "string" },
        },
        FileSystemConfigs = {
            type = "list",
            member = M.FileSystemConfig,
        },
        ImageConfig = M.ImageConfig,
        EphemeralStorage = M.EphemeralStorage,
        SnapStart = M.SnapStart,
        LoggingConfig = M.LoggingConfig,
        CapacityProviderConfig = M.CapacityProviderConfig,
        DurableConfig = M.DurableConfig,
    },
}

M.UpdateFunctionConfigurationOutput = {
    type = "structure",
    id = "UpdateFunctionConfigurationOutput",
    members = {
        FunctionName = {
            type = "string",
        },
        FunctionArn = {
            type = "string",
        },
        Runtime = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Handler = {
            type = "string",
        },
        CodeSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "integer",
        },
        MemorySize = {
            type = "integer",
        },
        LastModified = {
            type = "string",
        },
        CodeSha256 = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        VpcConfig = M.VpcConfigResponse,
        DeadLetterConfig = M.DeadLetterConfig,
        Environment = M.EnvironmentResponse,
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = M.TracingConfigResponse,
        MasterArn = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member = M.Layer,
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        StateReasonCode = {
            type = "string",
        },
        LastUpdateStatus = {
            type = "string",
        },
        LastUpdateStatusReason = {
            type = "string",
        },
        LastUpdateStatusReasonCode = {
            type = "string",
        },
        FileSystemConfigs = {
            type = "list",
            member = M.FileSystemConfig,
        },
        PackageType = {
            type = "string",
        },
        ImageConfigResponse = M.ImageConfigResponse,
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member = { type = "string" },
        },
        EphemeralStorage = M.EphemeralStorage,
        SnapStart = M.SnapStartResponse,
        RuntimeVersionConfig = M.RuntimeVersionConfig,
        LoggingConfig = M.LoggingConfig,
        CapacityProviderConfig = M.CapacityProviderConfig,
        ConfigSha256 = {
            type = "string",
        },
        DurableConfig = M.DurableConfig,
        TenancyConfig = M.TenancyConfig,
    },
}

M.UpdateFunctionUrlConfigInput = {
    type = "structure",
    id = "UpdateFunctionUrlConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
        AuthType = {
            type = "string",
        },
        Cors = M.Cors,
        InvokeMode = {
            type = "string",
        },
    },
}

M.UpdateFunctionUrlConfigOutput = {
    type = "structure",
    id = "UpdateFunctionUrlConfigOutput",
    members = {
        FunctionUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Cors = M.Cors,
        CreationTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvokeMode = {
            type = "string",
        },
    },
}

M.CreateAliasInput = {
    type = "structure",
    id = "CreateAliasInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RoutingConfig = M.AliasRoutingConfiguration,
    },
}

M.CreateAliasOutput = {
    type = "structure",
    id = "CreateAliasOutput",
    members = {
        AliasArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        FunctionVersion = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoutingConfig = M.AliasRoutingConfiguration,
        RevisionId = {
            type = "string",
        },
    },
}

M.DeleteAliasInput = {
    type = "structure",
    id = "DeleteAliasInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAliasOutput = {
    type = "structure",
    id = "DeleteAliasOutput",
}

M.GetAliasInput = {
    type = "structure",
    id = "GetAliasInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAliasOutput = {
    type = "structure",
    id = "GetAliasOutput",
    members = {
        AliasArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        FunctionVersion = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoutingConfig = M.AliasRoutingConfiguration,
        RevisionId = {
            type = "string",
        },
    },
}

M.ListAliasesInput = {
    type = "structure",
    id = "ListAliasesInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FunctionVersion = {
            type = "string",
            traits = {
                http_query = "FunctionVersion",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListAliasesOutput = {
    type = "structure",
    id = "ListAliasesOutput",
    members = {
        NextMarker = {
            type = "string",
        },
        Aliases = {
            type = "list",
            member = M.AliasConfiguration,
        },
    },
}

M.UpdateAliasInput = {
    type = "structure",
    id = "UpdateAliasInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FunctionVersion = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoutingConfig = M.AliasRoutingConfiguration,
        RevisionId = {
            type = "string",
        },
    },
}

M.UpdateAliasOutput = {
    type = "structure",
    id = "UpdateAliasOutput",
    members = {
        AliasArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        FunctionVersion = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoutingConfig = M.AliasRoutingConfiguration,
        RevisionId = {
            type = "string",
        },
    },
}

M.ListVersionsByFunctionInput = {
    type = "structure",
    id = "ListVersionsByFunctionInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListVersionsByFunctionOutput = {
    type = "structure",
    id = "ListVersionsByFunctionOutput",
    members = {
        NextMarker = {
            type = "string",
        },
        Versions = {
            type = "list",
            member = M.FunctionConfiguration,
        },
    },
}

M.PublishVersionInput = {
    type = "structure",
    id = "PublishVersionInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CodeSha256 = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        PublishTo = {
            type = "string",
        },
    },
}

M.PublishVersionOutput = {
    type = "structure",
    id = "PublishVersionOutput",
    members = {
        FunctionName = {
            type = "string",
        },
        FunctionArn = {
            type = "string",
        },
        Runtime = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        Handler = {
            type = "string",
        },
        CodeSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "integer",
        },
        MemorySize = {
            type = "integer",
        },
        LastModified = {
            type = "string",
        },
        CodeSha256 = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        VpcConfig = M.VpcConfigResponse,
        DeadLetterConfig = M.DeadLetterConfig,
        Environment = M.EnvironmentResponse,
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = M.TracingConfigResponse,
        MasterArn = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member = M.Layer,
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        StateReasonCode = {
            type = "string",
        },
        LastUpdateStatus = {
            type = "string",
        },
        LastUpdateStatusReason = {
            type = "string",
        },
        LastUpdateStatusReasonCode = {
            type = "string",
        },
        FileSystemConfigs = {
            type = "list",
            member = M.FileSystemConfig,
        },
        PackageType = {
            type = "string",
        },
        ImageConfigResponse = M.ImageConfigResponse,
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member = { type = "string" },
        },
        EphemeralStorage = M.EphemeralStorage,
        SnapStart = M.SnapStartResponse,
        RuntimeVersionConfig = M.RuntimeVersionConfig,
        LoggingConfig = M.LoggingConfig,
        CapacityProviderConfig = M.CapacityProviderConfig,
        ConfigSha256 = {
            type = "string",
        },
        DurableConfig = M.DurableConfig,
        TenancyConfig = M.TenancyConfig,
    },
}

M.GetAccountSettingsInput = {
    type = "structure",
    id = "GetAccountSettingsInput",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    id = "GetAccountSettingsOutput",
    members = {
        AccountLimit = M.AccountLimit,
        AccountUsage = M.AccountUsage,
    },
}

M.GetDurableExecutionInput = {
    type = "structure",
    id = "GetDurableExecutionInput",
    members = {
        DurableExecutionArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ExecutionStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    STOPPED = "STOPPED",
}

M.TraceHeader = {
    type = "structure",
    id = "TraceHeader",
    members = {
        XAmznTraceId = {
            type = "string",
        },
    },
}

M.GetDurableExecutionOutput = {
    type = "structure",
    id = "GetDurableExecutionOutput",
    members = {
        DurableExecutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DurableExecutionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputPayload = {
            type = "string",
        },
        Result = {
            type = "string",
        },
        Error = M.ErrorObject,
        StartTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndTimestamp = {
            type = "timestamp",
        },
        Version = {
            type = "string",
        },
        TraceHeader = M.TraceHeader,
    },
}

M.GetDurableExecutionHistoryInput = {
    type = "structure",
    id = "GetDurableExecutionHistoryInput",
    members = {
        DurableExecutionArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IncludeExecutionData = {
            type = "boolean",
            traits = {
                http_query = "IncludeExecutionData",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "MaxItems",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        ReverseOrder = {
            type = "boolean",
            traits = {
                http_query = "ReverseOrder",
            },
        },
    },
}

M.EventError = {
    type = "structure",
    id = "EventError",
    members = {
        Payload = M.ErrorObject,
        Truncated = {
            type = "boolean",
        },
    },
}

M.CallbackFailedDetails = {
    type = "structure",
    id = "CallbackFailedDetails",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.CallbackStartedDetails = {
    type = "structure",
    id = "CallbackStartedDetails",
    members = {
        CallbackId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HeartbeatTimeout = {
            type = "integer",
        },
        Timeout = {
            type = "integer",
        },
    },
}

M.EventResult = {
    type = "structure",
    id = "EventResult",
    members = {
        Payload = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
        },
    },
}

M.CallbackSucceededDetails = {
    type = "structure",
    id = "CallbackSucceededDetails",
    members = {
        Result = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventResult }),
    },
}

M.CallbackTimedOutDetails = {
    type = "structure",
    id = "CallbackTimedOutDetails",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.ChainedInvokeFailedDetails = {
    type = "structure",
    id = "ChainedInvokeFailedDetails",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.EventInput = {
    type = "structure",
    id = "EventInput",
    members = {
        Payload = {
            type = "string",
        },
        Truncated = {
            type = "boolean",
        },
    },
}

M.ChainedInvokeStartedDetails = {
    type = "structure",
    id = "ChainedInvokeStartedDetails",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TenantId = {
            type = "string",
        },
        Input = M.EventInput,
        ExecutedVersion = {
            type = "string",
        },
        DurableExecutionArn = {
            type = "string",
        },
    },
}

M.ChainedInvokeStoppedDetails = {
    type = "structure",
    id = "ChainedInvokeStoppedDetails",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.ChainedInvokeSucceededDetails = {
    type = "structure",
    id = "ChainedInvokeSucceededDetails",
    members = {
        Result = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventResult }),
    },
}

M.ChainedInvokeTimedOutDetails = {
    type = "structure",
    id = "ChainedInvokeTimedOutDetails",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.ContextFailedDetails = {
    type = "structure",
    id = "ContextFailedDetails",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.ContextStartedDetails = {
    type = "structure",
    id = "ContextStartedDetails",
}

M.ContextSucceededDetails = {
    type = "structure",
    id = "ContextSucceededDetails",
    members = {
        Result = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventResult }),
    },
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

M.ExecutionFailedDetails = {
    type = "structure",
    id = "ExecutionFailedDetails",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.ExecutionStartedDetails = {
    type = "structure",
    id = "ExecutionStartedDetails",
    members = {
        Input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventInput }),
        ExecutionTimeout = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionStoppedDetails = {
    type = "structure",
    id = "ExecutionStoppedDetails",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.ExecutionSucceededDetails = {
    type = "structure",
    id = "ExecutionSucceededDetails",
    members = {
        Result = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventResult }),
    },
}

M.ExecutionTimedOutDetails = {
    type = "structure",
    id = "ExecutionTimedOutDetails",
    members = {
        Error = M.EventError,
    },
}

M.InvocationCompletedDetails = {
    type = "structure",
    id = "InvocationCompletedDetails",
    members = {
        StartTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Error = M.EventError,
    },
}

M.RetryDetails = {
    type = "structure",
    id = "RetryDetails",
    members = {
        CurrentAttempt = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextAttemptDelaySeconds = {
            type = "integer",
        },
    },
}

M.StepFailedDetails = {
    type = "structure",
    id = "StepFailedDetails",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
        RetryDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetryDetails }),
    },
}

M.StepStartedDetails = {
    type = "structure",
    id = "StepStartedDetails",
}

M.StepSucceededDetails = {
    type = "structure",
    id = "StepSucceededDetails",
    members = {
        Result = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventResult }),
        RetryDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetryDetails }),
    },
}

M.WaitCancelledDetails = {
    type = "structure",
    id = "WaitCancelledDetails",
    members = {
        Error = M.EventError,
    },
}

M.WaitStartedDetails = {
    type = "structure",
    id = "WaitStartedDetails",
    members = {
        Duration = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ScheduledEndTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.WaitSucceededDetails = {
    type = "structure",
    id = "WaitSucceededDetails",
    members = {
        Duration = {
            type = "integer",
        },
    },
}

M.Event = {
    type = "structure",
    id = "Event",
    members = {
        EventType = {
            type = "string",
        },
        SubType = {
            type = "string",
        },
        EventId = {
            type = "integer",
            traits = {
                default = 1,
            },
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        EventTimestamp = {
            type = "timestamp",
        },
        ParentId = {
            type = "string",
        },
        ExecutionStartedDetails = M.ExecutionStartedDetails,
        ExecutionSucceededDetails = M.ExecutionSucceededDetails,
        ExecutionFailedDetails = M.ExecutionFailedDetails,
        ExecutionTimedOutDetails = M.ExecutionTimedOutDetails,
        ExecutionStoppedDetails = M.ExecutionStoppedDetails,
        ContextStartedDetails = M.ContextStartedDetails,
        ContextSucceededDetails = M.ContextSucceededDetails,
        ContextFailedDetails = M.ContextFailedDetails,
        WaitStartedDetails = M.WaitStartedDetails,
        WaitSucceededDetails = M.WaitSucceededDetails,
        WaitCancelledDetails = M.WaitCancelledDetails,
        StepStartedDetails = M.StepStartedDetails,
        StepSucceededDetails = M.StepSucceededDetails,
        StepFailedDetails = M.StepFailedDetails,
        ChainedInvokeStartedDetails = M.ChainedInvokeStartedDetails,
        ChainedInvokeSucceededDetails = M.ChainedInvokeSucceededDetails,
        ChainedInvokeFailedDetails = M.ChainedInvokeFailedDetails,
        ChainedInvokeTimedOutDetails = M.ChainedInvokeTimedOutDetails,
        ChainedInvokeStoppedDetails = M.ChainedInvokeStoppedDetails,
        CallbackStartedDetails = M.CallbackStartedDetails,
        CallbackSucceededDetails = M.CallbackSucceededDetails,
        CallbackFailedDetails = M.CallbackFailedDetails,
        CallbackTimedOutDetails = M.CallbackTimedOutDetails,
        InvocationCompletedDetails = M.InvocationCompletedDetails,
    },
}

M.GetDurableExecutionHistoryOutput = {
    type = "structure",
    id = "GetDurableExecutionHistoryOutput",
    members = {
        Events = {
            type = "list",
            member = M.Event,
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.GetDurableExecutionStateInput = {
    type = "structure",
    id = "GetDurableExecutionStateInput",
    members = {
        DurableExecutionArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CheckpointToken = {
            type = "string",
            traits = {
                http_query = "CheckpointToken",
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "MaxItems",
            },
        },
    },
}

M.GetDurableExecutionStateOutput = {
    type = "structure",
    id = "GetDurableExecutionStateOutput",
    members = {
        Operations = {
            type = "list",
            member = M.Operation,
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.GetFunctionEventInvokeConfigInput = {
    type = "structure",
    id = "GetFunctionEventInvokeConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
    },
}

M.GetFunctionEventInvokeConfigOutput = {
    type = "structure",
    id = "GetFunctionEventInvokeConfigOutput",
    members = {
        LastModified = {
            type = "timestamp",
        },
        FunctionArn = {
            type = "string",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        MaximumEventAgeInSeconds = {
            type = "integer",
        },
        DestinationConfig = M.DestinationConfig,
    },
}

M.ListLayersInput = {
    type = "structure",
    id = "ListLayersInput",
    members = {
        CompatibleRuntime = {
            type = "string",
            traits = {
                http_query = "CompatibleRuntime",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        CompatibleArchitecture = {
            type = "string",
            traits = {
                http_query = "CompatibleArchitecture",
            },
        },
    },
}

M.LayerVersionsListItem = {
    type = "structure",
    id = "LayerVersionsListItem",
    members = {
        LayerVersionArn = {
            type = "string",
        },
        Version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Description = {
            type = "string",
        },
        CreatedDate = {
            type = "string",
        },
        CompatibleRuntimes = {
            type = "list",
            member = { type = "string" },
        },
        LicenseInfo = {
            type = "string",
        },
        CompatibleArchitectures = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LayersListItem = {
    type = "structure",
    id = "LayersListItem",
    members = {
        LayerName = {
            type = "string",
        },
        LayerArn = {
            type = "string",
        },
        LatestMatchingVersion = M.LayerVersionsListItem,
    },
}

M.ListLayersOutput = {
    type = "structure",
    id = "ListLayersOutput",
    members = {
        NextMarker = {
            type = "string",
        },
        Layers = {
            type = "list",
            member = M.LayersListItem,
        },
    },
}

M.DeleteLayerVersionInput = {
    type = "structure",
    id = "DeleteLayerVersionInput",
    members = {
        LayerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                default = nil,
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteLayerVersionOutput = {
    type = "structure",
    id = "DeleteLayerVersionOutput",
}

M.GetLayerVersionInput = {
    type = "structure",
    id = "GetLayerVersionInput",
    members = {
        LayerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                default = nil,
                http_label = true,
                required = true,
            },
        },
    },
}

M.LayerVersionContentOutput = {
    type = "structure",
    id = "LayerVersionContentOutput",
    members = {
        Location = {
            type = "string",
        },
        CodeSha256 = {
            type = "string",
        },
        CodeSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
    },
}

M.GetLayerVersionOutput = {
    type = "structure",
    id = "GetLayerVersionOutput",
    members = {
        Content = M.LayerVersionContentOutput,
        LayerArn = {
            type = "string",
        },
        LayerVersionArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedDate = {
            type = "string",
        },
        Version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CompatibleRuntimes = {
            type = "list",
            member = { type = "string" },
        },
        LicenseInfo = {
            type = "string",
        },
        CompatibleArchitectures = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetLayerVersionByArnInput = {
    type = "structure",
    id = "GetLayerVersionByArnInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                http_query = "Arn",
                required = true,
            },
        },
    },
}

M.GetLayerVersionByArnOutput = {
    type = "structure",
    id = "GetLayerVersionByArnOutput",
    members = {
        Content = M.LayerVersionContentOutput,
        LayerArn = {
            type = "string",
        },
        LayerVersionArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedDate = {
            type = "string",
        },
        Version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CompatibleRuntimes = {
            type = "list",
            member = { type = "string" },
        },
        LicenseInfo = {
            type = "string",
        },
        CompatibleArchitectures = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetLayerVersionPolicyInput = {
    type = "structure",
    id = "GetLayerVersionPolicyInput",
    members = {
        LayerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                default = nil,
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetLayerVersionPolicyOutput = {
    type = "structure",
    id = "GetLayerVersionPolicyOutput",
    members = {
        Policy = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
    },
}

M.ListLayerVersionsInput = {
    type = "structure",
    id = "ListLayerVersionsInput",
    members = {
        CompatibleRuntime = {
            type = "string",
            traits = {
                http_query = "CompatibleRuntime",
            },
        },
        LayerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        CompatibleArchitecture = {
            type = "string",
            traits = {
                http_query = "CompatibleArchitecture",
            },
        },
    },
}

M.ListLayerVersionsOutput = {
    type = "structure",
    id = "ListLayerVersionsOutput",
    members = {
        NextMarker = {
            type = "string",
        },
        LayerVersions = {
            type = "list",
            member = M.LayerVersionsListItem,
        },
    },
}

M.LayerVersionContentInput = {
    type = "structure",
    id = "LayerVersionContentInput",
    members = {
        S3Bucket = {
            type = "string",
        },
        S3Key = {
            type = "string",
        },
        S3ObjectVersion = {
            type = "string",
        },
        ZipFile = {
            type = "blob",
        },
    },
}

M.PublishLayerVersionInput = {
    type = "structure",
    id = "PublishLayerVersionInput",
    members = {
        LayerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LayerVersionContentInput }),
        CompatibleRuntimes = {
            type = "list",
            member = { type = "string" },
        },
        LicenseInfo = {
            type = "string",
        },
        CompatibleArchitectures = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PublishLayerVersionOutput = {
    type = "structure",
    id = "PublishLayerVersionOutput",
    members = {
        Content = M.LayerVersionContentOutput,
        LayerArn = {
            type = "string",
        },
        LayerVersionArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedDate = {
            type = "string",
        },
        Version = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CompatibleRuntimes = {
            type = "list",
            member = { type = "string" },
        },
        LicenseInfo = {
            type = "string",
        },
        CompatibleArchitectures = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemoveLayerVersionPermissionInput = {
    type = "structure",
    id = "RemoveLayerVersionPermissionInput",
    members = {
        LayerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
            traits = {
                default = nil,
                http_label = true,
                required = true,
            },
        },
        StatementId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                http_query = "RevisionId",
            },
        },
    },
}

M.RemoveLayerVersionPermissionOutput = {
    type = "structure",
    id = "RemoveLayerVersionPermissionOutput",
}

M.ListDurableExecutionsByFunctionInput = {
    type = "structure",
    id = "ListDurableExecutionsByFunctionInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
        DurableExecutionName = {
            type = "string",
            traits = {
                http_query = "DurableExecutionName",
            },
        },
        Statuses = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "Statuses",
            },
        },
        StartedAfter = {
            type = "timestamp",
            traits = {
                http_query = "StartedAfter",
            },
        },
        StartedBefore = {
            type = "timestamp",
            traits = {
                http_query = "StartedBefore",
            },
        },
        ReverseOrder = {
            type = "boolean",
            traits = {
                http_query = "ReverseOrder",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "MaxItems",
            },
        },
    },
}

M.Execution = {
    type = "structure",
    id = "Execution",
    members = {
        DurableExecutionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DurableExecutionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListDurableExecutionsByFunctionOutput = {
    type = "structure",
    id = "ListDurableExecutionsByFunctionOutput",
    members = {
        DurableExecutions = {
            type = "list",
            member = M.Execution,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.ListFunctionEventInvokeConfigsInput = {
    type = "structure",
    id = "ListFunctionEventInvokeConfigsInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.FunctionEventInvokeConfig = {
    type = "structure",
    id = "FunctionEventInvokeConfig",
    members = {
        LastModified = {
            type = "timestamp",
        },
        FunctionArn = {
            type = "string",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        MaximumEventAgeInSeconds = {
            type = "integer",
        },
        DestinationConfig = M.DestinationConfig,
    },
}

M.ListFunctionEventInvokeConfigsOutput = {
    type = "structure",
    id = "ListFunctionEventInvokeConfigsOutput",
    members = {
        FunctionEventInvokeConfigs = {
            type = "list",
            member = M.FunctionEventInvokeConfig,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.ListTagsInput = {
    type = "structure",
    id = "ListTagsInput",
    members = {
        Resource = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsOutput = {
    type = "structure",
    id = "ListTagsOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RemovePermissionInput = {
    type = "structure",
    id = "RemovePermissionInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StatementId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
        RevisionId = {
            type = "string",
            traits = {
                http_query = "RevisionId",
            },
        },
    },
}

M.RemovePermissionOutput = {
    type = "structure",
    id = "RemovePermissionOutput",
}

M.DeleteProvisionedConcurrencyConfigInput = {
    type = "structure",
    id = "DeleteProvisionedConcurrencyConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
                required = true,
            },
        },
    },
}

M.DeleteProvisionedConcurrencyConfigOutput = {
    type = "structure",
    id = "DeleteProvisionedConcurrencyConfigOutput",
}

M.GetProvisionedConcurrencyConfigInput = {
    type = "structure",
    id = "GetProvisionedConcurrencyConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
                required = true,
            },
        },
    },
}

M.GetProvisionedConcurrencyConfigOutput = {
    type = "structure",
    id = "GetProvisionedConcurrencyConfigOutput",
    members = {
        RequestedProvisionedConcurrentExecutions = {
            type = "integer",
        },
        AvailableProvisionedConcurrentExecutions = {
            type = "integer",
        },
        AllocatedProvisionedConcurrentExecutions = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        LastModified = {
            type = "string",
        },
    },
}

M.ProvisionedConcurrencyConfigNotFoundException = {
    type = "structure",
    id = "ProvisionedConcurrencyConfigNotFoundException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.PutProvisionedConcurrencyConfigInput = {
    type = "structure",
    id = "PutProvisionedConcurrencyConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
                required = true,
            },
        },
        ProvisionedConcurrentExecutions = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PutProvisionedConcurrencyConfigOutput = {
    type = "structure",
    id = "PutProvisionedConcurrencyConfigOutput",
    members = {
        RequestedProvisionedConcurrentExecutions = {
            type = "integer",
        },
        AvailableProvisionedConcurrentExecutions = {
            type = "integer",
        },
        AllocatedProvisionedConcurrentExecutions = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        LastModified = {
            type = "string",
        },
    },
}

M.PutFunctionEventInvokeConfigInput = {
    type = "structure",
    id = "PutFunctionEventInvokeConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        MaximumEventAgeInSeconds = {
            type = "integer",
        },
        DestinationConfig = M.DestinationConfig,
    },
}

M.PutFunctionEventInvokeConfigOutput = {
    type = "structure",
    id = "PutFunctionEventInvokeConfigOutput",
    members = {
        LastModified = {
            type = "timestamp",
        },
        FunctionArn = {
            type = "string",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        MaximumEventAgeInSeconds = {
            type = "integer",
        },
        DestinationConfig = M.DestinationConfig,
    },
}

M.CallbackTimeoutException = {
    type = "structure",
    id = "CallbackTimeoutException",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.SendDurableExecutionCallbackFailureInput = {
    type = "structure",
    id = "SendDurableExecutionCallbackFailureInput",
    members = {
        CallbackId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Error = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ErrorObject }),
    },
}

M.SendDurableExecutionCallbackFailureOutput = {
    type = "structure",
    id = "SendDurableExecutionCallbackFailureOutput",
}

M.SendDurableExecutionCallbackHeartbeatInput = {
    type = "structure",
    id = "SendDurableExecutionCallbackHeartbeatInput",
    members = {
        CallbackId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SendDurableExecutionCallbackHeartbeatOutput = {
    type = "structure",
    id = "SendDurableExecutionCallbackHeartbeatOutput",
}

M.SendDurableExecutionCallbackSuccessInput = {
    type = "structure",
    id = "SendDurableExecutionCallbackSuccessInput",
    members = {
        CallbackId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Result = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.SendDurableExecutionCallbackSuccessOutput = {
    type = "structure",
    id = "SendDurableExecutionCallbackSuccessOutput",
}

M.StopDurableExecutionInput = {
    type = "structure",
    id = "StopDurableExecutionInput",
    members = {
        DurableExecutionArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Error = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ErrorObject }),
    },
}

M.StopDurableExecutionOutput = {
    type = "structure",
    id = "StopDurableExecutionOutput",
    members = {
        StopTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        Resource = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        Resource = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateFunctionEventInvokeConfigInput = {
    type = "structure",
    id = "UpdateFunctionEventInvokeConfigInput",
    members = {
        FunctionName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Qualifier = {
            type = "string",
            traits = {
                http_query = "Qualifier",
            },
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        MaximumEventAgeInSeconds = {
            type = "integer",
        },
        DestinationConfig = M.DestinationConfig,
    },
}

M.UpdateFunctionEventInvokeConfigOutput = {
    type = "structure",
    id = "UpdateFunctionEventInvokeConfigOutput",
    members = {
        LastModified = {
            type = "timestamp",
        },
        FunctionArn = {
            type = "string",
        },
        MaximumRetryAttempts = {
            type = "integer",
        },
        MaximumEventAgeInSeconds = {
            type = "integer",
        },
        DestinationConfig = M.DestinationConfig,
    },
}

return M
