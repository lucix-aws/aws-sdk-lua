local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SimulationAppPortMapping = {
    type = "structure",
    id = "SimulationAppPortMapping",
    members = {
        Declared = {
            type = "integer",
        },
        Actual = {
            type = "integer",
        },
    },
}

M.ClockStatus = {
    UNKNOWN = "UNKNOWN",
    STARTING = "STARTING",
    STARTED = "STARTED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.ClockTargetStatus = {
    UNKNOWN = "UNKNOWN",
    STARTED = "STARTED",
    STOPPED = "STOPPED",
}

M.CloudWatchLogsLogGroup = {
    type = "structure",
    id = "CloudWatchLogsLogGroup",
    members = {
        LogGroupArn = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.S3Destination = {
    type = "structure",
    id = "S3Destination",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectKeyPrefix = {
            type = "string",
        },
    },
}

M.CreateSnapshotInput = {
    type = "structure",
    id = "CreateSnapshotInput",
    members = {
        Simulation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Destination }),
    },
}

M.CreateSnapshotOutput = {
    type = "structure",
    id = "CreateSnapshotOutput",
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
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
        },
    },
}

M.DeleteAppInput = {
    type = "structure",
    id = "DeleteAppInput",
    members = {
        Simulation = {
            type = "string",
            traits = {
                http_query = "simulation",
                required = true,
            },
        },
        Domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        App = {
            type = "string",
            traits = {
                http_query = "app",
                required = true,
            },
        },
    },
}

M.DeleteAppOutput = {
    type = "structure",
    id = "DeleteAppOutput",
}

M.DeleteSimulationInput = {
    type = "structure",
    id = "DeleteSimulationInput",
    members = {
        Simulation = {
            type = "string",
            traits = {
                http_query = "simulation",
                required = true,
            },
        },
    },
}

M.DeleteSimulationOutput = {
    type = "structure",
    id = "DeleteSimulationOutput",
}

M.DescribeAppInput = {
    type = "structure",
    id = "DescribeAppInput",
    members = {
        Simulation = {
            type = "string",
            traits = {
                http_query = "simulation",
                required = true,
            },
        },
        Domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
        App = {
            type = "string",
            traits = {
                http_query = "app",
                required = true,
            },
        },
    },
}

M.SimulationAppEndpointInfo = {
    type = "structure",
    id = "SimulationAppEndpointInfo",
    members = {
        Address = {
            type = "string",
        },
        IngressPortMappings = {
            type = "list",
            member = M.SimulationAppPortMapping,
        },
    },
}

M.LaunchOverrides = {
    type = "structure",
    id = "LaunchOverrides",
    members = {
        LaunchCommands = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SimulationAppStatus = {
    STARTING = "STARTING",
    STARTED = "STARTED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    ERROR = "ERROR",
    UNKNOWN = "UNKNOWN",
}

M.SimulationAppTargetStatus = {
    UNKNOWN = "UNKNOWN",
    STARTED = "STARTED",
    STOPPED = "STOPPED",
}

M.DescribeAppOutput = {
    type = "structure",
    id = "DescribeAppOutput",
    members = {
        Name = {
            type = "string",
        },
        Simulation = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        TargetStatus = {
            type = "string",
        },
        LaunchOverrides = M.LaunchOverrides,
        Description = {
            type = "string",
        },
        EndpointInfo = M.SimulationAppEndpointInfo,
    },
}

M.DescribeSimulationInput = {
    type = "structure",
    id = "DescribeSimulationInput",
    members = {
        Simulation = {
            type = "string",
            traits = {
                http_query = "simulation",
                required = true,
            },
        },
    },
}

M.SimulationClock = {
    type = "structure",
    id = "SimulationClock",
    members = {
        Status = {
            type = "string",
        },
        TargetStatus = {
            type = "string",
        },
    },
}

M.LifecycleManagementStrategy = {
    Unknown = "Unknown",
    PerWorker = "PerWorker",
    BySpatialSubdivision = "BySpatialSubdivision",
    ByRequest = "ByRequest",
}

M.Domain = {
    type = "structure",
    id = "Domain",
    members = {
        Name = {
            type = "string",
        },
        Lifecycle = {
            type = "string",
        },
    },
}

M.LiveSimulationState = {
    type = "structure",
    id = "LiveSimulationState",
    members = {
        Domains = {
            type = "list",
            member = M.Domain,
        },
        Clocks = {
            type = "list",
            member = M.SimulationClock,
        },
    },
}

M.LogDestination = {
    type = "structure",
    id = "LogDestination",
    members = {
        CloudWatchLogsLogGroup = M.CloudWatchLogsLogGroup,
    },
}

M.LoggingConfiguration = {
    type = "structure",
    id = "LoggingConfiguration",
    members = {
        Destinations = {
            type = "list",
            member = M.LogDestination,
        },
    },
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SimulationStatus = {
    UNKNOWN = "UNKNOWN",
    STARTING = "STARTING",
    STARTED = "STARTED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    FAILED = "FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    SNAPSHOT_IN_PROGRESS = "SNAPSHOT_IN_PROGRESS",
}

M.SimulationTargetStatus = {
    UNKNOWN = "UNKNOWN",
    STARTED = "STARTED",
    STOPPED = "STOPPED",
    DELETED = "DELETED",
}

M.DescribeSimulationOutput = {
    type = "structure",
    id = "DescribeSimulationOutput",
    members = {
        Name = {
            type = "string",
        },
        ExecutionId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        TargetStatus = {
            type = "string",
        },
        SchemaS3Location = M.S3Location,
        SchemaError = {
            type = "string",
        },
        LoggingConfiguration = M.LoggingConfiguration,
        LiveSimulationState = M.LiveSimulationState,
        MaximumDuration = {
            type = "string",
        },
        SnapshotS3Location = M.S3Location,
        StartError = {
            type = "string",
        },
    },
}

M.ListAppsInput = {
    type = "structure",
    id = "ListAppsInput",
    members = {
        Simulation = {
            type = "string",
            traits = {
                http_query = "simulation",
                required = true,
            },
        },
        Domain = {
            type = "string",
            traits = {
                http_query = "domain",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.SimulationAppMetadata = {
    type = "structure",
    id = "SimulationAppMetadata",
    members = {
        Name = {
            type = "string",
        },
        Simulation = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        TargetStatus = {
            type = "string",
        },
    },
}

M.ListAppsOutput = {
    type = "structure",
    id = "ListAppsOutput",
    members = {
        Apps = {
            type = "list",
            member = M.SimulationAppMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSimulationsInput = {
    type = "structure",
    id = "ListSimulationsInput",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.SimulationMetadata = {
    type = "structure",
    id = "SimulationMetadata",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        TargetStatus = {
            type = "string",
        },
    },
}

M.ListSimulationsOutput = {
    type = "structure",
    id = "ListSimulationsOutput",
    members = {
        Simulations = {
            type = "list",
            member = M.SimulationMetadata,
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

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartAppInput = {
    type = "structure",
    id = "StartAppInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Simulation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        LaunchOverrides = M.LaunchOverrides,
    },
}

M.StartAppOutput = {
    type = "structure",
    id = "StartAppOutput",
    members = {
        Name = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        Simulation = {
            type = "string",
        },
    },
}

M.StartClockInput = {
    type = "structure",
    id = "StartClockInput",
    members = {
        Simulation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartClockOutput = {
    type = "structure",
    id = "StartClockOutput",
}

M.StartSimulationInput = {
    type = "structure",
    id = "StartSimulationInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaS3Location = M.S3Location,
        MaximumDuration = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        SnapshotS3Location = M.S3Location,
    },
}

M.StartSimulationOutput = {
    type = "structure",
    id = "StartSimulationOutput",
    members = {
        Arn = {
            type = "string",
        },
        ExecutionId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
    },
}

M.StopAppInput = {
    type = "structure",
    id = "StopAppInput",
    members = {
        Simulation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        App = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopAppOutput = {
    type = "structure",
    id = "StopAppOutput",
}

M.StopClockInput = {
    type = "structure",
    id = "StopClockInput",
    members = {
        Simulation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopClockOutput = {
    type = "structure",
    id = "StopClockOutput",
}

M.StopSimulationInput = {
    type = "structure",
    id = "StopSimulationInput",
    members = {
        Simulation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopSimulationOutput = {
    type = "structure",
    id = "StopSimulationOutput",
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

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
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
