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

M.CreateCliTokenInput = {
    type = "structure",
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
    members = {
        DagProcessingLogs = {
            type = "structure",
        },
        SchedulerLogs = {
            type = "structure",
        },
        WebserverLogs = {
            type = "structure",
        },
        WorkerLogs = {
            type = "structure",
        },
        TaskLogs = {
            type = "structure",
        },
    },
}

M.NetworkConfiguration = {
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
    },
}

M.WebserverAccessMode = {
    PRIVATE_ONLY = "PRIVATE_ONLY",
    PUBLIC_ONLY = "PUBLIC_ONLY",
}

M.CreateEnvironmentInput = {
    type = "structure",
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
        NetworkConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
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
            key_type = "string",
            value_type = "string",
        },
        EnvironmentClass = {
            type = "string",
        },
        MaxWorkers = {
            type = "number",
        },
        KmsKey = {
            type = "string",
        },
        AirflowVersion = {
            type = "string",
        },
        LoggingConfiguration = {
            type = "structure",
        },
        WeeklyMaintenanceWindowStart = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        WebserverAccessMode = {
            type = "string",
        },
        MinWorkers = {
            type = "number",
        },
        Schedulers = {
            type = "number",
        },
        EndpointManagement = {
            type = "string",
        },
        MinWebservers = {
            type = "number",
        },
        MaxWebservers = {
            type = "number",
        },
    },
}

M.CreateEnvironmentOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateWebLoginTokenInput = {
    type = "structure",
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
}

M.GetEnvironmentInput = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        Error = {
            type = "structure",
        },
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
    members = {
        DagProcessingLogs = {
            type = "structure",
        },
        SchedulerLogs = {
            type = "structure",
        },
        WebserverLogs = {
            type = "structure",
        },
        WorkerLogs = {
            type = "structure",
        },
        TaskLogs = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        EnvironmentClass = {
            type = "string",
        },
        MaxWorkers = {
            type = "number",
        },
        NetworkConfiguration = {
            type = "structure",
        },
        LoggingConfiguration = {
            type = "structure",
        },
        LastUpdate = {
            type = "structure",
        },
        WeeklyMaintenanceWindowStart = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        WebserverAccessMode = {
            type = "string",
        },
        MinWorkers = {
            type = "number",
        },
        Schedulers = {
            type = "number",
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
            type = "number",
        },
        MaxWebservers = {
            type = "number",
        },
    },
}

M.GetEnvironmentOutput = {
    type = "structure",
    members = {
        Environment = {
            type = "structure",
        },
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
    members = {
        RestApiStatusCode = {
            type = "number",
        },
        RestApiResponse = {
            type = "document",
        },
    },
}

M.RestApiClientException = {
    type = "structure",
    error = "client",
    members = {
        RestApiStatusCode = {
            type = "number",
        },
        RestApiResponse = {
            type = "document",
        },
    },
}

M.RestApiServerException = {
    type = "structure",
    error = "client",
    members = {
        RestApiStatusCode = {
            type = "number",
        },
        RestApiResponse = {
            type = "document",
        },
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
    },
}

M.ListEnvironmentsOutput = {
    type = "structure",
    members = {
        Environments = {
            type = "list",
            member_type = "string",
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

M.Dimension = {
    type = "structure",
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
    members = {
        SampleCount = {
            type = "number",
        },
        Sum = {
            type = "number",
        },
        Minimum = {
            type = "number",
        },
        Maximum = {
            type = "number",
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
            member_type = "structure",
        },
        Value = {
            type = "number",
        },
        Unit = {
            type = "string",
        },
        StatisticValues = {
            type = "structure",
        },
    },
}

M.PublishMetricsInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PublishMetricsOutput = {
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
        tagKeys = {
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

M.UpdateNetworkConfigurationInput = {
    type = "structure",
    members = {
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEnvironmentInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        LoggingConfiguration = {
            type = "structure",
        },
        MaxWorkers = {
            type = "number",
        },
        MinWorkers = {
            type = "number",
        },
        MaxWebservers = {
            type = "number",
        },
        MinWebservers = {
            type = "number",
        },
        WorkerReplacementStrategy = {
            type = "string",
        },
        NetworkConfiguration = {
            type = "structure",
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
        Schedulers = {
            type = "number",
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
    members = {
        Arn = {
            type = "string",
        },
    },
}

return M
