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
            type = "number",
        },
        statuses = {
            type = "map",
            key_type = "string",
            value_type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        entityMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            member_type = "string",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        entityArns = {
            type = "list",
            member_type = "string",
        },
        entityValues = {
            type = "list",
            member_type = "string",
        },
        lastUpdatedTimes = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "list",
            member_type = "map",
        },
        statusCodes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeAffectedEntitiesInput = {
    type = "structure",
    members = {
        filter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        locale = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.DescribeAffectedEntitiesOutput = {
    type = "structure",
    members = {
        entities = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
        locale = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        organizationEntityAccountFilters = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        failedSet = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
        },
        statuses = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
    },
}

M.DescribeEntityAggregatesOutput = {
    type = "structure",
    members = {
        entityAggregates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeEntityAggregatesForOrganizationInput = {
    type = "structure",
    members = {
        eventArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        awsAccountIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        statuses = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        accounts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeEntityAggregatesForOrganizationOutput = {
    type = "structure",
    members = {
        organizationEntityAggregates = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        eventArns = {
            type = "list",
            member_type = "string",
        },
        eventTypeCodes = {
            type = "list",
            member_type = "string",
        },
        services = {
            type = "list",
            member_type = "string",
        },
        regions = {
            type = "list",
            member_type = "string",
        },
        availabilityZones = {
            type = "list",
            member_type = "string",
        },
        startTimes = {
            type = "list",
            member_type = "structure",
        },
        endTimes = {
            type = "list",
            member_type = "structure",
        },
        lastUpdatedTimes = {
            type = "list",
            member_type = "structure",
        },
        entityArns = {
            type = "list",
            member_type = "string",
        },
        entityValues = {
            type = "list",
            member_type = "string",
        },
        eventTypeCategories = {
            type = "list",
            member_type = "string",
        },
        tags = {
            type = "list",
            member_type = "map",
        },
        eventStatusCodes = {
            type = "list",
            member_type = "string",
        },
        personas = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeEventAggregatesInput = {
    type = "structure",
    members = {
        filter = {
            type = "structure",
        },
        aggregateField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
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
            type = "number",
        },
    },
}

M.DescribeEventAggregatesOutput = {
    type = "structure",
    members = {
        eventAggregates = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
        event = {
            type = "structure",
        },
        eventDescription = {
            type = "structure",
        },
        eventMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeEventDetailsOutput = {
    type = "structure",
    members = {
        successfulSet = {
            type = "list",
            member_type = "structure",
        },
        failedSet = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeEventDetailsForOrganizationInput = {
    type = "structure",
    members = {
        organizationEventDetailFilters = {
            type = "list",
            member_type = "structure",
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
        event = {
            type = "structure",
        },
        eventDescription = {
            type = "structure",
        },
        eventMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DescribeEventDetailsForOrganizationOutput = {
    type = "structure",
    members = {
        successfulSet = {
            type = "list",
            member_type = "structure",
        },
        failedSet = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeEventsInput = {
    type = "structure",
    members = {
        filter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
        eventTypeCodes = {
            type = "list",
            member_type = "string",
        },
        awsAccountIds = {
            type = "list",
            member_type = "string",
        },
        services = {
            type = "list",
            member_type = "string",
        },
        regions = {
            type = "list",
            member_type = "string",
        },
        startTime = {
            type = "structure",
        },
        endTime = {
            type = "structure",
        },
        lastUpdatedTime = {
            type = "structure",
        },
        entityArns = {
            type = "list",
            member_type = "string",
        },
        entityValues = {
            type = "list",
            member_type = "string",
        },
        eventTypeCategories = {
            type = "list",
            member_type = "string",
        },
        eventStatusCodes = {
            type = "list",
            member_type = "string",
        },
        personas = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeEventsForOrganizationInput = {
    type = "structure",
    members = {
        filter = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            member_type = "string",
        },
    },
}

M.DescribeEventsForOrganizationOutput = {
    type = "structure",
    members = {
        events = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        services = {
            type = "list",
            member_type = "string",
        },
        eventTypeCategories = {
            type = "list",
            member_type = "string",
        },
        actionabilities = {
            type = "list",
            member_type = "string",
        },
        personas = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeEventTypesInput = {
    type = "structure",
    members = {
        filter = {
            type = "structure",
        },
        locale = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            member_type = "string",
        },
    },
}

M.DescribeEventTypesOutput = {
    type = "structure",
    members = {
        eventTypes = {
            type = "list",
            member_type = "structure",
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
