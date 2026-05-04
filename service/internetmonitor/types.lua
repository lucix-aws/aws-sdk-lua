local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AvailabilityMeasurement = {
    type = "structure",
    members = {
        ExperienceScore = {
            type = "double",
        },
        PercentOfTotalTrafficImpacted = {
            type = "double",
        },
        PercentOfClientLocationImpacted = {
            type = "double",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ClientLocation = {
    type = "structure",
    members = {
        ASName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ASNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Country = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subdivision = {
            type = "string",
        },
        Metro = {
            type = "string",
        },
        City = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Latitude = {
            type = "double",
            traits = {
                required = true,
            },
        },
        Longitude = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
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

M.LocalHealthEventsConfigStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.LocalHealthEventsConfig = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        HealthScoreThreshold = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        MinTrafficImpact = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.HealthEventsConfig = {
    type = "structure",
    members = {
        AvailabilityScoreThreshold = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        PerformanceScoreThreshold = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        AvailabilityLocalHealthEventsConfig = M.LocalHealthEventsConfig,
        PerformanceLocalHealthEventsConfig = M.LocalHealthEventsConfig,
    },
}

M.LogDeliveryStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.S3Config = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
        },
        BucketPrefix = {
            type = "string",
        },
        LogDeliveryStatus = {
            type = "string",
        },
    },
}

M.InternetMeasurementsLogDelivery = {
    type = "structure",
    members = {
        S3Config = M.S3Config,
    },
}

M.CreateMonitorInput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Resources = {
            type = "list",
            member = { type = "string" },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MaxCityNetworksToMonitor = {
            type = "integer",
        },
        InternetMeasurementsLogDelivery = M.InternetMeasurementsLogDelivery,
        TrafficPercentageToMonitor = {
            type = "integer",
        },
        HealthEventsConfig = M.HealthEventsConfig,
    },
}

M.MonitorConfigState = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    ERROR = "ERROR",
}

M.CreateMonitorOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
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

M.LimitExceededException = {
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteMonitorInput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMonitorOutput = {
    type = "structure",
}

M.Operator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
}

M.FilterParameter = {
    type = "structure",
    members = {
        Field = {
            type = "string",
        },
        Operator = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetHealthEventInput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LinkedAccountId = {
            type = "string",
            traits = {
                http_query = "LinkedAccountId",
            },
        },
    },
}

M.Network = {
    type = "structure",
    members = {
        ASName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ASNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.TriangulationEventType = {
    AWS = "AWS",
    INTERNET = "Internet",
}

M.NetworkImpairment = {
    type = "structure",
    members = {
        Networks = {
            type = "list",
            member = M.Network,
            traits = {
                required = true,
            },
        },
        AsPath = {
            type = "list",
            member = M.Network,
            traits = {
                required = true,
            },
        },
        NetworkEventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RoundTripTime = {
    type = "structure",
    members = {
        P50 = {
            type = "double",
        },
        P90 = {
            type = "double",
        },
        P95 = {
            type = "double",
        },
    },
}

M.PerformanceMeasurement = {
    type = "structure",
    members = {
        ExperienceScore = {
            type = "double",
        },
        PercentOfTotalTrafficImpacted = {
            type = "double",
        },
        PercentOfClientLocationImpacted = {
            type = "double",
        },
        RoundTripTime = M.RoundTripTime,
    },
}

M.InternetHealth = {
    type = "structure",
    members = {
        Availability = M.AvailabilityMeasurement,
        Performance = M.PerformanceMeasurement,
    },
}

M.HealthEventStatus = {
    ACTIVE = "ACTIVE",
    RESOLVED = "RESOLVED",
}

M.ImpactedLocation = {
    type = "structure",
    members = {
        ASName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ASNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Country = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subdivision = {
            type = "string",
        },
        Metro = {
            type = "string",
        },
        City = {
            type = "string",
        },
        Latitude = {
            type = "double",
        },
        Longitude = {
            type = "double",
        },
        CountryCode = {
            type = "string",
        },
        SubdivisionCode = {
            type = "string",
        },
        ServiceLocation = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CausedBy = M.NetworkImpairment,
        InternetHealth = M.InternetHealth,
        Ipv4Prefixes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.HealthEventImpactType = {
    AVAILABILITY = "AVAILABILITY",
    PERFORMANCE = "PERFORMANCE",
    LOCAL_AVAILABILITY = "LOCAL_AVAILABILITY",
    LOCAL_PERFORMANCE = "LOCAL_PERFORMANCE",
}

M.GetHealthEventOutput = {
    type = "structure",
    members = {
        EventArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        EndedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ImpactedLocations = {
            type = "list",
            member = M.ImpactedLocation,
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PercentOfTotalTrafficImpacted = {
            type = "double",
        },
        ImpactType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthScoreThreshold = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetInternetEventInput = {
    type = "structure",
    members = {
        EventId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InternetEventStatus = {
    ACTIVE = "ACTIVE",
    RESOLVED = "RESOLVED",
}

M.InternetEventType = {
    AVAILABILITY = "AVAILABILITY",
    PERFORMANCE = "PERFORMANCE",
}

M.GetInternetEventOutput = {
    type = "structure",
    members = {
        EventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        EndedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ClientLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClientLocation }),
        EventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMonitorInput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LinkedAccountId = {
            type = "string",
            traits = {
                http_query = "LinkedAccountId",
            },
        },
    },
}

M.MonitorProcessingStatusCode = {
    OK = "OK",
    INACTIVE = "INACTIVE",
    COLLECTING_DATA = "COLLECTING_DATA",
    INSUFFICIENT_DATA = "INSUFFICIENT_DATA",
    FAULT_SERVICE = "FAULT_SERVICE",
    FAULT_ACCESS_CLOUDWATCH = "FAULT_ACCESS_CLOUDWATCH",
}

M.GetMonitorOutput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Resources = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ModifiedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ProcessingStatus = {
            type = "string",
        },
        ProcessingStatusInfo = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MaxCityNetworksToMonitor = {
            type = "integer",
        },
        InternetMeasurementsLogDelivery = M.InternetMeasurementsLogDelivery,
        TrafficPercentageToMonitor = {
            type = "integer",
        },
        HealthEventsConfig = M.HealthEventsConfig,
    },
}

M.GetQueryResultsInput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.QueryField = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.GetQueryResultsOutput = {
    type = "structure",
    members = {
        Fields = {
            type = "list",
            member = M.QueryField,
            traits = {
                required = true,
            },
        },
        Data = {
            type = "list",
            member = { type = "list" },
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetQueryStatusInput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QueryStatus = {
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
}

M.GetQueryStatusOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HealthEvent = {
    type = "structure",
    members = {
        EventArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        EndedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        ImpactedLocations = {
            type = "list",
            member = M.ImpactedLocation,
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PercentOfTotalTrafficImpacted = {
            type = "double",
        },
        ImpactType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthScoreThreshold = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListHealthEventsInput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                http_query = "StartTime",
                timestamp_format = "date-time",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                http_query = "EndTime",
                timestamp_format = "date-time",
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
        EventStatus = {
            type = "string",
            traits = {
                http_query = "EventStatus",
            },
        },
        LinkedAccountId = {
            type = "string",
            traits = {
                http_query = "LinkedAccountId",
            },
        },
    },
}

M.ListHealthEventsOutput = {
    type = "structure",
    members = {
        HealthEvents = {
            type = "list",
            member = M.HealthEvent,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListInternetEventsInput = {
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
                http_query = "InternetEventMaxResults",
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                http_query = "StartTime",
                timestamp_format = "date-time",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                http_query = "EndTime",
                timestamp_format = "date-time",
            },
        },
        EventStatus = {
            type = "string",
            traits = {
                http_query = "EventStatus",
            },
        },
        EventType = {
            type = "string",
            traits = {
                http_query = "EventType",
            },
        },
    },
}

M.InternetEventSummary = {
    type = "structure",
    members = {
        EventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        EndedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ClientLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClientLocation }),
        EventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListInternetEventsOutput = {
    type = "structure",
    members = {
        InternetEvents = {
            type = "list",
            member = M.InternetEventSummary,
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListMonitorsInput = {
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
        MonitorStatus = {
            type = "string",
            traits = {
                http_query = "MonitorStatus",
            },
        },
        IncludeLinkedAccounts = {
            type = "boolean",
            traits = {
                http_query = "IncludeLinkedAccounts",
            },
        },
    },
}

M.Monitor = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProcessingStatus = {
            type = "string",
        },
    },
}

M.ListMonitorsOutput = {
    type = "structure",
    members = {
        Monitors = {
            type = "list",
            member = M.Monitor,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.QueryType = {
    MEASUREMENTS = "MEASUREMENTS",
    TOP_LOCATIONS = "TOP_LOCATIONS",
    TOP_LOCATION_DETAILS = "TOP_LOCATION_DETAILS",
    OVERALL_TRAFFIC_SUGGESTIONS = "OVERALL_TRAFFIC_SUGGESTIONS",
    OVERALL_TRAFFIC_SUGGESTIONS_DETAILS = "OVERALL_TRAFFIC_SUGGESTIONS_DETAILS",
    ROUTING_SUGGESTIONS = "ROUTING_SUGGESTIONS",
}

M.StartQueryInput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        QueryType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilterParameters = {
            type = "list",
            member = M.FilterParameter,
        },
        LinkedAccountId = {
            type = "string",
        },
    },
}

M.StartQueryOutput = {
    type = "structure",
    members = {
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopQueryInput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        QueryId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopQueryOutput = {
    type = "structure",
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

M.UpdateMonitorInput = {
    type = "structure",
    members = {
        MonitorName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourcesToAdd = {
            type = "list",
            member = { type = "string" },
        },
        ResourcesToRemove = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        MaxCityNetworksToMonitor = {
            type = "integer",
        },
        InternetMeasurementsLogDelivery = M.InternetMeasurementsLogDelivery,
        TrafficPercentageToMonitor = {
            type = "integer",
        },
        HealthEventsConfig = M.HealthEventsConfig,
    },
}

M.UpdateMonitorOutput = {
    type = "structure",
    members = {
        MonitorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
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
