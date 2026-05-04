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
    id = "AccountEntityAggregate",
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
    id = "AffectedEntity",
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
    id = "DescribeAffectedAccountsForOrganizationInput",
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
    id = "DescribeAffectedAccountsForOrganizationOutput",
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
    id = "InvalidPaginationToken",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DateTimeRange = {
    type = "structure",
    id = "DateTimeRange",
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
    id = "EntityFilter",
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
    id = "DescribeAffectedEntitiesInput",
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
    id = "DescribeAffectedEntitiesOutput",
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
    id = "UnsupportedLocale",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EntityAccountFilter = {
    type = "structure",
    id = "EntityAccountFilter",
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
    id = "EventAccountFilter",
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
    id = "DescribeAffectedEntitiesForOrganizationInput",
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
    id = "OrganizationAffectedEntitiesErrorItem",
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
    id = "DescribeAffectedEntitiesForOrganizationOutput",
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
    id = "DescribeEntityAggregatesInput",
    members = {
        eventArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EntityAggregate = {
    type = "structure",
    id = "EntityAggregate",
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
    id = "DescribeEntityAggregatesOutput",
    members = {
        entityAggregates = {
            type = "list",
            member = M.EntityAggregate,
        },
    },
}

M.DescribeEntityAggregatesForOrganizationInput = {
    type = "structure",
    id = "DescribeEntityAggregatesForOrganizationInput",
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
    id = "OrganizationEntityAggregate",
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
    id = "DescribeEntityAggregatesForOrganizationOutput",
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
    id = "EventFilter",
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
    id = "DescribeEventAggregatesInput",
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
    id = "EventAggregate",
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
    id = "DescribeEventAggregatesOutput",
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
    id = "DescribeEventDetailsInput",
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
    id = "EventDetailsErrorItem",
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
    id = "Event",
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
    id = "EventDescription",
    members = {
        latestDescription = {
            type = "string",
        },
    },
}

M.EventDetails = {
    type = "structure",
    id = "EventDetails",
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
    id = "DescribeEventDetailsOutput",
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
    id = "DescribeEventDetailsForOrganizationInput",
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
    id = "OrganizationEventDetailsErrorItem",
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
    id = "OrganizationEventDetails",
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
    id = "DescribeEventDetailsForOrganizationOutput",
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
    id = "DescribeEventsInput",
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
    id = "DescribeEventsOutput",
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
    id = "OrganizationEventFilter",
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
    id = "DescribeEventsForOrganizationInput",
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
    id = "OrganizationEvent",
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
    id = "DescribeEventsForOrganizationOutput",
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
    id = "EventTypeFilter",
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
    id = "DescribeEventTypesInput",
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
    id = "EventType",
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
    id = "DescribeEventTypesOutput",
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
    id = "DescribeHealthServiceStatusForOrganizationInput",
}

M.DescribeHealthServiceStatusForOrganizationOutput = {
    type = "structure",
    id = "DescribeHealthServiceStatusForOrganizationOutput",
    members = {
        healthServiceAccessStatusForOrganization = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DisableHealthServiceAccessForOrganizationInput = {
    type = "structure",
    id = "DisableHealthServiceAccessForOrganizationInput",
}

M.DisableHealthServiceAccessForOrganizationOutput = {
    type = "structure",
    id = "DisableHealthServiceAccessForOrganizationOutput",
}

M.EnableHealthServiceAccessForOrganizationInput = {
    type = "structure",
    id = "EnableHealthServiceAccessForOrganizationInput",
}

M.EnableHealthServiceAccessForOrganizationOutput = {
    type = "structure",
    id = "EnableHealthServiceAccessForOrganizationOutput",
}

return M
