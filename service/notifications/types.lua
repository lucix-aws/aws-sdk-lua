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
    id = "SummarizationDimensionDetail",
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
    id = "AggregationDetail",
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
    id = "AggregationKey",
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
    id = "SummarizationDimensionOverview",
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
    id = "AggregationSummary",
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
    id = "AssociateChannelInput",
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
    id = "AssociateChannelOutput",
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
    id = "InternalServerException",
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
    id = "ResourceNotFoundException",
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
    id = "ServiceQuotaExceededException",
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

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
    id = "AssociateManagedNotificationAccountContactInput",
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
    id = "AssociateManagedNotificationAccountContactOutput",
}

M.AssociateManagedNotificationAdditionalChannelInput = {
    type = "structure",
    id = "AssociateManagedNotificationAdditionalChannelInput",
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
    id = "AssociateManagedNotificationAdditionalChannelOutput",
}

M.AssociateOrganizationalUnitInput = {
    type = "structure",
    id = "AssociateOrganizationalUnitInput",
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
    id = "AssociateOrganizationalUnitOutput",
}

M.DisassociateChannelInput = {
    type = "structure",
    id = "DisassociateChannelInput",
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
    id = "DisassociateChannelOutput",
}

M.ListChannelsInput = {
    type = "structure",
    id = "ListChannelsInput",
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
    id = "ListChannelsOutput",
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
    id = "CreateEventRuleInput",
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
    id = "EventRuleStatusSummary",
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
    id = "CreateEventRuleOutput",
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
    id = "CreateNotificationConfigurationInput",
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
    id = "CreateNotificationConfigurationOutput",
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
    id = "DeleteEventRuleInput",
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
    id = "DeleteEventRuleOutput",
}

M.DeleteNotificationConfigurationInput = {
    type = "structure",
    id = "DeleteNotificationConfigurationInput",
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
    id = "DeleteNotificationConfigurationOutput",
}

M.DeregisterNotificationHubInput = {
    type = "structure",
    id = "DeregisterNotificationHubInput",
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
    id = "NotificationHubStatusSummary",
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
    id = "DeregisterNotificationHubOutput",
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
    id = "Dimension",
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
    id = "DisableNotificationsAccessForOrganizationInput",
}

M.DisableNotificationsAccessForOrganizationOutput = {
    type = "structure",
    id = "DisableNotificationsAccessForOrganizationOutput",
}

M.DisassociateManagedNotificationAccountContactInput = {
    type = "structure",
    id = "DisassociateManagedNotificationAccountContactInput",
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
    id = "DisassociateManagedNotificationAccountContactOutput",
}

M.DisassociateManagedNotificationAdditionalChannelInput = {
    type = "structure",
    id = "DisassociateManagedNotificationAdditionalChannelInput",
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
    id = "DisassociateManagedNotificationAdditionalChannelOutput",
}

M.DisassociateOrganizationalUnitInput = {
    type = "structure",
    id = "DisassociateOrganizationalUnitInput",
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
    id = "DisassociateOrganizationalUnitOutput",
}

M.EnableNotificationsAccessForOrganizationInput = {
    type = "structure",
    id = "EnableNotificationsAccessForOrganizationInput",
}

M.EnableNotificationsAccessForOrganizationOutput = {
    type = "structure",
    id = "EnableNotificationsAccessForOrganizationOutput",
}

M.GetEventRuleInput = {
    type = "structure",
    id = "GetEventRuleInput",
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
    id = "GetEventRuleOutput",
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
                timestamp_format = "date-time",
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
    id = "ListEventRulesInput",
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
    id = "EventRuleStructure",
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
                timestamp_format = "date-time",
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
    id = "ListEventRulesOutput",
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
    id = "UpdateEventRuleInput",
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
    id = "UpdateEventRuleOutput",
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
    id = "GetManagedNotificationChildEventInput",
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
    id = "MessageComponents",
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
    id = "TextPartValue",
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
    id = "ManagedNotificationChildEvent",
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
    id = "GetManagedNotificationChildEventOutput",
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
                timestamp_format = "date-time",
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManagedNotificationChildEvent }),
    },
}

M.GetManagedNotificationConfigurationInput = {
    type = "structure",
    id = "GetManagedNotificationConfigurationInput",
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
    id = "GetManagedNotificationConfigurationOutput",
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
    id = "GetManagedNotificationEventInput",
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
    id = "ManagedNotificationEvent",
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
    id = "GetManagedNotificationEventOutput",
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
                timestamp_format = "date-time",
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManagedNotificationEvent }),
    },
}

M.GetNotificationConfigurationInput = {
    type = "structure",
    id = "GetNotificationConfigurationInput",
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
    id = "GetNotificationConfigurationOutput",
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
                timestamp_format = "date-time",
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
    id = "GetNotificationEventInput",
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
    id = "MediaElement",
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
    id = "Resource",
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
    id = "SourceEventMetadata",
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
    id = "NotificationEventSchema",
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
    id = "GetNotificationEventOutput",
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
                timestamp_format = "date-time",
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationEventSchema }),
    },
}

M.GetNotificationsAccessForOrganizationInput = {
    type = "structure",
    id = "GetNotificationsAccessForOrganizationInput",
}

M.NotificationsAccessForOrganization = {
    type = "structure",
    id = "NotificationsAccessForOrganization",
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
    id = "GetNotificationsAccessForOrganizationOutput",
    members = {
        notificationsAccessForOrganization = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationsAccessForOrganization }),
    },
}

M.ListManagedNotificationChannelAssociationsInput = {
    type = "structure",
    id = "ListManagedNotificationChannelAssociationsInput",
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
    id = "ManagedNotificationChannelAssociationSummary",
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
    id = "ListManagedNotificationChannelAssociationsOutput",
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
    id = "ListManagedNotificationChildEventsInput",
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
    id = "MessageComponentsSummary",
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
    id = "ManagedSourceEventMetadataSummary",
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
    id = "ManagedNotificationChildEventSummary",
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
    id = "ManagedNotificationChildEventOverview",
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
                timestamp_format = "date-time",
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
    id = "ListManagedNotificationChildEventsOutput",
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
    id = "ListManagedNotificationConfigurationsInput",
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
    id = "ManagedNotificationConfigurationStructure",
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
    id = "ListManagedNotificationConfigurationsOutput",
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
    id = "ListManagedNotificationEventsInput",
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
    id = "ManagedNotificationEventSummary",
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
    id = "ManagedNotificationEventOverview",
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
                timestamp_format = "date-time",
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
    id = "ListManagedNotificationEventsOutput",
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
    id = "ListMemberAccountsInput",
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
    id = "MemberAccount",
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
    id = "ListMemberAccountsOutput",
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
    id = "ListNotificationConfigurationsInput",
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
    id = "NotificationConfigurationStructure",
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
                timestamp_format = "date-time",
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
    id = "ListNotificationConfigurationsOutput",
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
    id = "ListNotificationEventsInput",
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
    id = "SourceEventMetadataSummary",
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
    id = "NotificationEventSummary",
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
    id = "NotificationEventOverview",
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
                timestamp_format = "date-time",
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
    id = "ListNotificationEventsOutput",
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
    id = "ListNotificationHubsInput",
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
    id = "NotificationHubOverview",
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
                timestamp_format = "date-time",
            },
        },
        lastActivationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListNotificationHubsOutput = {
    type = "structure",
    id = "ListNotificationHubsOutput",
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
    id = "ListOrganizationalUnitsInput",
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
    id = "ListOrganizationalUnitsOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "UpdateNotificationConfigurationInput",
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
    id = "UpdateNotificationConfigurationOutput",
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
    id = "RegisterNotificationHubInput",
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
    id = "RegisterNotificationHubOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastActivationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

return M
