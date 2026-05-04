local M = {}

M.entityStatusCode = {
    IMPAIRED = "IMPAIRED",
    UNIMPAIRED = "UNIMPAIRED",
    UNKNOWN = "UNKNOWN",
    PENDING = "PENDING",
    RESOLVED = "RESOLVED",
}

M.AccountEntityAggregate = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
        },
        count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        statuses = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.AffectedEntity = {
    type = "structure",
    members = {
        entityArn = {
            type = "string",
        },
        eventArn = {
            type = "string",
        },
        entityValue = {
            type = "string",
        },
        entityUrl = {
            type = "string",
        },
        awsAccountId = {
            type = "string",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        statusCode = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        entityMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeAffectedAccountsForOrganizationInput = {
    type = "structure",
    members = {
        eventArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.eventScopeCode = {
    PUBLIC = "PUBLIC",
    ACCOUNT_SPECIFIC = "ACCOUNT_SPECIFIC",
    NONE = "NONE",
}

M.DescribeAffectedAccountsForOrganizationOutput = {
    type = "structure",
    members = {
        affectedAccounts = {
            type = "list",
            member = { type = "string" },
        },
        eventScopeCode = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidPaginationToken = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DateTimeRange = {
    type = "structure",
    members = {
        from = {
            type = "timestamp",
        },
        to = {
            type = "timestamp",
        },
    },
}

M.EntityFilter = {
    type = "structure",
    members = {
        eventArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        entityArns = {
            type = "list",
            member = { type = "string" },
        },
        entityValues = {
            type = "list",
            member = { type = "string" },
        },
        lastUpdatedTimes = {
            type = "list",
            member = M.DateTimeRange,
        },
        tags = {
            type = "list",
            member = { type = "map" },
        },
        statusCodes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeAffectedEntitiesInput = {
    type = "structure",
    members = {
        filter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EntityFilter }),
        locale = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DescribeAffectedEntitiesOutput = {
    type = "structure",
    members = {
        entities = {
            type = "list",
            member = M.AffectedEntity,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UnsupportedLocale = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EntityAccountFilter = {
    type = "structure",
    members = {
        eventArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsAccountId = {
            type = "string",
        },
        statusCodes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EventAccountFilter = {
    type = "structure",
    members = {
        eventArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awsAccountId = {
            type = "string",
        },
    },
}

M.DescribeAffectedEntitiesForOrganizationInput = {
    type = "structure",
    members = {
        organizationEntityFilters = {
            type = "list",
            member = M.EventAccountFilter,
        },
        locale = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        organizationEntityAccountFilters = {
            type = "list",
            member = M.EntityAccountFilter,
        },
    },
}

M.OrganizationAffectedEntitiesErrorItem = {
    type = "structure",
    members = {
        awsAccountId = {
            type = "string",
        },
        eventArn = {
            type = "string",
        },
        errorName = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.DescribeAffectedEntitiesForOrganizationOutput = {
    type = "structure",
    members = {
        entities = {
            type = "list",
            member = M.AffectedEntity,
        },
        failedSet = {
            type = "list",
            member = M.OrganizationAffectedEntitiesErrorItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeEntityAggregatesInput = {
    type = "structure",
    members = {
        eventArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EntityAggregate = {
    type = "structure",
    members = {
        eventArn = {
            type = "string",
        },
        count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        statuses = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.DescribeEntityAggregatesOutput = {
    type = "structure",
    members = {
        entityAggregates = {
            type = "list",
            member = M.EntityAggregate,
        },
    },
}

M.DescribeEntityAggregatesForOrganizationInput = {
    type = "structure",
    members = {
        eventArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        awsAccountIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OrganizationEntityAggregate = {
    type = "structure",
    members = {
        eventArn = {
            type = "string",
        },
        count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        statuses = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        accounts = {
            type = "list",
            member = M.AccountEntityAggregate,
        },
    },
}

M.DescribeEntityAggregatesForOrganizationOutput = {
    type = "structure",
    members = {
        organizationEntityAggregates = {
            type = "list",
            member = M.OrganizationEntityAggregate,
        },
    },
}

M.eventAggregateField = {
    EventTypeCategory = "eventTypeCategory",
}

M.EventActionability = {
    ACTION_REQUIRED = "ACTION_REQUIRED",
    ACTION_MAY_BE_REQUIRED = "ACTION_MAY_BE_REQUIRED",
    INFORMATIONAL = "INFORMATIONAL",
}

M.eventStatusCode = {
    OPEN = "open",
    CLOSED = "closed",
    UPCOMING = "upcoming",
}

M.eventTypeCategory = {
    ISSUE = "issue",
    ACCOUNT_NOTIFICATION = "accountNotification",
    SCHEDULED_CHANGE = "scheduledChange",
    INVESTIGATION = "investigation",
}

M.EventPersona = {
    OPERATIONS = "OPERATIONS",
    SECURITY = "SECURITY",
    BILLING = "BILLING",
}

M.EventFilter = {
    type = "structure",
    members = {
        actionabilities = {
            type = "list",
            member = { type = "string" },
        },
        eventArns = {
            type = "list",
            member = { type = "string" },
        },
        eventTypeCodes = {
            type = "list",
            member = { type = "string" },
        },
        services = {
            type = "list",
            member = { type = "string" },
        },
        regions = {
            type = "list",
            member = { type = "string" },
        },
        availabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        startTimes = {
            type = "list",
            member = M.DateTimeRange,
        },
        endTimes = {
            type = "list",
            member = M.DateTimeRange,
        },
        lastUpdatedTimes = {
            type = "list",
            member = M.DateTimeRange,
        },
        entityArns = {
            type = "list",
            member = { type = "string" },
        },
        entityValues = {
            type = "list",
            member = { type = "string" },
        },
        eventTypeCategories = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "list",
            member = { type = "map" },
        },
        eventStatusCodes = {
            type = "list",
            member = { type = "string" },
        },
        personas = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeEventAggregatesInput = {
    type = "structure",
    members = {
        filter = M.EventFilter,
        aggregateField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.EventAggregate = {
    type = "structure",
    members = {
        aggregateValue = {
            type = "string",
        },
        count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeEventAggregatesOutput = {
    type = "structure",
    members = {
        eventAggregates = {
            type = "list",
            member = M.EventAggregate,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeEventDetailsInput = {
    type = "structure",
    members = {
        eventArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        locale = {
            type = "string",
        },
    },
}

M.EventDetailsErrorItem = {
    type = "structure",
    members = {
        eventArn = {
            type = "string",
        },
        errorName = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.Event = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        service = {
            type = "string",
        },
        eventTypeCode = {
            type = "string",
        },
        eventTypeCategory = {
            type = "string",
        },
        region = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        statusCode = {
            type = "string",
        },
        eventScopeCode = {
            type = "string",
        },
        actionability = {
            type = "string",
        },
        personas = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EventDescription = {
    type = "structure",
    members = {
        latestDescription = {
            type = "string",
        },
    },
}

M.EventDetails = {
    type = "structure",
    members = {
        event = M.Event,
        eventDescription = M.EventDescription,
        eventMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeEventDetailsOutput = {
    type = "structure",
    members = {
        successfulSet = {
            type = "list",
            member = M.EventDetails,
        },
        failedSet = {
            type = "list",
            member = M.EventDetailsErrorItem,
        },
    },
}

M.DescribeEventDetailsForOrganizationInput = {
    type = "structure",
    members = {
        organizationEventDetailFilters = {
            type = "list",
            member = M.EventAccountFilter,
            traits = {
                required = true,
            },
        },
        locale = {
            type = "string",
        },
    },
}

M.OrganizationEventDetailsErrorItem = {
    type = "structure",
    members = {
        awsAccountId = {
            type = "string",
        },
        eventArn = {
            type = "string",
        },
        errorName = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.OrganizationEventDetails = {
    type = "structure",
    members = {
        awsAccountId = {
            type = "string",
        },
        event = M.Event,
        eventDescription = M.EventDescription,
        eventMetadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DescribeEventDetailsForOrganizationOutput = {
    type = "structure",
    members = {
        successfulSet = {
            type = "list",
            member = M.OrganizationEventDetails,
        },
        failedSet = {
            type = "list",
            member = M.OrganizationEventDetailsErrorItem,
        },
    },
}

M.DescribeEventsInput = {
    type = "structure",
    members = {
        filter = M.EventFilter,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        locale = {
            type = "string",
        },
    },
}

M.DescribeEventsOutput = {
    type = "structure",
    members = {
        events = {
            type = "list",
            member = M.Event,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.OrganizationEventFilter = {
    type = "structure",
    members = {
        actionabilities = {
            type = "list",
            member = { type = "string" },
        },
        eventTypeCodes = {
            type = "list",
            member = { type = "string" },
        },
        awsAccountIds = {
            type = "list",
            member = { type = "string" },
        },
        services = {
            type = "list",
            member = { type = "string" },
        },
        regions = {
            type = "list",
            member = { type = "string" },
        },
        startTime = M.DateTimeRange,
        endTime = M.DateTimeRange,
        lastUpdatedTime = M.DateTimeRange,
        entityArns = {
            type = "list",
            member = { type = "string" },
        },
        entityValues = {
            type = "list",
            member = { type = "string" },
        },
        eventTypeCategories = {
            type = "list",
            member = { type = "string" },
        },
        eventStatusCodes = {
            type = "list",
            member = { type = "string" },
        },
        personas = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeEventsForOrganizationInput = {
    type = "structure",
    members = {
        filter = M.OrganizationEventFilter,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        locale = {
            type = "string",
        },
    },
}

M.OrganizationEvent = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        service = {
            type = "string",
        },
        eventTypeCode = {
            type = "string",
        },
        eventTypeCategory = {
            type = "string",
        },
        eventScopeCode = {
            type = "string",
        },
        region = {
            type = "string",
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        lastUpdatedTime = {
            type = "timestamp",
        },
        statusCode = {
            type = "string",
        },
        actionability = {
            type = "string",
        },
        personas = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeEventsForOrganizationOutput = {
    type = "structure",
    members = {
        events = {
            type = "list",
            member = M.OrganizationEvent,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.EventTypeActionability = {
    ACTION_REQUIRED = "ACTION_REQUIRED",
    ACTION_MAY_BE_REQUIRED = "ACTION_MAY_BE_REQUIRED",
    INFORMATIONAL = "INFORMATIONAL",
}

M.EventTypePersona = {
    OPERATIONS = "OPERATIONS",
    SECURITY = "SECURITY",
    BILLING = "BILLING",
}

M.EventTypeFilter = {
    type = "structure",
    members = {
        eventTypeCodes = {
            type = "list",
            member = { type = "string" },
        },
        services = {
            type = "list",
            member = { type = "string" },
        },
        eventTypeCategories = {
            type = "list",
            member = { type = "string" },
        },
        actionabilities = {
            type = "list",
            member = { type = "string" },
        },
        personas = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeEventTypesInput = {
    type = "structure",
    members = {
        filter = M.EventTypeFilter,
        locale = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.EventType = {
    type = "structure",
    members = {
        service = {
            type = "string",
        },
        code = {
            type = "string",
        },
        category = {
            type = "string",
        },
        actionability = {
            type = "string",
        },
        personas = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeEventTypesOutput = {
    type = "structure",
    members = {
        eventTypes = {
            type = "list",
            member = M.EventType,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeHealthServiceStatusForOrganizationInput = {
    type = "structure",
}

M.DescribeHealthServiceStatusForOrganizationOutput = {
    type = "structure",
    members = {
        healthServiceAccessStatusForOrganization = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DisableHealthServiceAccessForOrganizationInput = {
    type = "structure",
}

M.DisableHealthServiceAccessForOrganizationOutput = {
    type = "structure",
}

M.EnableHealthServiceAccessForOrganizationInput = {
    type = "structure",
}

M.EnableHealthServiceAccessForOrganizationOutput = {
    type = "structure",
}

return M
