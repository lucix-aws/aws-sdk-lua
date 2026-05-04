local M = {}

M.AccessDeniedException = {
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

M.Telemetry = {
    ERRORS = "errors",
    PERFORMANCE = "performance",
    HTTP = "http",
}

M.AppMonitorConfiguration = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
        },
        ExcludedPages = {
            type = "list",
            member = { type = "string" },
        },
        IncludedPages = {
            type = "list",
            member = { type = "string" },
        },
        FavoritePages = {
            type = "list",
            member = { type = "string" },
        },
        SessionSampleRate = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        GuestRoleArn = {
            type = "string",
        },
        AllowCookies = {
            type = "boolean",
        },
        Telemetries = {
            type = "list",
            member = { type = "string" },
        },
        EnableXRay = {
            type = "boolean",
        },
    },
}

M.CustomEventsStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CustomEvents = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.CwLog = {
    type = "structure",
    members = {
        CwLogEnabled = {
            type = "boolean",
        },
        CwLogGroup = {
            type = "string",
        },
    },
}

M.DataStorage = {
    type = "structure",
    members = {
        CwLog = M.CwLog,
    },
}

M.DeobfuscationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.JavaScriptSourceMaps = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Uri = {
            type = "string",
        },
    },
}

M.DeobfuscationConfiguration = {
    type = "structure",
    members = {
        JavaScriptSourceMaps = M.JavaScriptSourceMaps,
    },
}

M.AppMonitorPlatform = {
    WEB = "Web",
    ANDROID = "Android",
    IOS = "iOS",
}

M.StateEnum = {
    CREATED = "CREATED",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
}

M.AppMonitor = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Domain = {
            type = "string",
        },
        DomainList = {
            type = "list",
            member = { type = "string" },
        },
        Id = {
            type = "string",
        },
        Created = {
            type = "string",
        },
        LastModified = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        State = {
            type = "string",
        },
        AppMonitorConfiguration = M.AppMonitorConfiguration,
        DataStorage = M.DataStorage,
        CustomEvents = M.CustomEvents,
        DeobfuscationConfiguration = M.DeobfuscationConfiguration,
        Platform = {
            type = "string",
        },
    },
}

M.AppMonitorDetails = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        id = {
            type = "string",
        },
        version = {
            type = "string",
        },
    },
}

M.MetricDestination = {
    CloudWatch = "CloudWatch",
    Evidently = "Evidently",
}

M.MetricDefinitionRequest = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValueKey = {
            type = "string",
        },
        UnitLabel = {
            type = "string",
        },
        DimensionKeys = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        EventPattern = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
    },
}

M.BatchCreateRumMetricDefinitionsInput = {
    type = "structure",
    members = {
        AppMonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationArn = {
            type = "string",
        },
        MetricDefinitions = {
            type = "list",
            member = M.MetricDefinitionRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchCreateRumMetricDefinitionsError = {
    type = "structure",
    members = {
        MetricDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetricDefinitionRequest }),
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricDefinition = {
    type = "structure",
    members = {
        MetricDefinitionId = {
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
        ValueKey = {
            type = "string",
        },
        UnitLabel = {
            type = "string",
        },
        DimensionKeys = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        EventPattern = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
    },
}

M.BatchCreateRumMetricDefinitionsOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member = M.BatchCreateRumMetricDefinitionsError,
            traits = {
                required = true,
            },
        },
        MetricDefinitions = {
            type = "list",
            member = M.MetricDefinition,
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
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
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
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
    },
}

M.BatchDeleteRumMetricDefinitionsInput = {
    type = "structure",
    members = {
        AppMonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Destination = {
            type = "string",
            traits = {
                http_query = "destination",
                required = true,
            },
        },
        DestinationArn = {
            type = "string",
            traits = {
                http_query = "destinationArn",
            },
        },
        MetricDefinitionIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "metricDefinitionIds",
                required = true,
            },
        },
    },
}

M.BatchDeleteRumMetricDefinitionsError = {
    type = "structure",
    members = {
        MetricDefinitionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteRumMetricDefinitionsOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member = M.BatchDeleteRumMetricDefinitionsError,
            traits = {
                required = true,
            },
        },
        MetricDefinitionIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BatchGetRumMetricDefinitionsInput = {
    type = "structure",
    members = {
        AppMonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Destination = {
            type = "string",
            traits = {
                http_query = "destination",
                required = true,
            },
        },
        DestinationArn = {
            type = "string",
            traits = {
                http_query = "destinationArn",
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

M.BatchGetRumMetricDefinitionsOutput = {
    type = "structure",
    members = {
        MetricDefinitions = {
            type = "list",
            member = M.MetricDefinition,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.CreateAppMonitorInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = {
            type = "string",
        },
        DomainList = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        AppMonitorConfiguration = M.AppMonitorConfiguration,
        CwLogEnabled = {
            type = "boolean",
        },
        CustomEvents = M.CustomEvents,
        DeobfuscationConfiguration = M.DeobfuscationConfiguration,
        Platform = {
            type = "string",
        },
    },
}

M.CreateAppMonitorOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.DeleteAppMonitorInput = {
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

M.DeleteAppMonitorOutput = {
    type = "structure",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PolicyRevisionId = {
            type = "string",
            traits = {
                http_query = "policyRevisionId",
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    members = {
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.InvalidPolicyRevisionIdException = {
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

M.PolicyNotFoundException = {
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

M.DeleteRumMetricsDestinationInput = {
    type = "structure",
    members = {
        AppMonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Destination = {
            type = "string",
            traits = {
                http_query = "destination",
                required = true,
            },
        },
        DestinationArn = {
            type = "string",
            traits = {
                http_query = "destinationArn",
            },
        },
    },
}

M.DeleteRumMetricsDestinationOutput = {
    type = "structure",
}

M.GetAppMonitorInput = {
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

M.GetAppMonitorOutput = {
    type = "structure",
    members = {
        AppMonitor = M.AppMonitor,
    },
}

M.QueryFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TimeRange = {
    type = "structure",
    members = {
        After = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Before = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetAppMonitorDataInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TimeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeRange }),
        Filters = {
            type = "list",
            member = M.QueryFilter,
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetAppMonitorDataOutput = {
    type = "structure",
    members = {
        Events = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
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

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        PolicyDocument = {
            type = "string",
        },
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.ListAppMonitorsInput = {
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

M.AppMonitorSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Created = {
            type = "string",
        },
        LastModified = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Platform = {
            type = "string",
        },
    },
}

M.ListAppMonitorsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        AppMonitorSummaries = {
            type = "list",
            member = M.AppMonitorSummary,
        },
    },
}

M.ListRumMetricsDestinationsInput = {
    type = "structure",
    members = {
        AppMonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.MetricDestinationSummary = {
    type = "structure",
    members = {
        Destination = {
            type = "string",
        },
        DestinationArn = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
    },
}

M.ListRumMetricsDestinationsOutput = {
    type = "structure",
    members = {
        Destinations = {
            type = "list",
            member = M.MetricDestinationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MalformedPolicyDocumentException = {
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

M.PolicySizeLimitExceededException = {
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

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        PolicyDocument = {
            type = "string",
        },
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.PutRumMetricsDestinationInput = {
    type = "structure",
    members = {
        AppMonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationArn = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
    },
}

M.PutRumMetricsDestinationOutput = {
    type = "structure",
}

M.UpdateAppMonitorInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Domain = {
            type = "string",
        },
        DomainList = {
            type = "list",
            member = { type = "string" },
        },
        AppMonitorConfiguration = M.AppMonitorConfiguration,
        CwLogEnabled = {
            type = "boolean",
        },
        CustomEvents = M.CustomEvents,
        DeobfuscationConfiguration = M.DeobfuscationConfiguration,
    },
}

M.UpdateAppMonitorOutput = {
    type = "structure",
}

M.UpdateRumMetricDefinitionInput = {
    type = "structure",
    members = {
        AppMonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationArn = {
            type = "string",
        },
        MetricDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MetricDefinitionRequest }),
        MetricDefinitionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRumMetricDefinitionOutput = {
    type = "structure",
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
        ResourceArn = {
            type = "string",
            traits = {
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

M.RumEvent = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
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
        metadata = {
            type = "string",
        },
        details = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserDetails = {
    type = "structure",
    members = {
        userId = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
    },
}

M.PutRumEventsInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BatchId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AppMonitorDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AppMonitorDetails }),
        UserDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserDetails }),
        RumEvents = {
            type = "list",
            member = M.RumEvent,
            traits = {
                required = true,
            },
        },
        Alias = {
            type = "string",
        },
    },
}

M.PutRumEventsOutput = {
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
