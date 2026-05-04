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
            type = "number",
        },
        PercentOfTotalTrafficImpacted = {
            type = "number",
        },
        PercentOfClientLocationImpacted = {
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Longitude = {
            type = "number",
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
            type = "number",
        },
        MinTrafficImpact = {
            type = "number",
        },
    },
}

M.HealthEventsConfig = {
    type = "structure",
    members = {
        AvailabilityScoreThreshold = {
            type = "number",
        },
        PerformanceScoreThreshold = {
            type = "number",
        },
        AvailabilityLocalHealthEventsConfig = {
            type = "structure",
        },
        PerformanceLocalHealthEventsConfig = {
            type = "structure",
        },
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
        S3Config = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        MaxCityNetworksToMonitor = {
            type = "number",
        },
        InternetMeasurementsLogDelivery = {
            type = "structure",
        },
        TrafficPercentageToMonitor = {
            type = "number",
        },
        HealthEventsConfig = {
            type = "structure",
        },
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        AsPath = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        P90 = {
            type = "number",
        },
        P95 = {
            type = "number",
        },
    },
}

M.PerformanceMeasurement = {
    type = "structure",
    members = {
        ExperienceScore = {
            type = "number",
        },
        PercentOfTotalTrafficImpacted = {
            type = "number",
        },
        PercentOfClientLocationImpacted = {
            type = "number",
        },
        RoundTripTime = {
            type = "structure",
        },
    },
}

M.InternetHealth = {
    type = "structure",
    members = {
        Availability = {
            type = "structure",
        },
        Performance = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        Longitude = {
            type = "number",
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
        CausedBy = {
            type = "structure",
        },
        InternetHealth = {
            type = "structure",
        },
        Ipv4Prefixes = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
        ImpactType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthScoreThreshold = {
            type = "number",
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
        ClientLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
        MaxCityNetworksToMonitor = {
            type = "number",
        },
        InternetMeasurementsLogDelivery = {
            type = "structure",
        },
        TrafficPercentageToMonitor = {
            type = "number",
        },
        HealthEventsConfig = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Data = {
            type = "list",
            member_type = "list",
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
            member_type = "structure",
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
            type = "number",
        },
        ImpactType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthScoreThreshold = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        ClientLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        ResourcesToRemove = {
            type = "list",
            member_type = "string",
        },
        Status = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        MaxCityNetworksToMonitor = {
            type = "number",
        },
        InternetMeasurementsLogDelivery = {
            type = "structure",
        },
        TrafficPercentageToMonitor = {
            type = "number",
        },
        HealthEventsConfig = {
            type = "structure",
        },
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
