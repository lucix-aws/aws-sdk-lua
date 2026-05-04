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

M.CreateCliTokenInput = {
    type = "structure",
    id = "CreateCliTokenInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateCliTokenOutput = {
    type = "structure",
    id = "CreateCliTokenOutput",
    members = {
        CliToken = {
            type = "string",
        },
        WebServerHostname = {
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

M.EndpointManagement = {
    CUSTOMER = "CUSTOMER",
    SERVICE = "SERVICE",
}

M.LoggingLevel = {
    CRITICAL = "CRITICAL",
    ERROR = "ERROR",
    WARNING = "WARNING",
    INFO = "INFO",
    DEBUG = "DEBUG",
}

M.ModuleLoggingConfigurationInput = {
    type = "structure",
    id = "ModuleLoggingConfigurationInput",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        LogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LoggingConfigurationInput = {
    type = "structure",
    id = "LoggingConfigurationInput",
    members = {
        DagProcessingLogs = M.ModuleLoggingConfigurationInput,
        SchedulerLogs = M.ModuleLoggingConfigurationInput,
        WebserverLogs = M.ModuleLoggingConfigurationInput,
        WorkerLogs = M.ModuleLoggingConfigurationInput,
        TaskLogs = M.ModuleLoggingConfigurationInput,
    },
}

M.NetworkConfiguration = {
    type = "structure",
    id = "NetworkConfiguration",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.WebserverAccessMode = {
    PRIVATE_ONLY = "PRIVATE_ONLY",
    PUBLIC_ONLY = "PUBLIC_ONLY",
}

M.CreateEnvironmentInput = {
    type = "structure",
    id = "CreateEnvironmentInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceBucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DagS3Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NetworkConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NetworkConfiguration }),
        PluginsS3Path = {
            type = "string",
        },
        PluginsS3ObjectVersion = {
            type = "string",
        },
        RequirementsS3Path = {
            type = "string",
        },
        RequirementsS3ObjectVersion = {
            type = "string",
        },
        StartupScriptS3Path = {
            type = "string",
        },
        StartupScriptS3ObjectVersion = {
            type = "string",
        },
        AirflowConfigurationOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        EnvironmentClass = {
            type = "string",
        },
        MaxWorkers = {
            type = "integer",
        },
        KmsKey = {
            type = "string",
        },
        AirflowVersion = {
            type = "string",
        },
        LoggingConfiguration = M.LoggingConfigurationInput,
        WeeklyMaintenanceWindowStart = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        WebserverAccessMode = {
            type = "string",
        },
        MinWorkers = {
            type = "integer",
        },
        Schedulers = {
            type = "integer",
        },
        EndpointManagement = {
            type = "string",
        },
        MinWebservers = {
            type = "integer",
        },
        MaxWebservers = {
            type = "integer",
        },
    },
}

M.CreateEnvironmentOutput = {
    type = "structure",
    id = "CreateEnvironmentOutput",
    members = {
        Arn = {
            type = "string",
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

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateWebLoginTokenInput = {
    type = "structure",
    id = "CreateWebLoginTokenInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateWebLoginTokenOutput = {
    type = "structure",
    id = "CreateWebLoginTokenOutput",
    members = {
        WebToken = {
            type = "string",
        },
        WebServerHostname = {
            type = "string",
        },
        IamIdentity = {
            type = "string",
        },
        AirflowIdentity = {
            type = "string",
        },
    },
}

M.DeleteEnvironmentInput = {
    type = "structure",
    id = "DeleteEnvironmentInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEnvironmentOutput = {
    type = "structure",
    id = "DeleteEnvironmentOutput",
}

M.GetEnvironmentInput = {
    type = "structure",
    id = "GetEnvironmentInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateError = {
    type = "structure",
    id = "UpdateError",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.UpdateStatus = {
    SUCCESS = "SUCCESS",
    PENDING = "PENDING",
    FAILED = "FAILED",
}

M.WorkerReplacementStrategy = {
    FORCED = "FORCED",
    GRACEFUL = "GRACEFUL",
}

M.LastUpdate = {
    type = "structure",
    id = "LastUpdate",
    members = {
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Error = M.UpdateError,
        Source = {
            type = "string",
        },
        WorkerReplacementStrategy = {
            type = "string",
        },
    },
}

M.ModuleLoggingConfiguration = {
    type = "structure",
    id = "ModuleLoggingConfiguration",
    members = {
        Enabled = {
            type = "boolean",
        },
        LogLevel = {
            type = "string",
        },
        CloudWatchLogGroupArn = {
            type = "string",
        },
    },
}

M.LoggingConfiguration = {
    type = "structure",
    id = "LoggingConfiguration",
    members = {
        DagProcessingLogs = M.ModuleLoggingConfiguration,
        SchedulerLogs = M.ModuleLoggingConfiguration,
        WebserverLogs = M.ModuleLoggingConfiguration,
        WorkerLogs = M.ModuleLoggingConfiguration,
        TaskLogs = M.ModuleLoggingConfiguration,
    },
}

M.EnvironmentStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    AVAILABLE = "AVAILABLE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    UNAVAILABLE = "UNAVAILABLE",
    UPDATE_FAILED = "UPDATE_FAILED",
    ROLLING_BACK = "ROLLING_BACK",
    CREATING_SNAPSHOT = "CREATING_SNAPSHOT",
    PENDING = "PENDING",
    MAINTENANCE = "MAINTENANCE",
}

M.Environment = {
    type = "structure",
    id = "Environment",
    members = {
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        WebserverUrl = {
            type = "string",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        ServiceRoleArn = {
            type = "string",
        },
        KmsKey = {
            type = "string",
        },
        AirflowVersion = {
            type = "string",
        },
        SourceBucketArn = {
            type = "string",
        },
        DagS3Path = {
            type = "string",
        },
        PluginsS3Path = {
            type = "string",
        },
        PluginsS3ObjectVersion = {
            type = "string",
        },
        RequirementsS3Path = {
            type = "string",
        },
        RequirementsS3ObjectVersion = {
            type = "string",
        },
        StartupScriptS3Path = {
            type = "string",
        },
        StartupScriptS3ObjectVersion = {
            type = "string",
        },
        AirflowConfigurationOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        EnvironmentClass = {
            type = "string",
        },
        MaxWorkers = {
            type = "integer",
        },
        NetworkConfiguration = M.NetworkConfiguration,
        LoggingConfiguration = M.LoggingConfiguration,
        LastUpdate = M.LastUpdate,
        WeeklyMaintenanceWindowStart = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        WebserverAccessMode = {
            type = "string",
        },
        MinWorkers = {
            type = "integer",
        },
        Schedulers = {
            type = "integer",
        },
        WebserverVpcEndpointService = {
            type = "string",
        },
        DatabaseVpcEndpointService = {
            type = "string",
        },
        CeleryExecutorQueue = {
            type = "string",
        },
        EndpointManagement = {
            type = "string",
        },
        MinWebservers = {
            type = "integer",
        },
        MaxWebservers = {
            type = "integer",
        },
    },
}

M.GetEnvironmentOutput = {
    type = "structure",
    id = "GetEnvironmentOutput",
    members = {
        Environment = M.Environment,
    },
}

M.RestApiMethod = {
    GET = "GET",
    PUT = "PUT",
    POST = "POST",
    PATCH = "PATCH",
    DELETE = "DELETE",
}

M.InvokeRestApiInput = {
    type = "structure",
    id = "InvokeRestApiInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Method = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryParameters = {
            type = "document",
        },
        Body = {
            type = "document",
        },
    },
}

M.InvokeRestApiOutput = {
    type = "structure",
    id = "InvokeRestApiOutput",
    members = {
        RestApiStatusCode = {
            type = "integer",
        },
        RestApiResponse = {
            type = "document",
        },
    },
}

M.RestApiClientException = {
    type = "structure",
    id = "RestApiClientException",
    error = "client",
    members = {
        RestApiStatusCode = {
            type = "integer",
        },
        RestApiResponse = {
            type = "document",
        },
    },
}

M.RestApiServerException = {
    type = "structure",
    id = "RestApiServerException",
    error = "client",
    members = {
        RestApiStatusCode = {
            type = "integer",
        },
        RestApiResponse = {
            type = "document",
        },
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
    id = "ListEnvironmentsInput",
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

M.ListEnvironmentsOutput = {
    type = "structure",
    id = "ListEnvironmentsOutput",
    members = {
        Environments = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
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

M.Dimension = {
    type = "structure",
    id = "Dimension",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StatisticSet = {
    type = "structure",
    id = "StatisticSet",
    members = {
        SampleCount = {
            type = "integer",
        },
        Sum = {
            type = "double",
        },
        Minimum = {
            type = "double",
        },
        Maximum = {
            type = "double",
        },
    },
}

M.Unit = {
    SECONDS = "Seconds",
    MICROSECONDS = "Microseconds",
    MILLISECONDS = "Milliseconds",
    BYTES = "Bytes",
    KILOBYTES = "Kilobytes",
    MEGABYTES = "Megabytes",
    GIGABYTES = "Gigabytes",
    TERABYTES = "Terabytes",
    BITS = "Bits",
    KILOBITS = "Kilobits",
    MEGABITS = "Megabits",
    GIGABITS = "Gigabits",
    TERABITS = "Terabits",
    PERCENT = "Percent",
    COUNT = "Count",
    BYTES_PER_SECOND = "Bytes/Second",
    KILOBYTES_PER_SECOND = "Kilobytes/Second",
    MEGABYTES_PER_SECOND = "Megabytes/Second",
    GIGABYTES_PER_SECOND = "Gigabytes/Second",
    TERABYTES_PER_SECOND = "Terabytes/Second",
    BITS_PER_SECOND = "Bits/Second",
    KILOBITS_PER_SECOND = "Kilobits/Second",
    MEGABITS_PER_SECOND = "Megabits/Second",
    GIGABITS_PER_SECOND = "Gigabits/Second",
    TERABITS_PER_SECOND = "Terabits/Second",
    COUNT_PER_SECOND = "Count/Second",
    NONE = "None",
}

M.MetricDatum = {
    type = "structure",
    id = "MetricDatum",
    members = {
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
        Value = {
            type = "double",
        },
        Unit = {
            type = "string",
        },
        StatisticValues = M.StatisticSet,
    },
}

M.PublishMetricsInput = {
    type = "structure",
    id = "PublishMetricsInput",
    members = {
        EnvironmentName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MetricData = {
            type = "list",
            member = M.MetricDatum,
            traits = {
                required = true,
            },
        },
    },
}

M.PublishMetricsOutput = {
    type = "structure",
    id = "PublishMetricsOutput",
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

M.UpdateNetworkConfigurationInput = {
    type = "structure",
    id = "UpdateNetworkConfigurationInput",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEnvironmentInput = {
    type = "structure",
    id = "UpdateEnvironmentInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExecutionRoleArn = {
            type = "string",
        },
        AirflowConfigurationOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AirflowVersion = {
            type = "string",
        },
        DagS3Path = {
            type = "string",
        },
        EnvironmentClass = {
            type = "string",
        },
        LoggingConfiguration = M.LoggingConfigurationInput,
        MaxWorkers = {
            type = "integer",
        },
        MinWorkers = {
            type = "integer",
        },
        MaxWebservers = {
            type = "integer",
        },
        MinWebservers = {
            type = "integer",
        },
        WorkerReplacementStrategy = {
            type = "string",
        },
        NetworkConfiguration = M.UpdateNetworkConfigurationInput,
        PluginsS3Path = {
            type = "string",
        },
        PluginsS3ObjectVersion = {
            type = "string",
        },
        RequirementsS3Path = {
            type = "string",
        },
        RequirementsS3ObjectVersion = {
            type = "string",
        },
        Schedulers = {
            type = "integer",
        },
        SourceBucketArn = {
            type = "string",
        },
        StartupScriptS3Path = {
            type = "string",
        },
        StartupScriptS3ObjectVersion = {
            type = "string",
        },
        WebserverAccessMode = {
            type = "string",
        },
        WeeklyMaintenanceWindowStart = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentOutput = {
    type = "structure",
    id = "UpdateEnvironmentOutput",
    members = {
        Arn = {
            type = "string",
        },
    },
}

return M
