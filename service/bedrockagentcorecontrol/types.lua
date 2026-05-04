local M = {}

M.AgentCardDefinition = {
    type = "structure",
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
    members = {
        agentCard = M.AgentCardDefinition,
    },
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StaticOverride = {
    type = "structure",
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
    members = {
        staticOverride = M.StaticOverride,
        weightedOverride = M.WeightedOverride,
    },
}

M.StaticRoute = {
    type = "structure",
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
    members = {
        staticRoute = M.StaticRoute,
        weightedRoute = M.WeightedRoute,
    },
}

M.Action = {
    type = "union",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateAgentRuntimeEndpointInput = {
    type = "structure",
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
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
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
            },
        },
    },
}

M.DeleteAgentRuntimeEndpointOutput = {
    type = "structure",
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAgentRuntimeEndpointsOutput = {
    type = "structure",
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
        },
    },
}

M.UpdateAgentRuntimeEndpointOutput = {
    type = "structure",
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
    members = {
        s3 = M.S3Location,
    },
}

M.CodeConfiguration = {
    type = "structure",
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
    members = {
        resourceConfigurationIdentifier = {
            type = "string",
        },
    },
}

M.PrivateEndpoint = {
    type = "union",
    members = {
        selfManagedLatticeResource = M.SelfManagedLatticeResource,
        managedVpcResource = M.ManagedVpcResource,
    },
}

M.PrivateEndpointOverride = {
    type = "structure",
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
    members = {
        customJWTAuthorizer = M.CustomJWTAuthorizerConfiguration,
    },
}

M.SessionStorageConfiguration = {
    type = "structure",
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
    members = {
        sessionStorage = M.SessionStorageConfiguration,
    },
}

M.LifecycleConfiguration = {
    type = "structure",
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
    members = {
        requestHeaderAllowlist = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateAgentRuntimeInput = {
    type = "structure",
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
            },
        },
    },
}

M.DeleteAgentRuntimeOutput = {
    type = "structure",
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
        },
    },
}

M.UpdateAgentRuntimeOutput = {
    type = "structure",
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
            },
        },
        lastUpdatedAt = {
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

M.SkillDefinition = {
    type = "structure",
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
    members = {
        inlineContent = {
            type = "string",
        },
    },
}

M.AgentSkillsDescriptor = {
    type = "structure",
    members = {
        skillMd = M.SkillMdDefinition,
        skillDefinition = M.SkillDefinition,
    },
}

M.CreateApiKeyCredentialProviderInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteApiKeyCredentialProviderInput = {
    type = "structure",
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
}

M.GetApiKeyCredentialProviderInput = {
    type = "structure",
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
            },
        },
    },
}

M.DeleteBrowserProfileOutput = {
    type = "structure",
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
            },
        },
        lastSavedAt = {
            type = "timestamp",
        },
    },
}

M.GetBrowserProfileInput = {
    type = "structure",
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastSavedAt = {
            type = "timestamp",
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastSavedAt = {
            type = "timestamp",
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
    members = {
        secretsManager = M.SecretsManagerLocation,
    },
}

M.Certificate = {
    type = "structure",
    members = {
        location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CertificateLocation }),
    },
}

M.ResourceLocation = {
    type = "union",
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
            },
        },
    },
}

M.DeleteBrowserOutput = {
    type = "structure",
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
            },
        },
    },
}

M.GetBrowserInput = {
    type = "structure",
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListBrowsersOutput = {
    type = "structure",
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
            },
        },
    },
}

M.DeleteCodeInterpreterOutput = {
    type = "structure",
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
            },
        },
    },
}

M.GetCodeInterpreterInput = {
    type = "structure",
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCodeInterpretersInput = {
    type = "structure",
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
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListCodeInterpretersOutput = {
    type = "structure",
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
    members = {
        clientToken = {
            type = "string",
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
    members = {
        clientToken = {
            type = "string",
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
}

M.LambdaEvaluatorConfig = {
    type = "structure",
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
    members = {
        lambdaConfig = M.LambdaEvaluatorConfig,
    },
}

M.InferenceConfiguration = {
    type = "structure",
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
    members = {
        bedrockEvaluatorModelConfig = M.BedrockEvaluatorModelConfig,
    },
}

M.CategoricalScaleDefinition = {
    type = "structure",
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
    members = {
        clientToken = {
            type = "string",
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
    members = {
        clientToken = {
            type = "string",
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
    members = {
        lambda = M.LambdaInterceptorConfiguration,
    },
}

M.GatewayInterceptorConfiguration = {
    type = "structure",
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
    members = {
        mcp = M.MCPGatewayConfiguration,
    },
}

M.GatewayProtocolType = {
    MCP = "MCP",
}

M.CreateGatewayInput = {
    type = "structure",
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
    members = {
        iamPrincipal = M.IamPrincipal,
    },
}

M.MatchPrincipals = {
    type = "structure",
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
    members = {
        matchPrincipals = M.MatchPrincipals,
        matchPaths = M.MatchPaths,
    },
}

M.CreateGatewayRuleInput = {
    type = "structure",
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
        },
    },
}

M.ListGatewayRulesInput = {
    type = "structure",
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
        },
    },
}

M.ListGatewayRulesOutput = {
    type = "structure",
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
        },
    },
}

M.ApiKeyCredentialLocation = {
    HEADER = "HEADER",
    QUERY_PARAMETER = "QUERY_PARAMETER",
}

M.GatewayApiKeyCredentialProvider = {
    type = "structure",
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
    members = {
        s3 = M.S3Configuration,
        inlinePayload = {
            type = "string",
        },
    },
}

M.McpServerTargetConfiguration = {
    type = "structure",
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
    members = {
        s3 = M.S3Configuration,
        inlinePayload = {
            type = "string",
        },
    },
}

M.OAuth2AuthorizationData = {
    type = "structure",
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
    members = {
        oauth2 = M.OAuth2AuthorizationData,
    },
}

M.ManagedResourceDetails = {
    type = "structure",
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        resourcePriority = {
            type = "integer",
        },
    },
}

M.ListGatewayTargetsOutput = {
    type = "structure",
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
    members = {
        policy = {
            type = "string",
        },
    },
}

M.GetTokenVaultInput = {
    type = "structure",
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
    members = {
        agentCoreRuntimeEnvironment = M.HarnessAgentCoreRuntimeEnvironmentRequest,
    },
}

M.HarnessEnvironmentArtifact = {
    type = "union",
    members = {
        containerConfiguration = M.ContainerConfiguration,
    },
}

M.HarnessAgentCoreMemoryRetrievalConfig = {
    type = "structure",
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
    members = {
        agentCoreMemoryConfiguration = M.HarnessAgentCoreMemoryConfiguration,
    },
}

M.HarnessBedrockModelConfig = {
    type = "structure",
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
    members = {
        bedrockModelConfig = M.HarnessBedrockModelConfig,
        openAiModelConfig = M.HarnessOpenAiModelConfig,
        geminiModelConfig = M.HarnessGeminiModelConfig,
    },
}

M.HarnessSkill = {
    type = "union",
    members = {
        path = {
            type = "string",
        },
    },
}

M.HarnessSystemContentBlock = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
    },
}

M.HarnessAgentCoreBrowserConfig = {
    type = "structure",
    members = {
        browserArn = {
            type = "string",
        },
    },
}

M.HarnessAgentCoreCodeInterpreterConfig = {
    type = "structure",
    members = {
        codeInterpreterArn = {
            type = "string",
        },
    },
}

M.Unit = {
    type = "structure",
}

M.HarnessGatewayOutboundAuth = {
    type = "union",
    members = {
        awsIam = M.Unit,
        none = M.Unit,
        oauth = M.OAuthCredentialProvider,
    },
}

M.HarnessAgentCoreGatewayConfig = {
    type = "structure",
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
    members = {
        messagesCount = {
            type = "integer",
        },
    },
}

M.HarnessSummarizationConfiguration = {
    type = "structure",
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
    members = {
        harnessName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
    members = {
        harness = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Harness }),
    },
}

M.DeleteHarnessInput = {
    type = "structure",
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
            },
        },
    },
}

M.DeleteHarnessOutput = {
    type = "structure",
    members = {
        harness = M.Harness,
    },
}

M.GetHarnessInput = {
    type = "structure",
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
    members = {
        harness = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Harness }),
    },
}

M.ListHarnessesInput = {
    type = "structure",
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

M.ListHarnessesOutput = {
    type = "structure",
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
    members = {
        optionalValue = M.AuthorizerConfiguration,
    },
}

M.UpdatedHarnessEnvironmentArtifact = {
    type = "structure",
    members = {
        optionalValue = M.HarnessEnvironmentArtifact,
    },
}

M.UpdatedHarnessMemoryConfiguration = {
    type = "structure",
    members = {
        optionalValue = M.HarnessMemoryConfiguration,
    },
}

M.UpdateHarnessInput = {
    type = "structure",
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
    members = {
        harness = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Harness }),
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        stringValidation = M.StringValidation,
        stringListValidation = M.StringListValidation,
        numberValidation = M.NumberValidation,
    },
}

M.LlmExtractionConfig = {
    type = "structure",
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
    members = {
        llmExtractionConfig = M.LlmExtractionConfig,
    },
}

M.MetadataSchemaEntry = {
    type = "structure",
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
    members = {
        metadataSchema = {
            type = "list",
            member = M.MetadataSchemaEntry,
        },
    },
}

M.EpisodicOverrideReflectionConfigurationInput = {
    type = "structure",
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
    members = {
        extraction = M.EpisodicOverrideExtractionConfigurationInput,
        consolidation = M.EpisodicOverrideConsolidationConfigurationInput,
        reflection = M.EpisodicOverrideReflectionConfigurationInput,
    },
}

M.InvocationConfigurationInput = {
    type = "structure",
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
    members = {
        messageBasedTrigger = M.MessageBasedTriggerInput,
        tokenBasedTrigger = M.TokenBasedTriggerInput,
        timeBasedTrigger = M.TimeBasedTriggerInput,
    },
}

M.SelfManagedConfigurationInput = {
    type = "structure",
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
    members = {
        extraction = M.SemanticOverrideExtractionConfigurationInput,
        consolidation = M.SemanticOverrideConsolidationConfigurationInput,
    },
}

M.SummaryOverrideConsolidationConfigurationInput = {
    type = "structure",
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
    members = {
        consolidation = M.SummaryOverrideConsolidationConfigurationInput,
    },
}

M.UserPreferenceOverrideConsolidationConfigurationInput = {
    type = "structure",
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
    members = {
        extraction = M.UserPreferenceOverrideExtractionConfigurationInput,
        consolidation = M.UserPreferenceOverrideConsolidationConfigurationInput,
    },
}

M.CustomConfigurationInput = {
    type = "union",
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
    members = {
        kinesis = M.KinesisResource,
    },
}

M.StreamDeliveryResources = {
    type = "structure",
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
    members = {
        clientToken = {
            type = "string",
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
    members = {
        semanticConsolidationOverride = M.SemanticConsolidationOverride,
        summaryConsolidationOverride = M.SummaryConsolidationOverride,
        userPreferenceConsolidationOverride = M.UserPreferenceConsolidationOverride,
        episodicConsolidationOverride = M.EpisodicConsolidationOverride,
    },
}

M.ConsolidationConfiguration = {
    type = "union",
    members = {
        customConsolidationConfiguration = M.CustomConsolidationConfiguration,
    },
}

M.EpisodicExtractionOverride = {
    type = "structure",
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
    members = {
        semanticExtractionOverride = M.SemanticExtractionOverride,
        userPreferenceExtractionOverride = M.UserPreferenceExtractionOverride,
        episodicExtractionOverride = M.EpisodicExtractionOverride,
    },
}

M.ExtractionConfiguration = {
    type = "union",
    members = {
        customExtractionConfiguration = M.CustomExtractionConfiguration,
    },
}

M.EpisodicReflectionOverride = {
    type = "structure",
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
    members = {
        episodicReflectionOverride = M.EpisodicReflectionOverride,
    },
}

M.EpisodicReflectionConfiguration = {
    type = "structure",
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
    members = {
        customReflectionConfiguration = M.CustomReflectionConfiguration,
        episodicReflectionConfiguration = M.EpisodicReflectionConfiguration,
    },
}

M.InvocationConfiguration = {
    type = "structure",
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
    members = {
        messageCount = {
            type = "integer",
        },
    },
}

M.TimeBasedTrigger = {
    type = "structure",
    members = {
        idleSessionTimeout = {
            type = "integer",
        },
    },
}

M.TokenBasedTrigger = {
    type = "structure",
    members = {
        tokenCount = {
            type = "integer",
        },
    },
}

M.TriggerCondition = {
    type = "union",
    members = {
        messageBasedTrigger = M.MessageBasedTrigger,
        tokenBasedTrigger = M.TokenBasedTrigger,
        timeBasedTrigger = M.TimeBasedTrigger,
    },
}

M.SelfManagedConfiguration = {
    type = "structure",
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
    members = {
        memory = M.Memory,
    },
}

M.ServiceException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteMemoryInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
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
    members = {
        memory = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Memory }),
    },
}

M.ListMemoriesInput = {
    type = "structure",
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
    members = {
        semanticConsolidationOverride = M.SemanticOverrideConsolidationConfigurationInput,
        summaryConsolidationOverride = M.SummaryOverrideConsolidationConfigurationInput,
        userPreferenceConsolidationOverride = M.UserPreferenceOverrideConsolidationConfigurationInput,
        episodicConsolidationOverride = M.EpisodicOverrideConsolidationConfigurationInput,
    },
}

M.ModifyConsolidationConfiguration = {
    type = "union",
    members = {
        customConsolidationConfiguration = M.CustomConsolidationConfigurationInput,
    },
}

M.CustomExtractionConfigurationInput = {
    type = "union",
    members = {
        semanticExtractionOverride = M.SemanticOverrideExtractionConfigurationInput,
        userPreferenceExtractionOverride = M.UserPreferenceOverrideExtractionConfigurationInput,
        episodicExtractionOverride = M.EpisodicOverrideExtractionConfigurationInput,
    },
}

M.ModifyExtractionConfiguration = {
    type = "union",
    members = {
        customExtractionConfiguration = M.CustomExtractionConfigurationInput,
    },
}

M.CustomReflectionConfigurationInput = {
    type = "union",
    members = {
        episodicReflectionOverride = M.EpisodicOverrideReflectionConfigurationInput,
    },
}

M.ModifyReflectionConfiguration = {
    type = "union",
    members = {
        episodicReflectionConfiguration = M.EpisodicReflectionConfigurationInput,
        customReflectionConfiguration = M.CustomReflectionConfigurationInput,
    },
}

M.ModifyInvocationConfigurationInput = {
    type = "structure",
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
    members = {
        extraction = M.ModifyExtractionConfiguration,
        consolidation = M.ModifyConsolidationConfiguration,
        reflection = M.ModifyReflectionConfiguration,
        selfManagedConfiguration = M.ModifySelfManagedConfiguration,
    },
}

M.ModifyMemoryStrategyInput = {
    type = "structure",
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
    members = {
        clientToken = {
            type = "string",
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
}

M.GetOauth2CredentialProviderInput = {
    type = "structure",
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
    members = {
        cloudWatchLogs = M.CloudWatchLogsInputConfig,
    },
}

M.EvaluatorReference = {
    type = "union",
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
    members = {
        clientToken = {
            type = "string",
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
    members = {
        clientToken = {
            type = "string",
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
    members = {
        optionalValue = {
            type = "string",
        },
    },
}

M.UpdatePolicyEngineInput = {
    type = "structure",
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
    members = {
        rawText = {
            type = "string",
        },
    },
}

M.StartPolicyGenerationInput = {
    type = "structure",
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
        },
    },
}

M.StartPolicyGenerationOutput = {
    type = "structure",
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
    members = {
        inlineContent = {
            type = "string",
        },
    },
}

M.ServerDefinition = {
    type = "structure",
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
    members = {
        server = M.ServerDefinition,
        tools = M.ToolsDefinition,
    },
}

M.Descriptors = {
    type = "structure",
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
    members = {
        fromUrl = M.FromUrlSynchronizationConfiguration,
    },
}

M.SynchronizationType = {
    URL = "URL",
}

M.CreateRegistryRecordInput = {
    type = "structure",
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
}

M.GetRegistryRecordInput = {
    type = "structure",
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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

M.ListRegistryRecordsOutput = {
    type = "structure",
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
            },
        },
    },
}

M.UpdatedA2aDescriptor = {
    type = "structure",
    members = {
        optionalValue = M.A2aDescriptor,
    },
}

M.UpdatedSkillDefinition = {
    type = "structure",
    members = {
        optionalValue = M.SkillDefinition,
    },
}

M.UpdatedSkillMdDefinition = {
    type = "structure",
    members = {
        optionalValue = M.SkillMdDefinition,
    },
}

M.UpdatedAgentSkillsDescriptorFields = {
    type = "structure",
    members = {
        skillMd = M.UpdatedSkillMdDefinition,
        skillDefinition = M.UpdatedSkillDefinition,
    },
}

M.UpdatedAgentSkillsDescriptor = {
    type = "structure",
    members = {
        optionalValue = M.UpdatedAgentSkillsDescriptorFields,
    },
}

M.UpdatedCustomDescriptor = {
    type = "structure",
    members = {
        optionalValue = M.CustomDescriptor,
    },
}

M.UpdatedServerDefinition = {
    type = "structure",
    members = {
        optionalValue = M.ServerDefinition,
    },
}

M.UpdatedToolsDefinition = {
    type = "structure",
    members = {
        optionalValue = M.ToolsDefinition,
    },
}

M.UpdatedMcpDescriptorFields = {
    type = "structure",
    members = {
        server = M.UpdatedServerDefinition,
        tools = M.UpdatedToolsDefinition,
    },
}

M.UpdatedMcpDescriptor = {
    type = "structure",
    members = {
        optionalValue = M.UpdatedMcpDescriptorFields,
    },
}

M.UpdatedDescriptorsUnion = {
    type = "structure",
    members = {
        mcp = M.UpdatedMcpDescriptor,
        a2a = M.UpdatedA2aDescriptor,
        custom = M.UpdatedCustomDescriptor,
        agentSkills = M.UpdatedAgentSkillsDescriptor,
    },
}

M.UpdatedDescriptors = {
    type = "structure",
    members = {
        optionalValue = M.UpdatedDescriptorsUnion,
    },
}

M.UpdatedSynchronizationConfiguration = {
    type = "structure",
    members = {
        optionalValue = M.SynchronizationConfiguration,
    },
}

M.UpdatedSynchronizationType = {
    type = "structure",
    members = {
        optionalValue = {
            type = "string",
        },
    },
}

M.UpdateRegistryRecordInput = {
    type = "structure",
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
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
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
            },
        },
    },
}

M.ApprovalConfiguration = {
    type = "structure",
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
        },
        approvalConfiguration = M.ApprovalConfiguration,
    },
}

M.CreateRegistryOutput = {
    type = "structure",
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

M.ListRegistriesInput = {
    type = "structure",
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

M.ListRegistriesOutput = {
    type = "structure",
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
    members = {
        optionalValue = M.ApprovalConfiguration,
    },
}

M.UpdateRegistryInput = {
    type = "structure",
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

M.ConcurrentModificationException = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.CreateWorkloadIdentityInput = {
    type = "structure",
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
}

M.GetWorkloadIdentityInput = {
    type = "structure",
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
    members = {
        mcp = M.McpTargetConfiguration,
        http = M.HttpTargetConfiguration,
    },
}

M.CreateGatewayTargetInput = {
    type = "structure",
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
    members = {
        targets = {
            type = "list",
            member = M.GatewayTarget,
        },
    },
}

return M
