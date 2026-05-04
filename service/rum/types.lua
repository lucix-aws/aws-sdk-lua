local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "AppMonitorConfiguration",
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
    id = "CustomEvents",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.CwLog = {
    type = "structure",
    id = "CwLog",
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
    id = "DataStorage",
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
    id = "JavaScriptSourceMaps",
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
    id = "DeobfuscationConfiguration",
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
    id = "AppMonitor",
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
    id = "AppMonitorDetails",
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
    id = "MetricDefinitionRequest",
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
    id = "BatchCreateRumMetricDefinitionsInput",
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
    id = "BatchCreateRumMetricDefinitionsError",
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
    id = "MetricDefinition",
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
    id = "BatchCreateRumMetricDefinitionsOutput",
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
    id = "ConflictException",
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
    id = "InternalServerException",
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
    id = "ResourceNotFoundException",
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
    id = "ServiceQuotaExceededException",
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
    id = "ThrottlingException",
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
    id = "ValidationException",
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
    id = "BatchDeleteRumMetricDefinitionsInput",
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
    id = "BatchDeleteRumMetricDefinitionsError",
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
    id = "BatchDeleteRumMetricDefinitionsOutput",
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
    id = "BatchGetRumMetricDefinitionsInput",
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
    id = "BatchGetRumMetricDefinitionsOutput",
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
    id = "CreateAppMonitorInput",
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
    id = "CreateAppMonitorOutput",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.DeleteAppMonitorInput = {
    type = "structure",
    id = "DeleteAppMonitorInput",
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
    id = "DeleteAppMonitorOutput",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
    members = {
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.InvalidPolicyRevisionIdException = {
    type = "structure",
    id = "InvalidPolicyRevisionIdException",
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
    id = "PolicyNotFoundException",
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
    id = "DeleteRumMetricsDestinationInput",
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
    id = "DeleteRumMetricsDestinationOutput",
}

M.GetAppMonitorInput = {
    type = "structure",
    id = "GetAppMonitorInput",
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
    id = "GetAppMonitorOutput",
    members = {
        AppMonitor = M.AppMonitor,
    },
}

M.QueryFilter = {
    type = "structure",
    id = "QueryFilter",
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
    id = "TimeRange",
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
    id = "GetAppMonitorDataInput",
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
    id = "GetAppMonitorDataOutput",
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
    id = "GetResourcePolicyInput",
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
    id = "GetResourcePolicyOutput",
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
    id = "ListAppMonitorsInput",
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
    id = "AppMonitorSummary",
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
    id = "ListAppMonitorsOutput",
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
    id = "ListRumMetricsDestinationsInput",
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
    id = "MetricDestinationSummary",
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
    id = "ListRumMetricsDestinationsOutput",
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
    id = "MalformedPolicyDocumentException",
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
    id = "PolicySizeLimitExceededException",
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
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
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
    id = "PutRumMetricsDestinationInput",
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
    id = "PutRumMetricsDestinationOutput",
}

M.UpdateAppMonitorInput = {
    type = "structure",
    id = "UpdateAppMonitorInput",
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
    id = "UpdateAppMonitorOutput",
}

M.UpdateRumMetricDefinitionInput = {
    type = "structure",
    id = "UpdateRumMetricDefinitionInput",
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
    id = "UpdateRumMetricDefinitionOutput",
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
    id = "RumEvent",
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
            traits = {
                media_type = "application/json",
            },
        },
        details = {
            type = "string",
            traits = {
                media_type = "application/json",
                required = true,
            },
        },
    },
}

M.UserDetails = {
    type = "structure",
    id = "UserDetails",
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
    id = "PutRumEventsInput",
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
    id = "PutRumEventsOutput",
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
