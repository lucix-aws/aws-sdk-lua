local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VpcTransitConfiguration = {
    type = "structure",
    id = "VpcTransitConfiguration",
    members = {
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Ipv4CidrBlocks = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.LocationConfiguration = {
    type = "structure",
    id = "LocationConfiguration",
    members = {
        LocationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlwaysOnCapacity = {
            type = "integer",
        },
        OnDemandCapacity = {
            type = "integer",
        },
        TargetIdleCapacity = {
            type = "integer",
        },
        MaximumCapacity = {
            type = "integer",
        },
        VpcTransitConfiguration = M.VpcTransitConfiguration,
    },
}

M.AddStreamGroupLocationsInput = {
    type = "structure",
    id = "AddStreamGroupLocationsInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LocationConfigurations = {
            type = "list",
            member = M.LocationConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.StreamGroupLocationStatus = {
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    ERROR = "ERROR",
    REMOVING = "REMOVING",
}

M.VpcTransitConfigurationResponse = {
    type = "structure",
    id = "VpcTransitConfigurationResponse",
    members = {
        VpcId = {
            type = "string",
        },
        Ipv4CidrBlocks = {
            type = "list",
            member = { type = "string" },
        },
        TransitGatewayId = {
            type = "string",
        },
        TransitGatewayResourceShareArn = {
            type = "string",
        },
    },
}

M.LocationState = {
    type = "structure",
    id = "LocationState",
    members = {
        LocationName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AlwaysOnCapacity = {
            type = "integer",
        },
        OnDemandCapacity = {
            type = "integer",
        },
        TargetIdleCapacity = {
            type = "integer",
        },
        MaximumCapacity = {
            type = "integer",
        },
        RequestedCapacity = {
            type = "integer",
        },
        AllocatedCapacity = {
            type = "integer",
        },
        IdleCapacity = {
            type = "integer",
        },
        InternalVpcIpv4CidrBlock = {
            type = "string",
        },
        VpcTransitConfiguration = M.VpcTransitConfigurationResponse,
    },
}

M.AddStreamGroupLocationsOutput = {
    type = "structure",
    id = "AddStreamGroupLocationsOutput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Locations = {
            type = "list",
            member = M.LocationState,
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationStatus = {
    INITIALIZED = "INITIALIZED",
    PROCESSING = "PROCESSING",
    READY = "READY",
    DELETING = "DELETING",
    ERROR = "ERROR",
}

M.ApplicationStatusReason = {
    INTERNAL_ERROR = "internalError",
    ACCESS_DENIED = "accessDenied",
    SOURCE_MODIFIED = "sourceModified",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RuntimeEnvironmentType = {
    PROTON = "PROTON",
    WINDOWS = "WINDOWS",
    UBUNTU = "UBUNTU",
}

M.RuntimeEnvironment = {
    type = "structure",
    id = "RuntimeEnvironment",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    id = "CreateApplicationInput",
    members = {
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuntimeEnvironment = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuntimeEnvironment }),
        ExecutablePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationSourceUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationLogPaths = {
            type = "list",
            member = { type = "string" },
        },
        ApplicationLogOutputUri = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.ReplicationStatusType = {
    REPLICATING = "REPLICATING",
    COMPLETED = "COMPLETED",
}

M.ReplicationStatus = {
    type = "structure",
    id = "ReplicationStatus",
    members = {
        Location = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    id = "CreateApplicationOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RuntimeEnvironment = M.RuntimeEnvironment,
        ExecutablePath = {
            type = "string",
        },
        ApplicationLogPaths = {
            type = "list",
            member = { type = "string" },
        },
        ApplicationLogOutputUri = {
            type = "string",
        },
        ApplicationSourceUri = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        ReplicationStatuses = {
            type = "list",
            member = M.ReplicationStatus,
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        AssociatedStreamGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    id = "DeleteApplicationInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
    id = "DeleteApplicationOutput",
}

M.GetApplicationInput = {
    type = "structure",
    id = "GetApplicationInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApplicationOutput = {
    type = "structure",
    id = "GetApplicationOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RuntimeEnvironment = M.RuntimeEnvironment,
        ExecutablePath = {
            type = "string",
        },
        ApplicationLogPaths = {
            type = "list",
            member = { type = "string" },
        },
        ApplicationLogOutputUri = {
            type = "string",
        },
        ApplicationSourceUri = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        ReplicationStatuses = {
            type = "list",
            member = M.ReplicationStatus,
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        AssociatedStreamGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    id = "ListApplicationsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ApplicationSummary = {
    type = "structure",
    id = "ApplicationSummary",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        RuntimeEnvironment = M.RuntimeEnvironment,
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    id = "ListApplicationsOutput",
    members = {
        Items = {
            type = "list",
            member = M.ApplicationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    id = "UpdateApplicationInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ApplicationLogPaths = {
            type = "list",
            member = { type = "string" },
        },
        ApplicationLogOutputUri = {
            type = "string",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    id = "UpdateApplicationOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RuntimeEnvironment = M.RuntimeEnvironment,
        ExecutablePath = {
            type = "string",
        },
        ApplicationLogPaths = {
            type = "list",
            member = { type = "string" },
        },
        ApplicationLogOutputUri = {
            type = "string",
        },
        ApplicationSourceUri = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        ReplicationStatuses = {
            type = "list",
            member = M.ReplicationStatus,
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        AssociatedStreamGroups = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AssociateApplicationsInput = {
    type = "structure",
    id = "AssociateApplicationsInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateApplicationsOutput = {
    type = "structure",
    id = "AssociateApplicationsOutput",
    members = {
        Arn = {
            type = "string",
        },
        ApplicationArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StreamClass = {
    gen4n_high = "gen4n_high",
    gen4n_ultra = "gen4n_ultra",
    gen4n_win2022 = "gen4n_win2022",
    gen5n_high = "gen5n_high",
    gen5n_ultra = "gen5n_ultra",
    gen5n_win2022 = "gen5n_win2022",
    gen6n_small = "gen6n_small",
    gen6n_medium = "gen6n_medium",
    gen6n_high = "gen6n_high",
    gen6n_ultra = "gen6n_ultra",
    gen6n_ultra_win2022 = "gen6n_ultra_win2022",
    gen6n_pro = "gen6n_pro",
    gen6n_pro_win2022 = "gen6n_pro_win2022",
    gen6n_small_win2022 = "gen6n_small_win2022",
    gen6n_medium_win2022 = "gen6n_medium_win2022",
    gen6e_pro = "gen6e_pro",
    gen6e_pro_win2022 = "gen6e_pro_win2022",
}

M.CreateStreamGroupInput = {
    type = "structure",
    id = "CreateStreamGroupInput",
    members = {
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamClass = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultApplicationIdentifier = {
            type = "string",
        },
        LocationConfigurations = {
            type = "list",
            member = M.LocationConfiguration,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DefaultApplication = {
    type = "structure",
    id = "DefaultApplication",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.StreamGroupStatus = {
    ACTIVATING = "ACTIVATING",
    UPDATING_LOCATIONS = "UPDATING_LOCATIONS",
    ACTIVE = "ACTIVE",
    ACTIVE_WITH_ERRORS = "ACTIVE_WITH_ERRORS",
    ERROR = "ERROR",
    DELETING = "DELETING",
    EXPIRED = "EXPIRED",
}

M.StreamGroupStatusReason = {
    INTERNAL_ERROR = "internalError",
    NO_AVAILABLE_INSTANCES = "noAvailableInstances",
}

M.CreateStreamGroupOutput = {
    type = "structure",
    id = "CreateStreamGroupOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DefaultApplication = M.DefaultApplication,
        LocationStates = {
            type = "list",
            member = M.LocationState,
        },
        StreamClass = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ExpiresAt = {
            type = "timestamp",
        },
        AssociatedApplications = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateStreamSessionConnectionInput = {
    type = "structure",
    id = "CreateStreamSessionConnectionInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StreamSessionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SignalRequest = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateStreamSessionConnectionOutput = {
    type = "structure",
    id = "CreateStreamSessionConnectionOutput",
    members = {
        SignalResponse = {
            type = "string",
        },
    },
}

M.DeleteStreamGroupInput = {
    type = "structure",
    id = "DeleteStreamGroupInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteStreamGroupOutput = {
    type = "structure",
    id = "DeleteStreamGroupOutput",
}

M.DisassociateApplicationsInput = {
    type = "structure",
    id = "DisassociateApplicationsInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationIdentifiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateApplicationsOutput = {
    type = "structure",
    id = "DisassociateApplicationsOutput",
    members = {
        Arn = {
            type = "string",
        },
        ApplicationArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ExportFilesStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    PENDING = "PENDING",
}

M.ExportFilesMetadata = {
    type = "structure",
    id = "ExportFilesMetadata",
    members = {
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        OutputUri = {
            type = "string",
        },
    },
}

M.ExportStreamSessionFilesInput = {
    type = "structure",
    id = "ExportStreamSessionFilesInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StreamSessionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OutputUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportStreamSessionFilesOutput = {
    type = "structure",
    id = "ExportStreamSessionFilesOutput",
}

M.GetStreamSessionInput = {
    type = "structure",
    id = "GetStreamSessionInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StreamSessionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PerformanceStatsConfiguration = {
    type = "structure",
    id = "PerformanceStatsConfiguration",
    members = {
        SharedWithClient = {
            type = "boolean",
        },
    },
}

M.Protocol = {
    WEBRTC = "WebRTC",
}

M.StreamSessionStatus = {
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    CONNECTED = "CONNECTED",
    PENDING_CLIENT_RECONNECTION = "PENDING_CLIENT_RECONNECTION",
    RECONNECTING = "RECONNECTING",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    ERROR = "ERROR",
}

M.StreamSessionStatusReason = {
    INTERNAL_ERROR = "internalError",
    INVALID_SIGNAL_REQUEST = "invalidSignalRequest",
    PLACEMENT_TIMEOUT = "placementTimeout",
    APP_LOG_S3_DESTINATION_ERROR = "applicationLogS3DestinationError",
    APPLICATION_EXIT = "applicationExit",
    CONNECTION_TIMEOUT = "connectionTimeout",
    RECONNECTION_TIMEOUT = "reconnectionTimeout",
    MAX_SESSION_LENGTH_TIMEOUT = "maxSessionLengthTimeout",
    IDLE_TIMEOUT = "idleTimeout",
    API_TERMINATED = "apiTerminated",
}

M.GetStreamSessionOutput = {
    type = "structure",
    id = "GetStreamSessionOutput",
    members = {
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        StreamGroupId = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        SignalRequest = {
            type = "string",
        },
        SignalResponse = {
            type = "string",
        },
        ConnectionTimeoutSeconds = {
            type = "integer",
        },
        SessionLengthSeconds = {
            type = "integer",
        },
        AdditionalLaunchArgs = {
            type = "list",
            member = { type = "string" },
        },
        AdditionalEnvironmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PerformanceStatsConfiguration = M.PerformanceStatsConfiguration,
        LogFileLocationUri = {
            type = "string",
        },
        WebSdkProtocolUrl = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ApplicationArn = {
            type = "string",
        },
        ExportFilesMetadata = M.ExportFilesMetadata,
    },
}

M.ListStreamSessionsInput = {
    type = "structure",
    id = "ListStreamSessionsInput",
    members = {
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
        ExportFilesStatus = {
            type = "string",
            traits = {
                http_query = "ExportFilesStatus",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StreamSessionSummary = {
    type = "structure",
    id = "StreamSessionSummary",
    members = {
        Arn = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ApplicationArn = {
            type = "string",
        },
        ExportFilesMetadata = M.ExportFilesMetadata,
        Location = {
            type = "string",
        },
    },
}

M.ListStreamSessionsOutput = {
    type = "structure",
    id = "ListStreamSessionsOutput",
    members = {
        Items = {
            type = "list",
            member = M.StreamSessionSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStreamSessionsByAccountInput = {
    type = "structure",
    id = "ListStreamSessionsByAccountInput",
    members = {
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
        ExportFilesStatus = {
            type = "string",
            traits = {
                http_query = "ExportFilesStatus",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListStreamSessionsByAccountOutput = {
    type = "structure",
    id = "ListStreamSessionsByAccountOutput",
    members = {
        Items = {
            type = "list",
            member = M.StreamSessionSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
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
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RemoveStreamGroupLocationsInput = {
    type = "structure",
    id = "RemoveStreamGroupLocationsInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Locations = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "locations",
                required = true,
            },
        },
    },
}

M.RemoveStreamGroupLocationsOutput = {
    type = "structure",
    id = "RemoveStreamGroupLocationsOutput",
}

M.StartStreamSessionInput = {
    type = "structure",
    id = "StartStreamSessionInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Description = {
            type = "string",
        },
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SignalRequest = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
        },
        Locations = {
            type = "list",
            member = { type = "string" },
        },
        ConnectionTimeoutSeconds = {
            type = "integer",
        },
        SessionLengthSeconds = {
            type = "integer",
        },
        AdditionalLaunchArgs = {
            type = "list",
            member = { type = "string" },
        },
        AdditionalEnvironmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PerformanceStatsConfiguration = M.PerformanceStatsConfiguration,
    },
}

M.StartStreamSessionOutput = {
    type = "structure",
    id = "StartStreamSessionOutput",
    members = {
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        StreamGroupId = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        SignalRequest = {
            type = "string",
        },
        SignalResponse = {
            type = "string",
        },
        ConnectionTimeoutSeconds = {
            type = "integer",
        },
        SessionLengthSeconds = {
            type = "integer",
        },
        AdditionalLaunchArgs = {
            type = "list",
            member = { type = "string" },
        },
        AdditionalEnvironmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PerformanceStatsConfiguration = M.PerformanceStatsConfiguration,
        LogFileLocationUri = {
            type = "string",
        },
        WebSdkProtocolUrl = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ApplicationArn = {
            type = "string",
        },
        ExportFilesMetadata = M.ExportFilesMetadata,
    },
}

M.GetStreamGroupInput = {
    type = "structure",
    id = "GetStreamGroupInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetStreamGroupOutput = {
    type = "structure",
    id = "GetStreamGroupOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DefaultApplication = M.DefaultApplication,
        LocationStates = {
            type = "list",
            member = M.LocationState,
        },
        StreamClass = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ExpiresAt = {
            type = "timestamp",
        },
        AssociatedApplications = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListStreamGroupsInput = {
    type = "structure",
    id = "ListStreamGroupsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.StreamGroupSummary = {
    type = "structure",
    id = "StreamGroupSummary",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefaultApplication = M.DefaultApplication,
        StreamClass = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        ExpiresAt = {
            type = "timestamp",
        },
    },
}

M.ListStreamGroupsOutput = {
    type = "structure",
    id = "ListStreamGroupsOutput",
    members = {
        Items = {
            type = "list",
            member = M.StreamGroupSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateStreamGroupInput = {
    type = "structure",
    id = "UpdateStreamGroupInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LocationConfigurations = {
            type = "list",
            member = M.LocationConfiguration,
        },
        Description = {
            type = "string",
        },
        DefaultApplicationIdentifier = {
            type = "string",
        },
    },
}

M.UpdateStreamGroupOutput = {
    type = "structure",
    id = "UpdateStreamGroupOutput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DefaultApplication = M.DefaultApplication,
        LocationStates = {
            type = "list",
            member = M.LocationState,
        },
        StreamClass = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ExpiresAt = {
            type = "timestamp",
        },
        AssociatedApplications = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
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

M.TerminateStreamSessionInput = {
    type = "structure",
    id = "TerminateStreamSessionInput",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StreamSessionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TerminateStreamSessionOutput = {
    type = "structure",
    id = "TerminateStreamSessionOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceArn = {
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

return M
