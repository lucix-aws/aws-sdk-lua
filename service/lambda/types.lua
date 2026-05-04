local M = {}

M.AccountLimit = {
    type = "structure",
    members = {
        TotalCodeSize = {
            type = "number",
        },
        CodeSizeUnzipped = {
            type = "number",
        },
        CodeSizeZipped = {
            type = "number",
        },
        ConcurrentExecutions = {
            type = "number",
        },
        UnreservedConcurrentExecutions = {
            type = "number",
        },
    },
}

M.AccountUsage = {
    type = "structure",
    members = {
        TotalCodeSize = {
            type = "number",
        },
        FunctionCount = {
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "number",
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
        RoutingConfig = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "structure",
        },
        SchemaValidationConfigs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AmazonManagedKafkaEventSourceConfig = {
    type = "structure",
    members = {
        ConsumerGroupId = {
            type = "string",
        },
        SchemaRegistryConfig = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        ScalingMode = {
            type = "string",
        },
        ScalingPolicies = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InstanceRequirements = {
    type = "structure",
    members = {
        Architectures = {
            type = "list",
            member_type = "string",
        },
        AllowedInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        ExcludedInstanceTypes = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
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
        VpcConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PermissionsConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        InstanceRequirements = {
            type = "structure",
        },
        CapacityProviderScalingConfig = {
            type = "structure",
        },
        KmsKeyArn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        VpcConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PermissionsConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        InstanceRequirements = {
            type = "structure",
        },
        CapacityProviderScalingConfig = {
            type = "structure",
        },
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
        CapacityProvider = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        CapacityProvider = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        CapacityProvider = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
        CapacityProviderScalingConfig = {
            type = "structure",
        },
    },
}

M.UpdateCapacityProviderOutput = {
    type = "structure",
    members = {
        CapacityProvider = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
        },
        HeartbeatTimeoutSeconds = {
            type = "number",
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
            member_type = "string",
        },
    },
}

M.StepOptions = {
    type = "structure",
    members = {
        NextAttemptDelaySeconds = {
            type = "number",
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
            type = "number",
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
        Error = {
            type = "structure",
        },
        ContextOptions = {
            type = "structure",
        },
        StepOptions = {
            type = "structure",
        },
        WaitOptions = {
            type = "structure",
        },
        CallbackOptions = {
            type = "structure",
        },
        ChainedInvokeOptions = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
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
        Error = {
            type = "structure",
        },
    },
}

M.ChainedInvokeDetails = {
    type = "structure",
    members = {
        Result = {
            type = "string",
        },
        Error = {
            type = "structure",
        },
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
        Error = {
            type = "structure",
        },
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
            type = "number",
        },
        NextAttemptTimestamp = {
            type = "timestamp",
        },
        Result = {
            type = "string",
        },
        Error = {
            type = "structure",
        },
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
        ExecutionDetails = {
            type = "structure",
        },
        ContextDetails = {
            type = "structure",
        },
        StepDetails = {
            type = "structure",
        },
        WaitDetails = {
            type = "structure",
        },
        CallbackDetails = {
            type = "structure",
        },
        ChainedInvokeDetails = {
            type = "structure",
        },
    },
}

M.CheckpointUpdatedExecutionState = {
    type = "structure",
    members = {
        Operations = {
            type = "list",
            member_type = "structure",
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
        NewExecutionState = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        AllowedPublishers = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CodeSigningPolicies = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        AllowedPublishers = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CodeSigningPolicies = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        CodeSigningConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        CodeSigningConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
        AllowedPublishers = {
            type = "structure",
        },
        CodeSigningPolicies = {
            type = "structure",
        },
    },
}

M.UpdateCodeSigningConfigOutput = {
    type = "structure",
    members = {
        CodeSigningConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
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
        OnSuccess = {
            type = "structure",
        },
        OnFailure = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.ProvisionedPollerConfig = {
    type = "structure",
    members = {
        MinimumPollers = {
            type = "number",
        },
        MaximumPollers = {
            type = "number",
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
            type = "number",
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
            key_type = "string",
            value_type = "list",
        },
    },
}

M.SelfManagedKafkaEventSourceConfig = {
    type = "structure",
    members = {
        ConsumerGroupId = {
            type = "string",
        },
        SchemaRegistryConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        FilterCriteria = {
            type = "structure",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        ParallelizationFactor = {
            type = "number",
        },
        StartingPosition = {
            type = "string",
        },
        StartingPositionTimestamp = {
            type = "timestamp",
        },
        DestinationConfig = {
            type = "structure",
        },
        MaximumRecordAgeInSeconds = {
            type = "number",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TumblingWindowInSeconds = {
            type = "number",
        },
        Topics = {
            type = "list",
            member_type = "string",
        },
        Queues = {
            type = "list",
            member_type = "string",
        },
        SourceAccessConfigurations = {
            type = "list",
            member_type = "structure",
        },
        SelfManagedEventSource = {
            type = "structure",
        },
        FunctionResponseTypes = {
            type = "list",
            member_type = "string",
        },
        AmazonManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        SelfManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        ScalingConfig = {
            type = "structure",
        },
        DocumentDBEventSourceConfig = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        MetricsConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        ProvisionedPollerConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        ParallelizationFactor = {
            type = "number",
        },
        EventSourceArn = {
            type = "string",
        },
        FilterCriteria = {
            type = "structure",
        },
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
        DestinationConfig = {
            type = "structure",
        },
        Topics = {
            type = "list",
            member_type = "string",
        },
        Queues = {
            type = "list",
            member_type = "string",
        },
        SourceAccessConfigurations = {
            type = "list",
            member_type = "structure",
        },
        SelfManagedEventSource = {
            type = "structure",
        },
        MaximumRecordAgeInSeconds = {
            type = "number",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "number",
        },
        TumblingWindowInSeconds = {
            type = "number",
        },
        FunctionResponseTypes = {
            type = "list",
            member_type = "string",
        },
        AmazonManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        SelfManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        ScalingConfig = {
            type = "structure",
        },
        DocumentDBEventSourceConfig = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        FilterCriteriaError = {
            type = "structure",
        },
        EventSourceMappingArn = {
            type = "string",
        },
        MetricsConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        ProvisionedPollerConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        ParallelizationFactor = {
            type = "number",
        },
        EventSourceArn = {
            type = "string",
        },
        FilterCriteria = {
            type = "structure",
        },
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
        DestinationConfig = {
            type = "structure",
        },
        Topics = {
            type = "list",
            member_type = "string",
        },
        Queues = {
            type = "list",
            member_type = "string",
        },
        SourceAccessConfigurations = {
            type = "list",
            member_type = "structure",
        },
        SelfManagedEventSource = {
            type = "structure",
        },
        MaximumRecordAgeInSeconds = {
            type = "number",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "number",
        },
        TumblingWindowInSeconds = {
            type = "number",
        },
        FunctionResponseTypes = {
            type = "list",
            member_type = "string",
        },
        AmazonManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        SelfManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        ScalingConfig = {
            type = "structure",
        },
        DocumentDBEventSourceConfig = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        FilterCriteriaError = {
            type = "structure",
        },
        EventSourceMappingArn = {
            type = "string",
        },
        MetricsConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        ProvisionedPollerConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        ParallelizationFactor = {
            type = "number",
        },
        EventSourceArn = {
            type = "string",
        },
        FilterCriteria = {
            type = "structure",
        },
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
        DestinationConfig = {
            type = "structure",
        },
        Topics = {
            type = "list",
            member_type = "string",
        },
        Queues = {
            type = "list",
            member_type = "string",
        },
        SourceAccessConfigurations = {
            type = "list",
            member_type = "structure",
        },
        SelfManagedEventSource = {
            type = "structure",
        },
        MaximumRecordAgeInSeconds = {
            type = "number",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "number",
        },
        TumblingWindowInSeconds = {
            type = "number",
        },
        FunctionResponseTypes = {
            type = "list",
            member_type = "string",
        },
        AmazonManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        SelfManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        ScalingConfig = {
            type = "structure",
        },
        DocumentDBEventSourceConfig = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        FilterCriteriaError = {
            type = "structure",
        },
        EventSourceMappingArn = {
            type = "string",
        },
        MetricsConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        ProvisionedPollerConfig = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        ParallelizationFactor = {
            type = "number",
        },
        EventSourceArn = {
            type = "string",
        },
        FilterCriteria = {
            type = "structure",
        },
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
        DestinationConfig = {
            type = "structure",
        },
        Topics = {
            type = "list",
            member_type = "string",
        },
        Queues = {
            type = "list",
            member_type = "string",
        },
        SourceAccessConfigurations = {
            type = "list",
            member_type = "structure",
        },
        SelfManagedEventSource = {
            type = "structure",
        },
        MaximumRecordAgeInSeconds = {
            type = "number",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "number",
        },
        TumblingWindowInSeconds = {
            type = "number",
        },
        FunctionResponseTypes = {
            type = "list",
            member_type = "string",
        },
        AmazonManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        SelfManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        ScalingConfig = {
            type = "structure",
        },
        DocumentDBEventSourceConfig = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        FilterCriteriaError = {
            type = "structure",
        },
        EventSourceMappingArn = {
            type = "string",
        },
        MetricsConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        ProvisionedPollerConfig = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        FilterCriteria = {
            type = "structure",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        DestinationConfig = {
            type = "structure",
        },
        MaximumRecordAgeInSeconds = {
            type = "number",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "number",
        },
        ParallelizationFactor = {
            type = "number",
        },
        SourceAccessConfigurations = {
            type = "list",
            member_type = "structure",
        },
        TumblingWindowInSeconds = {
            type = "number",
        },
        FunctionResponseTypes = {
            type = "list",
            member_type = "string",
        },
        ScalingConfig = {
            type = "structure",
        },
        AmazonManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        SelfManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        DocumentDBEventSourceConfig = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        MetricsConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        ProvisionedPollerConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        MaximumBatchingWindowInSeconds = {
            type = "number",
        },
        ParallelizationFactor = {
            type = "number",
        },
        EventSourceArn = {
            type = "string",
        },
        FilterCriteria = {
            type = "structure",
        },
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
        DestinationConfig = {
            type = "structure",
        },
        Topics = {
            type = "list",
            member_type = "string",
        },
        Queues = {
            type = "list",
            member_type = "string",
        },
        SourceAccessConfigurations = {
            type = "list",
            member_type = "structure",
        },
        SelfManagedEventSource = {
            type = "structure",
        },
        MaximumRecordAgeInSeconds = {
            type = "number",
        },
        BisectBatchOnFunctionError = {
            type = "boolean",
        },
        MaximumRetryAttempts = {
            type = "number",
        },
        TumblingWindowInSeconds = {
            type = "number",
        },
        FunctionResponseTypes = {
            type = "list",
            member_type = "string",
        },
        AmazonManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        SelfManagedKafkaEventSourceConfig = {
            type = "structure",
        },
        ScalingConfig = {
            type = "structure",
        },
        DocumentDBEventSourceConfig = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        FilterCriteriaError = {
            type = "structure",
        },
        EventSourceMappingArn = {
            type = "string",
        },
        MetricsConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        ProvisionedPollerConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        ExecutionEnvironmentMemoryGiBPerVCpu = {
            type = "number",
        },
    },
}

M.CapacityProviderConfig = {
    type = "structure",
    members = {
        LambdaManagedInstancesCapacityProviderConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
        },
        ExecutionTimeout = {
            type = "number",
        },
    },
}

M.Environment = {
    type = "structure",
    members = {
        Variables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.EphemeralStorage = {
    type = "structure",
    members = {
        Size = {
            type = "number",
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
            member_type = "string",
        },
        Command = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
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
        Code = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "number",
        },
        MemorySize = {
            type = "number",
        },
        Publish = {
            type = "boolean",
        },
        VpcConfig = {
            type = "structure",
        },
        PackageType = {
            type = "string",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        Environment = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Layers = {
            type = "list",
            member_type = "string",
        },
        FileSystemConfigs = {
            type = "list",
            member_type = "structure",
        },
        ImageConfig = {
            type = "structure",
        },
        CodeSigningConfigArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member_type = "string",
        },
        EphemeralStorage = {
            type = "structure",
        },
        SnapStart = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        CapacityProviderConfig = {
            type = "structure",
        },
        PublishTo = {
            type = "string",
        },
        DurableConfig = {
            type = "structure",
        },
        TenancyConfig = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        Error = {
            type = "structure",
        },
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
        ImageConfig = {
            type = "structure",
        },
        Error = {
            type = "structure",
        },
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
            type = "number",
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
        Error = {
            type = "structure",
        },
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
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "number",
        },
        MemorySize = {
            type = "number",
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
        VpcConfig = {
            type = "structure",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        Environment = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = {
            type = "structure",
        },
        MasterArn = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        PackageType = {
            type = "string",
        },
        ImageConfigResponse = {
            type = "structure",
        },
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member_type = "string",
        },
        EphemeralStorage = {
            type = "structure",
        },
        SnapStart = {
            type = "structure",
        },
        RuntimeVersionConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        CapacityProviderConfig = {
            type = "structure",
        },
        ConfigSha256 = {
            type = "string",
        },
        DurableConfig = {
            type = "structure",
        },
        TenancyConfig = {
            type = "structure",
        },
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
            member_type = "string",
        },
        AllowMethods = {
            type = "list",
            member_type = "string",
        },
        AllowOrigins = {
            type = "list",
            member_type = "string",
        },
        ExposeHeaders = {
            type = "list",
            member_type = "string",
        },
        MaxAge = {
            type = "number",
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
        Cors = {
            type = "structure",
        },
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
        Cors = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "number",
        },
        MemorySize = {
            type = "number",
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
        VpcConfig = {
            type = "structure",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        Environment = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = {
            type = "structure",
        },
        MasterArn = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        PackageType = {
            type = "string",
        },
        ImageConfigResponse = {
            type = "structure",
        },
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member_type = "string",
        },
        EphemeralStorage = {
            type = "structure",
        },
        SnapStart = {
            type = "structure",
        },
        RuntimeVersionConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        CapacityProviderConfig = {
            type = "structure",
        },
        ConfigSha256 = {
            type = "string",
        },
        DurableConfig = {
            type = "structure",
        },
        TenancyConfig = {
            type = "structure",
        },
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
        Configuration = {
            type = "structure",
        },
        Code = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        TagsError = {
            type = "structure",
        },
        Concurrency = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "number",
        },
        MemorySize = {
            type = "number",
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
        VpcConfig = {
            type = "structure",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        Environment = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = {
            type = "structure",
        },
        MasterArn = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        PackageType = {
            type = "string",
        },
        ImageConfigResponse = {
            type = "structure",
        },
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member_type = "string",
        },
        EphemeralStorage = {
            type = "structure",
        },
        SnapStart = {
            type = "structure",
        },
        RuntimeVersionConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        CapacityProviderConfig = {
            type = "structure",
        },
        ConfigSha256 = {
            type = "string",
        },
        DurableConfig = {
            type = "structure",
        },
        TenancyConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        MaxExecutionEnvironments = {
            type = "number",
        },
    },
}

M.GetFunctionScalingConfigOutput = {
    type = "structure",
    members = {
        FunctionArn = {
            type = "string",
        },
        AppliedFunctionScalingConfig = {
            type = "structure",
        },
        RequestedFunctionScalingConfig = {
            type = "structure",
        },
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
        Cors = {
            type = "structure",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
        PayloadChunk = {
            type = "structure",
        },
        InvokeComplete = {
            type = "structure",
        },
    },
}

M.InvokeWithResponseStreamOutput = {
    type = "structure",
    members = {
        StatusCode = {
            type = "number",
            traits = {
                http_response_code = true,
            },
        },
        ExecutedVersion = {
            type = "string",
            traits = {
                http_header = "X-Amz-Executed-Version",
            },
        },
        EventStream = {
            type = "union",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        Cors = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        AvailableProvisionedConcurrentExecutions = {
            type = "number",
        },
        AllocatedProvisionedConcurrentExecutions = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
        FunctionScalingConfig = {
            type = "structure",
        },
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
        },
        DryRun = {
            type = "boolean",
        },
        RevisionId = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "number",
        },
        MemorySize = {
            type = "number",
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
        VpcConfig = {
            type = "structure",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        Environment = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = {
            type = "structure",
        },
        MasterArn = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        PackageType = {
            type = "string",
        },
        ImageConfigResponse = {
            type = "structure",
        },
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member_type = "string",
        },
        EphemeralStorage = {
            type = "structure",
        },
        SnapStart = {
            type = "structure",
        },
        RuntimeVersionConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        CapacityProviderConfig = {
            type = "structure",
        },
        ConfigSha256 = {
            type = "string",
        },
        DurableConfig = {
            type = "structure",
        },
        TenancyConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        MemorySize = {
            type = "number",
        },
        VpcConfig = {
            type = "structure",
        },
        Environment = {
            type = "structure",
        },
        Runtime = {
            type = "string",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = {
            type = "structure",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member_type = "string",
        },
        FileSystemConfigs = {
            type = "list",
            member_type = "structure",
        },
        ImageConfig = {
            type = "structure",
        },
        EphemeralStorage = {
            type = "structure",
        },
        SnapStart = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        CapacityProviderConfig = {
            type = "structure",
        },
        DurableConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "number",
        },
        MemorySize = {
            type = "number",
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
        VpcConfig = {
            type = "structure",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        Environment = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = {
            type = "structure",
        },
        MasterArn = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        PackageType = {
            type = "string",
        },
        ImageConfigResponse = {
            type = "structure",
        },
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member_type = "string",
        },
        EphemeralStorage = {
            type = "structure",
        },
        SnapStart = {
            type = "structure",
        },
        RuntimeVersionConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        CapacityProviderConfig = {
            type = "structure",
        },
        ConfigSha256 = {
            type = "string",
        },
        DurableConfig = {
            type = "structure",
        },
        TenancyConfig = {
            type = "structure",
        },
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
        Cors = {
            type = "structure",
        },
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
        Cors = {
            type = "structure",
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
        RoutingConfig = {
            type = "structure",
        },
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
        RoutingConfig = {
            type = "structure",
        },
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
        RoutingConfig = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
        RoutingConfig = {
            type = "structure",
        },
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
        RoutingConfig = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        Description = {
            type = "string",
        },
        Timeout = {
            type = "number",
        },
        MemorySize = {
            type = "number",
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
        VpcConfig = {
            type = "structure",
        },
        DeadLetterConfig = {
            type = "structure",
        },
        Environment = {
            type = "structure",
        },
        KMSKeyArn = {
            type = "string",
        },
        TracingConfig = {
            type = "structure",
        },
        MasterArn = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
        Layers = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        PackageType = {
            type = "string",
        },
        ImageConfigResponse = {
            type = "structure",
        },
        SigningProfileVersionArn = {
            type = "string",
        },
        SigningJobArn = {
            type = "string",
        },
        Architectures = {
            type = "list",
            member_type = "string",
        },
        EphemeralStorage = {
            type = "structure",
        },
        SnapStart = {
            type = "structure",
        },
        RuntimeVersionConfig = {
            type = "structure",
        },
        LoggingConfig = {
            type = "structure",
        },
        CapacityProviderConfig = {
            type = "structure",
        },
        ConfigSha256 = {
            type = "string",
        },
        DurableConfig = {
            type = "structure",
        },
        TenancyConfig = {
            type = "structure",
        },
    },
}

M.GetAccountSettingsInput = {
    type = "structure",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    members = {
        AccountLimit = {
            type = "structure",
        },
        AccountUsage = {
            type = "structure",
        },
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
        Error = {
            type = "structure",
        },
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
        TraceHeader = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
        Payload = {
            type = "structure",
        },
        Truncated = {
            type = "boolean",
        },
    },
}

M.CallbackFailedDetails = {
    type = "structure",
    members = {
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
        },
        Timeout = {
            type = "number",
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
        Result = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CallbackTimedOutDetails = {
    type = "structure",
    members = {
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ChainedInvokeFailedDetails = {
    type = "structure",
    members = {
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Input = {
            type = "structure",
        },
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
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ChainedInvokeSucceededDetails = {
    type = "structure",
    members = {
        Result = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ChainedInvokeTimedOutDetails = {
    type = "structure",
    members = {
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ContextFailedDetails = {
    type = "structure",
    members = {
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ContextStartedDetails = {
    type = "structure",
}

M.ContextSucceededDetails = {
    type = "structure",
    members = {
        Result = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionStartedDetails = {
    type = "structure",
    members = {
        Input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ExecutionTimeout = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionStoppedDetails = {
    type = "structure",
    members = {
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionSucceededDetails = {
    type = "structure",
    members = {
        Result = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionTimedOutDetails = {
    type = "structure",
    members = {
        Error = {
            type = "structure",
        },
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
        Error = {
            type = "structure",
        },
    },
}

M.RetryDetails = {
    type = "structure",
    members = {
        CurrentAttempt = {
            type = "number",
        },
        NextAttemptDelaySeconds = {
            type = "number",
        },
    },
}

M.StepFailedDetails = {
    type = "structure",
    members = {
        Error = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RetryDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StepStartedDetails = {
    type = "structure",
}

M.StepSucceededDetails = {
    type = "structure",
    members = {
        Result = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RetryDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.WaitCancelledDetails = {
    type = "structure",
    members = {
        Error = {
            type = "structure",
        },
    },
}

M.WaitStartedDetails = {
    type = "structure",
    members = {
        Duration = {
            type = "number",
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
            type = "number",
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
            type = "number",
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
        ExecutionStartedDetails = {
            type = "structure",
        },
        ExecutionSucceededDetails = {
            type = "structure",
        },
        ExecutionFailedDetails = {
            type = "structure",
        },
        ExecutionTimedOutDetails = {
            type = "structure",
        },
        ExecutionStoppedDetails = {
            type = "structure",
        },
        ContextStartedDetails = {
            type = "structure",
        },
        ContextSucceededDetails = {
            type = "structure",
        },
        ContextFailedDetails = {
            type = "structure",
        },
        WaitStartedDetails = {
            type = "structure",
        },
        WaitSucceededDetails = {
            type = "structure",
        },
        WaitCancelledDetails = {
            type = "structure",
        },
        StepStartedDetails = {
            type = "structure",
        },
        StepSucceededDetails = {
            type = "structure",
        },
        StepFailedDetails = {
            type = "structure",
        },
        ChainedInvokeStartedDetails = {
            type = "structure",
        },
        ChainedInvokeSucceededDetails = {
            type = "structure",
        },
        ChainedInvokeFailedDetails = {
            type = "structure",
        },
        ChainedInvokeTimedOutDetails = {
            type = "structure",
        },
        ChainedInvokeStoppedDetails = {
            type = "structure",
        },
        CallbackStartedDetails = {
            type = "structure",
        },
        CallbackSucceededDetails = {
            type = "structure",
        },
        CallbackFailedDetails = {
            type = "structure",
        },
        CallbackTimedOutDetails = {
            type = "structure",
        },
        InvocationCompletedDetails = {
            type = "structure",
        },
    },
}

M.GetDurableExecutionHistoryOutput = {
    type = "structure",
    members = {
        Events = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
        },
        MaximumEventAgeInSeconds = {
            type = "number",
        },
        DestinationConfig = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        Description = {
            type = "string",
        },
        CreatedDate = {
            type = "string",
        },
        CompatibleRuntimes = {
            type = "list",
            member_type = "string",
        },
        LicenseInfo = {
            type = "string",
        },
        CompatibleArchitectures = {
            type = "list",
            member_type = "string",
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
        LatestMatchingVersion = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            type = "number",
            traits = {
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
            type = "number",
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
        Content = {
            type = "structure",
        },
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
            type = "number",
        },
        CompatibleRuntimes = {
            type = "list",
            member_type = "string",
        },
        LicenseInfo = {
            type = "string",
        },
        CompatibleArchitectures = {
            type = "list",
            member_type = "string",
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
        Content = {
            type = "structure",
        },
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
            type = "number",
        },
        CompatibleRuntimes = {
            type = "list",
            member_type = "string",
        },
        LicenseInfo = {
            type = "string",
        },
        CompatibleArchitectures = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
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
            type = "number",
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
            member_type = "structure",
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
        Content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CompatibleRuntimes = {
            type = "list",
            member_type = "string",
        },
        LicenseInfo = {
            type = "string",
        },
        CompatibleArchitectures = {
            type = "list",
            member_type = "string",
        },
    },
}

M.PublishLayerVersionOutput = {
    type = "structure",
    members = {
        Content = {
            type = "structure",
        },
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
            type = "number",
        },
        CompatibleRuntimes = {
            type = "list",
            member_type = "string",
        },
        LicenseInfo = {
            type = "string",
        },
        CompatibleArchitectures = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        MaximumEventAgeInSeconds = {
            type = "number",
        },
        DestinationConfig = {
            type = "structure",
        },
    },
}

M.ListFunctionEventInvokeConfigsOutput = {
    type = "structure",
    members = {
        FunctionEventInvokeConfigs = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        AvailableProvisionedConcurrentExecutions = {
            type = "number",
        },
        AllocatedProvisionedConcurrentExecutions = {
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        AvailableProvisionedConcurrentExecutions = {
            type = "number",
        },
        AllocatedProvisionedConcurrentExecutions = {
            type = "number",
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
            type = "number",
        },
        MaximumEventAgeInSeconds = {
            type = "number",
        },
        DestinationConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        MaximumEventAgeInSeconds = {
            type = "number",
        },
        DestinationConfig = {
            type = "structure",
        },
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
        Error = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        Error = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
            type = "number",
        },
        MaximumEventAgeInSeconds = {
            type = "number",
        },
        DestinationConfig = {
            type = "structure",
        },
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
            type = "number",
        },
        MaximumEventAgeInSeconds = {
            type = "number",
        },
        DestinationConfig = {
            type = "structure",
        },
    },
}

return M
