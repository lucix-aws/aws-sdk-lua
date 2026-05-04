local M = {}

M.AccountLimit = {
    type = "structure",
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
    members = {
        Statement = {
            type = "string",
        },
    },
}

M.AliasRoutingConfiguration = {
    type = "structure",
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
    members = {
        Attribute = {
            type = "string",
        },
    },
}

M.KafkaSchemaRegistryConfig = {
    type = "structure",
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
    members = {
        CapacityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityProvider }),
    },
}

M.DeleteCapacityProviderInput = {
    type = "structure",
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
    members = {
        CapacityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityProvider }),
    },
}

M.GetCapacityProviderInput = {
    type = "structure",
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
    members = {
        CapacityProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CapacityProvider }),
    },
}

M.ListCapacityProvidersInput = {
    type = "structure",
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
    members = {
        ReplayChildren = {
            type = "boolean",
        },
    },
}

M.ErrorObject = {
    type = "structure",
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
    members = {
        WaitSeconds = {
            type = "integer",
        },
    },
}

M.OperationUpdate = {
    type = "structure",
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
    members = {
        Result = {
            type = "string",
        },
        Error = M.ErrorObject,
    },
}

M.ContextDetails = {
    type = "structure",
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
    members = {
        ScheduledEndTimestamp = {
            type = "timestamp",
        },
    },
}

M.Operation = {
    type = "structure",
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
    members = {
        UntrustedArtifactOnDeployment = {
            type = "string",
        },
    },
}

M.CreateCodeSigningConfigInput = {
    type = "structure",
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
    members = {
        CodeSigningConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSigningConfig }),
    },
}

M.DeleteCodeSigningConfigInput = {
    type = "structure",
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
}

M.GetCodeSigningConfigInput = {
    type = "structure",
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
    members = {
        CodeSigningConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSigningConfig }),
    },
}

M.ListCodeSigningConfigsInput = {
    type = "structure",
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
    members = {
        CodeSigningConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeSigningConfig }),
    },
}

M.DeleteFunctionInput = {
    type = "structure",
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
}

M.OnFailure = {
    type = "structure",
    members = {
        Destination = {
            type = "string",
        },
    },
}

M.OnSuccess = {
    type = "structure",
    members = {
        Destination = {
            type = "string",
        },
    },
}

M.DestinationConfig = {
    type = "structure",
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
    members = {
        Pattern = {
            type = "string",
        },
    },
}

M.FilterCriteria = {
    type = "structure",
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
    members = {
        Metrics = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ProvisionedPollerConfig = {
    type = "structure",
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
    members = {
        LambdaManagedInstancesCapacityProviderConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LambdaManagedInstancesCapacityProviderConfig }),
    },
}

M.FunctionCode = {
    type = "structure",
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
    members = {
        TargetArn = {
            type = "string",
        },
    },
}

M.DurableConfig = {
    type = "structure",
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
    members = {
        Mode = {
            type = "string",
        },
    },
}

M.VpcConfig = {
    type = "structure",
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
    members = {
        Mode = {
            type = "string",
        },
    },
}

M.VpcConfigResponse = {
    type = "structure",
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
}

M.DeleteFunctionConcurrencyInput = {
    type = "structure",
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
}

M.DeleteFunctionUrlConfigInput = {
    type = "structure",
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
}

M.GetFunctionInput = {
    type = "structure",
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
    members = {
        ReservedConcurrentExecutions = {
            type = "integer",
        },
    },
}

M.FunctionConfiguration = {
    type = "structure",
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
    members = {
        ReservedConcurrentExecutions = {
            type = "integer",
        },
    },
}

M.GetFunctionConfigurationInput = {
    type = "structure",
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
    members = {
        RecursiveLoop = {
            type = "string",
        },
    },
}

M.GetFunctionScalingConfigInput = {
    type = "structure",
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
    members = {
        Payload = {
            type = "blob",
        },
    },
}

M.InvokeWithResponseStreamResponseEvent = {
    type = "union",
    members = {
        PayloadChunk = M.InvokeResponseStreamUpdate,
        InvokeComplete = M.InvokeWithResponseStreamCompleteEvent,
    },
}

M.InvokeWithResponseStreamOutput = {
    type = "structure",
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
    members = {
        ReservedConcurrentExecutions = {
            type = "integer",
        },
    },
}

M.PutFunctionRecursionConfigInput = {
    type = "structure",
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
    members = {
        RecursiveLoop = {
            type = "string",
        },
    },
}

M.PutFunctionScalingConfigInput = {
    type = "structure",
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
    members = {
        FunctionState = {
            type = "string",
        },
    },
}

M.PutRuntimeManagementConfigInput = {
    type = "structure",
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
}

M.GetAliasInput = {
    type = "structure",
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
}

M.GetAccountSettingsOutput = {
    type = "structure",
    members = {
        AccountLimit = M.AccountLimit,
        AccountUsage = M.AccountUsage,
    },
}

M.GetDurableExecutionInput = {
    type = "structure",
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
    members = {
        XAmznTraceId = {
            type = "string",
        },
    },
}

M.GetDurableExecutionOutput = {
    type = "structure",
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
    members = {
        Payload = M.ErrorObject,
        Truncated = {
            type = "boolean",
        },
    },
}

M.CallbackFailedDetails = {
    type = "structure",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.CallbackStartedDetails = {
    type = "structure",
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
    members = {
        Result = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventResult }),
    },
}

M.CallbackTimedOutDetails = {
    type = "structure",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.ChainedInvokeFailedDetails = {
    type = "structure",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.EventInput = {
    type = "structure",
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
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.ChainedInvokeSucceededDetails = {
    type = "structure",
    members = {
        Result = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventResult }),
    },
}

M.ChainedInvokeTimedOutDetails = {
    type = "structure",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.ContextFailedDetails = {
    type = "structure",
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.ContextStartedDetails = {
    type = "structure",
}

M.ContextSucceededDetails = {
    type = "structure",
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
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.ExecutionStartedDetails = {
    type = "structure",
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
    members = {
        Error = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventError }),
    },
}

M.ExecutionSucceededDetails = {
    type = "structure",
    members = {
        Result = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventResult }),
    },
}

M.ExecutionTimedOutDetails = {
    type = "structure",
    members = {
        Error = M.EventError,
    },
}

M.InvocationCompletedDetails = {
    type = "structure",
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
}

M.StepSucceededDetails = {
    type = "structure",
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
    members = {
        Error = M.EventError,
    },
}

M.WaitStartedDetails = {
    type = "structure",
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
    members = {
        Duration = {
            type = "integer",
        },
    },
}

M.Event = {
    type = "structure",
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
}

M.GetLayerVersionInput = {
    type = "structure",
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
}

M.ListDurableExecutionsByFunctionInput = {
    type = "structure",
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
}

M.DeleteProvisionedConcurrencyConfigInput = {
    type = "structure",
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
}

M.GetProvisionedConcurrencyConfigInput = {
    type = "structure",
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
}

M.SendDurableExecutionCallbackHeartbeatInput = {
    type = "structure",
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
}

M.SendDurableExecutionCallbackSuccessInput = {
    type = "structure",
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
}

M.StopDurableExecutionInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateFunctionEventInvokeConfigInput = {
    type = "structure",
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
