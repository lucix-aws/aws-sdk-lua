local M = {}

M.AccessDeniedException = {
    type = "structure",
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
}

M.GetApplicationInput = {
    type = "structure",
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
    members = {
        SignalResponse = {
            type = "string",
        },
    },
}

M.DeleteStreamGroupInput = {
    type = "structure",
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
}

M.DisassociateApplicationsInput = {
    type = "structure",
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
}

M.GetStreamSessionInput = {
    type = "structure",
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
}

M.StartStreamSessionInput = {
    type = "structure",
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
}

M.TerminateStreamSessionInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

return M
