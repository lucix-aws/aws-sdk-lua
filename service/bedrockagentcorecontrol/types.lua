local M = {}

M.AgentCardDefinition = {
    type = "structure",
    id = "AgentCardDefinition",
    members = {
        schemaVersion = {
            type = "string",
        },
        inlineContent = {
            type = "string",
        },
    },
}

M.A2aDescriptor = {
    type = "structure",
    id = "A2aDescriptor",
    members = {
        agentCard = M.AgentCardDefinition,
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StaticOverride = {
    type = "structure",
    id = "StaticOverride",
    members = {
        bundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurationBundleReference = {
    type = "structure",
    id = "ConfigurationBundleReference",
    members = {
        bundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrafficSplitEntry = {
    type = "structure",
    id = "TrafficSplitEntry",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        configurationBundle = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigurationBundleReference }),
        description = {
            type = "string",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.WeightedOverride = {
    type = "structure",
    id = "WeightedOverride",
    members = {
        trafficSplit = {
            type = "list",
            member = M.TrafficSplitEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurationBundleAction = {
    type = "union",
    id = "ConfigurationBundleAction",
    members = {
        staticOverride = M.StaticOverride,
        weightedOverride = M.WeightedOverride,
    },
}

M.StaticRoute = {
    type = "structure",
    id = "StaticRoute",
    members = {
        targetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TargetTrafficSplitEntry = {
    type = "structure",
    id = "TargetTrafficSplitEntry",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        targetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.WeightedRoute = {
    type = "structure",
    id = "WeightedRoute",
    members = {
        trafficSplit = {
            type = "list",
            member = M.TargetTrafficSplitEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.RouteToTargetAction = {
    type = "union",
    id = "RouteToTargetAction",
    members = {
        staticRoute = M.StaticRoute,
        weightedRoute = M.WeightedRoute,
    },
}

M.Action = {
    type = "union",
    id = "Action",
    members = {
        configurationBundle = M.ConfigurationBundleAction,
        routeToTarget = M.RouteToTargetAction,
    },
}

M.ActorTokenContentType = {
    NONE = "NONE",
    M2M = "M2M",
    AWS_IAM_ID_TOKEN_JWT = "AWS_IAM_ID_TOKEN_JWT",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateAgentRuntimeEndpointInput = {
    type = "structure",
    id = "CreateAgentRuntimeEndpointInput",
    members = {
        agentRuntimeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AgentRuntimeEndpointStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    READY = "READY",
    DELETING = "DELETING",
}

M.CreateAgentRuntimeEndpointOutput = {
    type = "structure",
    id = "CreateAgentRuntimeEndpointOutput",
    members = {
        targetVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeEndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeId = {
            type = "string",
        },
        endpointName = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
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
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    CANNOT_PARSE = "CannotParse",
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    IDEMPOTENT_PARAMETER_MISMATCH_EXCEPTION = "IdempotentParameterMismatchException",
    ROOT_EVENT_IN_OTHER_SESSION = "EventInOtherSession",
    RESOURCE_CONFLICT = "ResourceConflict",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.DeleteAgentRuntimeEndpointInput = {
    type = "structure",
    id = "DeleteAgentRuntimeEndpointInput",
    members = {
        agentRuntimeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        endpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAgentRuntimeEndpointOutput = {
    type = "structure",
    id = "DeleteAgentRuntimeEndpointOutput",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeId = {
            type = "string",
        },
        endpointName = {
            type = "string",
        },
    },
}

M.GetAgentRuntimeEndpointInput = {
    type = "structure",
    id = "GetAgentRuntimeEndpointInput",
    members = {
        agentRuntimeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        endpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAgentRuntimeEndpointOutput = {
    type = "structure",
    id = "GetAgentRuntimeEndpointOutput",
    members = {
        liveVersion = {
            type = "string",
        },
        targetVersion = {
            type = "string",
        },
        agentRuntimeEndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        failureReason = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAgentRuntimeEndpointsInput = {
    type = "structure",
    id = "ListAgentRuntimeEndpointsInput",
    members = {
        agentRuntimeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.AgentRuntimeEndpoint = {
    type = "structure",
    id = "AgentRuntimeEndpoint",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        liveVersion = {
            type = "string",
        },
        targetVersion = {
            type = "string",
        },
        agentRuntimeEndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListAgentRuntimeEndpointsOutput = {
    type = "structure",
    id = "ListAgentRuntimeEndpointsOutput",
    members = {
        runtimeEndpoints = {
            type = "list",
            member = M.AgentRuntimeEndpoint,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateAgentRuntimeEndpointInput = {
    type = "structure",
    id = "UpdateAgentRuntimeEndpointInput",
    members = {
        agentRuntimeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        endpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentRuntimeVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateAgentRuntimeEndpointOutput = {
    type = "structure",
    id = "UpdateAgentRuntimeEndpointOutput",
    members = {
        liveVersion = {
            type = "string",
        },
        targetVersion = {
            type = "string",
        },
        agentRuntimeEndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.AgentManagedRuntimeType = {
    PYTHON_3_10 = "PYTHON_3_10",
    PYTHON_3_11 = "PYTHON_3_11",
    PYTHON_3_12 = "PYTHON_3_12",
    PYTHON_3_13 = "PYTHON_3_13",
    PYTHON_3_14 = "PYTHON_3_14",
    NODE_22 = "NODE_22",
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
    members = {
        bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionId = {
            type = "string",
        },
    },
}

M.Code = {
    type = "union",
    id = "Code",
    members = {
        s3 = M.S3Location,
    },
}

M.CodeConfiguration = {
    type = "structure",
    id = "CodeConfiguration",
    members = {
        code = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Code }),
        runtime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entryPoint = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ContainerConfiguration = {
    type = "structure",
    id = "ContainerConfiguration",
    members = {
        containerUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentRuntimeArtifact = {
    type = "union",
    id = "AgentRuntimeArtifact",
    members = {
        containerConfiguration = M.ContainerConfiguration,
        codeConfiguration = M.CodeConfiguration,
    },
}

M.ClaimMatchOperatorType = {
    EQUALS = "EQUALS",
    CONTAINS = "CONTAINS",
    CONTAINS_ANY = "CONTAINS_ANY",
}

M.ClaimMatchValueType = {
    type = "union",
    id = "ClaimMatchValueType",
    members = {
        matchValueString = {
            type = "string",
        },
        matchValueStringList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AuthorizingClaimMatchValueType = {
    type = "structure",
    id = "AuthorizingClaimMatchValueType",
    members = {
        claimMatchValue = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClaimMatchValueType }),
        claimMatchOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InboundTokenClaimValueType = {
    STRING = "STRING",
    STRING_ARRAY = "STRING_ARRAY",
}

M.CustomClaimValidationType = {
    type = "structure",
    id = "CustomClaimValidationType",
    members = {
        inboundTokenClaimName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inboundTokenClaimValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizingClaimMatchValue = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthorizingClaimMatchValueType }),
    },
}

M.EndpointIpAddressType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
}

M.ManagedVpcResource = {
    type = "structure",
    id = "ManagedVpcResource",
    members = {
        vpcIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        endpointIpAddressType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        routingDomain = {
            type = "string",
        },
    },
}

M.SelfManagedLatticeResource = {
    type = "union",
    id = "SelfManagedLatticeResource",
    members = {
        resourceConfigurationIdentifier = {
            type = "string",
        },
    },
}

M.PrivateEndpoint = {
    type = "union",
    id = "PrivateEndpoint",
    members = {
        selfManagedLatticeResource = M.SelfManagedLatticeResource,
        managedVpcResource = M.ManagedVpcResource,
    },
}

M.PrivateEndpointOverride = {
    type = "structure",
    id = "PrivateEndpointOverride",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        privateEndpoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivateEndpoint }),
    },
}

M.CustomJWTAuthorizerConfiguration = {
    type = "structure",
    id = "CustomJWTAuthorizerConfiguration",
    members = {
        discoveryUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allowedAudience = {
            type = "list",
            member = { type = "string" },
        },
        allowedClients = {
            type = "list",
            member = { type = "string" },
        },
        allowedScopes = {
            type = "list",
            member = { type = "string" },
        },
        customClaims = {
            type = "list",
            member = M.CustomClaimValidationType,
        },
        privateEndpoint = M.PrivateEndpoint,
        privateEndpointOverrides = {
            type = "list",
            member = M.PrivateEndpointOverride,
        },
    },
}

M.AuthorizerConfiguration = {
    type = "union",
    id = "AuthorizerConfiguration",
    members = {
        customJWTAuthorizer = M.CustomJWTAuthorizerConfiguration,
    },
}

M.SessionStorageConfiguration = {
    type = "structure",
    id = "SessionStorageConfiguration",
    members = {
        mountPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FilesystemConfiguration = {
    type = "union",
    id = "FilesystemConfiguration",
    members = {
        sessionStorage = M.SessionStorageConfiguration,
    },
}

M.LifecycleConfiguration = {
    type = "structure",
    id = "LifecycleConfiguration",
    members = {
        idleRuntimeSessionTimeout = {
            type = "integer",
        },
        maxLifetime = {
            type = "integer",
        },
    },
}

M.NetworkMode = {
    PUBLIC = "PUBLIC",
    VPC = "VPC",
}

M.VpcConfig = {
    type = "structure",
    id = "VpcConfig",
    members = {
        securityGroups = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkConfiguration = {
    type = "structure",
    id = "NetworkConfiguration",
    members = {
        networkMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkModeConfig = M.VpcConfig,
    },
}

M.ServerProtocol = {
    MCP = "MCP",
    HTTP = "HTTP",
    A2A = "A2A",
    AGUI = "AGUI",
}

M.ProtocolConfiguration = {
    type = "structure",
    id = "ProtocolConfiguration",
    members = {
        serverProtocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestHeaderConfiguration = {
    type = "union",
    id = "RequestHeaderConfiguration",
    members = {
        requestHeaderAllowlist = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateAgentRuntimeInput = {
    type = "structure",
    id = "CreateAgentRuntimeInput",
    members = {
        agentRuntimeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeArtifact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentRuntimeArtifact }),
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NetworkConfiguration }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        description = {
            type = "string",
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        requestHeaderConfiguration = M.RequestHeaderConfiguration,
        protocolConfiguration = M.ProtocolConfiguration,
        lifecycleConfiguration = M.LifecycleConfiguration,
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        filesystemConfigurations = {
            type = "list",
            member = M.FilesystemConfiguration,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AgentRuntimeStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    READY = "READY",
    DELETING = "DELETING",
}

M.WorkloadIdentityDetails = {
    type = "structure",
    id = "WorkloadIdentityDetails",
    members = {
        workloadIdentityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAgentRuntimeOutput = {
    type = "structure",
    id = "CreateAgentRuntimeOutput",
    members = {
        agentRuntimeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workloadIdentityDetails = M.WorkloadIdentityDetails,
        agentRuntimeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAgentRuntimeInput = {
    type = "structure",
    id = "DeleteAgentRuntimeInput",
    members = {
        agentRuntimeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteAgentRuntimeOutput = {
    type = "structure",
    id = "DeleteAgentRuntimeOutput",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeId = {
            type = "string",
        },
    },
}

M.GetAgentRuntimeInput = {
    type = "structure",
    id = "GetAgentRuntimeInput",
    members = {
        agentRuntimeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentRuntimeVersion = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.RuntimeMetadataConfiguration = {
    type = "structure",
    id = "RuntimeMetadataConfiguration",
    members = {
        requireMMDSV2 = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAgentRuntimeOutput = {
    type = "structure",
    id = "GetAgentRuntimeOutput",
    members = {
        agentRuntimeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NetworkConfiguration }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LifecycleConfiguration }),
        failureReason = {
            type = "string",
        },
        description = {
            type = "string",
        },
        workloadIdentityDetails = M.WorkloadIdentityDetails,
        agentRuntimeArtifact = M.AgentRuntimeArtifact,
        protocolConfiguration = M.ProtocolConfiguration,
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        requestHeaderConfiguration = M.RequestHeaderConfiguration,
        metadataConfiguration = M.RuntimeMetadataConfiguration,
        filesystemConfigurations = {
            type = "list",
            member = M.FilesystemConfiguration,
        },
    },
}

M.ListAgentRuntimesInput = {
    type = "structure",
    id = "ListAgentRuntimesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.AgentRuntime = {
    type = "structure",
    id = "AgentRuntime",
    members = {
        agentRuntimeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAgentRuntimesOutput = {
    type = "structure",
    id = "ListAgentRuntimesOutput",
    members = {
        agentRuntimes = {
            type = "list",
            member = M.AgentRuntime,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAgentRuntimeVersionsInput = {
    type = "structure",
    id = "ListAgentRuntimeVersionsInput",
    members = {
        agentRuntimeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListAgentRuntimeVersionsOutput = {
    type = "structure",
    id = "ListAgentRuntimeVersionsOutput",
    members = {
        agentRuntimes = {
            type = "list",
            member = M.AgentRuntime,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateAgentRuntimeInput = {
    type = "structure",
    id = "UpdateAgentRuntimeInput",
    members = {
        agentRuntimeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentRuntimeArtifact = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentRuntimeArtifact }),
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        networkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NetworkConfiguration }),
        description = {
            type = "string",
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        requestHeaderConfiguration = M.RequestHeaderConfiguration,
        protocolConfiguration = M.ProtocolConfiguration,
        lifecycleConfiguration = M.LifecycleConfiguration,
        metadataConfiguration = M.RuntimeMetadataConfiguration,
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        filesystemConfigurations = {
            type = "list",
            member = M.FilesystemConfiguration,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateAgentRuntimeOutput = {
    type = "structure",
    id = "UpdateAgentRuntimeOutput",
    members = {
        agentRuntimeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workloadIdentityDetails = M.WorkloadIdentityDetails,
        agentRuntimeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SkillDefinition = {
    type = "structure",
    id = "SkillDefinition",
    members = {
        schemaVersion = {
            type = "string",
        },
        inlineContent = {
            type = "string",
        },
    },
}

M.SkillMdDefinition = {
    type = "structure",
    id = "SkillMdDefinition",
    members = {
        inlineContent = {
            type = "string",
        },
    },
}

M.AgentSkillsDescriptor = {
    type = "structure",
    id = "AgentSkillsDescriptor",
    members = {
        skillMd = M.SkillMdDefinition,
        skillDefinition = M.SkillDefinition,
    },
}

M.CreateApiKeyCredentialProviderInput = {
    type = "structure",
    id = "CreateApiKeyCredentialProviderInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Secret = {
    type = "structure",
    id = "Secret",
    members = {
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateApiKeyCredentialProviderOutput = {
    type = "structure",
    id = "CreateApiKeyCredentialProviderOutput",
    members = {
        apiKeySecretArn = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Secret }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DecryptionFailure = {
    type = "structure",
    id = "DecryptionFailure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EncryptionFailure = {
    type = "structure",
    id = "EncryptionFailure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    id = "ResourceLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteApiKeyCredentialProviderInput = {
    type = "structure",
    id = "DeleteApiKeyCredentialProviderInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApiKeyCredentialProviderOutput = {
    type = "structure",
    id = "DeleteApiKeyCredentialProviderOutput",
}

M.GetApiKeyCredentialProviderInput = {
    type = "structure",
    id = "GetApiKeyCredentialProviderInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetApiKeyCredentialProviderOutput = {
    type = "structure",
    id = "GetApiKeyCredentialProviderOutput",
    members = {
        apiKeySecretArn = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Secret }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListApiKeyCredentialProvidersInput = {
    type = "structure",
    id = "ListApiKeyCredentialProvidersInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
            },
        },
    },
}

M.ApiKeyCredentialProviderItem = {
    type = "structure",
    id = "ApiKeyCredentialProviderItem",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListApiKeyCredentialProvidersOutput = {
    type = "structure",
    id = "ListApiKeyCredentialProvidersOutput",
    members = {
        credentialProviders = {
            type = "list",
            member = M.ApiKeyCredentialProviderItem,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateApiKeyCredentialProviderInput = {
    type = "structure",
    id = "UpdateApiKeyCredentialProviderInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateApiKeyCredentialProviderOutput = {
    type = "structure",
    id = "UpdateApiKeyCredentialProviderOutput",
    members = {
        apiKeySecretArn = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Secret }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBrowserProfileInput = {
    type = "structure",
    id = "CreateBrowserProfileInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BrowserProfileStatus = {
    READY = "READY",
    DELETING = "DELETING",
    DELETED = "DELETED",
    SAVING = "SAVING",
}

M.CreateBrowserProfileOutput = {
    type = "structure",
    id = "CreateBrowserProfileOutput",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        profileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBrowserProfileInput = {
    type = "structure",
    id = "DeleteBrowserProfileInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteBrowserProfileOutput = {
    type = "structure",
    id = "DeleteBrowserProfileOutput",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        profileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastSavedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetBrowserProfileInput = {
    type = "structure",
    id = "GetBrowserProfileInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBrowserProfileOutput = {
    type = "structure",
    id = "GetBrowserProfileOutput",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        profileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastSavedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastSavedBrowserSessionId = {
            type = "string",
        },
        lastSavedBrowserId = {
            type = "string",
        },
    },
}

M.ListBrowserProfilesInput = {
    type = "structure",
    id = "ListBrowserProfilesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        name = {
            type = "string",
        },
    },
}

M.BrowserProfileSummary = {
    type = "structure",
    id = "BrowserProfileSummary",
    members = {
        profileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        profileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastSavedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastSavedBrowserSessionId = {
            type = "string",
        },
        lastSavedBrowserId = {
            type = "string",
        },
    },
}

M.ListBrowserProfilesOutput = {
    type = "structure",
    id = "ListBrowserProfilesOutput",
    members = {
        profileSummaries = {
            type = "list",
            member = M.BrowserProfileSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.BrowserSigningConfigInput = {
    type = "structure",
    id = "BrowserSigningConfigInput",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.SecretsManagerLocation = {
    type = "structure",
    id = "SecretsManagerLocation",
    members = {
        secretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CertificateLocation = {
    type = "union",
    id = "CertificateLocation",
    members = {
        secretsManager = M.SecretsManagerLocation,
    },
}

M.Certificate = {
    type = "structure",
    id = "Certificate",
    members = {
        location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CertificateLocation }),
    },
}

M.ResourceLocation = {
    type = "union",
    id = "ResourceLocation",
    members = {
        s3 = M.S3Location,
    },
}

M.BrowserEnterprisePolicyType = {
    MANAGED = "MANAGED",
    RECOMMENDED = "RECOMMENDED",
}

M.BrowserEnterprisePolicy = {
    type = "structure",
    id = "BrowserEnterprisePolicy",
    members = {
        location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceLocation }),
        type = {
            type = "string",
        },
    },
}

M.BrowserNetworkMode = {
    PUBLIC = "PUBLIC",
    VPC = "VPC",
}

M.BrowserNetworkConfiguration = {
    type = "structure",
    id = "BrowserNetworkConfiguration",
    members = {
        networkMode = {
            type = "string",
            traits = {
                default = "PUBLIC",
                required = true,
            },
        },
        vpcConfig = M.VpcConfig,
    },
}

M.RecordingConfig = {
    type = "structure",
    id = "RecordingConfig",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        s3Location = M.S3Location,
    },
}

M.CreateBrowserInput = {
    type = "structure",
    id = "CreateBrowserInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        networkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BrowserNetworkConfiguration }),
        recording = M.RecordingConfig,
        browserSigning = M.BrowserSigningConfigInput,
        enterprisePolicies = {
            type = "list",
            member = M.BrowserEnterprisePolicy,
        },
        certificates = {
            type = "list",
            member = M.Certificate,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BrowserStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    READY = "READY",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
}

M.CreateBrowserOutput = {
    type = "structure",
    id = "CreateBrowserOutput",
    members = {
        browserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        browserArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBrowserInput = {
    type = "structure",
    id = "DeleteBrowserInput",
    members = {
        browserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteBrowserOutput = {
    type = "structure",
    id = "DeleteBrowserOutput",
    members = {
        browserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetBrowserInput = {
    type = "structure",
    id = "GetBrowserInput",
    members = {
        browserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.BrowserSigningConfigOutput = {
    type = "structure",
    id = "BrowserSigningConfigOutput",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.GetBrowserOutput = {
    type = "structure",
    id = "GetBrowserOutput",
    members = {
        browserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        browserArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        networkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BrowserNetworkConfiguration }),
        recording = M.RecordingConfig,
        browserSigning = M.BrowserSigningConfigOutput,
        enterprisePolicies = {
            type = "list",
            member = M.BrowserEnterprisePolicy,
        },
        certificates = {
            type = "list",
            member = M.Certificate,
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureReason = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ResourceType = {
    SYSTEM = "SYSTEM",
    CUSTOM = "CUSTOM",
}

M.ListBrowsersInput = {
    type = "structure",
    id = "ListBrowsersInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
    },
}

M.BrowserSummary = {
    type = "structure",
    id = "BrowserSummary",
    members = {
        browserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        browserArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListBrowsersOutput = {
    type = "structure",
    id = "ListBrowsersOutput",
    members = {
        browserSummaries = {
            type = "list",
            member = M.BrowserSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CodeInterpreterNetworkMode = {
    PUBLIC = "PUBLIC",
    SANDBOX = "SANDBOX",
    VPC = "VPC",
}

M.CodeInterpreterNetworkConfiguration = {
    type = "structure",
    id = "CodeInterpreterNetworkConfiguration",
    members = {
        networkMode = {
            type = "string",
            traits = {
                default = "SANDBOX",
                required = true,
            },
        },
        vpcConfig = M.VpcConfig,
    },
}

M.CreateCodeInterpreterInput = {
    type = "structure",
    id = "CreateCodeInterpreterInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        networkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeInterpreterNetworkConfiguration }),
        certificates = {
            type = "list",
            member = M.Certificate,
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CodeInterpreterStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    READY = "READY",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    DELETED = "DELETED",
}

M.CreateCodeInterpreterOutput = {
    type = "structure",
    id = "CreateCodeInterpreterOutput",
    members = {
        codeInterpreterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        codeInterpreterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCodeInterpreterInput = {
    type = "structure",
    id = "DeleteCodeInterpreterInput",
    members = {
        codeInterpreterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteCodeInterpreterOutput = {
    type = "structure",
    id = "DeleteCodeInterpreterOutput",
    members = {
        codeInterpreterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetCodeInterpreterInput = {
    type = "structure",
    id = "GetCodeInterpreterInput",
    members = {
        codeInterpreterId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCodeInterpreterOutput = {
    type = "structure",
    id = "GetCodeInterpreterOutput",
    members = {
        codeInterpreterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        codeInterpreterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        executionRoleArn = {
            type = "string",
        },
        networkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CodeInterpreterNetworkConfiguration }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificates = {
            type = "list",
            member = M.Certificate,
        },
        failureReason = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListCodeInterpretersInput = {
    type = "structure",
    id = "ListCodeInterpretersInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
    },
}

M.CodeInterpreterSummary = {
    type = "structure",
    id = "CodeInterpreterSummary",
    members = {
        codeInterpreterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        codeInterpreterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListCodeInterpretersOutput = {
    type = "structure",
    id = "ListCodeInterpretersOutput",
    members = {
        codeInterpreterSummaries = {
            type = "list",
            member = M.CodeInterpreterSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ComponentConfiguration = {
    type = "structure",
    id = "ComponentConfiguration",
    members = {
        configuration = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.VersionCreatedBySource = {
    type = "structure",
    id = "VersionCreatedBySource",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
        },
    },
}

M.CreateConfigurationBundleInput = {
    type = "structure",
    id = "CreateConfigurationBundleInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        bundleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        components = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentConfiguration,
            traits = {
                required = true,
            },
        },
        branchName = {
            type = "string",
        },
        commitMessage = {
            type = "string",
        },
        createdBy = M.VersionCreatedBySource,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateConfigurationBundleOutput = {
    type = "structure",
    id = "CreateConfigurationBundleOutput",
    members = {
        bundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfigurationBundleInput = {
    type = "structure",
    id = "DeleteConfigurationBundleInput",
    members = {
        bundleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ConfigurationBundleStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.DeleteConfigurationBundleOutput = {
    type = "structure",
    id = "DeleteConfigurationBundleOutput",
    members = {
        bundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConfigurationBundleInput = {
    type = "structure",
    id = "GetConfigurationBundleInput",
    members = {
        bundleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        branchName = {
            type = "string",
            traits = {
                http_query = "branchName",
            },
        },
    },
}

M.VersionLineageMetadata = {
    type = "structure",
    id = "VersionLineageMetadata",
    members = {
        parentVersionIds = {
            type = "list",
            member = { type = "string" },
        },
        branchName = {
            type = "string",
        },
        createdBy = M.VersionCreatedBySource,
        commitMessage = {
            type = "string",
        },
    },
}

M.GetConfigurationBundleOutput = {
    type = "structure",
    id = "GetConfigurationBundleOutput",
    members = {
        bundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        versionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        components = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentConfiguration,
            traits = {
                required = true,
            },
        },
        lineageMetadata = M.VersionLineageMetadata,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetConfigurationBundleVersionInput = {
    type = "structure",
    id = "GetConfigurationBundleVersionInput",
    members = {
        bundleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfigurationBundleVersionOutput = {
    type = "structure",
    id = "GetConfigurationBundleVersionOutput",
    members = {
        bundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        versionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        components = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentConfiguration,
            traits = {
                required = true,
            },
        },
        lineageMetadata = M.VersionLineageMetadata,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        versionCreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListConfigurationBundlesInput = {
    type = "structure",
    id = "ListConfigurationBundlesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ConfigurationBundleSummary = {
    type = "structure",
    id = "ConfigurationBundleSummary",
    members = {
        bundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.ListConfigurationBundlesOutput = {
    type = "structure",
    id = "ListConfigurationBundlesOutput",
    members = {
        bundles = {
            type = "list",
            member = M.ConfigurationBundleSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.VersionFilter = {
    type = "structure",
    id = "VersionFilter",
    members = {
        branchName = {
            type = "string",
        },
        createdByName = {
            type = "string",
        },
        latestPerBranch = {
            type = "boolean",
        },
    },
}

M.ListConfigurationBundleVersionsInput = {
    type = "structure",
    id = "ListConfigurationBundleVersionsInput",
    members = {
        bundleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        filter = M.VersionFilter,
    },
}

M.ConfigurationBundleVersionSummary = {
    type = "structure",
    id = "ConfigurationBundleVersionSummary",
    members = {
        bundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lineageMetadata = M.VersionLineageMetadata,
        versionCreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListConfigurationBundleVersionsOutput = {
    type = "structure",
    id = "ListConfigurationBundleVersionsOutput",
    members = {
        versions = {
            type = "list",
            member = M.ConfigurationBundleVersionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateConfigurationBundleInput = {
    type = "structure",
    id = "UpdateConfigurationBundleInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        bundleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        bundleName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        components = {
            type = "map",
            key = { type = "string" },
            value = M.ComponentConfiguration,
        },
        parentVersionIds = {
            type = "list",
            member = { type = "string" },
        },
        branchName = {
            type = "string",
        },
        commitMessage = {
            type = "string",
        },
        createdBy = M.VersionCreatedBySource,
    },
}

M.UpdateConfigurationBundleOutput = {
    type = "structure",
    id = "UpdateConfigurationBundleOutput",
    members = {
        bundleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        versionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
}

M.LambdaEvaluatorConfig = {
    type = "structure",
    id = "LambdaEvaluatorConfig",
    members = {
        lambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lambdaTimeoutInSeconds = {
            type = "integer",
        },
    },
}

M.CodeBasedEvaluatorConfig = {
    type = "union",
    id = "CodeBasedEvaluatorConfig",
    members = {
        lambdaConfig = M.LambdaEvaluatorConfig,
    },
}

M.InferenceConfiguration = {
    type = "structure",
    id = "InferenceConfiguration",
    members = {
        maxTokens = {
            type = "integer",
        },
        temperature = {
            type = "float",
        },
        topP = {
            type = "float",
        },
        stopSequences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BedrockEvaluatorModelConfig = {
    type = "structure",
    id = "BedrockEvaluatorModelConfig",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inferenceConfig = M.InferenceConfiguration,
        additionalModelRequestFields = {
            type = "document",
        },
    },
}

M.EvaluatorModelConfig = {
    type = "union",
    id = "EvaluatorModelConfig",
    members = {
        bedrockEvaluatorModelConfig = M.BedrockEvaluatorModelConfig,
    },
}

M.CategoricalScaleDefinition = {
    type = "structure",
    id = "CategoricalScaleDefinition",
    members = {
        definition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        label = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NumericalScaleDefinition = {
    type = "structure",
    id = "NumericalScaleDefinition",
    members = {
        definition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "double",
            traits = {
                required = true,
            },
        },
        label = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RatingScale = {
    type = "union",
    id = "RatingScale",
    members = {
        numerical = {
            type = "list",
            member = M.NumericalScaleDefinition,
        },
        categorical = {
            type = "list",
            member = M.CategoricalScaleDefinition,
        },
    },
}

M.LlmAsAJudgeEvaluatorConfig = {
    type = "structure",
    id = "LlmAsAJudgeEvaluatorConfig",
    members = {
        instructions = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ratingScale = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RatingScale }),
        modelConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluatorModelConfig }),
    },
}

M.EvaluatorConfig = {
    type = "union",
    id = "EvaluatorConfig",
    members = {
        llmAsAJudge = M.LlmAsAJudgeEvaluatorConfig,
        codeBased = M.CodeBasedEvaluatorConfig,
    },
}

M.EvaluatorLevel = {
    TOOL_CALL = "TOOL_CALL",
    TRACE = "TRACE",
    SESSION = "SESSION",
}

M.CreateEvaluatorInput = {
    type = "structure",
    id = "CreateEvaluatorInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        evaluatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        evaluatorConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluatorConfig }),
        level = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.EvaluatorStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
}

M.CreateEvaluatorOutput = {
    type = "structure",
    id = "CreateEvaluatorOutput",
    members = {
        evaluatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluatorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEvaluatorInput = {
    type = "structure",
    id = "DeleteEvaluatorInput",
    members = {
        evaluatorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEvaluatorOutput = {
    type = "structure",
    id = "DeleteEvaluatorOutput",
    members = {
        evaluatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluatorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IncludedData = {
    ALL_DATA = "ALL_DATA",
    METADATA_ONLY = "METADATA_ONLY",
}

M.GetEvaluatorInput = {
    type = "structure",
    id = "GetEvaluatorInput",
    members = {
        evaluatorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        includedData = {
            type = "string",
            traits = {
                http_query = "includedData",
            },
        },
    },
}

M.GetEvaluatorOutput = {
    type = "structure",
    id = "GetEvaluatorOutput",
    members = {
        evaluatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluatorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        evaluatorConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EvaluatorConfig }),
        level = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lockedForModification = {
            type = "boolean",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.ListEvaluatorsInput = {
    type = "structure",
    id = "ListEvaluatorsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.EvaluatorType = {
    BUILTIN = "Builtin",
    CUSTOM = "Custom",
    CODE = "CustomCode",
}

M.EvaluatorSummary = {
    type = "structure",
    id = "EvaluatorSummary",
    members = {
        evaluatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluatorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluatorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        evaluatorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        level = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lockedForModification = {
            type = "boolean",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.ListEvaluatorsOutput = {
    type = "structure",
    id = "ListEvaluatorsOutput",
    members = {
        evaluators = {
            type = "list",
            member = M.EvaluatorSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateEvaluatorInput = {
    type = "structure",
    id = "UpdateEvaluatorInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        evaluatorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        evaluatorConfig = M.EvaluatorConfig,
        level = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.UpdateEvaluatorOutput = {
    type = "structure",
    id = "UpdateEvaluatorOutput",
    members = {
        evaluatorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        evaluatorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthorizerType = {
    CUSTOM_JWT = "CUSTOM_JWT",
    AWS_IAM = "AWS_IAM",
    NONE = "NONE",
    AUTHENTICATE_ONLY = "AUTHENTICATE_ONLY",
}

M.ExceptionLevel = {
    DEBUG = "DEBUG",
}

M.InterceptorInputConfiguration = {
    type = "structure",
    id = "InterceptorInputConfiguration",
    members = {
        passRequestHeaders = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.GatewayInterceptionPoint = {
    REQUEST = "REQUEST",
    RESPONSE = "RESPONSE",
}

M.LambdaInterceptorConfiguration = {
    type = "structure",
    id = "LambdaInterceptorConfiguration",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InterceptorConfiguration = {
    type = "union",
    id = "InterceptorConfiguration",
    members = {
        lambda = M.LambdaInterceptorConfiguration,
    },
}

M.GatewayInterceptorConfiguration = {
    type = "structure",
    id = "GatewayInterceptorConfiguration",
    members = {
        interceptor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InterceptorConfiguration }),
        interceptionPoints = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        inputConfiguration = M.InterceptorInputConfiguration,
    },
}

M.GatewayPolicyEngineMode = {
    LOG_ONLY = "LOG_ONLY",
    ENFORCE = "ENFORCE",
}

M.GatewayPolicyEngineConfiguration = {
    type = "structure",
    id = "GatewayPolicyEngineConfiguration",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchType = {
    SEMANTIC = "SEMANTIC",
}

M.MCPGatewayConfiguration = {
    type = "structure",
    id = "MCPGatewayConfiguration",
    members = {
        supportedVersions = {
            type = "list",
            member = { type = "string" },
        },
        instructions = {
            type = "string",
        },
        searchType = {
            type = "string",
        },
    },
}

M.GatewayProtocolConfiguration = {
    type = "union",
    id = "GatewayProtocolConfiguration",
    members = {
        mcp = M.MCPGatewayConfiguration,
    },
}

M.GatewayProtocolType = {
    MCP = "MCP",
}

M.CreateGatewayInput = {
    type = "structure",
    id = "CreateGatewayInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        protocolType = {
            type = "string",
            traits = {
                default = "MCP",
            },
        },
        protocolConfiguration = M.GatewayProtocolConfiguration,
        authorizerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        kmsKeyArn = {
            type = "string",
        },
        interceptorConfigurations = {
            type = "list",
            member = M.GatewayInterceptorConfiguration,
        },
        policyEngineConfiguration = M.GatewayPolicyEngineConfiguration,
        exceptionLevel = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GatewayStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    UPDATE_UNSUCCESSFUL = "UPDATE_UNSUCCESSFUL",
    DELETING = "DELETING",
    READY = "READY",
    FAILED = "FAILED",
}

M.CreateGatewayOutput = {
    type = "structure",
    id = "CreateGatewayOutput",
    members = {
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayUrl = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        protocolType = {
            type = "string",
            traits = {
                default = "MCP",
            },
        },
        protocolConfiguration = M.GatewayProtocolConfiguration,
        authorizerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        kmsKeyArn = {
            type = "string",
        },
        interceptorConfigurations = {
            type = "list",
            member = M.GatewayInterceptorConfiguration,
        },
        policyEngineConfiguration = M.GatewayPolicyEngineConfiguration,
        workloadIdentityDetails = M.WorkloadIdentityDetails,
        exceptionLevel = {
            type = "string",
        },
    },
}

M.DeleteGatewayInput = {
    type = "structure",
    id = "DeleteGatewayInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGatewayOutput = {
    type = "structure",
    id = "DeleteGatewayOutput",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetGatewayInput = {
    type = "structure",
    id = "GetGatewayInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGatewayOutput = {
    type = "structure",
    id = "GetGatewayOutput",
    members = {
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayUrl = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        protocolType = {
            type = "string",
            traits = {
                default = "MCP",
            },
        },
        protocolConfiguration = M.GatewayProtocolConfiguration,
        authorizerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        kmsKeyArn = {
            type = "string",
        },
        interceptorConfigurations = {
            type = "list",
            member = M.GatewayInterceptorConfiguration,
        },
        policyEngineConfiguration = M.GatewayPolicyEngineConfiguration,
        workloadIdentityDetails = M.WorkloadIdentityDetails,
        exceptionLevel = {
            type = "string",
        },
    },
}

M.ListGatewaysInput = {
    type = "structure",
    id = "ListGatewaysInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GatewaySummary = {
    type = "structure",
    id = "GatewaySummary",
    members = {
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        authorizerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        protocolType = {
            type = "string",
            traits = {
                default = "MCP",
            },
        },
    },
}

M.ListGatewaysOutput = {
    type = "structure",
    id = "ListGatewaysOutput",
    members = {
        items = {
            type = "list",
            member = M.GatewaySummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateGatewayInput = {
    type = "structure",
    id = "UpdateGatewayInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        protocolType = {
            type = "string",
            traits = {
                default = "MCP",
            },
        },
        protocolConfiguration = M.GatewayProtocolConfiguration,
        authorizerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        kmsKeyArn = {
            type = "string",
        },
        interceptorConfigurations = {
            type = "list",
            member = M.GatewayInterceptorConfiguration,
        },
        policyEngineConfiguration = M.GatewayPolicyEngineConfiguration,
        exceptionLevel = {
            type = "string",
        },
    },
}

M.UpdateGatewayOutput = {
    type = "structure",
    id = "UpdateGatewayOutput",
    members = {
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayUrl = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        protocolType = {
            type = "string",
            traits = {
                default = "MCP",
            },
        },
        protocolConfiguration = M.GatewayProtocolConfiguration,
        authorizerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        kmsKeyArn = {
            type = "string",
        },
        interceptorConfigurations = {
            type = "list",
            member = M.GatewayInterceptorConfiguration,
        },
        policyEngineConfiguration = M.GatewayPolicyEngineConfiguration,
        workloadIdentityDetails = M.WorkloadIdentityDetails,
        exceptionLevel = {
            type = "string",
        },
    },
}

M.MatchPaths = {
    type = "structure",
    id = "MatchPaths",
    members = {
        anyOf = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PrincipalMatchOperator = {
    StringEquals = "StringEquals",
    StringLike = "StringLike",
}

M.IamPrincipal = {
    type = "structure",
    id = "IamPrincipal",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
        },
    },
}

M.MatchPrincipalEntry = {
    type = "union",
    id = "MatchPrincipalEntry",
    members = {
        iamPrincipal = M.IamPrincipal,
    },
}

M.MatchPrincipals = {
    type = "structure",
    id = "MatchPrincipals",
    members = {
        anyOf = {
            type = "list",
            member = M.MatchPrincipalEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.Condition = {
    type = "union",
    id = "Condition",
    members = {
        matchPrincipals = M.MatchPrincipals,
        matchPaths = M.MatchPaths,
    },
}

M.CreateGatewayRuleInput = {
    type = "structure",
    id = "CreateGatewayRuleInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        conditions = {
            type = "list",
            member = M.Condition,
        },
        actions = {
            type = "list",
            member = M.Action,
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.GatewayRuleStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
}

M.SystemManagedBlock = {
    type = "structure",
    id = "SystemManagedBlock",
    members = {
        managedBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateGatewayRuleOutput = {
    type = "structure",
    id = "CreateGatewayRuleOutput",
    members = {
        ruleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        conditions = {
            type = "list",
            member = M.Condition,
        },
        actions = {
            type = "list",
            member = M.Action,
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        system = M.SystemManagedBlock,
    },
}

M.DeleteGatewayRuleInput = {
    type = "structure",
    id = "DeleteGatewayRuleInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ruleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGatewayRuleOutput = {
    type = "structure",
    id = "DeleteGatewayRuleOutput",
    members = {
        ruleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetGatewayRuleInput = {
    type = "structure",
    id = "GetGatewayRuleInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ruleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGatewayRuleOutput = {
    type = "structure",
    id = "GetGatewayRuleOutput",
    members = {
        ruleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        conditions = {
            type = "list",
            member = M.Condition,
        },
        actions = {
            type = "list",
            member = M.Action,
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        system = M.SystemManagedBlock,
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListGatewayRulesInput = {
    type = "structure",
    id = "ListGatewayRulesInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.GatewayRuleDetail = {
    type = "structure",
    id = "GatewayRuleDetail",
    members = {
        ruleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        conditions = {
            type = "list",
            member = M.Condition,
        },
        actions = {
            type = "list",
            member = M.Action,
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        system = M.SystemManagedBlock,
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListGatewayRulesOutput = {
    type = "structure",
    id = "ListGatewayRulesOutput",
    members = {
        gatewayRules = {
            type = "list",
            member = M.GatewayRuleDetail,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateGatewayRuleInput = {
    type = "structure",
    id = "UpdateGatewayRuleInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ruleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        priority = {
            type = "integer",
        },
        conditions = {
            type = "list",
            member = M.Condition,
        },
        actions = {
            type = "list",
            member = M.Action,
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateGatewayRuleOutput = {
    type = "structure",
    id = "UpdateGatewayRuleOutput",
    members = {
        ruleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        conditions = {
            type = "list",
            member = M.Condition,
        },
        actions = {
            type = "list",
            member = M.Action,
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        system = M.SystemManagedBlock,
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ApiKeyCredentialLocation = {
    HEADER = "HEADER",
    QUERY_PARAMETER = "QUERY_PARAMETER",
}

M.GatewayApiKeyCredentialProvider = {
    type = "structure",
    id = "GatewayApiKeyCredentialProvider",
    members = {
        providerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialParameterName = {
            type = "string",
        },
        credentialPrefix = {
            type = "string",
        },
        credentialLocation = {
            type = "string",
        },
    },
}

M.IamCredentialProvider = {
    type = "structure",
    id = "IamCredentialProvider",
    members = {
        service = {
            type = "string",
            traits = {
                required = true,
            },
        },
        region = {
            type = "string",
        },
    },
}

M.OAuthGrantType = {
    CLIENT_CREDENTIALS = "CLIENT_CREDENTIALS",
    AUTHORIZATION_CODE = "AUTHORIZATION_CODE",
    TOKEN_EXCHANGE = "TOKEN_EXCHANGE",
}

M.OAuthCredentialProvider = {
    type = "structure",
    id = "OAuthCredentialProvider",
    members = {
        providerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        customParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        grantType = {
            type = "string",
            traits = {
                default = "CLIENT_CREDENTIALS",
            },
        },
        defaultReturnUrl = {
            type = "string",
        },
    },
}

M.CredentialProvider = {
    type = "union",
    id = "CredentialProvider",
    members = {
        oauthCredentialProvider = M.OAuthCredentialProvider,
        apiKeyCredentialProvider = M.GatewayApiKeyCredentialProvider,
        iamCredentialProvider = M.IamCredentialProvider,
    },
}

M.CredentialProviderType = {
    GATEWAY_IAM_ROLE = "GATEWAY_IAM_ROLE",
    OAUTH = "OAUTH",
    API_KEY = "API_KEY",
    CALLER_IAM_CREDENTIALS = "CALLER_IAM_CREDENTIALS",
    JWT_PASSTHROUGH = "JWT_PASSTHROUGH",
}

M.CredentialProviderConfiguration = {
    type = "structure",
    id = "CredentialProviderConfiguration",
    members = {
        credentialProviderType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProvider = M.CredentialProvider,
    },
}

M.MetadataConfiguration = {
    type = "structure",
    id = "MetadataConfiguration",
    members = {
        allowedRequestHeaders = {
            type = "list",
            member = { type = "string" },
        },
        allowedQueryParameters = {
            type = "list",
            member = { type = "string" },
        },
        allowedResponseHeaders = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RuntimeTargetConfiguration = {
    type = "structure",
    id = "RuntimeTargetConfiguration",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        qualifier = {
            type = "string",
        },
    },
}

M.HttpTargetConfiguration = {
    type = "union",
    id = "HttpTargetConfiguration",
    members = {
        agentcoreRuntime = M.RuntimeTargetConfiguration,
    },
}

M.RestApiMethod = {
    GET = "GET",
    DELETE = "DELETE",
    HEAD = "HEAD",
    OPTIONS = "OPTIONS",
    PATCH = "PATCH",
    PUT = "PUT",
    POST = "POST",
}

M.ApiGatewayToolFilter = {
    type = "structure",
    id = "ApiGatewayToolFilter",
    members = {
        filterPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        methods = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ApiGatewayToolOverride = {
    type = "structure",
    id = "ApiGatewayToolOverride",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        method = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApiGatewayToolConfiguration = {
    type = "structure",
    id = "ApiGatewayToolConfiguration",
    members = {
        toolOverrides = {
            type = "list",
            member = M.ApiGatewayToolOverride,
        },
        toolFilters = {
            type = "list",
            member = M.ApiGatewayToolFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.ApiGatewayTargetConfiguration = {
    type = "structure",
    id = "ApiGatewayTargetConfiguration",
    members = {
        restApiId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiGatewayToolConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApiGatewayToolConfiguration }),
    },
}

M.SchemaType = {
    STRING = "string",
    NUMBER = "number",
    OBJECT = "object",
    ARRAY = "array",
    BOOLEAN = "boolean",
    INTEGER = "integer",
}

M.S3Configuration = {
    type = "structure",
    id = "S3Configuration",
    members = {
        uri = {
            type = "string",
        },
        bucketOwnerAccountId = {
            type = "string",
        },
    },
}

M.ListingMode = {
    DEFAULT = "DEFAULT",
    DYNAMIC = "DYNAMIC",
}

M.McpToolSchemaConfiguration = {
    type = "union",
    id = "McpToolSchemaConfiguration",
    members = {
        s3 = M.S3Configuration,
        inlinePayload = {
            type = "string",
        },
    },
}

M.McpServerTargetConfiguration = {
    type = "structure",
    id = "McpServerTargetConfiguration",
    members = {
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mcpToolSchema = M.McpToolSchemaConfiguration,
        listingMode = {
            type = "string",
        },
        resourcePriority = {
            type = "integer",
        },
    },
}

M.ApiSchemaConfiguration = {
    type = "union",
    id = "ApiSchemaConfiguration",
    members = {
        s3 = M.S3Configuration,
        inlinePayload = {
            type = "string",
        },
    },
}

M.OAuth2AuthorizationData = {
    type = "structure",
    id = "OAuth2AuthorizationData",
    members = {
        authorizationUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
        },
    },
}

M.AuthorizationData = {
    type = "union",
    id = "AuthorizationData",
    members = {
        oauth2 = M.OAuth2AuthorizationData,
    },
}

M.ManagedResourceDetails = {
    type = "structure",
    id = "ManagedResourceDetails",
    members = {
        domain = {
            type = "string",
        },
        resourceGatewayArn = {
            type = "string",
        },
        resourceAssociationArn = {
            type = "string",
        },
    },
}

M.TargetProtocolType = {
    MCP = "MCP",
    HTTP = "HTTP",
}

M.TargetStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    UPDATE_UNSUCCESSFUL = "UPDATE_UNSUCCESSFUL",
    DELETING = "DELETING",
    READY = "READY",
    FAILED = "FAILED",
    SYNCHRONIZING = "SYNCHRONIZING",
    SYNCHRONIZE_UNSUCCESSFUL = "SYNCHRONIZE_UNSUCCESSFUL",
    CREATE_PENDING_AUTH = "CREATE_PENDING_AUTH",
    UPDATE_PENDING_AUTH = "UPDATE_PENDING_AUTH",
    SYNCHRONIZE_PENDING_AUTH = "SYNCHRONIZE_PENDING_AUTH",
}

M.DeleteGatewayTargetInput = {
    type = "structure",
    id = "DeleteGatewayTargetInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGatewayTargetOutput = {
    type = "structure",
    id = "DeleteGatewayTargetOutput",
    members = {
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetGatewayTargetInput = {
    type = "structure",
    id = "GetGatewayTargetInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListGatewayTargetsInput = {
    type = "structure",
    id = "ListGatewayTargetsInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.TargetSummary = {
    type = "structure",
    id = "TargetSummary",
    members = {
        targetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        resourcePriority = {
            type = "integer",
        },
    },
}

M.ListGatewayTargetsOutput = {
    type = "structure",
    id = "ListGatewayTargetsOutput",
    members = {
        items = {
            type = "list",
            member = M.TargetSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SynchronizeGatewayTargetsInput = {
    type = "structure",
    id = "SynchronizeGatewayTargetsInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetIdList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    id = "GetResourcePolicyOutput",
    members = {
        policy = {
            type = "string",
        },
    },
}

M.GetTokenVaultInput = {
    type = "structure",
    id = "GetTokenVaultInput",
    members = {
        tokenVaultId = {
            type = "string",
        },
    },
}

M.KeyType = {
    CustomerManagedKey = "CustomerManagedKey",
    ServiceManagedKey = "ServiceManagedKey",
}

M.KmsConfiguration = {
    type = "structure",
    id = "KmsConfiguration",
    members = {
        keyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.GetTokenVaultOutput = {
    type = "structure",
    id = "GetTokenVaultOutput",
    members = {
        tokenVaultId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KmsConfiguration }),
        lastModifiedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessAgentCoreRuntimeEnvironmentRequest = {
    type = "structure",
    id = "HarnessAgentCoreRuntimeEnvironmentRequest",
    members = {
        lifecycleConfiguration = M.LifecycleConfiguration,
        networkConfiguration = M.NetworkConfiguration,
        filesystemConfigurations = {
            type = "list",
            member = M.FilesystemConfiguration,
        },
    },
}

M.HarnessEnvironmentProviderRequest = {
    type = "union",
    id = "HarnessEnvironmentProviderRequest",
    members = {
        agentCoreRuntimeEnvironment = M.HarnessAgentCoreRuntimeEnvironmentRequest,
    },
}

M.HarnessEnvironmentArtifact = {
    type = "union",
    id = "HarnessEnvironmentArtifact",
    members = {
        containerConfiguration = M.ContainerConfiguration,
    },
}

M.HarnessAgentCoreMemoryRetrievalConfig = {
    type = "structure",
    id = "HarnessAgentCoreMemoryRetrievalConfig",
    members = {
        topK = {
            type = "integer",
        },
        relevanceScore = {
            type = "float",
        },
        strategyId = {
            type = "string",
        },
    },
}

M.HarnessAgentCoreMemoryConfiguration = {
    type = "structure",
    id = "HarnessAgentCoreMemoryConfiguration",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actorId = {
            type = "string",
        },
        messagesCount = {
            type = "integer",
        },
        retrievalConfig = {
            type = "map",
            key = { type = "string" },
            value = M.HarnessAgentCoreMemoryRetrievalConfig,
        },
    },
}

M.HarnessMemoryConfiguration = {
    type = "union",
    id = "HarnessMemoryConfiguration",
    members = {
        agentCoreMemoryConfiguration = M.HarnessAgentCoreMemoryConfiguration,
    },
}

M.HarnessBedrockModelConfig = {
    type = "structure",
    id = "HarnessBedrockModelConfig",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxTokens = {
            type = "integer",
        },
        temperature = {
            type = "float",
        },
        topP = {
            type = "float",
        },
    },
}

M.HarnessGeminiModelConfig = {
    type = "structure",
    id = "HarnessGeminiModelConfig",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxTokens = {
            type = "integer",
        },
        temperature = {
            type = "float",
        },
        topP = {
            type = "float",
        },
        topK = {
            type = "integer",
        },
    },
}

M.HarnessOpenAiModelConfig = {
    type = "structure",
    id = "HarnessOpenAiModelConfig",
    members = {
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxTokens = {
            type = "integer",
        },
        temperature = {
            type = "float",
        },
        topP = {
            type = "float",
        },
    },
}

M.HarnessModelConfiguration = {
    type = "union",
    id = "HarnessModelConfiguration",
    members = {
        bedrockModelConfig = M.HarnessBedrockModelConfig,
        openAiModelConfig = M.HarnessOpenAiModelConfig,
        geminiModelConfig = M.HarnessGeminiModelConfig,
    },
}

M.HarnessSkill = {
    type = "union",
    id = "HarnessSkill",
    members = {
        path = {
            type = "string",
        },
    },
}

M.HarnessSystemContentBlock = {
    type = "union",
    id = "HarnessSystemContentBlock",
    members = {
        text = {
            type = "string",
        },
    },
}

M.HarnessAgentCoreBrowserConfig = {
    type = "structure",
    id = "HarnessAgentCoreBrowserConfig",
    members = {
        browserArn = {
            type = "string",
        },
    },
}

M.HarnessAgentCoreCodeInterpreterConfig = {
    type = "structure",
    id = "HarnessAgentCoreCodeInterpreterConfig",
    members = {
        codeInterpreterArn = {
            type = "string",
        },
    },
}

M.Unit = {
    type = "structure",
    id = "Unit",
}

M.HarnessGatewayOutboundAuth = {
    type = "union",
    id = "HarnessGatewayOutboundAuth",
    members = {
        awsIam = M.Unit,
        none = M.Unit,
        oauth = M.OAuthCredentialProvider,
    },
}

M.HarnessAgentCoreGatewayConfig = {
    type = "structure",
    id = "HarnessAgentCoreGatewayConfig",
    members = {
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outboundAuth = M.HarnessGatewayOutboundAuth,
    },
}

M.HarnessInlineFunctionConfig = {
    type = "structure",
    id = "HarnessInlineFunctionConfig",
    members = {
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputSchema = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.HarnessRemoteMcpConfig = {
    type = "structure",
    id = "HarnessRemoteMcpConfig",
    members = {
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        headers = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.HarnessToolConfiguration = {
    type = "union",
    id = "HarnessToolConfiguration",
    members = {
        remoteMcp = M.HarnessRemoteMcpConfig,
        agentCoreBrowser = M.HarnessAgentCoreBrowserConfig,
        agentCoreGateway = M.HarnessAgentCoreGatewayConfig,
        inlineFunction = M.HarnessInlineFunctionConfig,
        agentCoreCodeInterpreter = M.HarnessAgentCoreCodeInterpreterConfig,
    },
}

M.HarnessToolType = {
    REMOTE_MCP = "remote_mcp",
    AGENTCORE_BROWSER = "agentcore_browser",
    AGENTCORE_GATEWAY = "agentcore_gateway",
    INLINE_FUNCTION = "inline_function",
    AGENTCORE_CODE_INTERPRETER = "agentcore_code_interpreter",
}

M.HarnessTool = {
    type = "structure",
    id = "HarnessTool",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        config = M.HarnessToolConfiguration,
    },
}

M.HarnessSlidingWindowConfiguration = {
    type = "structure",
    id = "HarnessSlidingWindowConfiguration",
    members = {
        messagesCount = {
            type = "integer",
        },
    },
}

M.HarnessSummarizationConfiguration = {
    type = "structure",
    id = "HarnessSummarizationConfiguration",
    members = {
        summaryRatio = {
            type = "float",
        },
        preserveRecentMessages = {
            type = "integer",
        },
        summarizationSystemPrompt = {
            type = "string",
        },
    },
}

M.HarnessTruncationStrategyConfiguration = {
    type = "union",
    id = "HarnessTruncationStrategyConfiguration",
    members = {
        slidingWindow = M.HarnessSlidingWindowConfiguration,
        summarization = M.HarnessSummarizationConfiguration,
    },
}

M.HarnessTruncationStrategy = {
    SLIDING_WINDOW = "sliding_window",
    SUMMARIZATION = "summarization",
    NONE = "none",
}

M.HarnessTruncationConfiguration = {
    type = "structure",
    id = "HarnessTruncationConfiguration",
    members = {
        strategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        config = M.HarnessTruncationStrategyConfiguration,
    },
}

M.CreateHarnessInput = {
    type = "structure",
    id = "CreateHarnessInput",
    members = {
        harnessName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environment = M.HarnessEnvironmentProviderRequest,
        environmentArtifact = M.HarnessEnvironmentArtifact,
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        model = M.HarnessModelConfiguration,
        systemPrompt = {
            type = "list",
            member = M.HarnessSystemContentBlock,
        },
        tools = {
            type = "list",
            member = M.HarnessTool,
        },
        skills = {
            type = "list",
            member = M.HarnessSkill,
        },
        allowedTools = {
            type = "list",
            member = { type = "string" },
        },
        memory = M.HarnessMemoryConfiguration,
        truncation = M.HarnessTruncationConfiguration,
        maxIterations = {
            type = "integer",
        },
        maxTokens = {
            type = "integer",
        },
        timeoutSeconds = {
            type = "integer",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.HarnessAgentCoreRuntimeEnvironment = {
    type = "structure",
    id = "HarnessAgentCoreRuntimeEnvironment",
    members = {
        agentRuntimeArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentRuntimeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LifecycleConfiguration }),
        networkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NetworkConfiguration }),
        filesystemConfigurations = {
            type = "list",
            member = M.FilesystemConfiguration,
        },
    },
}

M.HarnessEnvironmentProvider = {
    type = "union",
    id = "HarnessEnvironmentProvider",
    members = {
        agentCoreRuntimeEnvironment = M.HarnessAgentCoreRuntimeEnvironment,
    },
}

M.HarnessStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    READY = "READY",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.Harness = {
    type = "structure",
    id = "Harness",
    members = {
        harnessId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        harnessName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        model = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarnessModelConfiguration }),
        systemPrompt = {
            type = "list",
            member = M.HarnessSystemContentBlock,
            traits = {
                required = true,
            },
        },
        tools = {
            type = "list",
            member = M.HarnessTool,
            traits = {
                required = true,
            },
        },
        skills = {
            type = "list",
            member = M.HarnessSkill,
            traits = {
                required = true,
            },
        },
        allowedTools = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        truncation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarnessTruncationConfiguration }),
        environment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HarnessEnvironmentProvider }),
        environmentArtifact = M.HarnessEnvironmentArtifact,
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        memory = M.HarnessMemoryConfiguration,
        maxIterations = {
            type = "integer",
        },
        maxTokens = {
            type = "integer",
        },
        timeoutSeconds = {
            type = "integer",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.CreateHarnessOutput = {
    type = "structure",
    id = "CreateHarnessOutput",
    members = {
        harness = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Harness }),
    },
}

M.DeleteHarnessInput = {
    type = "structure",
    id = "DeleteHarnessInput",
    members = {
        harnessId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
    },
}

M.DeleteHarnessOutput = {
    type = "structure",
    id = "DeleteHarnessOutput",
    members = {
        harness = M.Harness,
    },
}

M.GetHarnessInput = {
    type = "structure",
    id = "GetHarnessInput",
    members = {
        harnessId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetHarnessOutput = {
    type = "structure",
    id = "GetHarnessOutput",
    members = {
        harness = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Harness }),
    },
}

M.ListHarnessesInput = {
    type = "structure",
    id = "ListHarnessesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.HarnessSummary = {
    type = "structure",
    id = "HarnessSummary",
    members = {
        harnessId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        harnessName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListHarnessesOutput = {
    type = "structure",
    id = "ListHarnessesOutput",
    members = {
        harnesses = {
            type = "list",
            member = M.HarnessSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdatedAuthorizerConfiguration = {
    type = "structure",
    id = "UpdatedAuthorizerConfiguration",
    members = {
        optionalValue = M.AuthorizerConfiguration,
    },
}

M.UpdatedHarnessEnvironmentArtifact = {
    type = "structure",
    id = "UpdatedHarnessEnvironmentArtifact",
    members = {
        optionalValue = M.HarnessEnvironmentArtifact,
    },
}

M.UpdatedHarnessMemoryConfiguration = {
    type = "structure",
    id = "UpdatedHarnessMemoryConfiguration",
    members = {
        optionalValue = M.HarnessMemoryConfiguration,
    },
}

M.UpdateHarnessInput = {
    type = "structure",
    id = "UpdateHarnessInput",
    members = {
        harnessId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        executionRoleArn = {
            type = "string",
        },
        environment = M.HarnessEnvironmentProviderRequest,
        environmentArtifact = M.UpdatedHarnessEnvironmentArtifact,
        environmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        authorizerConfiguration = M.UpdatedAuthorizerConfiguration,
        model = M.HarnessModelConfiguration,
        systemPrompt = {
            type = "list",
            member = M.HarnessSystemContentBlock,
        },
        tools = {
            type = "list",
            member = M.HarnessTool,
        },
        skills = {
            type = "list",
            member = M.HarnessSkill,
        },
        allowedTools = {
            type = "list",
            member = { type = "string" },
        },
        memory = M.UpdatedHarnessMemoryConfiguration,
        truncation = M.HarnessTruncationConfiguration,
        maxIterations = {
            type = "integer",
        },
        maxTokens = {
            type = "integer",
        },
        timeoutSeconds = {
            type = "integer",
        },
    },
}

M.UpdateHarnessOutput = {
    type = "structure",
    id = "UpdateHarnessOutput",
    members = {
        harness = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Harness }),
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MetadataValueType = {
    STRING = "STRING",
    STRINGLIST = "STRINGLIST",
    NUMBER = "NUMBER",
}

M.IndexedKey = {
    type = "structure",
    id = "IndexedKey",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EpisodicOverrideConsolidationConfigurationInput = {
    type = "structure",
    id = "EpisodicOverrideConsolidationConfigurationInput",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EpisodicOverrideExtractionConfigurationInput = {
    type = "structure",
    id = "EpisodicOverrideExtractionConfigurationInput",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NumberValidation = {
    type = "structure",
    id = "NumberValidation",
    members = {
        minValue = {
            type = "double",
        },
        maxValue = {
            type = "double",
        },
    },
}

M.StringListValidation = {
    type = "structure",
    id = "StringListValidation",
    members = {
        allowedValues = {
            type = "list",
            member = { type = "string" },
        },
        maxItems = {
            type = "integer",
        },
    },
}

M.StringValidation = {
    type = "structure",
    id = "StringValidation",
    members = {
        allowedValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Validation = {
    type = "union",
    id = "Validation",
    members = {
        stringValidation = M.StringValidation,
        stringListValidation = M.StringListValidation,
        numberValidation = M.NumberValidation,
    },
}

M.LlmExtractionConfig = {
    type = "structure",
    id = "LlmExtractionConfig",
    members = {
        llmExtractionInstruction = {
            type = "string",
        },
        definition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        validation = M.Validation,
    },
}

M.ExtractionConfig = {
    type = "union",
    id = "ExtractionConfig",
    members = {
        llmExtractionConfig = M.LlmExtractionConfig,
    },
}

M.MetadataSchemaEntry = {
    type = "structure",
    id = "MetadataSchemaEntry",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
        extractionConfig = M.ExtractionConfig,
    },
}

M.MemoryRecordSchema = {
    type = "structure",
    id = "MemoryRecordSchema",
    members = {
        metadataSchema = {
            type = "list",
            member = M.MetadataSchemaEntry,
        },
    },
}

M.EpisodicOverrideReflectionConfigurationInput = {
    type = "structure",
    id = "EpisodicOverrideReflectionConfigurationInput",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
        namespaceTemplates = {
            type = "list",
            member = { type = "string" },
        },
        memoryRecordSchema = M.MemoryRecordSchema,
    },
}

M.EpisodicOverrideConfigurationInput = {
    type = "structure",
    id = "EpisodicOverrideConfigurationInput",
    members = {
        extraction = M.EpisodicOverrideExtractionConfigurationInput,
        consolidation = M.EpisodicOverrideConsolidationConfigurationInput,
        reflection = M.EpisodicOverrideReflectionConfigurationInput,
    },
}

M.InvocationConfigurationInput = {
    type = "structure",
    id = "InvocationConfigurationInput",
    members = {
        topicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payloadDeliveryBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MessageBasedTriggerInput = {
    type = "structure",
    id = "MessageBasedTriggerInput",
    members = {
        messageCount = {
            type = "integer",
            traits = {
                default = 6,
            },
        },
    },
}

M.TimeBasedTriggerInput = {
    type = "structure",
    id = "TimeBasedTriggerInput",
    members = {
        idleSessionTimeout = {
            type = "integer",
            traits = {
                default = 20,
            },
        },
    },
}

M.TokenBasedTriggerInput = {
    type = "structure",
    id = "TokenBasedTriggerInput",
    members = {
        tokenCount = {
            type = "integer",
            traits = {
                default = 5000,
            },
        },
    },
}

M.TriggerConditionInput = {
    type = "union",
    id = "TriggerConditionInput",
    members = {
        messageBasedTrigger = M.MessageBasedTriggerInput,
        tokenBasedTrigger = M.TokenBasedTriggerInput,
        timeBasedTrigger = M.TimeBasedTriggerInput,
    },
}

M.SelfManagedConfigurationInput = {
    type = "structure",
    id = "SelfManagedConfigurationInput",
    members = {
        triggerConditions = {
            type = "list",
            member = M.TriggerConditionInput,
        },
        invocationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InvocationConfigurationInput }),
        historicalContextWindowSize = {
            type = "integer",
            traits = {
                default = 4,
            },
        },
    },
}

M.SemanticOverrideConsolidationConfigurationInput = {
    type = "structure",
    id = "SemanticOverrideConsolidationConfigurationInput",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SemanticOverrideExtractionConfigurationInput = {
    type = "structure",
    id = "SemanticOverrideExtractionConfigurationInput",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SemanticOverrideConfigurationInput = {
    type = "structure",
    id = "SemanticOverrideConfigurationInput",
    members = {
        extraction = M.SemanticOverrideExtractionConfigurationInput,
        consolidation = M.SemanticOverrideConsolidationConfigurationInput,
    },
}

M.SummaryOverrideConsolidationConfigurationInput = {
    type = "structure",
    id = "SummaryOverrideConsolidationConfigurationInput",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SummaryOverrideConfigurationInput = {
    type = "structure",
    id = "SummaryOverrideConfigurationInput",
    members = {
        consolidation = M.SummaryOverrideConsolidationConfigurationInput,
    },
}

M.UserPreferenceOverrideConsolidationConfigurationInput = {
    type = "structure",
    id = "UserPreferenceOverrideConsolidationConfigurationInput",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserPreferenceOverrideExtractionConfigurationInput = {
    type = "structure",
    id = "UserPreferenceOverrideExtractionConfigurationInput",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserPreferenceOverrideConfigurationInput = {
    type = "structure",
    id = "UserPreferenceOverrideConfigurationInput",
    members = {
        extraction = M.UserPreferenceOverrideExtractionConfigurationInput,
        consolidation = M.UserPreferenceOverrideConsolidationConfigurationInput,
    },
}

M.CustomConfigurationInput = {
    type = "union",
    id = "CustomConfigurationInput",
    members = {
        semanticOverride = M.SemanticOverrideConfigurationInput,
        summaryOverride = M.SummaryOverrideConfigurationInput,
        userPreferenceOverride = M.UserPreferenceOverrideConfigurationInput,
        episodicOverride = M.EpisodicOverrideConfigurationInput,
        selfManagedConfiguration = M.SelfManagedConfigurationInput,
    },
}

M.CustomMemoryStrategyInput = {
    type = "structure",
    id = "CustomMemoryStrategyInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
        namespaceTemplates = {
            type = "list",
            member = { type = "string" },
        },
        configuration = M.CustomConfigurationInput,
        memoryRecordSchema = M.MemoryRecordSchema,
    },
}

M.EpisodicReflectionConfigurationInput = {
    type = "structure",
    id = "EpisodicReflectionConfigurationInput",
    members = {
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
        namespaceTemplates = {
            type = "list",
            member = { type = "string" },
        },
        memoryRecordSchema = M.MemoryRecordSchema,
    },
}

M.EpisodicMemoryStrategyInput = {
    type = "structure",
    id = "EpisodicMemoryStrategyInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
        namespaceTemplates = {
            type = "list",
            member = { type = "string" },
        },
        reflectionConfiguration = M.EpisodicReflectionConfigurationInput,
        memoryRecordSchema = M.MemoryRecordSchema,
    },
}

M.SemanticMemoryStrategyInput = {
    type = "structure",
    id = "SemanticMemoryStrategyInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
        namespaceTemplates = {
            type = "list",
            member = { type = "string" },
        },
        memoryRecordSchema = M.MemoryRecordSchema,
    },
}

M.SummaryMemoryStrategyInput = {
    type = "structure",
    id = "SummaryMemoryStrategyInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
        namespaceTemplates = {
            type = "list",
            member = { type = "string" },
        },
        memoryRecordSchema = M.MemoryRecordSchema,
    },
}

M.UserPreferenceMemoryStrategyInput = {
    type = "structure",
    id = "UserPreferenceMemoryStrategyInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
        namespaceTemplates = {
            type = "list",
            member = { type = "string" },
        },
        memoryRecordSchema = M.MemoryRecordSchema,
    },
}

M.MemoryStrategyInput = {
    type = "union",
    id = "MemoryStrategyInput",
    members = {
        semanticMemoryStrategy = M.SemanticMemoryStrategyInput,
        summaryMemoryStrategy = M.SummaryMemoryStrategyInput,
        userPreferenceMemoryStrategy = M.UserPreferenceMemoryStrategyInput,
        customMemoryStrategy = M.CustomMemoryStrategyInput,
        episodicMemoryStrategy = M.EpisodicMemoryStrategyInput,
    },
}

M.ContentLevel = {
    METADATA_ONLY = "METADATA_ONLY",
    FULL_CONTENT = "FULL_CONTENT",
}

M.ContentType = {
    MEMORY_RECORDS = "MEMORY_RECORDS",
}

M.ContentConfiguration = {
    type = "structure",
    id = "ContentConfiguration",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        level = {
            type = "string",
            traits = {
                default = "METADATA_ONLY",
            },
        },
    },
}

M.KinesisResource = {
    type = "structure",
    id = "KinesisResource",
    members = {
        dataStreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentConfigurations = {
            type = "list",
            member = M.ContentConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.StreamDeliveryResource = {
    type = "union",
    id = "StreamDeliveryResource",
    members = {
        kinesis = M.KinesisResource,
    },
}

M.StreamDeliveryResources = {
    type = "structure",
    id = "StreamDeliveryResources",
    members = {
        resources = {
            type = "list",
            member = M.StreamDeliveryResource,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMemoryInput = {
    type = "structure",
    id = "CreateMemoryInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        encryptionKeyArn = {
            type = "string",
        },
        memoryExecutionRoleArn = {
            type = "string",
        },
        eventExpiryDuration = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        memoryStrategies = {
            type = "list",
            member = M.MemoryStrategyInput,
        },
        indexedKeys = {
            type = "list",
            member = M.IndexedKey,
        },
        streamDeliveryResources = M.StreamDeliveryResources,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MemoryStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
    DELETING = "DELETING",
}

M.EpisodicConsolidationOverride = {
    type = "structure",
    id = "EpisodicConsolidationOverride",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SemanticConsolidationOverride = {
    type = "structure",
    id = "SemanticConsolidationOverride",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SummaryConsolidationOverride = {
    type = "structure",
    id = "SummaryConsolidationOverride",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserPreferenceConsolidationOverride = {
    type = "structure",
    id = "UserPreferenceConsolidationOverride",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomConsolidationConfiguration = {
    type = "union",
    id = "CustomConsolidationConfiguration",
    members = {
        semanticConsolidationOverride = M.SemanticConsolidationOverride,
        summaryConsolidationOverride = M.SummaryConsolidationOverride,
        userPreferenceConsolidationOverride = M.UserPreferenceConsolidationOverride,
        episodicConsolidationOverride = M.EpisodicConsolidationOverride,
    },
}

M.ConsolidationConfiguration = {
    type = "union",
    id = "ConsolidationConfiguration",
    members = {
        customConsolidationConfiguration = M.CustomConsolidationConfiguration,
    },
}

M.EpisodicExtractionOverride = {
    type = "structure",
    id = "EpisodicExtractionOverride",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SemanticExtractionOverride = {
    type = "structure",
    id = "SemanticExtractionOverride",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserPreferenceExtractionOverride = {
    type = "structure",
    id = "UserPreferenceExtractionOverride",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomExtractionConfiguration = {
    type = "union",
    id = "CustomExtractionConfiguration",
    members = {
        semanticExtractionOverride = M.SemanticExtractionOverride,
        userPreferenceExtractionOverride = M.UserPreferenceExtractionOverride,
        episodicExtractionOverride = M.EpisodicExtractionOverride,
    },
}

M.ExtractionConfiguration = {
    type = "union",
    id = "ExtractionConfiguration",
    members = {
        customExtractionConfiguration = M.CustomExtractionConfiguration,
    },
}

M.EpisodicReflectionOverride = {
    type = "structure",
    id = "EpisodicReflectionOverride",
    members = {
        appendToPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
        namespaceTemplates = {
            type = "list",
            member = { type = "string" },
        },
        memoryRecordSchema = M.MemoryRecordSchema,
    },
}

M.CustomReflectionConfiguration = {
    type = "union",
    id = "CustomReflectionConfiguration",
    members = {
        episodicReflectionOverride = M.EpisodicReflectionOverride,
    },
}

M.EpisodicReflectionConfiguration = {
    type = "structure",
    id = "EpisodicReflectionConfiguration",
    members = {
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
        namespaceTemplates = {
            type = "list",
            member = { type = "string" },
        },
        memoryRecordSchema = M.MemoryRecordSchema,
    },
}

M.ReflectionConfiguration = {
    type = "union",
    id = "ReflectionConfiguration",
    members = {
        customReflectionConfiguration = M.CustomReflectionConfiguration,
        episodicReflectionConfiguration = M.EpisodicReflectionConfiguration,
    },
}

M.InvocationConfiguration = {
    type = "structure",
    id = "InvocationConfiguration",
    members = {
        topicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payloadDeliveryBucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MessageBasedTrigger = {
    type = "structure",
    id = "MessageBasedTrigger",
    members = {
        messageCount = {
            type = "integer",
        },
    },
}

M.TimeBasedTrigger = {
    type = "structure",
    id = "TimeBasedTrigger",
    members = {
        idleSessionTimeout = {
            type = "integer",
        },
    },
}

M.TokenBasedTrigger = {
    type = "structure",
    id = "TokenBasedTrigger",
    members = {
        tokenCount = {
            type = "integer",
        },
    },
}

M.TriggerCondition = {
    type = "union",
    id = "TriggerCondition",
    members = {
        messageBasedTrigger = M.MessageBasedTrigger,
        tokenBasedTrigger = M.TokenBasedTrigger,
        timeBasedTrigger = M.TimeBasedTrigger,
    },
}

M.SelfManagedConfiguration = {
    type = "structure",
    id = "SelfManagedConfiguration",
    members = {
        triggerConditions = {
            type = "list",
            member = M.TriggerCondition,
            traits = {
                required = true,
            },
        },
        invocationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InvocationConfiguration }),
        historicalContextWindowSize = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.OverrideType = {
    SEMANTIC_OVERRIDE = "SEMANTIC_OVERRIDE",
    SUMMARY_OVERRIDE = "SUMMARY_OVERRIDE",
    USER_PREFERENCE_OVERRIDE = "USER_PREFERENCE_OVERRIDE",
    SELF_MANAGED = "SELF_MANAGED",
    EPISODIC_OVERRIDE = "EPISODIC_OVERRIDE",
}

M.StrategyConfiguration = {
    type = "structure",
    id = "StrategyConfiguration",
    members = {
        type = {
            type = "string",
        },
        extraction = M.ExtractionConfiguration,
        consolidation = M.ConsolidationConfiguration,
        reflection = M.ReflectionConfiguration,
        selfManagedConfiguration = M.SelfManagedConfiguration,
    },
}

M.MemoryStrategyStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.MemoryStrategyType = {
    SEMANTIC = "SEMANTIC",
    SUMMARIZATION = "SUMMARIZATION",
    USER_PREFERENCE = "USER_PREFERENCE",
    CUSTOM = "CUSTOM",
    EPISODIC = "EPISODIC",
}

M.MemoryStrategy = {
    type = "structure",
    id = "MemoryStrategy",
    members = {
        strategyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        configuration = M.StrategyConfiguration,
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        namespaceTemplates = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        memoryRecordSchema = M.MemoryRecordSchema,
    },
}

M.Memory = {
    type = "structure",
    id = "Memory",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        encryptionKeyArn = {
            type = "string",
        },
        memoryExecutionRoleArn = {
            type = "string",
        },
        eventExpiryDuration = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureReason = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        strategies = {
            type = "list",
            member = M.MemoryStrategy,
        },
        indexedKeys = {
            type = "list",
            member = M.IndexedKey,
        },
        streamDeliveryResources = M.StreamDeliveryResources,
    },
}

M.CreateMemoryOutput = {
    type = "structure",
    id = "CreateMemoryOutput",
    members = {
        memory = M.Memory,
    },
}

M.ServiceException = {
    type = "structure",
    id = "ServiceException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottledException = {
    type = "structure",
    id = "ThrottledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteMemoryInput = {
    type = "structure",
    id = "DeleteMemoryInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
            },
        },
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMemoryOutput = {
    type = "structure",
    id = "DeleteMemoryOutput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
    },
}

M.MemoryView = {
    FULL = "full",
    WITHOUT_DECRYPTION = "without_decryption",
}

M.GetMemoryInput = {
    type = "structure",
    id = "GetMemoryInput",
    members = {
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        view = {
            type = "string",
            traits = {
                default = "full",
                http_query = "view",
            },
        },
    },
}

M.GetMemoryOutput = {
    type = "structure",
    id = "GetMemoryOutput",
    members = {
        memory = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Memory }),
    },
}

M.ListMemoriesInput = {
    type = "structure",
    id = "ListMemoriesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.MemorySummary = {
    type = "structure",
    id = "MemorySummary",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMemoriesOutput = {
    type = "structure",
    id = "ListMemoriesOutput",
    members = {
        memories = {
            type = "list",
            member = M.MemorySummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeleteMemoryStrategyInput = {
    type = "structure",
    id = "DeleteMemoryStrategyInput",
    members = {
        memoryStrategyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomConsolidationConfigurationInput = {
    type = "union",
    id = "CustomConsolidationConfigurationInput",
    members = {
        semanticConsolidationOverride = M.SemanticOverrideConsolidationConfigurationInput,
        summaryConsolidationOverride = M.SummaryOverrideConsolidationConfigurationInput,
        userPreferenceConsolidationOverride = M.UserPreferenceOverrideConsolidationConfigurationInput,
        episodicConsolidationOverride = M.EpisodicOverrideConsolidationConfigurationInput,
    },
}

M.ModifyConsolidationConfiguration = {
    type = "union",
    id = "ModifyConsolidationConfiguration",
    members = {
        customConsolidationConfiguration = M.CustomConsolidationConfigurationInput,
    },
}

M.CustomExtractionConfigurationInput = {
    type = "union",
    id = "CustomExtractionConfigurationInput",
    members = {
        semanticExtractionOverride = M.SemanticOverrideExtractionConfigurationInput,
        userPreferenceExtractionOverride = M.UserPreferenceOverrideExtractionConfigurationInput,
        episodicExtractionOverride = M.EpisodicOverrideExtractionConfigurationInput,
    },
}

M.ModifyExtractionConfiguration = {
    type = "union",
    id = "ModifyExtractionConfiguration",
    members = {
        customExtractionConfiguration = M.CustomExtractionConfigurationInput,
    },
}

M.CustomReflectionConfigurationInput = {
    type = "union",
    id = "CustomReflectionConfigurationInput",
    members = {
        episodicReflectionOverride = M.EpisodicOverrideReflectionConfigurationInput,
    },
}

M.ModifyReflectionConfiguration = {
    type = "union",
    id = "ModifyReflectionConfiguration",
    members = {
        episodicReflectionConfiguration = M.EpisodicReflectionConfigurationInput,
        customReflectionConfiguration = M.CustomReflectionConfigurationInput,
    },
}

M.ModifyInvocationConfigurationInput = {
    type = "structure",
    id = "ModifyInvocationConfigurationInput",
    members = {
        topicArn = {
            type = "string",
        },
        payloadDeliveryBucketName = {
            type = "string",
        },
    },
}

M.ModifySelfManagedConfiguration = {
    type = "structure",
    id = "ModifySelfManagedConfiguration",
    members = {
        triggerConditions = {
            type = "list",
            member = M.TriggerConditionInput,
        },
        invocationConfiguration = M.ModifyInvocationConfigurationInput,
        historicalContextWindowSize = {
            type = "integer",
        },
    },
}

M.ModifyStrategyConfiguration = {
    type = "structure",
    id = "ModifyStrategyConfiguration",
    members = {
        extraction = M.ModifyExtractionConfiguration,
        consolidation = M.ModifyConsolidationConfiguration,
        reflection = M.ModifyReflectionConfiguration,
        selfManagedConfiguration = M.ModifySelfManagedConfiguration,
    },
}

M.ModifyMemoryStrategyInput = {
    type = "structure",
    id = "ModifyMemoryStrategyInput",
    members = {
        memoryStrategyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
        namespaceTemplates = {
            type = "list",
            member = { type = "string" },
        },
        configuration = M.ModifyStrategyConfiguration,
        memoryRecordSchema = M.MemoryRecordSchema,
    },
}

M.ModifyMemoryStrategies = {
    type = "structure",
    id = "ModifyMemoryStrategies",
    members = {
        addMemoryStrategies = {
            type = "list",
            member = M.MemoryStrategyInput,
        },
        modifyMemoryStrategies = {
            type = "list",
            member = M.ModifyMemoryStrategyInput,
        },
        deleteMemoryStrategies = {
            type = "list",
            member = M.DeleteMemoryStrategyInput,
        },
    },
}

M.UpdateMemoryInput = {
    type = "structure",
    id = "UpdateMemoryInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        memoryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        eventExpiryDuration = {
            type = "integer",
        },
        memoryExecutionRoleArn = {
            type = "string",
        },
        memoryStrategies = M.ModifyMemoryStrategies,
        addIndexedKeys = {
            type = "list",
            member = M.IndexedKey,
        },
        streamDeliveryResources = M.StreamDeliveryResources,
    },
}

M.UpdateMemoryOutput = {
    type = "structure",
    id = "UpdateMemoryOutput",
    members = {
        memory = M.Memory,
    },
}

M.CredentialProviderVendorType = {
    GoogleOauth2 = "GoogleOauth2",
    GithubOauth2 = "GithubOauth2",
    SlackOauth2 = "SlackOauth2",
    SalesforceOauth2 = "SalesforceOauth2",
    MicrosoftOauth2 = "MicrosoftOauth2",
    CustomOauth2 = "CustomOauth2",
    AtlassianOauth2 = "AtlassianOauth2",
    LinkedinOauth2 = "LinkedinOauth2",
    XOauth2 = "XOauth2",
    OktaOauth2 = "OktaOauth2",
    OneLoginOauth2 = "OneLoginOauth2",
    PingOneOauth2 = "PingOneOauth2",
    FacebookOauth2 = "FacebookOauth2",
    YandexOauth2 = "YandexOauth2",
    RedditOauth2 = "RedditOauth2",
    ZoomOauth2 = "ZoomOauth2",
    TwitchOauth2 = "TwitchOauth2",
    SpotifyOauth2 = "SpotifyOauth2",
    DropboxOauth2 = "DropboxOauth2",
    NotionOauth2 = "NotionOauth2",
    HubspotOauth2 = "HubspotOauth2",
    CyberArkOauth2 = "CyberArkOauth2",
    FusionAuthOauth2 = "FusionAuthOauth2",
    Auth0Oauth2 = "Auth0Oauth2",
    CognitoOauth2 = "CognitoOauth2",
}

M.AtlassianOauth2ProviderConfigInput = {
    type = "structure",
    id = "AtlassianOauth2ProviderConfigInput",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClientAuthenticationMethodType = {
    CLIENT_SECRET_BASIC = "CLIENT_SECRET_BASIC",
    CLIENT_SECRET_POST = "CLIENT_SECRET_POST",
    AWS_IAM_ID_TOKEN_JWT = "AWS_IAM_ID_TOKEN_JWT",
}

M.Oauth2AuthorizationServerMetadata = {
    type = "structure",
    id = "Oauth2AuthorizationServerMetadata",
    members = {
        issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizationEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tokenEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        responseTypes = {
            type = "list",
            member = { type = "string" },
        },
        tokenEndpointAuthMethods = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Oauth2Discovery = {
    type = "union",
    id = "Oauth2Discovery",
    members = {
        discoveryUrl = {
            type = "string",
        },
        authorizationServerMetadata = M.Oauth2AuthorizationServerMetadata,
    },
}

M.OnBehalfOfTokenExchangeGrantTypeType = {
    TOKEN_EXCHANGE = "TOKEN_EXCHANGE",
    JWT_AUTHORIZATION_GRANT = "JWT_AUTHORIZATION_GRANT",
}

M.TokenExchangeGrantTypeConfigType = {
    type = "structure",
    id = "TokenExchangeGrantTypeConfigType",
    members = {
        actorTokenContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actorTokenScopes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OnBehalfOfTokenExchangeConfigType = {
    type = "structure",
    id = "OnBehalfOfTokenExchangeConfigType",
    members = {
        grantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tokenExchangeGrantTypeConfig = M.TokenExchangeGrantTypeConfigType,
    },
}

M.CustomOauth2ProviderConfigInput = {
    type = "structure",
    id = "CustomOauth2ProviderConfigInput",
    members = {
        oauthDiscovery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2Discovery }),
        clientId = {
            type = "string",
            traits = {
                default = "",
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                default = "",
            },
        },
        privateEndpoint = M.PrivateEndpoint,
        privateEndpointOverrides = {
            type = "list",
            member = M.PrivateEndpointOverride,
        },
        onBehalfOfTokenExchangeConfig = M.OnBehalfOfTokenExchangeConfigType,
        clientAuthenticationMethod = {
            type = "string",
        },
    },
}

M.GithubOauth2ProviderConfigInput = {
    type = "structure",
    id = "GithubOauth2ProviderConfigInput",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GoogleOauth2ProviderConfigInput = {
    type = "structure",
    id = "GoogleOauth2ProviderConfigInput",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IncludedOauth2ProviderConfigInput = {
    type = "structure",
    id = "IncludedOauth2ProviderConfigInput",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        issuer = {
            type = "string",
        },
        authorizationEndpoint = {
            type = "string",
        },
        tokenEndpoint = {
            type = "string",
        },
    },
}

M.LinkedinOauth2ProviderConfigInput = {
    type = "structure",
    id = "LinkedinOauth2ProviderConfigInput",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MicrosoftOauth2ProviderConfigInput = {
    type = "structure",
    id = "MicrosoftOauth2ProviderConfigInput",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tenantId = {
            type = "string",
        },
    },
}

M.SalesforceOauth2ProviderConfigInput = {
    type = "structure",
    id = "SalesforceOauth2ProviderConfigInput",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlackOauth2ProviderConfigInput = {
    type = "structure",
    id = "SlackOauth2ProviderConfigInput",
    members = {
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Oauth2ProviderConfigInput = {
    type = "union",
    id = "Oauth2ProviderConfigInput",
    members = {
        customOauth2ProviderConfig = M.CustomOauth2ProviderConfigInput,
        googleOauth2ProviderConfig = M.GoogleOauth2ProviderConfigInput,
        githubOauth2ProviderConfig = M.GithubOauth2ProviderConfigInput,
        slackOauth2ProviderConfig = M.SlackOauth2ProviderConfigInput,
        salesforceOauth2ProviderConfig = M.SalesforceOauth2ProviderConfigInput,
        microsoftOauth2ProviderConfig = M.MicrosoftOauth2ProviderConfigInput,
        atlassianOauth2ProviderConfig = M.AtlassianOauth2ProviderConfigInput,
        linkedinOauth2ProviderConfig = M.LinkedinOauth2ProviderConfigInput,
        includedOauth2ProviderConfig = M.IncludedOauth2ProviderConfigInput,
    },
}

M.CreateOauth2CredentialProviderInput = {
    type = "structure",
    id = "CreateOauth2CredentialProviderInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderVendor = {
            type = "string",
            traits = {
                required = true,
            },
        },
        oauth2ProviderConfigInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2ProviderConfigInput }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AtlassianOauth2ProviderConfigOutput = {
    type = "structure",
    id = "AtlassianOauth2ProviderConfigOutput",
    members = {
        oauthDiscovery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2Discovery }),
        clientId = {
            type = "string",
        },
    },
}

M.CustomOauth2ProviderConfigOutput = {
    type = "structure",
    id = "CustomOauth2ProviderConfigOutput",
    members = {
        oauthDiscovery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2Discovery }),
        clientId = {
            type = "string",
        },
        privateEndpoint = M.PrivateEndpoint,
        privateEndpointOverrides = {
            type = "list",
            member = M.PrivateEndpointOverride,
        },
        onBehalfOfTokenExchangeConfig = M.OnBehalfOfTokenExchangeConfigType,
        clientAuthenticationMethod = {
            type = "string",
        },
    },
}

M.GithubOauth2ProviderConfigOutput = {
    type = "structure",
    id = "GithubOauth2ProviderConfigOutput",
    members = {
        oauthDiscovery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2Discovery }),
        clientId = {
            type = "string",
        },
    },
}

M.GoogleOauth2ProviderConfigOutput = {
    type = "structure",
    id = "GoogleOauth2ProviderConfigOutput",
    members = {
        oauthDiscovery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2Discovery }),
        clientId = {
            type = "string",
        },
    },
}

M.IncludedOauth2ProviderConfigOutput = {
    type = "structure",
    id = "IncludedOauth2ProviderConfigOutput",
    members = {
        oauthDiscovery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2Discovery }),
        clientId = {
            type = "string",
        },
    },
}

M.LinkedinOauth2ProviderConfigOutput = {
    type = "structure",
    id = "LinkedinOauth2ProviderConfigOutput",
    members = {
        oauthDiscovery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2Discovery }),
        clientId = {
            type = "string",
        },
    },
}

M.MicrosoftOauth2ProviderConfigOutput = {
    type = "structure",
    id = "MicrosoftOauth2ProviderConfigOutput",
    members = {
        oauthDiscovery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2Discovery }),
        clientId = {
            type = "string",
        },
    },
}

M.SalesforceOauth2ProviderConfigOutput = {
    type = "structure",
    id = "SalesforceOauth2ProviderConfigOutput",
    members = {
        oauthDiscovery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2Discovery }),
        clientId = {
            type = "string",
        },
    },
}

M.SlackOauth2ProviderConfigOutput = {
    type = "structure",
    id = "SlackOauth2ProviderConfigOutput",
    members = {
        oauthDiscovery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2Discovery }),
        clientId = {
            type = "string",
        },
    },
}

M.Oauth2ProviderConfigOutput = {
    type = "union",
    id = "Oauth2ProviderConfigOutput",
    members = {
        customOauth2ProviderConfig = M.CustomOauth2ProviderConfigOutput,
        googleOauth2ProviderConfig = M.GoogleOauth2ProviderConfigOutput,
        githubOauth2ProviderConfig = M.GithubOauth2ProviderConfigOutput,
        slackOauth2ProviderConfig = M.SlackOauth2ProviderConfigOutput,
        salesforceOauth2ProviderConfig = M.SalesforceOauth2ProviderConfigOutput,
        microsoftOauth2ProviderConfig = M.MicrosoftOauth2ProviderConfigOutput,
        atlassianOauth2ProviderConfig = M.AtlassianOauth2ProviderConfigOutput,
        linkedinOauth2ProviderConfig = M.LinkedinOauth2ProviderConfigOutput,
        includedOauth2ProviderConfig = M.IncludedOauth2ProviderConfigOutput,
    },
}

M.Status = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    READY = "READY",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreateOauth2CredentialProviderOutput = {
    type = "structure",
    id = "CreateOauth2CredentialProviderOutput",
    members = {
        clientSecretArn = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Secret }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        callbackUrl = {
            type = "string",
        },
        oauth2ProviderConfigOutput = M.Oauth2ProviderConfigOutput,
        status = {
            type = "string",
        },
    },
}

M.DeleteOauth2CredentialProviderInput = {
    type = "structure",
    id = "DeleteOauth2CredentialProviderInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOauth2CredentialProviderOutput = {
    type = "structure",
    id = "DeleteOauth2CredentialProviderOutput",
}

M.GetOauth2CredentialProviderInput = {
    type = "structure",
    id = "GetOauth2CredentialProviderInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetOauth2CredentialProviderOutput = {
    type = "structure",
    id = "GetOauth2CredentialProviderOutput",
    members = {
        clientSecretArn = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Secret }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderVendor = {
            type = "string",
            traits = {
                required = true,
            },
        },
        callbackUrl = {
            type = "string",
        },
        oauth2ProviderConfigOutput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2ProviderConfigOutput }),
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.ListOauth2CredentialProvidersInput = {
    type = "structure",
    id = "ListOauth2CredentialProvidersInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
            },
        },
    },
}

M.Oauth2CredentialProviderItem = {
    type = "structure",
    id = "Oauth2CredentialProviderItem",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderVendor = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListOauth2CredentialProvidersOutput = {
    type = "structure",
    id = "ListOauth2CredentialProvidersOutput",
    members = {
        credentialProviders = {
            type = "list",
            member = M.Oauth2CredentialProviderItem,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateOauth2CredentialProviderInput = {
    type = "structure",
    id = "UpdateOauth2CredentialProviderInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderVendor = {
            type = "string",
            traits = {
                required = true,
            },
        },
        oauth2ProviderConfigInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2ProviderConfigInput }),
    },
}

M.UpdateOauth2CredentialProviderOutput = {
    type = "structure",
    id = "UpdateOauth2CredentialProviderOutput",
    members = {
        clientSecretArn = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Secret }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderVendor = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        callbackUrl = {
            type = "string",
        },
        oauth2ProviderConfigOutput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Oauth2ProviderConfigOutput }),
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
    },
}

M.CloudWatchLogsInputConfig = {
    type = "structure",
    id = "CloudWatchLogsInputConfig",
    members = {
        logGroupNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        serviceNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DataSourceConfig = {
    type = "union",
    id = "DataSourceConfig",
    members = {
        cloudWatchLogs = M.CloudWatchLogsInputConfig,
    },
}

M.EvaluatorReference = {
    type = "union",
    id = "EvaluatorReference",
    members = {
        evaluatorId = {
            type = "string",
        },
    },
}

M.FilterOperator = {
    EQUALS = "Equals",
    NOT_EQUALS = "NotEquals",
    GREATER_THAN = "GreaterThan",
    LESS_THAN = "LessThan",
    GREATER_THAN_OR_EQUAL = "GreaterThanOrEqual",
    LESS_THAN_OR_EQUAL = "LessThanOrEqual",
    CONTAINS = "Contains",
    NOT_CONTAINS = "NotContains",
}

M.FilterValue = {
    type = "union",
    id = "FilterValue",
    members = {
        stringValue = {
            type = "string",
        },
        doubleValue = {
            type = "double",
        },
        booleanValue = {
            type = "boolean",
        },
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FilterValue }),
    },
}

M.SamplingConfig = {
    type = "structure",
    id = "SamplingConfig",
    members = {
        samplingPercentage = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionConfig = {
    type = "structure",
    id = "SessionConfig",
    members = {
        sessionTimeoutMinutes = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.Rule = {
    type = "structure",
    id = "Rule",
    members = {
        samplingConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SamplingConfig }),
        filters = {
            type = "list",
            member = M.Filter,
        },
        sessionConfig = M.SessionConfig,
    },
}

M.CreateOnlineEvaluationConfigInput = {
    type = "structure",
    id = "CreateOnlineEvaluationConfigInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        onlineEvaluationConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Rule }),
        dataSourceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceConfig }),
        evaluators = {
            type = "list",
            member = M.EvaluatorReference,
            traits = {
                required = true,
            },
        },
        evaluationExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enableOnCreate = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.OnlineEvaluationExecutionStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CloudWatchOutputConfig = {
    type = "structure",
    id = "CloudWatchOutputConfig",
    members = {
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OutputConfig = {
    type = "structure",
    id = "OutputConfig",
    members = {
        cloudWatchConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CloudWatchOutputConfig }),
    },
}

M.OnlineEvaluationConfigStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    ERROR = "ERROR",
}

M.CreateOnlineEvaluationConfigOutput = {
    type = "structure",
    id = "CreateOnlineEvaluationConfigOutput",
    members = {
        onlineEvaluationConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        onlineEvaluationConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        outputConfig = M.OutputConfig,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureReason = {
            type = "string",
        },
    },
}

M.DeleteOnlineEvaluationConfigInput = {
    type = "structure",
    id = "DeleteOnlineEvaluationConfigInput",
    members = {
        onlineEvaluationConfigId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteOnlineEvaluationConfigOutput = {
    type = "structure",
    id = "DeleteOnlineEvaluationConfigOutput",
    members = {
        onlineEvaluationConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        onlineEvaluationConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetOnlineEvaluationConfigInput = {
    type = "structure",
    id = "GetOnlineEvaluationConfigInput",
    members = {
        onlineEvaluationConfigId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOnlineEvaluationConfigOutput = {
    type = "structure",
    id = "GetOnlineEvaluationConfigOutput",
    members = {
        onlineEvaluationConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        onlineEvaluationConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        onlineEvaluationConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Rule }),
        dataSourceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceConfig }),
        evaluators = {
            type = "list",
            member = M.EvaluatorReference,
            traits = {
                required = true,
            },
        },
        outputConfig = M.OutputConfig,
        evaluationExecutionRoleArn = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        failureReason = {
            type = "string",
        },
    },
}

M.ListOnlineEvaluationConfigsInput = {
    type = "structure",
    id = "ListOnlineEvaluationConfigsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.OnlineEvaluationConfigSummary = {
    type = "structure",
    id = "OnlineEvaluationConfigSummary",
    members = {
        onlineEvaluationConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        onlineEvaluationConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        onlineEvaluationConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        failureReason = {
            type = "string",
        },
    },
}

M.ListOnlineEvaluationConfigsOutput = {
    type = "structure",
    id = "ListOnlineEvaluationConfigsOutput",
    members = {
        onlineEvaluationConfigs = {
            type = "list",
            member = M.OnlineEvaluationConfigSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateOnlineEvaluationConfigInput = {
    type = "structure",
    id = "UpdateOnlineEvaluationConfigInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        onlineEvaluationConfigId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        rule = M.Rule,
        dataSourceConfig = M.DataSourceConfig,
        evaluators = {
            type = "list",
            member = M.EvaluatorReference,
        },
        evaluationExecutionRoleArn = {
            type = "string",
        },
        executionStatus = {
            type = "string",
        },
    },
}

M.UpdateOnlineEvaluationConfigOutput = {
    type = "structure",
    id = "UpdateOnlineEvaluationConfigOutput",
    members = {
        onlineEvaluationConfigArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        onlineEvaluationConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        failureReason = {
            type = "string",
        },
    },
}

M.CreatePolicyEngineInput = {
    type = "structure",
    id = "CreatePolicyEngineInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        encryptionKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PolicyEngineStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreatePolicyEngineOutput = {
    type = "structure",
    id = "CreatePolicyEngineOutput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        policyEngineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.DeletePolicyEngineInput = {
    type = "structure",
    id = "DeletePolicyEngineInput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePolicyEngineOutput = {
    type = "structure",
    id = "DeletePolicyEngineOutput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        policyEngineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.GetPolicyEngineInput = {
    type = "structure",
    id = "GetPolicyEngineInput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPolicyEngineOutput = {
    type = "structure",
    id = "GetPolicyEngineOutput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        policyEngineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.ListPolicyEnginesInput = {
    type = "structure",
    id = "ListPolicyEnginesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.PolicyEngine = {
    type = "structure",
    id = "PolicyEngine",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        policyEngineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.ListPolicyEnginesOutput = {
    type = "structure",
    id = "ListPolicyEnginesOutput",
    members = {
        policyEngines = {
            type = "list",
            member = M.PolicyEngine,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdatedDescription = {
    type = "structure",
    id = "UpdatedDescription",
    members = {
        optionalValue = {
            type = "string",
        },
    },
}

M.UpdatePolicyEngineInput = {
    type = "structure",
    id = "UpdatePolicyEngineInput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = M.UpdatedDescription,
    },
}

M.UpdatePolicyEngineOutput = {
    type = "structure",
    id = "UpdatePolicyEngineOutput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        policyEngineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.GetPolicyGenerationInput = {
    type = "structure",
    id = "GetPolicyGenerationInput",
    members = {
        policyGenerationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyEngineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Resource = {
    type = "union",
    id = "Resource",
    members = {
        arn = {
            type = "string",
        },
    },
}

M.PolicyGenerationStatus = {
    GENERATING = "GENERATING",
    GENERATED = "GENERATED",
    GENERATE_FAILED = "GENERATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.GetPolicyGenerationOutput = {
    type = "structure",
    id = "GetPolicyGenerationOutput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyGenerationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyGenerationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        findings = {
            type = "string",
        },
    },
}

M.ListPolicyGenerationAssetsInput = {
    type = "structure",
    id = "ListPolicyGenerationAssetsInput",
    members = {
        policyGenerationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyEngineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.CedarPolicy = {
    type = "structure",
    id = "CedarPolicy",
    members = {
        statement = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PolicyGenerationDetails = {
    type = "structure",
    id = "PolicyGenerationDetails",
    members = {
        policyGenerationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyGenerationAssetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PolicyDefinition = {
    type = "union",
    id = "PolicyDefinition",
    members = {
        cedar = M.CedarPolicy,
        policyGeneration = M.PolicyGenerationDetails,
    },
}

M.FindingType = {
    VALID = "VALID",
    INVALID = "INVALID",
    NOT_TRANSLATABLE = "NOT_TRANSLATABLE",
    ALLOW_ALL = "ALLOW_ALL",
    ALLOW_NONE = "ALLOW_NONE",
    DENY_ALL = "DENY_ALL",
    DENY_NONE = "DENY_NONE",
}

M.Finding = {
    type = "structure",
    id = "Finding",
    members = {
        type = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.PolicyGenerationAsset = {
    type = "structure",
    id = "PolicyGenerationAsset",
    members = {
        policyGenerationAssetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = M.PolicyDefinition,
        rawTextFragment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        findings = {
            type = "list",
            member = M.Finding,
            traits = {
                required = true,
            },
        },
    },
}

M.ListPolicyGenerationAssetsOutput = {
    type = "structure",
    id = "ListPolicyGenerationAssetsOutput",
    members = {
        policyGenerationAssets = {
            type = "list",
            member = M.PolicyGenerationAsset,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPolicyGenerationsInput = {
    type = "structure",
    id = "ListPolicyGenerationsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        policyEngineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PolicyGeneration = {
    type = "structure",
    id = "PolicyGeneration",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyGenerationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyGenerationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        findings = {
            type = "string",
        },
    },
}

M.ListPolicyGenerationsOutput = {
    type = "structure",
    id = "ListPolicyGenerationsOutput",
    members = {
        policyGenerations = {
            type = "list",
            member = M.PolicyGeneration,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Content = {
    type = "union",
    id = "Content",
    members = {
        rawText = {
            type = "string",
        },
    },
}

M.StartPolicyGenerationInput = {
    type = "structure",
    id = "StartPolicyGenerationInput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Content }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartPolicyGenerationOutput = {
    type = "structure",
    id = "StartPolicyGenerationOutput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyGenerationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyGenerationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Resource }),
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        findings = {
            type = "string",
        },
    },
}

M.PolicyValidationMode = {
    FAIL_ON_ANY_FINDINGS = "FAIL_ON_ANY_FINDINGS",
    IGNORE_ALL_FINDINGS = "IGNORE_ALL_FINDINGS",
}

M.CreatePolicyInput = {
    type = "structure",
    id = "CreatePolicyInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyDefinition }),
        description = {
            type = "string",
        },
        validationMode = {
            type = "string",
            traits = {
                default = "FAIL_ON_ANY_FINDINGS",
            },
        },
        policyEngineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.PolicyStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CreatePolicyOutput = {
    type = "structure",
    id = "CreatePolicyOutput",
    members = {
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyDefinition }),
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePolicyInput = {
    type = "structure",
    id = "DeletePolicyInput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePolicyOutput = {
    type = "structure",
    id = "DeletePolicyOutput",
    members = {
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyDefinition }),
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetPolicyInput = {
    type = "structure",
    id = "GetPolicyInput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPolicyOutput = {
    type = "structure",
    id = "GetPolicyOutput",
    members = {
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyDefinition }),
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListPoliciesInput = {
    type = "structure",
    id = "ListPoliciesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        policyEngineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetResourceScope = {
            type = "string",
            traits = {
                http_query = "targetResourceScope",
            },
        },
    },
}

M.Policy = {
    type = "structure",
    id = "Policy",
    members = {
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyDefinition }),
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListPoliciesOutput = {
    type = "structure",
    id = "ListPoliciesOutput",
    members = {
        policies = {
            type = "list",
            member = M.Policy,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdatePolicyInput = {
    type = "structure",
    id = "UpdatePolicyInput",
    members = {
        policyEngineId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = M.UpdatedDescription,
        definition = M.PolicyDefinition,
        validationMode = {
            type = "string",
            traits = {
                default = "FAIL_ON_ANY_FINDINGS",
            },
        },
    },
}

M.UpdatePolicyOutput = {
    type = "structure",
    id = "UpdatePolicyOutput",
    members = {
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyEngineId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyDefinition }),
        description = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        policyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    id = "PutResourcePolicyOutput",
    members = {
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomDescriptor = {
    type = "structure",
    id = "CustomDescriptor",
    members = {
        inlineContent = {
            type = "string",
        },
    },
}

M.ServerDefinition = {
    type = "structure",
    id = "ServerDefinition",
    members = {
        schemaVersion = {
            type = "string",
        },
        inlineContent = {
            type = "string",
        },
    },
}

M.ToolsDefinition = {
    type = "structure",
    id = "ToolsDefinition",
    members = {
        protocolVersion = {
            type = "string",
        },
        inlineContent = {
            type = "string",
        },
    },
}

M.McpDescriptor = {
    type = "structure",
    id = "McpDescriptor",
    members = {
        server = M.ServerDefinition,
        tools = M.ToolsDefinition,
    },
}

M.Descriptors = {
    type = "structure",
    id = "Descriptors",
    members = {
        mcp = M.McpDescriptor,
        a2a = M.A2aDescriptor,
        custom = M.CustomDescriptor,
        agentSkills = M.AgentSkillsDescriptor,
    },
}

M.DescriptorType = {
    MCP = "MCP",
    A2A = "A2A",
    CUSTOM = "CUSTOM",
    AGENT_SKILLS = "AGENT_SKILLS",
}

M.RegistryRecordIamCredentialProvider = {
    type = "structure",
    id = "RegistryRecordIamCredentialProvider",
    members = {
        roleArn = {
            type = "string",
        },
        service = {
            type = "string",
        },
        region = {
            type = "string",
        },
    },
}

M.RegistryRecordOAuthGrantType = {
    CLIENT_CREDENTIALS = "CLIENT_CREDENTIALS",
}

M.RegistryRecordOAuthCredentialProvider = {
    type = "structure",
    id = "RegistryRecordOAuthCredentialProvider",
    members = {
        providerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grantType = {
            type = "string",
        },
        scopes = {
            type = "list",
            member = { type = "string" },
        },
        customParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RegistryRecordCredentialProviderUnion = {
    type = "union",
    id = "RegistryRecordCredentialProviderUnion",
    members = {
        oauthCredentialProvider = M.RegistryRecordOAuthCredentialProvider,
        iamCredentialProvider = M.RegistryRecordIamCredentialProvider,
    },
}

M.RegistryRecordCredentialProviderType = {
    OAUTH = "OAUTH",
    IAM = "IAM",
}

M.RegistryRecordCredentialProviderConfiguration = {
    type = "structure",
    id = "RegistryRecordCredentialProviderConfiguration",
    members = {
        credentialProviderType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProvider = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistryRecordCredentialProviderUnion }),
    },
}

M.FromUrlSynchronizationConfiguration = {
    type = "structure",
    id = "FromUrlSynchronizationConfiguration",
    members = {
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        credentialProviderConfigurations = {
            type = "list",
            member = M.RegistryRecordCredentialProviderConfiguration,
        },
    },
}

M.SynchronizationConfiguration = {
    type = "structure",
    id = "SynchronizationConfiguration",
    members = {
        fromUrl = M.FromUrlSynchronizationConfiguration,
    },
}

M.SynchronizationType = {
    URL = "URL",
}

M.CreateRegistryRecordInput = {
    type = "structure",
    id = "CreateRegistryRecordInput",
    members = {
        registryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        descriptorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        descriptors = M.Descriptors,
        recordVersion = {
            type = "string",
        },
        synchronizationType = {
            type = "string",
        },
        synchronizationConfiguration = M.SynchronizationConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.RegistryRecordStatus = {
    DRAFT = "DRAFT",
    PENDING_APPROVAL = "PENDING_APPROVAL",
    APPROVED = "APPROVED",
    REJECTED = "REJECTED",
    DEPRECATED = "DEPRECATED",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.CreateRegistryRecordOutput = {
    type = "structure",
    id = "CreateRegistryRecordOutput",
    members = {
        recordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRegistryRecordInput = {
    type = "structure",
    id = "DeleteRegistryRecordInput",
    members = {
        registryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        recordId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRegistryRecordOutput = {
    type = "structure",
    id = "DeleteRegistryRecordOutput",
}

M.GetRegistryRecordInput = {
    type = "structure",
    id = "GetRegistryRecordInput",
    members = {
        registryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        recordId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRegistryRecordOutput = {
    type = "structure",
    id = "GetRegistryRecordOutput",
    members = {
        registryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        descriptorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        descriptors = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Descriptors }),
        recordVersion = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        statusReason = {
            type = "string",
        },
        synchronizationType = {
            type = "string",
        },
        synchronizationConfiguration = M.SynchronizationConfiguration,
    },
}

M.ListRegistryRecordsInput = {
    type = "structure",
    id = "ListRegistryRecordsInput",
    members = {
        registryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        descriptorType = {
            type = "string",
            traits = {
                http_query = "descriptorType",
            },
        },
    },
}

M.RegistryRecordSummary = {
    type = "structure",
    id = "RegistryRecordSummary",
    members = {
        registryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        descriptorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListRegistryRecordsOutput = {
    type = "structure",
    id = "ListRegistryRecordsOutput",
    members = {
        registryRecords = {
            type = "list",
            member = M.RegistryRecordSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SubmitRegistryRecordForApprovalInput = {
    type = "structure",
    id = "SubmitRegistryRecordForApprovalInput",
    members = {
        registryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        recordId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SubmitRegistryRecordForApprovalOutput = {
    type = "structure",
    id = "SubmitRegistryRecordForApprovalOutput",
    members = {
        registryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdatedA2aDescriptor = {
    type = "structure",
    id = "UpdatedA2aDescriptor",
    members = {
        optionalValue = M.A2aDescriptor,
    },
}

M.UpdatedSkillDefinition = {
    type = "structure",
    id = "UpdatedSkillDefinition",
    members = {
        optionalValue = M.SkillDefinition,
    },
}

M.UpdatedSkillMdDefinition = {
    type = "structure",
    id = "UpdatedSkillMdDefinition",
    members = {
        optionalValue = M.SkillMdDefinition,
    },
}

M.UpdatedAgentSkillsDescriptorFields = {
    type = "structure",
    id = "UpdatedAgentSkillsDescriptorFields",
    members = {
        skillMd = M.UpdatedSkillMdDefinition,
        skillDefinition = M.UpdatedSkillDefinition,
    },
}

M.UpdatedAgentSkillsDescriptor = {
    type = "structure",
    id = "UpdatedAgentSkillsDescriptor",
    members = {
        optionalValue = M.UpdatedAgentSkillsDescriptorFields,
    },
}

M.UpdatedCustomDescriptor = {
    type = "structure",
    id = "UpdatedCustomDescriptor",
    members = {
        optionalValue = M.CustomDescriptor,
    },
}

M.UpdatedServerDefinition = {
    type = "structure",
    id = "UpdatedServerDefinition",
    members = {
        optionalValue = M.ServerDefinition,
    },
}

M.UpdatedToolsDefinition = {
    type = "structure",
    id = "UpdatedToolsDefinition",
    members = {
        optionalValue = M.ToolsDefinition,
    },
}

M.UpdatedMcpDescriptorFields = {
    type = "structure",
    id = "UpdatedMcpDescriptorFields",
    members = {
        server = M.UpdatedServerDefinition,
        tools = M.UpdatedToolsDefinition,
    },
}

M.UpdatedMcpDescriptor = {
    type = "structure",
    id = "UpdatedMcpDescriptor",
    members = {
        optionalValue = M.UpdatedMcpDescriptorFields,
    },
}

M.UpdatedDescriptorsUnion = {
    type = "structure",
    id = "UpdatedDescriptorsUnion",
    members = {
        mcp = M.UpdatedMcpDescriptor,
        a2a = M.UpdatedA2aDescriptor,
        custom = M.UpdatedCustomDescriptor,
        agentSkills = M.UpdatedAgentSkillsDescriptor,
    },
}

M.UpdatedDescriptors = {
    type = "structure",
    id = "UpdatedDescriptors",
    members = {
        optionalValue = M.UpdatedDescriptorsUnion,
    },
}

M.UpdatedSynchronizationConfiguration = {
    type = "structure",
    id = "UpdatedSynchronizationConfiguration",
    members = {
        optionalValue = M.SynchronizationConfiguration,
    },
}

M.UpdatedSynchronizationType = {
    type = "structure",
    id = "UpdatedSynchronizationType",
    members = {
        optionalValue = {
            type = "string",
        },
    },
}

M.UpdateRegistryRecordInput = {
    type = "structure",
    id = "UpdateRegistryRecordInput",
    members = {
        registryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        recordId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = M.UpdatedDescription,
        descriptorType = {
            type = "string",
        },
        descriptors = M.UpdatedDescriptors,
        recordVersion = {
            type = "string",
        },
        synchronizationType = M.UpdatedSynchronizationType,
        synchronizationConfiguration = M.UpdatedSynchronizationConfiguration,
        triggerSynchronization = {
            type = "boolean",
        },
    },
}

M.UpdateRegistryRecordOutput = {
    type = "structure",
    id = "UpdateRegistryRecordOutput",
    members = {
        registryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        descriptorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        descriptors = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Descriptors }),
        recordVersion = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        statusReason = {
            type = "string",
        },
        synchronizationType = {
            type = "string",
        },
        synchronizationConfiguration = M.SynchronizationConfiguration,
    },
}

M.UpdateRegistryRecordStatusInput = {
    type = "structure",
    id = "UpdateRegistryRecordStatusInput",
    members = {
        registryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        recordId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRegistryRecordStatusOutput = {
    type = "structure",
    id = "UpdateRegistryRecordStatusOutput",
    members = {
        registryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ApprovalConfiguration = {
    type = "structure",
    id = "ApprovalConfiguration",
    members = {
        autoApproval = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.RegistryAuthorizerType = {
    CUSTOM_JWT = "CUSTOM_JWT",
    AWS_IAM = "AWS_IAM",
}

M.CreateRegistryInput = {
    type = "structure",
    id = "CreateRegistryInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        authorizerType = {
            type = "string",
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        approvalConfiguration = M.ApprovalConfiguration,
    },
}

M.CreateRegistryOutput = {
    type = "structure",
    id = "CreateRegistryOutput",
    members = {
        registryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRegistryInput = {
    type = "structure",
    id = "DeleteRegistryInput",
    members = {
        registryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RegistryStatus = {
    CREATING = "CREATING",
    READY = "READY",
    UPDATING = "UPDATING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.DeleteRegistryOutput = {
    type = "structure",
    id = "DeleteRegistryOutput",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRegistryInput = {
    type = "structure",
    id = "GetRegistryInput",
    members = {
        registryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRegistryOutput = {
    type = "structure",
    id = "GetRegistryOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        registryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizerType = {
            type = "string",
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        approvalConfiguration = M.ApprovalConfiguration,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListRegistriesInput = {
    type = "structure",
    id = "ListRegistriesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.RegistrySummary = {
    type = "structure",
    id = "RegistrySummary",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        registryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizerType = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListRegistriesOutput = {
    type = "structure",
    id = "ListRegistriesOutput",
    members = {
        registries = {
            type = "list",
            member = M.RegistrySummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdatedApprovalConfiguration = {
    type = "structure",
    id = "UpdatedApprovalConfiguration",
    members = {
        optionalValue = M.ApprovalConfiguration,
    },
}

M.UpdateRegistryInput = {
    type = "structure",
    id = "UpdateRegistryInput",
    members = {
        registryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = M.UpdatedDescription,
        authorizerConfiguration = M.UpdatedAuthorizerConfiguration,
        approvalConfiguration = M.UpdatedApprovalConfiguration,
    },
}

M.UpdateRegistryOutput = {
    type = "structure",
    id = "UpdateRegistryOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        registryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        registryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizerType = {
            type = "string",
        },
        authorizerConfiguration = M.AuthorizerConfiguration,
        approvalConfiguration = M.ApprovalConfiguration,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetTokenVaultCMKInput = {
    type = "structure",
    id = "SetTokenVaultCMKInput",
    members = {
        tokenVaultId = {
            type = "string",
        },
        kmsConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KmsConfiguration }),
    },
}

M.SetTokenVaultCMKOutput = {
    type = "structure",
    id = "SetTokenVaultCMKOutput",
    members = {
        tokenVaultId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KmsConfiguration }),
        lastModifiedDate = {
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
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

M.CreateWorkloadIdentityInput = {
    type = "structure",
    id = "CreateWorkloadIdentityInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allowedResourceOauth2ReturnUrls = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateWorkloadIdentityOutput = {
    type = "structure",
    id = "CreateWorkloadIdentityOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workloadIdentityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allowedResourceOauth2ReturnUrls = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeleteWorkloadIdentityInput = {
    type = "structure",
    id = "DeleteWorkloadIdentityInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkloadIdentityOutput = {
    type = "structure",
    id = "DeleteWorkloadIdentityOutput",
}

M.GetWorkloadIdentityInput = {
    type = "structure",
    id = "GetWorkloadIdentityInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkloadIdentityOutput = {
    type = "structure",
    id = "GetWorkloadIdentityOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workloadIdentityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allowedResourceOauth2ReturnUrls = {
            type = "list",
            member = { type = "string" },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkloadIdentitiesInput = {
    type = "structure",
    id = "ListWorkloadIdentitiesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
            },
        },
    },
}

M.WorkloadIdentityType = {
    type = "structure",
    id = "WorkloadIdentityType",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workloadIdentityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkloadIdentitiesOutput = {
    type = "structure",
    id = "ListWorkloadIdentitiesOutput",
    members = {
        workloadIdentities = {
            type = "list",
            member = M.WorkloadIdentityType,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateWorkloadIdentityInput = {
    type = "structure",
    id = "UpdateWorkloadIdentityInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allowedResourceOauth2ReturnUrls = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateWorkloadIdentityOutput = {
    type = "structure",
    id = "UpdateWorkloadIdentityOutput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workloadIdentityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        allowedResourceOauth2ReturnUrls = {
            type = "list",
            member = { type = "string" },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.SchemaDefinition = {
    type = "structure",
    id = "SchemaDefinition",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = M.SchemaDefinition,
        },
        required = {
            type = "list",
            member = { type = "string" },
        },
        items = M.SchemaDefinition,
        description = {
            type = "string",
        },
    },
}

M.ToolDefinition = {
    type = "structure",
    id = "ToolDefinition",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputSchema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaDefinition }),
        outputSchema = M.SchemaDefinition,
    },
}

M.ToolSchema = {
    type = "union",
    id = "ToolSchema",
    members = {
        s3 = M.S3Configuration,
        inlinePayload = {
            type = "list",
            member = M.ToolDefinition,
        },
    },
}

M.McpLambdaTargetConfiguration = {
    type = "structure",
    id = "McpLambdaTargetConfiguration",
    members = {
        lambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        toolSchema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ToolSchema }),
    },
}

M.McpTargetConfiguration = {
    type = "union",
    id = "McpTargetConfiguration",
    members = {
        openApiSchema = M.ApiSchemaConfiguration,
        smithyModel = M.ApiSchemaConfiguration,
        lambda = M.McpLambdaTargetConfiguration,
        mcpServer = M.McpServerTargetConfiguration,
        apiGateway = M.ApiGatewayTargetConfiguration,
    },
}

M.TargetConfiguration = {
    type = "union",
    id = "TargetConfiguration",
    members = {
        mcp = M.McpTargetConfiguration,
        http = M.HttpTargetConfiguration,
    },
}

M.CreateGatewayTargetInput = {
    type = "structure",
    id = "CreateGatewayTargetInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        targetConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetConfiguration }),
        credentialProviderConfigurations = {
            type = "list",
            member = M.CredentialProviderConfiguration,
        },
        metadataConfiguration = M.MetadataConfiguration,
        privateEndpoint = M.PrivateEndpoint,
    },
}

M.CreateGatewayTargetOutput = {
    type = "structure",
    id = "CreateGatewayTargetOutput",
    members = {
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        targetConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetConfiguration }),
        credentialProviderConfigurations = {
            type = "list",
            member = M.CredentialProviderConfiguration,
            traits = {
                required = true,
            },
        },
        lastSynchronizedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        metadataConfiguration = M.MetadataConfiguration,
        privateEndpoint = M.PrivateEndpoint,
        privateEndpointManagedResources = {
            type = "list",
            member = M.ManagedResourceDetails,
        },
        authorizationData = M.AuthorizationData,
        protocolType = {
            type = "string",
        },
    },
}

M.GatewayTarget = {
    type = "structure",
    id = "GatewayTarget",
    members = {
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        targetConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetConfiguration }),
        credentialProviderConfigurations = {
            type = "list",
            member = M.CredentialProviderConfiguration,
            traits = {
                required = true,
            },
        },
        lastSynchronizedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        metadataConfiguration = M.MetadataConfiguration,
        privateEndpoint = M.PrivateEndpoint,
        privateEndpointManagedResources = {
            type = "list",
            member = M.ManagedResourceDetails,
        },
        authorizationData = M.AuthorizationData,
        protocolType = {
            type = "string",
        },
    },
}

M.GetGatewayTargetOutput = {
    type = "structure",
    id = "GetGatewayTargetOutput",
    members = {
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        targetConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetConfiguration }),
        credentialProviderConfigurations = {
            type = "list",
            member = M.CredentialProviderConfiguration,
            traits = {
                required = true,
            },
        },
        lastSynchronizedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        metadataConfiguration = M.MetadataConfiguration,
        privateEndpoint = M.PrivateEndpoint,
        privateEndpointManagedResources = {
            type = "list",
            member = M.ManagedResourceDetails,
        },
        authorizationData = M.AuthorizationData,
        protocolType = {
            type = "string",
        },
    },
}

M.UpdateGatewayTargetInput = {
    type = "structure",
    id = "UpdateGatewayTargetInput",
    members = {
        gatewayIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        targetConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetConfiguration }),
        credentialProviderConfigurations = {
            type = "list",
            member = M.CredentialProviderConfiguration,
        },
        metadataConfiguration = M.MetadataConfiguration,
        privateEndpoint = M.PrivateEndpoint,
    },
}

M.UpdateGatewayTargetOutput = {
    type = "structure",
    id = "UpdateGatewayTargetOutput",
    members = {
        gatewayArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReasons = {
            type = "list",
            member = { type = "string" },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        targetConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TargetConfiguration }),
        credentialProviderConfigurations = {
            type = "list",
            member = M.CredentialProviderConfiguration,
            traits = {
                required = true,
            },
        },
        lastSynchronizedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        metadataConfiguration = M.MetadataConfiguration,
        privateEndpoint = M.PrivateEndpoint,
        privateEndpointManagedResources = {
            type = "list",
            member = M.ManagedResourceDetails,
        },
        authorizationData = M.AuthorizationData,
        protocolType = {
            type = "string",
        },
    },
}

M.SynchronizeGatewayTargetsOutput = {
    type = "structure",
    id = "SynchronizeGatewayTargetsOutput",
    members = {
        targets = {
            type = "list",
            member = M.GatewayTarget,
        },
    },
}

return M
