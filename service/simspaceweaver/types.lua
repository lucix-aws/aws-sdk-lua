local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SimulationAppPortMapping = {
    type = "structure",
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
    members = {
        LogGroupArn = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.S3Destination = {
    type = "structure",
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
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAppInput = {
    type = "structure",
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
}

M.DeleteSimulationInput = {
    type = "structure",
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
}

M.DescribeAppInput = {
    type = "structure",
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
    members = {
        CloudWatchLogsLogGroup = M.CloudWatchLogsLogGroup,
    },
}

M.LoggingConfiguration = {
    type = "structure",
    members = {
        Destinations = {
            type = "list",
            member = M.LogDestination,
        },
    },
}

M.S3Location = {
    type = "structure",
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

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartAppInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
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
}

M.StartSimulationInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
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
}

M.StopClockInput = {
    type = "structure",
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
}

M.StopSimulationInput = {
    type = "structure",
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

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
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
