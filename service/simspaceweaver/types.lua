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
            type = "number",
        },
        Actual = {
            type = "number",
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
        Destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
    },
}

M.LaunchOverrides = {
    type = "structure",
    members = {
        LaunchCommands = {
            type = "list",
            member_type = "string",
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
        LaunchOverrides = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        EndpointInfo = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Clocks = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LogDestination = {
    type = "structure",
    members = {
        CloudWatchLogsLogGroup = {
            type = "structure",
        },
    },
}

M.LoggingConfiguration = {
    type = "structure",
    members = {
        Destinations = {
            type = "list",
            member_type = "structure",
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
        SchemaS3Location = {
            type = "structure",
        },
        SchemaError = {
            type = "string",
        },
        LoggingConfiguration = {
            type = "structure",
        },
        LiveSimulationState = {
            type = "structure",
        },
        MaximumDuration = {
            type = "string",
        },
        SnapshotS3Location = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        LaunchOverrides = {
            type = "structure",
        },
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
        SchemaS3Location = {
            type = "structure",
        },
        MaximumDuration = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SnapshotS3Location = {
            type = "structure",
        },
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

return M
