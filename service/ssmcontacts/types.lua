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
    id = "AcceptPageInput",
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
    id = "AcceptPageOutput",
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "InternalServerException",
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
    id = "ResourceNotFoundException",
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
    id = "ThrottlingException",
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
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
    id = "ActivateContactChannelInput",
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
    id = "ActivateContactChannelOutput",
}

M.ActivationStatus = {
    ACTIVATED = "ACTIVATED",
    NOT_ACTIVATED = "NOT_ACTIVATED",
}

M.ChannelTargetInfo = {
    type = "structure",
    id = "ChannelTargetInfo",
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
    id = "DependentEntity",
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
    id = "ConflictException",
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
    id = "Contact",
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
    id = "ContactChannelAddress",
    members = {
        SimpleAddress = {
            type = "string",
        },
    },
}

M.ContactChannel = {
    type = "structure",
    id = "ContactChannel",
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
    id = "ContactTargetInfo",
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
    id = "HandOffTime",
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
    id = "CoverageTime",
    members = {
        Start = M.HandOffTime,
        End = M.HandOffTime,
    },
}

M.Target = {
    type = "structure",
    id = "Target",
    members = {
        ChannelTargetInfo = M.ChannelTargetInfo,
        ContactTargetInfo = M.ContactTargetInfo,
    },
}

M.Stage = {
    type = "structure",
    id = "Stage",
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
    id = "Plan",
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
    id = "Tag",
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
    id = "CreateContactInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateContactOutput = {
    type = "structure",
    id = "CreateContactOutput",
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
    id = "DataEncryptionException",
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
    id = "ServiceQuotaExceededException",
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
    id = "CreateContactChannelInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateContactChannelOutput = {
    type = "structure",
    id = "CreateContactChannelOutput",
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
    id = "MonthlySetting",
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
    id = "WeeklySetting",
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
    id = "RecurrenceSettings",
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
    id = "CreateRotationInput",
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
    id = "CreateRotationOutput",
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
    id = "CreateRotationOverrideInput",
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
    id = "CreateRotationOverrideOutput",
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
    id = "DeactivateContactChannelInput",
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
    id = "DeactivateContactChannelOutput",
}

M.DeleteContactInput = {
    type = "structure",
    id = "DeleteContactInput",
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
    id = "DeleteContactOutput",
}

M.DeleteContactChannelInput = {
    type = "structure",
    id = "DeleteContactChannelInput",
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
    id = "DeleteContactChannelOutput",
}

M.DeleteRotationInput = {
    type = "structure",
    id = "DeleteRotationInput",
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
    id = "DeleteRotationOutput",
}

M.DeleteRotationOverrideInput = {
    type = "structure",
    id = "DeleteRotationOverrideInput",
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
    id = "DeleteRotationOverrideOutput",
}

M.DescribeEngagementInput = {
    type = "structure",
    id = "DescribeEngagementInput",
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
    id = "DescribeEngagementOutput",
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
    id = "DescribePageInput",
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
    id = "DescribePageOutput",
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
    id = "Engagement",
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
    id = "GetContactInput",
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
    id = "GetContactOutput",
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
    id = "GetContactChannelInput",
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
    id = "GetContactChannelOutput",
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
    id = "GetContactPolicyInput",
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
    id = "GetContactPolicyOutput",
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
    id = "GetRotationInput",
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
    id = "GetRotationOutput",
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
    id = "GetRotationOverrideInput",
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
    id = "GetRotationOverrideOutput",
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
    id = "ListContactChannelsInput",
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
    id = "ListContactChannelsOutput",
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
    id = "ListContactsInput",
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
    id = "ListContactsOutput",
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
    id = "TimeRange",
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
    id = "ListEngagementsInput",
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
    id = "ListEngagementsOutput",
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
    id = "ListPageReceiptsInput",
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
    id = "Receipt",
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
    id = "ListPageReceiptsOutput",
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
    id = "ListPageResolutionsInput",
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
    id = "ResolutionContact",
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
    id = "ListPageResolutionsOutput",
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
    id = "ListPagesByContactInput",
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
    id = "Page",
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
    id = "ListPagesByContactOutput",
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
    id = "ListPagesByEngagementInput",
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
    id = "ListPagesByEngagementOutput",
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
    id = "PreviewOverride",
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
    id = "ListPreviewRotationShiftsInput",
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
    id = "ShiftDetails",
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
    id = "RotationShift",
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
    id = "ListPreviewRotationShiftsOutput",
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
    id = "ListRotationOverridesInput",
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
    id = "RotationOverride",
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
    id = "ListRotationOverridesOutput",
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
    id = "ListRotationsInput",
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
    id = "Rotation",
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
    id = "ListRotationsOutput",
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
    id = "ListRotationShiftsInput",
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
    id = "ListRotationShiftsOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutContactPolicyInput = {
    type = "structure",
    id = "PutContactPolicyInput",
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
    id = "PutContactPolicyOutput",
}

M.SendActivationCodeInput = {
    type = "structure",
    id = "SendActivationCodeInput",
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
    id = "SendActivationCodeOutput",
}

M.StartEngagementInput = {
    type = "structure",
    id = "StartEngagementInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartEngagementOutput = {
    type = "structure",
    id = "StartEngagementOutput",
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
    id = "StopEngagementInput",
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
    id = "StopEngagementOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateContactInput = {
    type = "structure",
    id = "UpdateContactInput",
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
    id = "UpdateContactOutput",
}

M.UpdateContactChannelInput = {
    type = "structure",
    id = "UpdateContactChannelInput",
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
    id = "UpdateContactChannelOutput",
}

M.UpdateRotationInput = {
    type = "structure",
    id = "UpdateRotationInput",
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
    id = "UpdateRotationOutput",
}

return M
