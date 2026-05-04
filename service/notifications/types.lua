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

M.AccessStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    PENDING = "PENDING",
    FAILED = "FAILED",
}

M.AccountContactType = {
    ACCOUNT_PRIMARY = "ACCOUNT_PRIMARY",
    ACCOUNT_ALTERNATE_BILLING = "ACCOUNT_ALTERNATE_BILLING",
    ACCOUNT_ALTERNATE_OPERATIONS = "ACCOUNT_ALTERNATE_OPERATIONS",
    ACCOUNT_ALTERNATE_SECURITY = "ACCOUNT_ALTERNATE_SECURITY",
}

M.SummarizationDimensionDetail = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AggregationDetail = {
    type = "structure",
    members = {
        summarizationDimensions = {
            type = "list",
            member = M.SummarizationDimensionDetail,
        },
    },
}

M.AggregationDuration = {
    LONG = "LONG",
    SHORT = "SHORT",
    NONE = "NONE",
}

M.AggregationEventType = {
    AGGREGATE = "AGGREGATE",
    CHILD = "CHILD",
    NONE = "NONE",
}

M.AggregationKey = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SummarizationDimensionOverview = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        count = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        sampleValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AggregationSummary = {
    type = "structure",
    members = {
        eventCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        aggregatedBy = {
            type = "list",
            member = M.AggregationKey,
            traits = {
                required = true,
            },
        },
        aggregatedAccounts = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SummarizationDimensionOverview }),
        aggregatedRegions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SummarizationDimensionOverview }),
        aggregatedOrganizationalUnits = M.SummarizationDimensionOverview,
        additionalSummarizationDimensions = {
            type = "list",
            member = M.SummarizationDimensionOverview,
        },
    },
}

M.AssociateChannelInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        notificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateChannelOutput = {
    type = "structure",
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
        resourceId = {
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
            traits = {
                required = true,
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
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
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
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

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
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
        reason = {
            type = "string",
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.AssociateManagedNotificationAccountContactInput = {
    type = "structure",
    members = {
        contactIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        managedNotificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateManagedNotificationAccountContactOutput = {
    type = "structure",
}

M.AssociateManagedNotificationAdditionalChannelInput = {
    type = "structure",
    members = {
        channelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        managedNotificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateManagedNotificationAdditionalChannelOutput = {
    type = "structure",
}

M.AssociateOrganizationalUnitInput = {
    type = "structure",
    members = {
        organizationalUnitId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        notificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateOrganizationalUnitOutput = {
    type = "structure",
}

M.DisassociateChannelInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        notificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateChannelOutput = {
    type = "structure",
}

M.ListChannelsInput = {
    type = "structure",
    members = {
        notificationConfigurationArn = {
            type = "string",
            traits = {
                http_query = "notificationConfigurationArn",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListChannelsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        channels = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ChannelAssociationOverrideOption = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ChannelType = {
    MOBILE = "MOBILE",
    CHATBOT = "CHATBOT",
    EMAIL = "EMAIL",
    ACCOUNT_CONTACT = "ACCOUNT_CONTACT",
}

M.CreateEventRuleInput = {
    type = "structure",
    members = {
        notificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventPattern = {
            type = "string",
        },
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EventRuleStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
}

M.EventRuleStatusSummary = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateEventRuleOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusSummaryByRegion = {
            type = "map",
            key = { type = "string" },
            value = M.EventRuleStatusSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateNotificationConfigurationInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregationDuration = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.NotificationConfigurationStatus = {
    ACTIVE = "ACTIVE",
    PARTIALLY_ACTIVE = "PARTIALLY_ACTIVE",
    INACTIVE = "INACTIVE",
    DELETING = "DELETING",
}

M.CreateNotificationConfigurationOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEventRuleInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEventRuleOutput = {
    type = "structure",
}

M.DeleteNotificationConfigurationInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteNotificationConfigurationOutput = {
    type = "structure",
}

M.DeregisterNotificationHubInput = {
    type = "structure",
    members = {
        notificationHubRegion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NotificationHubStatus = {
    ACTIVE = "ACTIVE",
    REGISTERING = "REGISTERING",
    DEREGISTERING = "DEREGISTERING",
    INACTIVE = "INACTIVE",
}

M.NotificationHubStatusSummary = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterNotificationHubOutput = {
    type = "structure",
    members = {
        notificationHubRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationHubStatusSummary }),
    },
}

M.Dimension = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableNotificationsAccessForOrganizationInput = {
    type = "structure",
}

M.DisableNotificationsAccessForOrganizationOutput = {
    type = "structure",
}

M.DisassociateManagedNotificationAccountContactInput = {
    type = "structure",
    members = {
        contactIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        managedNotificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateManagedNotificationAccountContactOutput = {
    type = "structure",
}

M.DisassociateManagedNotificationAdditionalChannelInput = {
    type = "structure",
    members = {
        channelArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        managedNotificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateManagedNotificationAdditionalChannelOutput = {
    type = "structure",
}

M.DisassociateOrganizationalUnitInput = {
    type = "structure",
    members = {
        organizationalUnitId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        notificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateOrganizationalUnitOutput = {
    type = "structure",
}

M.EnableNotificationsAccessForOrganizationInput = {
    type = "structure",
}

M.EnableNotificationsAccessForOrganizationOutput = {
    type = "structure",
}

M.GetEventRuleInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEventRuleOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventPattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        managedRules = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        statusSummaryByRegion = {
            type = "map",
            key = { type = "string" },
            value = M.EventRuleStatusSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListEventRulesInput = {
    type = "structure",
    members = {
        notificationConfigurationArn = {
            type = "string",
            traits = {
                http_query = "notificationConfigurationArn",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.EventRuleStructure = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventPattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        managedRules = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        statusSummaryByRegion = {
            type = "map",
            key = { type = "string" },
            value = M.EventRuleStatusSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListEventRulesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        eventRules = {
            type = "list",
            member = M.EventRuleStructure,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateEventRuleInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        eventPattern = {
            type = "string",
        },
        regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateEventRuleOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusSummaryByRegion = {
            type = "map",
            key = { type = "string" },
            value = M.EventRuleStatusSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.EventStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.LocaleCode = {
    de_DE = "de_DE",
    en_CA = "en_CA",
    en_US = "en_US",
    en_UK = "en_UK",
    es_ES = "es_ES",
    fr_CA = "fr_CA",
    fr_FR = "fr_FR",
    id_ID = "id_ID",
    it_IT = "it_IT",
    ja_JP = "ja_JP",
    ko_KR = "ko_KR",
    pt_BR = "pt_BR",
    tr_TR = "tr_TR",
    zh_CN = "zh_CN",
    zh_TW = "zh_TW",
}

M.GetManagedNotificationChildEventInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        locale = {
            type = "string",
            traits = {
                http_query = "locale",
            },
        },
    },
}

M.MessageComponents = {
    type = "structure",
    members = {
        headline = {
            type = "string",
        },
        paragraphSummary = {
            type = "string",
        },
        completeDescription = {
            type = "string",
        },
        dimensions = {
            type = "list",
            member = M.Dimension,
        },
    },
}

M.NotificationType = {
    ALERT = "ALERT",
    WARNING = "WARNING",
    ANNOUNCEMENT = "ANNOUNCEMENT",
    INFORMATIONAL = "INFORMATIONAL",
}

M.SchemaVersion = {
    SCHEMA_VERSION_1_0 = "v1.0",
}

M.TextPartType = {
    LOCALIZED_TEXT = "LOCALIZED_TEXT",
    PLAIN_TEXT = "PLAIN_TEXT",
    URL = "URL",
}

M.TextPartValue = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayText = {
            type = "string",
        },
        textByLocale = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        url = {
            type = "string",
        },
    },
}

M.ManagedNotificationChildEvent = {
    type = "structure",
    members = {
        schemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageComponents = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MessageComponents }),
        sourceEventDetailUrl = {
            type = "string",
        },
        sourceEventDetailUrlDisplayText = {
            type = "string",
        },
        notificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventStatus = {
            type = "string",
        },
        aggregateManagedNotificationEventArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        textParts = {
            type = "map",
            key = { type = "string" },
            value = M.TextPartValue,
            traits = {
                required = true,
            },
        },
        organizationalUnitId = {
            type = "string",
        },
        aggregationDetail = M.AggregationDetail,
    },
}

M.GetManagedNotificationChildEventOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managedNotificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManagedNotificationChildEvent }),
    },
}

M.GetManagedNotificationConfigurationInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetManagedNotificationConfigurationOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subCategory = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetManagedNotificationEventInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        locale = {
            type = "string",
            traits = {
                http_query = "locale",
            },
        },
    },
}

M.ManagedNotificationEvent = {
    type = "structure",
    members = {
        schemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageComponents = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MessageComponents }),
        sourceEventDetailUrl = {
            type = "string",
        },
        sourceEventDetailUrlDisplayText = {
            type = "string",
        },
        notificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventStatus = {
            type = "string",
        },
        aggregationEventType = {
            type = "string",
        },
        aggregationSummary = M.AggregationSummary,
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        textParts = {
            type = "map",
            key = { type = "string" },
            value = M.TextPartValue,
            traits = {
                required = true,
            },
        },
        organizationalUnitId = {
            type = "string",
        },
    },
}

M.GetManagedNotificationEventOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managedNotificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManagedNotificationEvent }),
    },
}

M.GetNotificationConfigurationInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NotificationConfigurationSubtype = {
    ACCOUNT = "ACCOUNT",
    ADMIN_MANAGED = "ADMIN_MANAGED",
}

M.GetNotificationConfigurationOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        aggregationDuration = {
            type = "string",
        },
        subtype = {
            type = "string",
        },
    },
}

M.GetNotificationEventInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        locale = {
            type = "string",
            traits = {
                http_query = "locale",
            },
        },
    },
}

M.MediaElementType = {
    IMAGE = "IMAGE",
}

M.MediaElement = {
    type = "structure",
    members = {
        mediaId = {
            type = "string",
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
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        caption = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        detailUrl = {
            type = "string",
        },
        tags = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SourceEventMetadata = {
    type = "structure",
    members = {
        eventTypeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceEventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventOriginRegion = {
            type = "string",
        },
        relatedAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventOccurrenceTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relatedResources = {
            type = "list",
            member = M.Resource,
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationEventSchema = {
    type = "structure",
    members = {
        schemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceEventMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceEventMetadata }),
        messageComponents = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MessageComponents }),
        sourceEventDetailUrl = {
            type = "string",
        },
        sourceEventDetailUrlDisplayText = {
            type = "string",
        },
        notificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventStatus = {
            type = "string",
        },
        aggregationEventType = {
            type = "string",
        },
        aggregateNotificationEventArn = {
            type = "string",
        },
        aggregationSummary = M.AggregationSummary,
        startTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        textParts = {
            type = "map",
            key = { type = "string" },
            value = M.TextPartValue,
            traits = {
                required = true,
            },
        },
        media = {
            type = "list",
            member = M.MediaElement,
            traits = {
                required = true,
            },
        },
        organizationalUnitId = {
            type = "string",
        },
    },
}

M.GetNotificationEventOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationEventSchema }),
    },
}

M.GetNotificationsAccessForOrganizationInput = {
    type = "structure",
}

M.NotificationsAccessForOrganization = {
    type = "structure",
    members = {
        accessStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetNotificationsAccessForOrganizationOutput = {
    type = "structure",
    members = {
        notificationsAccessForOrganization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationsAccessForOrganization }),
    },
}

M.ListManagedNotificationChannelAssociationsInput = {
    type = "structure",
    members = {
        managedNotificationConfigurationArn = {
            type = "string",
            traits = {
                http_query = "managedNotificationConfigurationArn",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ManagedNotificationChannelAssociationSummary = {
    type = "structure",
    members = {
        channelIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        overrideOption = {
            type = "string",
        },
    },
}

M.ListManagedNotificationChannelAssociationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        channelAssociations = {
            type = "list",
            member = M.ManagedNotificationChannelAssociationSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListManagedNotificationChildEventsInput = {
    type = "structure",
    members = {
        aggregateManagedNotificationEventArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                timestamp_format = "date-time",
            },
        },
        locale = {
            type = "string",
            traits = {
                http_query = "locale",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        relatedAccount = {
            type = "string",
            traits = {
                http_query = "relatedAccount",
            },
        },
        organizationalUnitId = {
            type = "string",
            traits = {
                http_query = "organizationalUnitId",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.MessageComponentsSummary = {
    type = "structure",
    members = {
        headline = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedSourceEventMetadataSummary = {
    type = "structure",
    members = {
        eventOriginRegion = {
            type = "string",
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedNotificationChildEventSummary = {
    type = "structure",
    members = {
        schemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceEventMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManagedSourceEventMetadataSummary }),
        messageComponents = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MessageComponentsSummary }),
        aggregationDetail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AggregationDetail }),
        eventStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedNotificationChildEventOverview = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managedNotificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relatedAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        childEvent = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManagedNotificationChildEventSummary }),
        aggregateManagedNotificationEventArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        organizationalUnitId = {
            type = "string",
        },
    },
}

M.ListManagedNotificationChildEventsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        managedNotificationChildEvents = {
            type = "list",
            member = M.ManagedNotificationChildEventOverview,
            traits = {
                required = true,
            },
        },
    },
}

M.ListManagedNotificationConfigurationsInput = {
    type = "structure",
    members = {
        channelIdentifier = {
            type = "string",
            traits = {
                http_query = "channelIdentifier",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ManagedNotificationConfigurationStructure = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListManagedNotificationConfigurationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        managedNotificationConfigurations = {
            type = "list",
            member = M.ManagedNotificationConfigurationStructure,
            traits = {
                required = true,
            },
        },
    },
}

M.ListManagedNotificationEventsInput = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                timestamp_format = "date-time",
            },
        },
        locale = {
            type = "string",
            traits = {
                http_query = "locale",
            },
        },
        source = {
            type = "string",
            traits = {
                http_query = "source",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        organizationalUnitId = {
            type = "string",
            traits = {
                http_query = "organizationalUnitId",
            },
        },
        relatedAccount = {
            type = "string",
            traits = {
                http_query = "relatedAccount",
            },
        },
    },
}

M.ManagedNotificationEventSummary = {
    type = "structure",
    members = {
        schemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceEventMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManagedSourceEventMetadataSummary }),
        messageComponents = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MessageComponentsSummary }),
        eventStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedNotificationEventOverview = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        managedNotificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relatedAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        notificationEvent = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManagedNotificationEventSummary }),
        aggregationEventType = {
            type = "string",
        },
        organizationalUnitId = {
            type = "string",
        },
        aggregationSummary = M.AggregationSummary,
        aggregatedNotificationRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListManagedNotificationEventsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        managedNotificationEvents = {
            type = "list",
            member = M.ManagedNotificationEventOverview,
            traits = {
                required = true,
            },
        },
    },
}

M.MemberAccountNotificationConfigurationStatus = {
    ACTIVE = "ACTIVE",
    PENDING = "PENDING",
    INACTIVE = "INACTIVE",
    CREATING = "CREATING",
    DELETING = "DELETING",
}

M.ListMemberAccountsInput = {
    type = "structure",
    members = {
        notificationConfigurationArn = {
            type = "string",
            traits = {
                http_query = "notificationConfigurationArn",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        memberAccount = {
            type = "string",
            traits = {
                http_query = "memberAccount",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        organizationalUnitId = {
            type = "string",
            traits = {
                http_query = "organizationalUnitId",
            },
        },
    },
}

M.MemberAccount = {
    type = "structure",
    members = {
        notificationConfigurationArn = {
            type = "string",
        },
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        organizationalUnitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMemberAccountsOutput = {
    type = "structure",
    members = {
        memberAccounts = {
            type = "list",
            member = M.MemberAccount,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNotificationConfigurationsInput = {
    type = "structure",
    members = {
        eventRuleSource = {
            type = "string",
            traits = {
                http_query = "eventRuleSource",
            },
        },
        channelArn = {
            type = "string",
            traits = {
                http_query = "channelArn",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        subtype = {
            type = "string",
            traits = {
                http_query = "subtype",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.NotificationConfigurationStructure = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        aggregationDuration = {
            type = "string",
        },
        subtype = {
            type = "string",
        },
    },
}

M.ListNotificationConfigurationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        notificationConfigurations = {
            type = "list",
            member = M.NotificationConfigurationStructure,
            traits = {
                required = true,
            },
        },
    },
}

M.ListNotificationEventsInput = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                timestamp_format = "date-time",
            },
        },
        locale = {
            type = "string",
            traits = {
                http_query = "locale",
            },
        },
        source = {
            type = "string",
            traits = {
                http_query = "source",
            },
        },
        includeChildEvents = {
            type = "boolean",
            traits = {
                http_query = "includeChildEvents",
            },
        },
        aggregateNotificationEventArn = {
            type = "string",
            traits = {
                http_query = "aggregateNotificationEventArn",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        organizationalUnitId = {
            type = "string",
            traits = {
                http_query = "organizationalUnitId",
            },
        },
    },
}

M.SourceEventMetadataSummary = {
    type = "structure",
    members = {
        eventOriginRegion = {
            type = "string",
        },
        source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationEventSummary = {
    type = "structure",
    members = {
        schemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceEventMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceEventMetadataSummary }),
        messageComponents = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MessageComponentsSummary }),
        eventStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationEventOverview = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relatedAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        notificationEvent = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationEventSummary }),
        aggregationEventType = {
            type = "string",
        },
        aggregateNotificationEventArn = {
            type = "string",
        },
        aggregationSummary = M.AggregationSummary,
        organizationalUnitId = {
            type = "string",
        },
    },
}

M.ListNotificationEventsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        notificationEvents = {
            type = "list",
            member = M.NotificationEventOverview,
            traits = {
                required = true,
            },
        },
    },
}

M.ListNotificationHubsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.NotificationHubOverview = {
    type = "structure",
    members = {
        notificationHubRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationHubStatusSummary }),
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastActivationTime = {
            type = "timestamp",
        },
    },
}

M.ListNotificationHubsOutput = {
    type = "structure",
    members = {
        notificationHubs = {
            type = "list",
            member = M.NotificationHubOverview,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListOrganizationalUnitsInput = {
    type = "structure",
    members = {
        notificationConfigurationArn = {
            type = "string",
            traits = {
                http_query = "notificationConfigurationArn",
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListOrganizationalUnitsOutput = {
    type = "structure",
    members = {
        organizationalUnits = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        arn = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateNotificationConfigurationInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        aggregationDuration = {
            type = "string",
        },
    },
}

M.UpdateNotificationConfigurationOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterNotificationHubInput = {
    type = "structure",
    members = {
        notificationHubRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterNotificationHubOutput = {
    type = "structure",
    members = {
        notificationHubRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationHubStatusSummary }),
        creationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastActivationTime = {
            type = "timestamp",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
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
        arn = {
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
}

return M
