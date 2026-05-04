local M = {}

M.AcceptCodeValidation = {
    IGNORE = "IGNORE",
    ENFORCE = "ENFORCE",
}

M.AcceptType = {
    DELIVERED = "DELIVERED",
    READ = "READ",
}

M.AcceptPageInput = {
    type = "structure",
    members = {
        PageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactChannelId = {
            type = "string",
        },
        AcceptType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Note = {
            type = "string",
        },
        AcceptCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AcceptCodeValidation = {
            type = "string",
        },
    },
}

M.AcceptPageOutput = {
    type = "structure",
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
        },
        ServiceCode = {
            type = "string",
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
        Fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.ActivateContactChannelInput = {
    type = "structure",
    members = {
        ContactChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActivationCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivateContactChannelOutput = {
    type = "structure",
}

M.ActivationStatus = {
    ACTIVATED = "ACTIVATED",
    NOT_ACTIVATED = "NOT_ACTIVATED",
}

M.ChannelTargetInfo = {
    type = "structure",
    members = {
        ContactChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryIntervalInMinutes = {
            type = "integer",
        },
    },
}

M.ChannelType = {
    SMS = "SMS",
    VOICE = "VOICE",
    EMAIL = "EMAIL",
}

M.DependentEntity = {
    type = "structure",
    members = {
        RelationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DependentResourceIds = {
            type = "list",
            member = { type = "string" },
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DependentEntities = {
            type = "list",
            member = M.DependentEntity,
        },
    },
}

M.ContactType = {
    PERSONAL = "PERSONAL",
    ESCALATION = "ESCALATION",
    ONCALL_SCHEDULE = "ONCALL_SCHEDULE",
}

M.Contact = {
    type = "structure",
    members = {
        ContactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContactChannelAddress = {
    type = "structure",
    members = {
        SimpleAddress = {
            type = "string",
        },
    },
}

M.ContactChannel = {
    type = "structure",
    members = {
        ContactChannelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactArn = {
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
        Type = {
            type = "string",
        },
        DeliveryAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContactChannelAddress }),
        ActivationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContactTargetInfo = {
    type = "structure",
    members = {
        ContactId = {
            type = "string",
        },
        IsEssential = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.HandOffTime = {
    type = "structure",
    members = {
        HourOfDay = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        MinuteOfHour = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.CoverageTime = {
    type = "structure",
    members = {
        Start = M.HandOffTime,
        End = M.HandOffTime,
    },
}

M.Target = {
    type = "structure",
    members = {
        ChannelTargetInfo = M.ChannelTargetInfo,
        ContactTargetInfo = M.ContactTargetInfo,
    },
}

M.Stage = {
    type = "structure",
    members = {
        DurationInMinutes = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member = M.Target,
            traits = {
                required = true,
            },
        },
    },
}

M.Plan = {
    type = "structure",
    members = {
        Stages = {
            type = "list",
            member = M.Stage,
        },
        RotationIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.CreateContactInput = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Plan = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Plan }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.CreateContactOutput = {
    type = "structure",
    members = {
        ContactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataEncryptionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateContactChannelInput = {
    type = "structure",
    members = {
        ContactId = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContactChannelAddress }),
        DeferActivation = {
            type = "boolean",
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.CreateContactChannelOutput = {
    type = "structure",
    members = {
        ContactChannelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MonthlySetting = {
    type = "structure",
    members = {
        DayOfMonth = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        HandOffTime = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HandOffTime }),
    },
}

M.DayOfWeek = {
    MON = "MON",
    TUE = "TUE",
    WED = "WED",
    THU = "THU",
    FRI = "FRI",
    SAT = "SAT",
    SUN = "SUN",
}

M.WeeklySetting = {
    type = "structure",
    members = {
        DayOfWeek = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HandOffTime = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HandOffTime }),
    },
}

M.RecurrenceSettings = {
    type = "structure",
    members = {
        MonthlySettings = {
            type = "list",
            member = M.MonthlySetting,
        },
        WeeklySettings = {
            type = "list",
            member = M.WeeklySetting,
        },
        DailySettings = {
            type = "list",
            member = M.HandOffTime,
        },
        NumberOfOnCalls = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ShiftCoverages = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        RecurrenceMultiplier = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRotationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        TimeZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Recurrence = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecurrenceSettings }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.CreateRotationOutput = {
    type = "structure",
    members = {
        RotationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRotationOverrideInput = {
    type = "structure",
    members = {
        RotationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewContactIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.CreateRotationOverrideOutput = {
    type = "structure",
    members = {
        RotationOverrideId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeactivateContactChannelInput = {
    type = "structure",
    members = {
        ContactChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeactivateContactChannelOutput = {
    type = "structure",
}

M.DeleteContactInput = {
    type = "structure",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteContactOutput = {
    type = "structure",
}

M.DeleteContactChannelInput = {
    type = "structure",
    members = {
        ContactChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteContactChannelOutput = {
    type = "structure",
}

M.DeleteRotationInput = {
    type = "structure",
    members = {
        RotationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRotationOutput = {
    type = "structure",
}

M.DeleteRotationOverrideInput = {
    type = "structure",
    members = {
        RotationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RotationOverrideId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRotationOverrideOutput = {
    type = "structure",
}

M.DescribeEngagementInput = {
    type = "structure",
    members = {
        EngagementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeEngagementOutput = {
    type = "structure",
    members = {
        ContactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Sender = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublicSubject = {
            type = "string",
        },
        PublicContent = {
            type = "string",
        },
        IncidentId = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        StopTime = {
            type = "timestamp",
        },
    },
}

M.DescribePageInput = {
    type = "structure",
    members = {
        PageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePageOutput = {
    type = "structure",
    members = {
        PageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Sender = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublicSubject = {
            type = "string",
        },
        PublicContent = {
            type = "string",
        },
        IncidentId = {
            type = "string",
        },
        SentTime = {
            type = "timestamp",
        },
        ReadTime = {
            type = "timestamp",
        },
        DeliveryTime = {
            type = "timestamp",
        },
    },
}

M.Engagement = {
    type = "structure",
    members = {
        EngagementArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Sender = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncidentId = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        StopTime = {
            type = "timestamp",
        },
    },
}

M.GetContactInput = {
    type = "structure",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetContactOutput = {
    type = "structure",
    members = {
        ContactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Plan = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Plan }),
    },
}

M.GetContactChannelInput = {
    type = "structure",
    members = {
        ContactChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetContactChannelOutput = {
    type = "structure",
    members = {
        ContactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactChannelArn = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContactChannelAddress }),
        ActivationStatus = {
            type = "string",
        },
    },
}

M.GetContactPolicyInput = {
    type = "structure",
    members = {
        ContactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetContactPolicyOutput = {
    type = "structure",
    members = {
        ContactArn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
    },
}

M.GetRotationInput = {
    type = "structure",
    members = {
        RotationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRotationOutput = {
    type = "structure",
    members = {
        RotationArn = {
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
        ContactIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        TimeZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Recurrence = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecurrenceSettings }),
    },
}

M.GetRotationOverrideInput = {
    type = "structure",
    members = {
        RotationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RotationOverrideId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRotationOverrideOutput = {
    type = "structure",
    members = {
        RotationOverrideId = {
            type = "string",
        },
        RotationArn = {
            type = "string",
        },
        NewContactIds = {
            type = "list",
            member = { type = "string" },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        CreateTime = {
            type = "timestamp",
        },
    },
}

M.ListContactChannelsInput = {
    type = "structure",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListContactChannelsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ContactChannels = {
            type = "list",
            member = M.ContactChannel,
            traits = {
                required = true,
            },
        },
    },
}

M.ListContactsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        AliasPrefix = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ListContactsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Contacts = {
            type = "list",
            member = M.Contact,
        },
    },
}

M.TimeRange = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.ListEngagementsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        IncidentId = {
            type = "string",
        },
        TimeRangeValue = M.TimeRange,
    },
}

M.ListEngagementsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Engagements = {
            type = "list",
            member = M.Engagement,
            traits = {
                required = true,
            },
        },
    },
}

M.ListPageReceiptsInput = {
    type = "structure",
    members = {
        PageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ReceiptType = {
    DELIVERED = "DELIVERED",
    ERROR = "ERROR",
    READ = "READ",
    SENT = "SENT",
    STOP = "STOP",
}

M.Receipt = {
    type = "structure",
    members = {
        ContactChannelArn = {
            type = "string",
        },
        ReceiptType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReceiptInfo = {
            type = "string",
        },
        ReceiptTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPageReceiptsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Receipts = {
            type = "list",
            member = M.Receipt,
        },
    },
}

M.ListPageResolutionsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        PageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResolutionContact = {
    type = "structure",
    members = {
        ContactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StageIndex = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.ListPageResolutionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        PageResolutions = {
            type = "list",
            member = M.ResolutionContact,
            traits = {
                required = true,
            },
        },
    },
}

M.ListPagesByContactInput = {
    type = "structure",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.Page = {
    type = "structure",
    members = {
        PageArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EngagementArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Sender = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncidentId = {
            type = "string",
        },
        SentTime = {
            type = "timestamp",
        },
        DeliveryTime = {
            type = "timestamp",
        },
        ReadTime = {
            type = "timestamp",
        },
    },
}

M.ListPagesByContactOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Pages = {
            type = "list",
            member = M.Page,
            traits = {
                required = true,
            },
        },
    },
}

M.ListPagesByEngagementInput = {
    type = "structure",
    members = {
        EngagementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListPagesByEngagementOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Pages = {
            type = "list",
            member = M.Page,
            traits = {
                required = true,
            },
        },
    },
}

M.PreviewOverride = {
    type = "structure",
    members = {
        NewMembers = {
            type = "list",
            member = { type = "string" },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.ListPreviewRotationShiftsInput = {
    type = "structure",
    members = {
        RotationStartTime = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Members = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TimeZoneId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Recurrence = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecurrenceSettings }),
        Overrides = {
            type = "list",
            member = M.PreviewOverride,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ShiftDetails = {
    type = "structure",
    members = {
        OverriddenContactIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ShiftType = {
    REGULAR = "REGULAR",
    OVERRIDDEN = "OVERRIDDEN",
}

M.RotationShift = {
    type = "structure",
    members = {
        ContactIds = {
            type = "list",
            member = { type = "string" },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        ShiftDetails = M.ShiftDetails,
    },
}

M.ListPreviewRotationShiftsOutput = {
    type = "structure",
    members = {
        RotationShifts = {
            type = "list",
            member = M.RotationShift,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRotationOverridesInput = {
    type = "structure",
    members = {
        RotationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.RotationOverride = {
    type = "structure",
    members = {
        RotationOverrideId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewContactIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRotationOverridesOutput = {
    type = "structure",
    members = {
        RotationOverrides = {
            type = "list",
            member = M.RotationOverride,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRotationsInput = {
    type = "structure",
    members = {
        RotationNamePrefix = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.Rotation = {
    type = "structure",
    members = {
        RotationArn = {
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
        ContactIds = {
            type = "list",
            member = { type = "string" },
        },
        StartTime = {
            type = "timestamp",
        },
        TimeZoneId = {
            type = "string",
        },
        Recurrence = M.RecurrenceSettings,
    },
}

M.ListRotationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Rotations = {
            type = "list",
            member = M.Rotation,
            traits = {
                required = true,
            },
        },
    },
}

M.ListRotationShiftsInput = {
    type = "structure",
    members = {
        RotationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListRotationShiftsOutput = {
    type = "structure",
    members = {
        RotationShifts = {
            type = "list",
            member = M.RotationShift,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutContactPolicyInput = {
    type = "structure",
    members = {
        ContactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutContactPolicyOutput = {
    type = "structure",
}

M.SendActivationCodeInput = {
    type = "structure",
    members = {
        ContactChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendActivationCodeOutput = {
    type = "structure",
}

M.StartEngagementInput = {
    type = "structure",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Sender = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublicSubject = {
            type = "string",
        },
        PublicContent = {
            type = "string",
        },
        IncidentId = {
            type = "string",
        },
        IdempotencyToken = {
            type = "string",
        },
    },
}

M.StartEngagementOutput = {
    type = "structure",
    members = {
        EngagementArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopEngagementInput = {
    type = "structure",
    members = {
        EngagementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
    },
}

M.StopEngagementOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateContactInput = {
    type = "structure",
    members = {
        ContactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
        },
        Plan = M.Plan,
    },
}

M.UpdateContactOutput = {
    type = "structure",
}

M.UpdateContactChannelInput = {
    type = "structure",
    members = {
        ContactChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        DeliveryAddress = M.ContactChannelAddress,
    },
}

M.UpdateContactChannelOutput = {
    type = "structure",
}

M.UpdateRotationInput = {
    type = "structure",
    members = {
        RotationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactIds = {
            type = "list",
            member = { type = "string" },
        },
        StartTime = {
            type = "timestamp",
        },
        TimeZoneId = {
            type = "string",
        },
        Recurrence = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecurrenceSettings }),
    },
}

M.UpdateRotationOutput = {
    type = "structure",
}

return M
