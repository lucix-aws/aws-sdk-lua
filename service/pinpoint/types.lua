local M = {}

M.__EndpointTypesElement = {
    PUSH = "PUSH",
    GCM = "GCM",
    APNS = "APNS",
    APNS_SANDBOX = "APNS_SANDBOX",
    APNS_VOIP = "APNS_VOIP",
    APNS_VOIP_SANDBOX = "APNS_VOIP_SANDBOX",
    ADM = "ADM",
    SMS = "SMS",
    VOICE = "VOICE",
    EMAIL = "EMAIL",
    BAIDU = "BAIDU",
    CUSTOM = "CUSTOM",
    IN_APP = "IN_APP",
}

M.__TimezoneEstimationMethodsElement = {
    PHONE_NUMBER = "PHONE_NUMBER",
    POSTAL_CODE = "POSTAL_CODE",
}

M.Action = {
    OPEN_APP = "OPEN_APP",
    DEEP_LINK = "DEEP_LINK",
    URL = "URL",
}

M.ActivityResponse = {
    type = "structure",
    id = "ActivityResponse",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CampaignId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        End = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Result = {
            type = "string",
        },
        ScheduledStart = {
            type = "string",
        },
        Start = {
            type = "string",
        },
        State = {
            type = "string",
        },
        SuccessfulEndpointCount = {
            type = "integer",
        },
        TimezonesCompletedCount = {
            type = "integer",
        },
        TimezonesTotalCount = {
            type = "integer",
        },
        TotalEndpointCount = {
            type = "integer",
        },
        TreatmentId = {
            type = "string",
        },
        ExecutionMetrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ActivitiesResponse = {
    type = "structure",
    id = "ActivitiesResponse",
    members = {
        Item = {
            type = "list",
            member = M.ActivityResponse,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AttributeType = {
    INCLUSIVE = "INCLUSIVE",
    EXCLUSIVE = "EXCLUSIVE",
    CONTAINS = "CONTAINS",
    BEFORE = "BEFORE",
    AFTER = "AFTER",
    ON = "ON",
    BETWEEN = "BETWEEN",
}

M.AttributeDimension = {
    type = "structure",
    id = "AttributeDimension",
    members = {
        AttributeType = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DimensionType = {
    INCLUSIVE = "INCLUSIVE",
    EXCLUSIVE = "EXCLUSIVE",
}

M.SetDimension = {
    type = "structure",
    id = "SetDimension",
    members = {
        DimensionType = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.MetricDimension = {
    type = "structure",
    id = "MetricDimension",
    members = {
        ComparisonOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.EventDimensions = {
    type = "structure",
    id = "EventDimensions",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeDimension,
        },
        EventType = M.SetDimension,
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = M.MetricDimension,
        },
    },
}

M.EventCondition = {
    type = "structure",
    id = "EventCondition",
    members = {
        Dimensions = M.EventDimensions,
        MessageActivity = {
            type = "string",
        },
    },
}

M.SegmentCondition = {
    type = "structure",
    id = "SegmentCondition",
    members = {
        SegmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Duration = {
    HR_24 = "HR_24",
    DAY_7 = "DAY_7",
    DAY_14 = "DAY_14",
    DAY_30 = "DAY_30",
}

M.RecencyType = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.RecencyDimension = {
    type = "structure",
    id = "RecencyDimension",
    members = {
        Duration = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecencyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SegmentBehaviors = {
    type = "structure",
    id = "SegmentBehaviors",
    members = {
        Recency = M.RecencyDimension,
    },
}

M.SegmentDemographics = {
    type = "structure",
    id = "SegmentDemographics",
    members = {
        AppVersion = M.SetDimension,
        Channel = M.SetDimension,
        DeviceType = M.SetDimension,
        Make = M.SetDimension,
        Model = M.SetDimension,
        Platform = M.SetDimension,
    },
}

M.GPSCoordinates = {
    type = "structure",
    id = "GPSCoordinates",
    members = {
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

M.GPSPointDimension = {
    type = "structure",
    id = "GPSPointDimension",
    members = {
        Coordinates = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GPSCoordinates }),
        RangeInKilometers = {
            type = "double",
        },
    },
}

M.SegmentLocation = {
    type = "structure",
    id = "SegmentLocation",
    members = {
        Country = M.SetDimension,
        GPSPoint = M.GPSPointDimension,
    },
}

M.SegmentDimensions = {
    type = "structure",
    id = "SegmentDimensions",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeDimension,
        },
        Behavior = M.SegmentBehaviors,
        Demographic = M.SegmentDemographics,
        Location = M.SegmentLocation,
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = M.MetricDimension,
        },
        UserAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeDimension,
        },
    },
}

M.SimpleCondition = {
    type = "structure",
    id = "SimpleCondition",
    members = {
        EventCondition = M.EventCondition,
        SegmentCondition = M.SegmentCondition,
        SegmentDimensions = setmetatable({ traits = {
            json_name = "segmentDimensions",
        } }, { __index = M.SegmentDimensions }),
    },
}

M.Operator = {
    ALL = "ALL",
    ANY = "ANY",
}

M.Condition = {
    type = "structure",
    id = "Condition",
    members = {
        Conditions = {
            type = "list",
            member = M.SimpleCondition,
        },
        Operator = {
            type = "string",
        },
    },
}

M.WaitTime = {
    type = "structure",
    id = "WaitTime",
    members = {
        WaitFor = {
            type = "string",
        },
        WaitUntil = {
            type = "string",
        },
    },
}

M.ConditionalSplitActivity = {
    type = "structure",
    id = "ConditionalSplitActivity",
    members = {
        Condition = M.Condition,
        EvaluationWaitTime = M.WaitTime,
        FalseActivity = {
            type = "string",
        },
        TrueActivity = {
            type = "string",
        },
    },
}

M.ContactCenterActivity = {
    type = "structure",
    id = "ContactCenterActivity",
    members = {
        NextActivity = {
            type = "string",
        },
    },
}

M.JourneyCustomMessage = {
    type = "structure",
    id = "JourneyCustomMessage",
    members = {
        Data = {
            type = "string",
        },
    },
}

M.CustomMessageActivity = {
    type = "structure",
    id = "CustomMessageActivity",
    members = {
        DeliveryUri = {
            type = "string",
        },
        EndpointTypes = {
            type = "list",
            member = { type = "string" },
        },
        MessageConfig = M.JourneyCustomMessage,
        NextActivity = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        TemplateVersion = {
            type = "string",
        },
    },
}

M.JourneyEmailMessage = {
    type = "structure",
    id = "JourneyEmailMessage",
    members = {
        FromAddress = {
            type = "string",
        },
    },
}

M.EmailMessageActivity = {
    type = "structure",
    id = "EmailMessageActivity",
    members = {
        MessageConfig = M.JourneyEmailMessage,
        NextActivity = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        TemplateVersion = {
            type = "string",
        },
    },
}

M.HoldoutActivity = {
    type = "structure",
    id = "HoldoutActivity",
    members = {
        NextActivity = {
            type = "string",
        },
        Percentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.MultiConditionalBranch = {
    type = "structure",
    id = "MultiConditionalBranch",
    members = {
        Condition = M.SimpleCondition,
        NextActivity = {
            type = "string",
        },
    },
}

M.MultiConditionalSplitActivity = {
    type = "structure",
    id = "MultiConditionalSplitActivity",
    members = {
        Branches = {
            type = "list",
            member = M.MultiConditionalBranch,
        },
        DefaultActivity = {
            type = "string",
        },
        EvaluationWaitTime = M.WaitTime,
    },
}

M.JourneyPushMessage = {
    type = "structure",
    id = "JourneyPushMessage",
    members = {
        TimeToLive = {
            type = "string",
        },
    },
}

M.PushMessageActivity = {
    type = "structure",
    id = "PushMessageActivity",
    members = {
        MessageConfig = M.JourneyPushMessage,
        NextActivity = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        TemplateVersion = {
            type = "string",
        },
    },
}

M.RandomSplitEntry = {
    type = "structure",
    id = "RandomSplitEntry",
    members = {
        NextActivity = {
            type = "string",
        },
        Percentage = {
            type = "integer",
        },
    },
}

M.RandomSplitActivity = {
    type = "structure",
    id = "RandomSplitActivity",
    members = {
        Branches = {
            type = "list",
            member = M.RandomSplitEntry,
        },
    },
}

M.MessageType = {
    TRANSACTIONAL = "TRANSACTIONAL",
    PROMOTIONAL = "PROMOTIONAL",
}

M.JourneySMSMessage = {
    type = "structure",
    id = "JourneySMSMessage",
    members = {
        MessageType = {
            type = "string",
        },
        OriginationNumber = {
            type = "string",
        },
        SenderId = {
            type = "string",
        },
        EntityId = {
            type = "string",
        },
        TemplateId = {
            type = "string",
        },
    },
}

M.SMSMessageActivity = {
    type = "structure",
    id = "SMSMessageActivity",
    members = {
        MessageConfig = M.JourneySMSMessage,
        NextActivity = {
            type = "string",
        },
        TemplateName = {
            type = "string",
        },
        TemplateVersion = {
            type = "string",
        },
    },
}

M.WaitActivity = {
    type = "structure",
    id = "WaitActivity",
    members = {
        NextActivity = {
            type = "string",
        },
        WaitTime = M.WaitTime,
    },
}

M.Activity = {
    type = "structure",
    id = "Activity",
    members = {
        CUSTOM = M.CustomMessageActivity,
        ConditionalSplit = M.ConditionalSplitActivity,
        Description = {
            type = "string",
        },
        EMAIL = M.EmailMessageActivity,
        Holdout = M.HoldoutActivity,
        MultiCondition = M.MultiConditionalSplitActivity,
        PUSH = M.PushMessageActivity,
        RandomSplit = M.RandomSplitActivity,
        SMS = M.SMSMessageActivity,
        Wait = M.WaitActivity,
        ContactCenter = M.ContactCenterActivity,
    },
}

M.ChannelType = {
    PUSH = "PUSH",
    GCM = "GCM",
    APNS = "APNS",
    APNS_SANDBOX = "APNS_SANDBOX",
    APNS_VOIP = "APNS_VOIP",
    APNS_VOIP_SANDBOX = "APNS_VOIP_SANDBOX",
    ADM = "ADM",
    SMS = "SMS",
    VOICE = "VOICE",
    EMAIL = "EMAIL",
    BAIDU = "BAIDU",
    CUSTOM = "CUSTOM",
    IN_APP = "IN_APP",
}

M.AddressConfiguration = {
    type = "structure",
    id = "AddressConfiguration",
    members = {
        BodyOverride = {
            type = "string",
        },
        ChannelType = {
            type = "string",
        },
        Context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RawContent = {
            type = "string",
        },
        Substitutions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        TitleOverride = {
            type = "string",
        },
    },
}

M.ADMChannelRequest = {
    type = "structure",
    id = "ADMChannelRequest",
    members = {
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.ADMChannelResponse = {
    type = "structure",
    id = "ADMChannelResponse",
    members = {
        ApplicationId = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        HasCredential = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        IsArchived = {
            type = "boolean",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
        },
    },
}

M.ADMMessage = {
    type = "structure",
    id = "ADMMessage",
    members = {
        Action = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        ConsolidationKey = {
            type = "string",
        },
        Data = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ExpiresAfter = {
            type = "string",
        },
        IconReference = {
            type = "string",
        },
        ImageIconUrl = {
            type = "string",
        },
        ImageUrl = {
            type = "string",
        },
        MD5 = {
            type = "string",
        },
        RawContent = {
            type = "string",
        },
        SilentPush = {
            type = "boolean",
        },
        SmallImageIconUrl = {
            type = "string",
        },
        Sound = {
            type = "string",
        },
        Substitutions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Title = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.Alignment = {
    LEFT = "LEFT",
    CENTER = "CENTER",
    RIGHT = "RIGHT",
}

M.AndroidPushNotificationTemplate = {
    type = "structure",
    id = "AndroidPushNotificationTemplate",
    members = {
        Action = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        ImageIconUrl = {
            type = "string",
        },
        ImageUrl = {
            type = "string",
        },
        RawContent = {
            type = "string",
        },
        SmallImageIconUrl = {
            type = "string",
        },
        Sound = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.APNSChannelRequest = {
    type = "structure",
    id = "APNSChannelRequest",
    members = {
        BundleId = {
            type = "string",
        },
        Certificate = {
            type = "string",
        },
        DefaultAuthenticationMethod = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        PrivateKey = {
            type = "string",
        },
        TeamId = {
            type = "string",
        },
        TokenKey = {
            type = "string",
        },
        TokenKeyId = {
            type = "string",
        },
    },
}

M.APNSChannelResponse = {
    type = "structure",
    id = "APNSChannelResponse",
    members = {
        ApplicationId = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        DefaultAuthenticationMethod = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        HasCredential = {
            type = "boolean",
        },
        HasTokenKey = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        IsArchived = {
            type = "boolean",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
        },
    },
}

M.APNSMessage = {
    type = "structure",
    id = "APNSMessage",
    members = {
        APNSPushType = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        Badge = {
            type = "integer",
        },
        Body = {
            type = "string",
        },
        Category = {
            type = "string",
        },
        CollapseId = {
            type = "string",
        },
        Data = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MediaUrl = {
            type = "string",
        },
        PreferredAuthenticationMethod = {
            type = "string",
        },
        Priority = {
            type = "string",
        },
        RawContent = {
            type = "string",
        },
        SilentPush = {
            type = "boolean",
        },
        Sound = {
            type = "string",
        },
        Substitutions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        ThreadId = {
            type = "string",
        },
        TimeToLive = {
            type = "integer",
        },
        Title = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.APNSPushNotificationTemplate = {
    type = "structure",
    id = "APNSPushNotificationTemplate",
    members = {
        Action = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        MediaUrl = {
            type = "string",
        },
        RawContent = {
            type = "string",
        },
        Sound = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.APNSSandboxChannelRequest = {
    type = "structure",
    id = "APNSSandboxChannelRequest",
    members = {
        BundleId = {
            type = "string",
        },
        Certificate = {
            type = "string",
        },
        DefaultAuthenticationMethod = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        PrivateKey = {
            type = "string",
        },
        TeamId = {
            type = "string",
        },
        TokenKey = {
            type = "string",
        },
        TokenKeyId = {
            type = "string",
        },
    },
}

M.APNSSandboxChannelResponse = {
    type = "structure",
    id = "APNSSandboxChannelResponse",
    members = {
        ApplicationId = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        DefaultAuthenticationMethod = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        HasCredential = {
            type = "boolean",
        },
        HasTokenKey = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        IsArchived = {
            type = "boolean",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
        },
    },
}

M.APNSVoipChannelRequest = {
    type = "structure",
    id = "APNSVoipChannelRequest",
    members = {
        BundleId = {
            type = "string",
        },
        Certificate = {
            type = "string",
        },
        DefaultAuthenticationMethod = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        PrivateKey = {
            type = "string",
        },
        TeamId = {
            type = "string",
        },
        TokenKey = {
            type = "string",
        },
        TokenKeyId = {
            type = "string",
        },
    },
}

M.APNSVoipChannelResponse = {
    type = "structure",
    id = "APNSVoipChannelResponse",
    members = {
        ApplicationId = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        DefaultAuthenticationMethod = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        HasCredential = {
            type = "boolean",
        },
        HasTokenKey = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        IsArchived = {
            type = "boolean",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
        },
    },
}

M.APNSVoipSandboxChannelRequest = {
    type = "structure",
    id = "APNSVoipSandboxChannelRequest",
    members = {
        BundleId = {
            type = "string",
        },
        Certificate = {
            type = "string",
        },
        DefaultAuthenticationMethod = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        PrivateKey = {
            type = "string",
        },
        TeamId = {
            type = "string",
        },
        TokenKey = {
            type = "string",
        },
        TokenKeyId = {
            type = "string",
        },
    },
}

M.APNSVoipSandboxChannelResponse = {
    type = "structure",
    id = "APNSVoipSandboxChannelResponse",
    members = {
        ApplicationId = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        DefaultAuthenticationMethod = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        HasCredential = {
            type = "boolean",
        },
        HasTokenKey = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        IsArchived = {
            type = "boolean",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
        },
    },
}

M.ResultRowValue = {
    type = "structure",
    id = "ResultRowValue",
    members = {
        Key = {
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
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResultRow = {
    type = "structure",
    id = "ResultRow",
    members = {
        GroupedBys = {
            type = "list",
            member = M.ResultRowValue,
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = M.ResultRowValue,
            traits = {
                required = true,
            },
        },
    },
}

M.BaseKpiResult = {
    type = "structure",
    id = "BaseKpiResult",
    members = {
        Rows = {
            type = "list",
            member = M.ResultRow,
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationDateRangeKpiResponse = {
    type = "structure",
    id = "ApplicationDateRangeKpiResponse",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        KpiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KpiResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BaseKpiResult }),
        NextToken = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.ApplicationResponse = {
    type = "structure",
    id = "ApplicationResponse",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        CreationDate = {
            type = "string",
        },
    },
}

M.JourneyTimeframeCap = {
    type = "structure",
    id = "JourneyTimeframeCap",
    members = {
        Cap = {
            type = "integer",
        },
        Days = {
            type = "integer",
        },
    },
}

M.ApplicationSettingsJourneyLimits = {
    type = "structure",
    id = "ApplicationSettingsJourneyLimits",
    members = {
        DailyCap = {
            type = "integer",
        },
        TimeframeCap = M.JourneyTimeframeCap,
        TotalCap = {
            type = "integer",
        },
    },
}

M.Mode = {
    DELIVERY = "DELIVERY",
    FILTER = "FILTER",
}

M.CampaignHook = {
    type = "structure",
    id = "CampaignHook",
    members = {
        LambdaFunctionName = {
            type = "string",
        },
        Mode = {
            type = "string",
        },
        WebUrl = {
            type = "string",
        },
    },
}

M.CampaignLimits = {
    type = "structure",
    id = "CampaignLimits",
    members = {
        Daily = {
            type = "integer",
        },
        MaximumDuration = {
            type = "integer",
        },
        MessagesPerSecond = {
            type = "integer",
        },
        Total = {
            type = "integer",
        },
        Session = {
            type = "integer",
        },
    },
}

M.QuietTime = {
    type = "structure",
    id = "QuietTime",
    members = {
        End = {
            type = "string",
        },
        Start = {
            type = "string",
        },
    },
}

M.ApplicationSettingsResource = {
    type = "structure",
    id = "ApplicationSettingsResource",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CampaignHook = M.CampaignHook,
        LastModifiedDate = {
            type = "string",
        },
        Limits = M.CampaignLimits,
        QuietTime = M.QuietTime,
        JourneyLimits = M.ApplicationSettingsJourneyLimits,
    },
}

M.ApplicationsResponse = {
    type = "structure",
    id = "ApplicationsResponse",
    members = {
        Item = {
            type = "list",
            member = M.ApplicationResponse,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AttributesResource = {
    type = "structure",
    id = "AttributesResource",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestID = {
            type = "string",
        },
    },
}

M.BaiduChannelRequest = {
    type = "structure",
    id = "BaiduChannelRequest",
    members = {
        ApiKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
        },
        SecretKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BaiduChannelResponse = {
    type = "structure",
    id = "BaiduChannelResponse",
    members = {
        ApplicationId = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        Credential = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
        },
        HasCredential = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        IsArchived = {
            type = "boolean",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
        },
    },
}

M.BaiduMessage = {
    type = "structure",
    id = "BaiduMessage",
    members = {
        Action = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        Data = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        IconReference = {
            type = "string",
        },
        ImageIconUrl = {
            type = "string",
        },
        ImageUrl = {
            type = "string",
        },
        RawContent = {
            type = "string",
        },
        SilentPush = {
            type = "boolean",
        },
        SmallImageIconUrl = {
            type = "string",
        },
        Sound = {
            type = "string",
        },
        Substitutions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        TimeToLive = {
            type = "integer",
        },
        Title = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.ButtonAction = {
    LINK = "LINK",
    DEEP_LINK = "DEEP_LINK",
    CLOSE = "CLOSE",
}

M.CampaignCustomMessage = {
    type = "structure",
    id = "CampaignCustomMessage",
    members = {
        Data = {
            type = "string",
        },
    },
}

M.CampaignDateRangeKpiResponse = {
    type = "structure",
    id = "CampaignDateRangeKpiResponse",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CampaignId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        KpiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KpiResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BaseKpiResult }),
        NextToken = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.MessageHeader = {
    type = "structure",
    id = "MessageHeader",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.CampaignEmailMessage = {
    type = "structure",
    id = "CampaignEmailMessage",
    members = {
        Body = {
            type = "string",
        },
        FromAddress = {
            type = "string",
        },
        Headers = {
            type = "list",
            member = M.MessageHeader,
        },
        HtmlBody = {
            type = "string",
        },
        Title = {
            type = "string",
        },
    },
}

M.FilterType = {
    SYSTEM = "SYSTEM",
    ENDPOINT = "ENDPOINT",
}

M.CampaignEventFilter = {
    type = "structure",
    id = "CampaignEventFilter",
    members = {
        Dimensions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventDimensions }),
        FilterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InAppMessageBodyConfig = {
    type = "structure",
    id = "InAppMessageBodyConfig",
    members = {
        Alignment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Body = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextColor = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InAppMessageHeaderConfig = {
    type = "structure",
    id = "InAppMessageHeaderConfig",
    members = {
        Alignment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Header = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextColor = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OverrideButtonConfiguration = {
    type = "structure",
    id = "OverrideButtonConfiguration",
    members = {
        ButtonAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Link = {
            type = "string",
        },
    },
}

M.DefaultButtonConfiguration = {
    type = "structure",
    id = "DefaultButtonConfiguration",
    members = {
        BackgroundColor = {
            type = "string",
        },
        BorderRadius = {
            type = "integer",
        },
        ButtonAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Link = {
            type = "string",
        },
        Text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextColor = {
            type = "string",
        },
    },
}

M.InAppMessageButton = {
    type = "structure",
    id = "InAppMessageButton",
    members = {
        Android = M.OverrideButtonConfiguration,
        DefaultConfig = M.DefaultButtonConfiguration,
        IOS = M.OverrideButtonConfiguration,
        Web = M.OverrideButtonConfiguration,
    },
}

M.InAppMessageContent = {
    type = "structure",
    id = "InAppMessageContent",
    members = {
        BackgroundColor = {
            type = "string",
        },
        BodyConfig = M.InAppMessageBodyConfig,
        HeaderConfig = M.InAppMessageHeaderConfig,
        ImageUrl = {
            type = "string",
        },
        PrimaryBtn = M.InAppMessageButton,
        SecondaryBtn = M.InAppMessageButton,
    },
}

M.Layout = {
    BOTTOM_BANNER = "BOTTOM_BANNER",
    TOP_BANNER = "TOP_BANNER",
    OVERLAYS = "OVERLAYS",
    MOBILE_FEED = "MOBILE_FEED",
    MIDDLE_BANNER = "MIDDLE_BANNER",
    CAROUSEL = "CAROUSEL",
}

M.CampaignInAppMessage = {
    type = "structure",
    id = "CampaignInAppMessage",
    members = {
        Body = {
            type = "string",
        },
        Content = {
            type = "list",
            member = M.InAppMessageContent,
        },
        CustomConfig = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Layout = {
            type = "string",
        },
    },
}

M.CustomDeliveryConfiguration = {
    type = "structure",
    id = "CustomDeliveryConfiguration",
    members = {
        DeliveryUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Message = {
    type = "structure",
    id = "Message",
    members = {
        Action = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        ImageIconUrl = {
            type = "string",
        },
        ImageSmallIconUrl = {
            type = "string",
        },
        ImageUrl = {
            type = "string",
        },
        JsonBody = {
            type = "string",
        },
        MediaUrl = {
            type = "string",
        },
        RawContent = {
            type = "string",
        },
        SilentPush = {
            type = "boolean",
        },
        TimeToLive = {
            type = "integer",
        },
        Title = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.CampaignSmsMessage = {
    type = "structure",
    id = "CampaignSmsMessage",
    members = {
        Body = {
            type = "string",
        },
        MessageType = {
            type = "string",
        },
        OriginationNumber = {
            type = "string",
        },
        SenderId = {
            type = "string",
        },
        EntityId = {
            type = "string",
        },
        TemplateId = {
            type = "string",
        },
    },
}

M.MessageConfiguration = {
    type = "structure",
    id = "MessageConfiguration",
    members = {
        ADMMessage = M.Message,
        APNSMessage = M.Message,
        BaiduMessage = M.Message,
        CustomMessage = M.CampaignCustomMessage,
        DefaultMessage = M.Message,
        EmailMessage = M.CampaignEmailMessage,
        GCMMessage = M.Message,
        SMSMessage = M.CampaignSmsMessage,
        InAppMessage = M.CampaignInAppMessage,
    },
}

M.Frequency = {
    ONCE = "ONCE",
    HOURLY = "HOURLY",
    DAILY = "DAILY",
    WEEKLY = "WEEKLY",
    MONTHLY = "MONTHLY",
    EVENT = "EVENT",
    IN_APP_EVENT = "IN_APP_EVENT",
}

M.Schedule = {
    type = "structure",
    id = "Schedule",
    members = {
        EndTime = {
            type = "string",
        },
        EventFilter = M.CampaignEventFilter,
        Frequency = {
            type = "string",
        },
        IsLocalTime = {
            type = "boolean",
        },
        QuietTime = M.QuietTime,
        StartTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timezone = {
            type = "string",
        },
    },
}

M.CampaignStatus = {
    SCHEDULED = "SCHEDULED",
    EXECUTING = "EXECUTING",
    PENDING_NEXT_RUN = "PENDING_NEXT_RUN",
    COMPLETED = "COMPLETED",
    PAUSED = "PAUSED",
    DELETED = "DELETED",
    INVALID = "INVALID",
}

M.CampaignState = {
    type = "structure",
    id = "CampaignState",
    members = {
        CampaignStatus = {
            type = "string",
        },
    },
}

M.Template = {
    type = "structure",
    id = "Template",
    members = {
        Name = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.TemplateConfiguration = {
    type = "structure",
    id = "TemplateConfiguration",
    members = {
        EmailTemplate = M.Template,
        PushTemplate = M.Template,
        SMSTemplate = M.Template,
        VoiceTemplate = M.Template,
        InAppTemplate = M.Template,
    },
}

M.TreatmentResource = {
    type = "structure",
    id = "TreatmentResource",
    members = {
        CustomDeliveryConfiguration = M.CustomDeliveryConfiguration,
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageConfiguration = M.MessageConfiguration,
        Schedule = M.Schedule,
        SizePercent = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        State = M.CampaignState,
        TemplateConfiguration = M.TemplateConfiguration,
        TreatmentDescription = {
            type = "string",
        },
        TreatmentName = {
            type = "string",
        },
    },
}

M.CampaignResponse = {
    type = "structure",
    id = "CampaignResponse",
    members = {
        AdditionalTreatments = {
            type = "list",
            member = M.TreatmentResource,
        },
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomDeliveryConfiguration = M.CustomDeliveryConfiguration,
        DefaultState = M.CampaignState,
        Description = {
            type = "string",
        },
        HoldoutPercent = {
            type = "integer",
        },
        Hook = M.CampaignHook,
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsPaused = {
            type = "boolean",
        },
        LastModifiedDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limits = M.CampaignLimits,
        MessageConfiguration = M.MessageConfiguration,
        Name = {
            type = "string",
        },
        Schedule = M.Schedule,
        SegmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SegmentVersion = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        State = M.CampaignState,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateConfiguration = M.TemplateConfiguration,
        TreatmentDescription = {
            type = "string",
        },
        TreatmentName = {
            type = "string",
        },
        Version = {
            type = "integer",
        },
        Priority = {
            type = "integer",
        },
    },
}

M.CampaignsResponse = {
    type = "structure",
    id = "CampaignsResponse",
    members = {
        Item = {
            type = "list",
            member = M.CampaignResponse,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ChannelResponse = {
    type = "structure",
    id = "ChannelResponse",
    members = {
        ApplicationId = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        HasCredential = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        IsArchived = {
            type = "boolean",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Version = {
            type = "integer",
        },
    },
}

M.ChannelsResponse = {
    type = "structure",
    id = "ChannelsResponse",
    members = {
        Channels = {
            type = "map",
            key = { type = "string" },
            value = M.ChannelResponse,
            traits = {
                required = true,
            },
        },
    },
}

M.ClosedDaysRule = {
    type = "structure",
    id = "ClosedDaysRule",
    members = {
        Name = {
            type = "string",
        },
        StartDateTime = {
            type = "string",
        },
        EndDateTime = {
            type = "string",
        },
    },
}

M.ClosedDays = {
    type = "structure",
    id = "ClosedDays",
    members = {
        EMAIL = {
            type = "list",
            member = M.ClosedDaysRule,
        },
        SMS = {
            type = "list",
            member = M.ClosedDaysRule,
        },
        PUSH = {
            type = "list",
            member = M.ClosedDaysRule,
        },
        VOICE = {
            type = "list",
            member = M.ClosedDaysRule,
        },
        CUSTOM = {
            type = "list",
            member = M.ClosedDaysRule,
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
        },
        RequestID = {
            type = "string",
        },
    },
}

M.CreateApplicationRequest = {
    type = "structure",
    id = "CreateApplicationRequest",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateAppInput = {
    type = "structure",
    id = "CreateAppInput",
    members = {
        CreateApplicationRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CreateApplicationRequest }),
    },
}

M.CreateAppOutput = {
    type = "structure",
    id = "CreateAppOutput",
    members = {
        ApplicationResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ApplicationResponse }),
    },
}

M.ForbiddenException = {
    type = "structure",
    id = "ForbiddenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestID = {
            type = "string",
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    id = "InternalServerErrorException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        RequestID = {
            type = "string",
        },
    },
}

M.MethodNotAllowedException = {
    type = "structure",
    id = "MethodNotAllowedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestID = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestID = {
            type = "string",
        },
    },
}

M.PayloadTooLargeException = {
    type = "structure",
    id = "PayloadTooLargeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestID = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestID = {
            type = "string",
        },
    },
}

M.WriteTreatmentResource = {
    type = "structure",
    id = "WriteTreatmentResource",
    members = {
        CustomDeliveryConfiguration = M.CustomDeliveryConfiguration,
        MessageConfiguration = M.MessageConfiguration,
        Schedule = M.Schedule,
        SizePercent = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        TemplateConfiguration = M.TemplateConfiguration,
        TreatmentDescription = {
            type = "string",
        },
        TreatmentName = {
            type = "string",
        },
    },
}

M.WriteCampaignRequest = {
    type = "structure",
    id = "WriteCampaignRequest",
    members = {
        AdditionalTreatments = {
            type = "list",
            member = M.WriteTreatmentResource,
        },
        CustomDeliveryConfiguration = M.CustomDeliveryConfiguration,
        Description = {
            type = "string",
        },
        HoldoutPercent = {
            type = "integer",
        },
        Hook = M.CampaignHook,
        IsPaused = {
            type = "boolean",
        },
        Limits = M.CampaignLimits,
        MessageConfiguration = M.MessageConfiguration,
        Name = {
            type = "string",
        },
        Schedule = M.Schedule,
        SegmentId = {
            type = "string",
        },
        SegmentVersion = {
            type = "integer",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateConfiguration = M.TemplateConfiguration,
        TreatmentDescription = {
            type = "string",
        },
        TreatmentName = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
    },
}

M.CreateCampaignInput = {
    type = "structure",
    id = "CreateCampaignInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteCampaignRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.WriteCampaignRequest }),
    },
}

M.CreateCampaignOutput = {
    type = "structure",
    id = "CreateCampaignOutput",
    members = {
        CampaignResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CampaignResponse }),
    },
}

M.EmailTemplateRequest = {
    type = "structure",
    id = "EmailTemplateRequest",
    members = {
        DefaultSubstitutions = {
            type = "string",
        },
        HtmlPart = {
            type = "string",
        },
        RecommenderId = {
            type = "string",
        },
        Subject = {
            type = "string",
        },
        Headers = {
            type = "list",
            member = M.MessageHeader,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateDescription = {
            type = "string",
        },
        TextPart = {
            type = "string",
        },
    },
}

M.CreateEmailTemplateInput = {
    type = "structure",
    id = "CreateEmailTemplateInput",
    members = {
        EmailTemplateRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EmailTemplateRequest }),
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateTemplateMessageBody = {
    type = "structure",
    id = "CreateTemplateMessageBody",
    members = {
        Arn = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestID = {
            type = "string",
        },
    },
}

M.CreateEmailTemplateOutput = {
    type = "structure",
    id = "CreateEmailTemplateOutput",
    members = {
        CreateTemplateMessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CreateTemplateMessageBody }),
    },
}

M.ExportJobRequest = {
    type = "structure",
    id = "ExportJobRequest",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3UrlPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SegmentId = {
            type = "string",
        },
        SegmentVersion = {
            type = "integer",
        },
    },
}

M.CreateExportJobInput = {
    type = "structure",
    id = "CreateExportJobInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExportJobRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ExportJobRequest }),
    },
}

M.ExportJobResource = {
    type = "structure",
    id = "ExportJobResource",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3UrlPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SegmentId = {
            type = "string",
        },
        SegmentVersion = {
            type = "integer",
        },
    },
}

M.JobStatus = {
    CREATED = "CREATED",
    PREPARING_FOR_INITIALIZATION = "PREPARING_FOR_INITIALIZATION",
    INITIALIZING = "INITIALIZING",
    PROCESSING = "PROCESSING",
    PENDING_JOB = "PENDING_JOB",
    COMPLETING = "COMPLETING",
    COMPLETED = "COMPLETED",
    FAILING = "FAILING",
    FAILED = "FAILED",
}

M.ExportJobResponse = {
    type = "structure",
    id = "ExportJobResponse",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompletedPieces = {
            type = "integer",
        },
        CompletionDate = {
            type = "string",
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportJobResource }),
        FailedPieces = {
            type = "integer",
        },
        Failures = {
            type = "list",
            member = { type = "string" },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TotalFailures = {
            type = "integer",
        },
        TotalPieces = {
            type = "integer",
        },
        TotalProcessed = {
            type = "integer",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateExportJobOutput = {
    type = "structure",
    id = "CreateExportJobOutput",
    members = {
        ExportJobResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ExportJobResponse }),
    },
}

M.Format = {
    CSV = "CSV",
    JSON = "JSON",
}

M.ImportJobRequest = {
    type = "structure",
    id = "ImportJobRequest",
    members = {
        DefineSegment = {
            type = "boolean",
        },
        ExternalId = {
            type = "string",
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegisterEndpoints = {
            type = "boolean",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SegmentId = {
            type = "string",
        },
        SegmentName = {
            type = "string",
        },
    },
}

M.CreateImportJobInput = {
    type = "structure",
    id = "CreateImportJobInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ImportJobRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ImportJobRequest }),
    },
}

M.ImportJobResource = {
    type = "structure",
    id = "ImportJobResource",
    members = {
        DefineSegment = {
            type = "boolean",
        },
        ExternalId = {
            type = "string",
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegisterEndpoints = {
            type = "boolean",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SegmentId = {
            type = "string",
        },
        SegmentName = {
            type = "string",
        },
    },
}

M.ImportJobResponse = {
    type = "structure",
    id = "ImportJobResponse",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompletedPieces = {
            type = "integer",
        },
        CompletionDate = {
            type = "string",
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImportJobResource }),
        FailedPieces = {
            type = "integer",
        },
        Failures = {
            type = "list",
            member = { type = "string" },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TotalFailures = {
            type = "integer",
        },
        TotalPieces = {
            type = "integer",
        },
        TotalProcessed = {
            type = "integer",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateImportJobOutput = {
    type = "structure",
    id = "CreateImportJobOutput",
    members = {
        ImportJobResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ImportJobResponse }),
    },
}

M.InAppTemplateRequest = {
    type = "structure",
    id = "InAppTemplateRequest",
    members = {
        Content = {
            type = "list",
            member = M.InAppMessageContent,
        },
        CustomConfig = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Layout = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateDescription = {
            type = "string",
        },
    },
}

M.CreateInAppTemplateInput = {
    type = "structure",
    id = "CreateInAppTemplateInput",
    members = {
        InAppTemplateRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.InAppTemplateRequest }),
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TemplateCreateMessageBody = {
    type = "structure",
    id = "TemplateCreateMessageBody",
    members = {
        Arn = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        RequestID = {
            type = "string",
        },
    },
}

M.CreateInAppTemplateOutput = {
    type = "structure",
    id = "CreateInAppTemplateOutput",
    members = {
        TemplateCreateMessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.TemplateCreateMessageBody }),
    },
}

M.JourneyChannelSettings = {
    type = "structure",
    id = "JourneyChannelSettings",
    members = {
        ConnectCampaignArn = {
            type = "string",
        },
        ConnectCampaignExecutionRoleArn = {
            type = "string",
        },
    },
}

M.JourneyLimits = {
    type = "structure",
    id = "JourneyLimits",
    members = {
        DailyCap = {
            type = "integer",
        },
        EndpointReentryCap = {
            type = "integer",
        },
        MessagesPerSecond = {
            type = "integer",
        },
        EndpointReentryInterval = {
            type = "string",
        },
        TimeframeCap = M.JourneyTimeframeCap,
        TotalCap = {
            type = "integer",
        },
    },
}

M.DayOfWeek = {
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
    SUNDAY = "SUNDAY",
}

M.OpenHoursRule = {
    type = "structure",
    id = "OpenHoursRule",
    members = {
        StartTime = {
            type = "string",
        },
        EndTime = {
            type = "string",
        },
    },
}

M.OpenHours = {
    type = "structure",
    id = "OpenHours",
    members = {
        EMAIL = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        SMS = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        PUSH = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        VOICE = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        CUSTOM = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.JourneySchedule = {
    type = "structure",
    id = "JourneySchedule",
    members = {
        EndTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Timezone = {
            type = "string",
        },
    },
}

M.EventFilter = {
    type = "structure",
    id = "EventFilter",
    members = {
        Dimensions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventDimensions }),
        FilterType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventStartCondition = {
    type = "structure",
    id = "EventStartCondition",
    members = {
        EventFilter = M.EventFilter,
        SegmentId = {
            type = "string",
        },
    },
}

M.StartCondition = {
    type = "structure",
    id = "StartCondition",
    members = {
        Description = {
            type = "string",
        },
        EventStartCondition = M.EventStartCondition,
        SegmentStartCondition = M.SegmentCondition,
    },
}

M.State = {
    DRAFT = "DRAFT",
    ACTIVE = "ACTIVE",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
    CLOSED = "CLOSED",
    PAUSED = "PAUSED",
}

M.WriteJourneyRequest = {
    type = "structure",
    id = "WriteJourneyRequest",
    members = {
        Activities = {
            type = "map",
            key = { type = "string" },
            value = M.Activity,
        },
        CreationDate = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Limits = M.JourneyLimits,
        LocalTime = {
            type = "boolean",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuietTime = M.QuietTime,
        RefreshFrequency = {
            type = "string",
        },
        Schedule = M.JourneySchedule,
        StartActivity = {
            type = "string",
        },
        StartCondition = M.StartCondition,
        State = {
            type = "string",
        },
        WaitForQuietTime = {
            type = "boolean",
        },
        RefreshOnSegmentUpdate = {
            type = "boolean",
        },
        JourneyChannelSettings = M.JourneyChannelSettings,
        SendingSchedule = {
            type = "boolean",
        },
        OpenHours = M.OpenHours,
        ClosedDays = M.ClosedDays,
        TimezoneEstimationMethods = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateJourneyInput = {
    type = "structure",
    id = "CreateJourneyInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteJourneyRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.WriteJourneyRequest }),
    },
}

M.JourneyResponse = {
    type = "structure",
    id = "JourneyResponse",
    members = {
        Activities = {
            type = "map",
            key = { type = "string" },
            value = M.Activity,
        },
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationDate = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedDate = {
            type = "string",
        },
        Limits = M.JourneyLimits,
        LocalTime = {
            type = "boolean",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuietTime = M.QuietTime,
        RefreshFrequency = {
            type = "string",
        },
        Schedule = M.JourneySchedule,
        StartActivity = {
            type = "string",
        },
        StartCondition = M.StartCondition,
        State = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        WaitForQuietTime = {
            type = "boolean",
        },
        RefreshOnSegmentUpdate = {
            type = "boolean",
        },
        JourneyChannelSettings = M.JourneyChannelSettings,
        SendingSchedule = {
            type = "boolean",
        },
        OpenHours = M.OpenHours,
        ClosedDays = M.ClosedDays,
        TimezoneEstimationMethods = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateJourneyOutput = {
    type = "structure",
    id = "CreateJourneyOutput",
    members = {
        JourneyResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneyResponse }),
    },
}

M.DefaultPushNotificationTemplate = {
    type = "structure",
    id = "DefaultPushNotificationTemplate",
    members = {
        Action = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        Sound = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.PushNotificationTemplateRequest = {
    type = "structure",
    id = "PushNotificationTemplateRequest",
    members = {
        ADM = M.AndroidPushNotificationTemplate,
        APNS = M.APNSPushNotificationTemplate,
        Baidu = M.AndroidPushNotificationTemplate,
        Default = M.DefaultPushNotificationTemplate,
        DefaultSubstitutions = {
            type = "string",
        },
        GCM = M.AndroidPushNotificationTemplate,
        RecommenderId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateDescription = {
            type = "string",
        },
    },
}

M.CreatePushTemplateInput = {
    type = "structure",
    id = "CreatePushTemplateInput",
    members = {
        PushNotificationTemplateRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.PushNotificationTemplateRequest }),
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreatePushTemplateOutput = {
    type = "structure",
    id = "CreatePushTemplateOutput",
    members = {
        CreateTemplateMessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CreateTemplateMessageBody }),
    },
}

M.CreateRecommenderConfigurationShape = {
    type = "structure",
    id = "CreateRecommenderConfigurationShape",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RecommendationProviderIdType = {
            type = "string",
        },
        RecommendationProviderRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommendationProviderUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommendationTransformerUri = {
            type = "string",
        },
        RecommendationsDisplayName = {
            type = "string",
        },
        RecommendationsPerMessage = {
            type = "integer",
        },
    },
}

M.CreateRecommenderConfigurationInput = {
    type = "structure",
    id = "CreateRecommenderConfigurationInput",
    members = {
        CreateRecommenderConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CreateRecommenderConfigurationShape }),
    },
}

M.RecommenderConfigurationResponse = {
    type = "structure",
    id = "RecommenderConfigurationResponse",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        RecommendationProviderIdType = {
            type = "string",
        },
        RecommendationProviderRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommendationProviderUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommendationTransformerUri = {
            type = "string",
        },
        RecommendationsDisplayName = {
            type = "string",
        },
        RecommendationsPerMessage = {
            type = "integer",
        },
    },
}

M.CreateRecommenderConfigurationOutput = {
    type = "structure",
    id = "CreateRecommenderConfigurationOutput",
    members = {
        RecommenderConfigurationResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RecommenderConfigurationResponse }),
    },
}

M.SegmentReference = {
    type = "structure",
    id = "SegmentReference",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
        },
    },
}

M.SourceType = {
    ALL = "ALL",
    ANY = "ANY",
    NONE = "NONE",
}

M.Type = {
    ALL = "ALL",
    ANY = "ANY",
    NONE = "NONE",
}

M.SegmentGroup = {
    type = "structure",
    id = "SegmentGroup",
    members = {
        Dimensions = {
            type = "list",
            member = M.SegmentDimensions,
        },
        SourceSegments = {
            type = "list",
            member = M.SegmentReference,
        },
        SourceType = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.Include = {
    ALL = "ALL",
    ANY = "ANY",
    NONE = "NONE",
}

M.SegmentGroupList = {
    type = "structure",
    id = "SegmentGroupList",
    members = {
        Groups = {
            type = "list",
            member = M.SegmentGroup,
        },
        Include = {
            type = "string",
        },
    },
}

M.WriteSegmentRequest = {
    type = "structure",
    id = "WriteSegmentRequest",
    members = {
        Dimensions = M.SegmentDimensions,
        Name = {
            type = "string",
        },
        SegmentGroups = M.SegmentGroupList,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateSegmentInput = {
    type = "structure",
    id = "CreateSegmentInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteSegmentRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.WriteSegmentRequest }),
    },
}

M.SegmentImportResource = {
    type = "structure",
    id = "SegmentImportResource",
    members = {
        ChannelCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        ExternalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Size = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.SegmentType = {
    DIMENSIONAL = "DIMENSIONAL",
    IMPORT = "IMPORT",
}

M.SegmentResponse = {
    type = "structure",
    id = "SegmentResponse",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = M.SegmentDimensions,
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImportDefinition = M.SegmentImportResource,
        LastModifiedDate = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        SegmentGroups = M.SegmentGroupList,
        SegmentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        Version = {
            type = "integer",
        },
    },
}

M.CreateSegmentOutput = {
    type = "structure",
    id = "CreateSegmentOutput",
    members = {
        SegmentResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SegmentResponse }),
    },
}

M.SMSTemplateRequest = {
    type = "structure",
    id = "SMSTemplateRequest",
    members = {
        Body = {
            type = "string",
        },
        DefaultSubstitutions = {
            type = "string",
        },
        RecommenderId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateDescription = {
            type = "string",
        },
    },
}

M.CreateSmsTemplateInput = {
    type = "structure",
    id = "CreateSmsTemplateInput",
    members = {
        SMSTemplateRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SMSTemplateRequest }),
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateSmsTemplateOutput = {
    type = "structure",
    id = "CreateSmsTemplateOutput",
    members = {
        CreateTemplateMessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CreateTemplateMessageBody }),
    },
}

M.VoiceTemplateRequest = {
    type = "structure",
    id = "VoiceTemplateRequest",
    members = {
        Body = {
            type = "string",
        },
        DefaultSubstitutions = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateDescription = {
            type = "string",
        },
        VoiceId = {
            type = "string",
        },
    },
}

M.CreateVoiceTemplateInput = {
    type = "structure",
    id = "CreateVoiceTemplateInput",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VoiceTemplateRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VoiceTemplateRequest }),
    },
}

M.CreateVoiceTemplateOutput = {
    type = "structure",
    id = "CreateVoiceTemplateOutput",
    members = {
        CreateTemplateMessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CreateTemplateMessageBody }),
    },
}

M.DefaultMessage = {
    type = "structure",
    id = "DefaultMessage",
    members = {
        Body = {
            type = "string",
        },
        Substitutions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.DefaultPushNotificationMessage = {
    type = "structure",
    id = "DefaultPushNotificationMessage",
    members = {
        Action = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        Data = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        SilentPush = {
            type = "boolean",
        },
        Substitutions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Title = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.DeleteAdmChannelInput = {
    type = "structure",
    id = "DeleteAdmChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAdmChannelOutput = {
    type = "structure",
    id = "DeleteAdmChannelOutput",
    members = {
        ADMChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ADMChannelResponse }),
    },
}

M.DeleteApnsChannelInput = {
    type = "structure",
    id = "DeleteApnsChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApnsChannelOutput = {
    type = "structure",
    id = "DeleteApnsChannelOutput",
    members = {
        APNSChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSChannelResponse }),
    },
}

M.DeleteApnsSandboxChannelInput = {
    type = "structure",
    id = "DeleteApnsSandboxChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApnsSandboxChannelOutput = {
    type = "structure",
    id = "DeleteApnsSandboxChannelOutput",
    members = {
        APNSSandboxChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSSandboxChannelResponse }),
    },
}

M.DeleteApnsVoipChannelInput = {
    type = "structure",
    id = "DeleteApnsVoipChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApnsVoipChannelOutput = {
    type = "structure",
    id = "DeleteApnsVoipChannelOutput",
    members = {
        APNSVoipChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSVoipChannelResponse }),
    },
}

M.DeleteApnsVoipSandboxChannelInput = {
    type = "structure",
    id = "DeleteApnsVoipSandboxChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApnsVoipSandboxChannelOutput = {
    type = "structure",
    id = "DeleteApnsVoipSandboxChannelOutput",
    members = {
        APNSVoipSandboxChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSVoipSandboxChannelResponse }),
    },
}

M.DeleteAppInput = {
    type = "structure",
    id = "DeleteAppInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAppOutput = {
    type = "structure",
    id = "DeleteAppOutput",
    members = {
        ApplicationResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ApplicationResponse }),
    },
}

M.DeleteBaiduChannelInput = {
    type = "structure",
    id = "DeleteBaiduChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBaiduChannelOutput = {
    type = "structure",
    id = "DeleteBaiduChannelOutput",
    members = {
        BaiduChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.BaiduChannelResponse }),
    },
}

M.DeleteCampaignInput = {
    type = "structure",
    id = "DeleteCampaignInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CampaignId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCampaignOutput = {
    type = "structure",
    id = "DeleteCampaignOutput",
    members = {
        CampaignResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CampaignResponse }),
    },
}

M.DeleteEmailChannelInput = {
    type = "structure",
    id = "DeleteEmailChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EmailChannelResponse = {
    type = "structure",
    id = "EmailChannelResponse",
    members = {
        ApplicationId = {
            type = "string",
        },
        ConfigurationSet = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        FromAddress = {
            type = "string",
        },
        HasCredential = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        Identity = {
            type = "string",
        },
        IsArchived = {
            type = "boolean",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        MessagesPerSecond = {
            type = "integer",
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        OrchestrationSendingRoleArn = {
            type = "string",
        },
        Version = {
            type = "integer",
        },
    },
}

M.DeleteEmailChannelOutput = {
    type = "structure",
    id = "DeleteEmailChannelOutput",
    members = {
        EmailChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EmailChannelResponse }),
    },
}

M.DeleteEmailTemplateInput = {
    type = "structure",
    id = "DeleteEmailTemplateInput",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.MessageBody = {
    type = "structure",
    id = "MessageBody",
    members = {
        Message = {
            type = "string",
        },
        RequestID = {
            type = "string",
        },
    },
}

M.DeleteEmailTemplateOutput = {
    type = "structure",
    id = "DeleteEmailTemplateOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.DeleteEndpointInput = {
    type = "structure",
    id = "DeleteEndpointInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EndpointDemographic = {
    type = "structure",
    id = "EndpointDemographic",
    members = {
        AppVersion = {
            type = "string",
        },
        Locale = {
            type = "string",
        },
        Make = {
            type = "string",
        },
        Model = {
            type = "string",
        },
        ModelVersion = {
            type = "string",
        },
        Platform = {
            type = "string",
        },
        PlatformVersion = {
            type = "string",
        },
        Timezone = {
            type = "string",
        },
    },
}

M.EndpointLocation = {
    type = "structure",
    id = "EndpointLocation",
    members = {
        City = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        Latitude = {
            type = "double",
        },
        Longitude = {
            type = "double",
        },
        PostalCode = {
            type = "string",
        },
        Region = {
            type = "string",
        },
    },
}

M.EndpointUser = {
    type = "structure",
    id = "EndpointUser",
    members = {
        UserAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        UserId = {
            type = "string",
        },
    },
}

M.EndpointResponse = {
    type = "structure",
    id = "EndpointResponse",
    members = {
        Address = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        ChannelType = {
            type = "string",
        },
        CohortId = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        Demographic = M.EndpointDemographic,
        EffectiveDate = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Location = M.EndpointLocation,
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
        OptOut = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        User = M.EndpointUser,
    },
}

M.DeleteEndpointOutput = {
    type = "structure",
    id = "DeleteEndpointOutput",
    members = {
        EndpointResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EndpointResponse }),
    },
}

M.DeleteEventStreamInput = {
    type = "structure",
    id = "DeleteEventStreamInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EventStream = {
    type = "structure",
    id = "EventStream",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationStreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExternalId = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        LastUpdatedBy = {
            type = "string",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEventStreamOutput = {
    type = "structure",
    id = "DeleteEventStreamOutput",
    members = {
        EventStream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EventStream }),
    },
}

M.DeleteGcmChannelInput = {
    type = "structure",
    id = "DeleteGcmChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GCMChannelResponse = {
    type = "structure",
    id = "GCMChannelResponse",
    members = {
        ApplicationId = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        Credential = {
            type = "string",
        },
        DefaultAuthenticationMethod = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        HasCredential = {
            type = "boolean",
        },
        HasFcmServiceCredentials = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        IsArchived = {
            type = "boolean",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
        },
    },
}

M.DeleteGcmChannelOutput = {
    type = "structure",
    id = "DeleteGcmChannelOutput",
    members = {
        GCMChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.GCMChannelResponse }),
    },
}

M.DeleteInAppTemplateInput = {
    type = "structure",
    id = "DeleteInAppTemplateInput",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.DeleteInAppTemplateOutput = {
    type = "structure",
    id = "DeleteInAppTemplateOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.DeleteJourneyInput = {
    type = "structure",
    id = "DeleteJourneyInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteJourneyOutput = {
    type = "structure",
    id = "DeleteJourneyOutput",
    members = {
        JourneyResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneyResponse }),
    },
}

M.DeletePushTemplateInput = {
    type = "structure",
    id = "DeletePushTemplateInput",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.DeletePushTemplateOutput = {
    type = "structure",
    id = "DeletePushTemplateOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.DeleteRecommenderConfigurationInput = {
    type = "structure",
    id = "DeleteRecommenderConfigurationInput",
    members = {
        RecommenderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRecommenderConfigurationOutput = {
    type = "structure",
    id = "DeleteRecommenderConfigurationOutput",
    members = {
        RecommenderConfigurationResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RecommenderConfigurationResponse }),
    },
}

M.DeleteSegmentInput = {
    type = "structure",
    id = "DeleteSegmentInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SegmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSegmentOutput = {
    type = "structure",
    id = "DeleteSegmentOutput",
    members = {
        SegmentResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SegmentResponse }),
    },
}

M.DeleteSmsChannelInput = {
    type = "structure",
    id = "DeleteSmsChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SMSChannelResponse = {
    type = "structure",
    id = "SMSChannelResponse",
    members = {
        ApplicationId = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        HasCredential = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        IsArchived = {
            type = "boolean",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PromotionalMessagesPerSecond = {
            type = "integer",
        },
        SenderId = {
            type = "string",
        },
        ShortCode = {
            type = "string",
        },
        TransactionalMessagesPerSecond = {
            type = "integer",
        },
        Version = {
            type = "integer",
        },
    },
}

M.DeleteSmsChannelOutput = {
    type = "structure",
    id = "DeleteSmsChannelOutput",
    members = {
        SMSChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SMSChannelResponse }),
    },
}

M.DeleteSmsTemplateInput = {
    type = "structure",
    id = "DeleteSmsTemplateInput",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.DeleteSmsTemplateOutput = {
    type = "structure",
    id = "DeleteSmsTemplateOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.DeleteUserEndpointsInput = {
    type = "structure",
    id = "DeleteUserEndpointsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EndpointsResponse = {
    type = "structure",
    id = "EndpointsResponse",
    members = {
        Item = {
            type = "list",
            member = M.EndpointResponse,
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserEndpointsOutput = {
    type = "structure",
    id = "DeleteUserEndpointsOutput",
    members = {
        EndpointsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EndpointsResponse }),
    },
}

M.DeleteVoiceChannelInput = {
    type = "structure",
    id = "DeleteVoiceChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.VoiceChannelResponse = {
    type = "structure",
    id = "VoiceChannelResponse",
    members = {
        ApplicationId = {
            type = "string",
        },
        CreationDate = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        HasCredential = {
            type = "boolean",
        },
        Id = {
            type = "string",
        },
        IsArchived = {
            type = "boolean",
        },
        LastModifiedBy = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
        },
    },
}

M.DeleteVoiceChannelOutput = {
    type = "structure",
    id = "DeleteVoiceChannelOutput",
    members = {
        VoiceChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VoiceChannelResponse }),
    },
}

M.DeleteVoiceTemplateInput = {
    type = "structure",
    id = "DeleteVoiceTemplateInput",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.DeleteVoiceTemplateOutput = {
    type = "structure",
    id = "DeleteVoiceTemplateOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.DeliveryStatus = {
    SUCCESSFUL = "SUCCESSFUL",
    THROTTLED = "THROTTLED",
    TEMPORARY_FAILURE = "TEMPORARY_FAILURE",
    PERMANENT_FAILURE = "PERMANENT_FAILURE",
    UNKNOWN_FAILURE = "UNKNOWN_FAILURE",
    OPT_OUT = "OPT_OUT",
    DUPLICATE = "DUPLICATE",
}

M.RawEmail = {
    type = "structure",
    id = "RawEmail",
    members = {
        Data = {
            type = "blob",
        },
    },
}

M.SimpleEmailPart = {
    type = "structure",
    id = "SimpleEmailPart",
    members = {
        Charset = {
            type = "string",
        },
        Data = {
            type = "string",
        },
    },
}

M.SimpleEmail = {
    type = "structure",
    id = "SimpleEmail",
    members = {
        HtmlPart = M.SimpleEmailPart,
        Subject = M.SimpleEmailPart,
        TextPart = M.SimpleEmailPart,
        Headers = {
            type = "list",
            member = M.MessageHeader,
        },
    },
}

M.EmailMessage = {
    type = "structure",
    id = "EmailMessage",
    members = {
        Body = {
            type = "string",
        },
        FeedbackForwardingAddress = {
            type = "string",
        },
        FromAddress = {
            type = "string",
        },
        RawEmail = M.RawEmail,
        ReplyToAddresses = {
            type = "list",
            member = { type = "string" },
        },
        SimpleEmail = M.SimpleEmail,
        Substitutions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.GCMMessage = {
    type = "structure",
    id = "GCMMessage",
    members = {
        Action = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        CollapseKey = {
            type = "string",
        },
        Data = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        IconReference = {
            type = "string",
        },
        ImageIconUrl = {
            type = "string",
        },
        ImageUrl = {
            type = "string",
        },
        PreferredAuthenticationMethod = {
            type = "string",
        },
        Priority = {
            type = "string",
        },
        RawContent = {
            type = "string",
        },
        RestrictedPackageName = {
            type = "string",
        },
        SilentPush = {
            type = "boolean",
        },
        SmallImageIconUrl = {
            type = "string",
        },
        Sound = {
            type = "string",
        },
        Substitutions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        TimeToLive = {
            type = "integer",
        },
        Title = {
            type = "string",
        },
        Url = {
            type = "string",
        },
    },
}

M.SMSMessage = {
    type = "structure",
    id = "SMSMessage",
    members = {
        Body = {
            type = "string",
        },
        Keyword = {
            type = "string",
        },
        MediaUrl = {
            type = "string",
        },
        MessageType = {
            type = "string",
        },
        OriginationNumber = {
            type = "string",
        },
        SenderId = {
            type = "string",
        },
        Substitutions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        EntityId = {
            type = "string",
        },
        TemplateId = {
            type = "string",
        },
    },
}

M.VoiceMessage = {
    type = "structure",
    id = "VoiceMessage",
    members = {
        Body = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        OriginationNumber = {
            type = "string",
        },
        Substitutions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        VoiceId = {
            type = "string",
        },
    },
}

M.DirectMessageConfiguration = {
    type = "structure",
    id = "DirectMessageConfiguration",
    members = {
        ADMMessage = M.ADMMessage,
        APNSMessage = M.APNSMessage,
        BaiduMessage = M.BaiduMessage,
        DefaultMessage = M.DefaultMessage,
        DefaultPushNotificationMessage = M.DefaultPushNotificationMessage,
        EmailMessage = M.EmailMessage,
        GCMMessage = M.GCMMessage,
        SMSMessage = M.SMSMessage,
        VoiceMessage = M.VoiceMessage,
    },
}

M.EmailChannelRequest = {
    type = "structure",
    id = "EmailChannelRequest",
    members = {
        ConfigurationSet = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        FromAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        OrchestrationSendingRoleArn = {
            type = "string",
        },
    },
}

M.TemplateType = {
    EMAIL = "EMAIL",
    SMS = "SMS",
    VOICE = "VOICE",
    PUSH = "PUSH",
    INAPP = "INAPP",
}

M.EmailTemplateResponse = {
    type = "structure",
    id = "EmailTemplateResponse",
    members = {
        Arn = {
            type = "string",
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultSubstitutions = {
            type = "string",
        },
        HtmlPart = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommenderId = {
            type = "string",
        },
        Subject = {
            type = "string",
        },
        Headers = {
            type = "list",
            member = M.MessageHeader,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateDescription = {
            type = "string",
        },
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextPart = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.EndpointBatchItem = {
    type = "structure",
    id = "EndpointBatchItem",
    members = {
        Address = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        ChannelType = {
            type = "string",
        },
        Demographic = M.EndpointDemographic,
        EffectiveDate = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Location = M.EndpointLocation,
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
        OptOut = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        User = M.EndpointUser,
    },
}

M.EndpointBatchRequest = {
    type = "structure",
    id = "EndpointBatchRequest",
    members = {
        Item = {
            type = "list",
            member = M.EndpointBatchItem,
            traits = {
                required = true,
            },
        },
    },
}

M.EndpointItemResponse = {
    type = "structure",
    id = "EndpointItemResponse",
    members = {
        Message = {
            type = "string",
        },
        StatusCode = {
            type = "integer",
        },
    },
}

M.EndpointMessageResult = {
    type = "structure",
    id = "EndpointMessageResult",
    members = {
        Address = {
            type = "string",
        },
        DeliveryStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageId = {
            type = "string",
        },
        StatusCode = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        StatusMessage = {
            type = "string",
        },
        UpdatedToken = {
            type = "string",
        },
    },
}

M.EndpointRequest = {
    type = "structure",
    id = "EndpointRequest",
    members = {
        Address = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        ChannelType = {
            type = "string",
        },
        Demographic = M.EndpointDemographic,
        EffectiveDate = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        Location = M.EndpointLocation,
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
        OptOut = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        User = M.EndpointUser,
    },
}

M.EndpointSendConfiguration = {
    type = "structure",
    id = "EndpointSendConfiguration",
    members = {
        BodyOverride = {
            type = "string",
        },
        Context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RawContent = {
            type = "string",
        },
        Substitutions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        TitleOverride = {
            type = "string",
        },
    },
}

M.Session = {
    type = "structure",
    id = "Session",
    members = {
        Duration = {
            type = "integer",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTimestamp = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StopTimestamp = {
            type = "string",
        },
    },
}

M.Event = {
    type = "structure",
    id = "Event",
    members = {
        AppPackageName = {
            type = "string",
        },
        AppTitle = {
            type = "string",
        },
        AppVersionCode = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ClientSdkVersion = {
            type = "string",
        },
        EventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
        SdkName = {
            type = "string",
        },
        Session = M.Session,
        Timestamp = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventItemResponse = {
    type = "structure",
    id = "EventItemResponse",
    members = {
        Message = {
            type = "string",
        },
        StatusCode = {
            type = "integer",
        },
    },
}

M.PublicEndpoint = {
    type = "structure",
    id = "PublicEndpoint",
    members = {
        Address = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        ChannelType = {
            type = "string",
        },
        Demographic = M.EndpointDemographic,
        EffectiveDate = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        Location = M.EndpointLocation,
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
        OptOut = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        User = M.EndpointUser,
    },
}

M.EventsBatch = {
    type = "structure",
    id = "EventsBatch",
    members = {
        Endpoint = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PublicEndpoint }),
        Events = {
            type = "map",
            key = { type = "string" },
            value = M.Event,
            traits = {
                required = true,
            },
        },
    },
}

M.EventsRequest = {
    type = "structure",
    id = "EventsRequest",
    members = {
        BatchItem = {
            type = "map",
            key = { type = "string" },
            value = M.EventsBatch,
            traits = {
                required = true,
            },
        },
    },
}

M.ItemResponse = {
    type = "structure",
    id = "ItemResponse",
    members = {
        EndpointItemResponse = M.EndpointItemResponse,
        EventsItemResponse = {
            type = "map",
            key = { type = "string" },
            value = M.EventItemResponse,
        },
    },
}

M.EventsResponse = {
    type = "structure",
    id = "EventsResponse",
    members = {
        Results = {
            type = "map",
            key = { type = "string" },
            value = M.ItemResponse,
        },
    },
}

M.ExportJobsResponse = {
    type = "structure",
    id = "ExportJobsResponse",
    members = {
        Item = {
            type = "list",
            member = M.ExportJobResponse,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GCMChannelRequest = {
    type = "structure",
    id = "GCMChannelRequest",
    members = {
        ApiKey = {
            type = "string",
        },
        DefaultAuthenticationMethod = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        ServiceJson = {
            type = "string",
        },
    },
}

M.GetAdmChannelInput = {
    type = "structure",
    id = "GetAdmChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAdmChannelOutput = {
    type = "structure",
    id = "GetAdmChannelOutput",
    members = {
        ADMChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ADMChannelResponse }),
    },
}

M.GetApnsChannelInput = {
    type = "structure",
    id = "GetApnsChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApnsChannelOutput = {
    type = "structure",
    id = "GetApnsChannelOutput",
    members = {
        APNSChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSChannelResponse }),
    },
}

M.GetApnsSandboxChannelInput = {
    type = "structure",
    id = "GetApnsSandboxChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApnsSandboxChannelOutput = {
    type = "structure",
    id = "GetApnsSandboxChannelOutput",
    members = {
        APNSSandboxChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSSandboxChannelResponse }),
    },
}

M.GetApnsVoipChannelInput = {
    type = "structure",
    id = "GetApnsVoipChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApnsVoipChannelOutput = {
    type = "structure",
    id = "GetApnsVoipChannelOutput",
    members = {
        APNSVoipChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSVoipChannelResponse }),
    },
}

M.GetApnsVoipSandboxChannelInput = {
    type = "structure",
    id = "GetApnsVoipSandboxChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApnsVoipSandboxChannelOutput = {
    type = "structure",
    id = "GetApnsVoipSandboxChannelOutput",
    members = {
        APNSVoipSandboxChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSVoipSandboxChannelResponse }),
    },
}

M.GetAppInput = {
    type = "structure",
    id = "GetAppInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAppOutput = {
    type = "structure",
    id = "GetAppOutput",
    members = {
        ApplicationResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ApplicationResponse }),
    },
}

M.GetApplicationDateRangeKpiInput = {
    type = "structure",
    id = "GetApplicationDateRangeKpiInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                http_query = "end-time",
                timestamp_format = "date-time",
            },
        },
        KpiName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                http_query = "start-time",
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetApplicationDateRangeKpiOutput = {
    type = "structure",
    id = "GetApplicationDateRangeKpiOutput",
    members = {
        ApplicationDateRangeKpiResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ApplicationDateRangeKpiResponse }),
    },
}

M.GetApplicationSettingsInput = {
    type = "structure",
    id = "GetApplicationSettingsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApplicationSettingsOutput = {
    type = "structure",
    id = "GetApplicationSettingsOutput",
    members = {
        ApplicationSettingsResource = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ApplicationSettingsResource }),
    },
}

M.GetAppsInput = {
    type = "structure",
    id = "GetAppsInput",
    members = {
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.GetAppsOutput = {
    type = "structure",
    id = "GetAppsOutput",
    members = {
        ApplicationsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ApplicationsResponse }),
    },
}

M.GetBaiduChannelInput = {
    type = "structure",
    id = "GetBaiduChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBaiduChannelOutput = {
    type = "structure",
    id = "GetBaiduChannelOutput",
    members = {
        BaiduChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.BaiduChannelResponse }),
    },
}

M.GetCampaignInput = {
    type = "structure",
    id = "GetCampaignInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CampaignId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCampaignOutput = {
    type = "structure",
    id = "GetCampaignOutput",
    members = {
        CampaignResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CampaignResponse }),
    },
}

M.GetCampaignActivitiesInput = {
    type = "structure",
    id = "GetCampaignActivitiesInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CampaignId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.GetCampaignActivitiesOutput = {
    type = "structure",
    id = "GetCampaignActivitiesOutput",
    members = {
        ActivitiesResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ActivitiesResponse }),
    },
}

M.GetCampaignDateRangeKpiInput = {
    type = "structure",
    id = "GetCampaignDateRangeKpiInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CampaignId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                http_query = "end-time",
                timestamp_format = "date-time",
            },
        },
        KpiName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                http_query = "start-time",
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetCampaignDateRangeKpiOutput = {
    type = "structure",
    id = "GetCampaignDateRangeKpiOutput",
    members = {
        CampaignDateRangeKpiResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CampaignDateRangeKpiResponse }),
    },
}

M.GetCampaignsInput = {
    type = "structure",
    id = "GetCampaignsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.GetCampaignsOutput = {
    type = "structure",
    id = "GetCampaignsOutput",
    members = {
        CampaignsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CampaignsResponse }),
    },
}

M.GetCampaignVersionInput = {
    type = "structure",
    id = "GetCampaignVersionInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CampaignId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCampaignVersionOutput = {
    type = "structure",
    id = "GetCampaignVersionOutput",
    members = {
        CampaignResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CampaignResponse }),
    },
}

M.GetCampaignVersionsInput = {
    type = "structure",
    id = "GetCampaignVersionsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CampaignId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.GetCampaignVersionsOutput = {
    type = "structure",
    id = "GetCampaignVersionsOutput",
    members = {
        CampaignsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CampaignsResponse }),
    },
}

M.GetChannelsInput = {
    type = "structure",
    id = "GetChannelsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetChannelsOutput = {
    type = "structure",
    id = "GetChannelsOutput",
    members = {
        ChannelsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ChannelsResponse }),
    },
}

M.GetEmailChannelInput = {
    type = "structure",
    id = "GetEmailChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEmailChannelOutput = {
    type = "structure",
    id = "GetEmailChannelOutput",
    members = {
        EmailChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EmailChannelResponse }),
    },
}

M.GetEmailTemplateInput = {
    type = "structure",
    id = "GetEmailTemplateInput",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.GetEmailTemplateOutput = {
    type = "structure",
    id = "GetEmailTemplateOutput",
    members = {
        EmailTemplateResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EmailTemplateResponse }),
    },
}

M.GetEndpointInput = {
    type = "structure",
    id = "GetEndpointInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEndpointOutput = {
    type = "structure",
    id = "GetEndpointOutput",
    members = {
        EndpointResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EndpointResponse }),
    },
}

M.GetEventStreamInput = {
    type = "structure",
    id = "GetEventStreamInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEventStreamOutput = {
    type = "structure",
    id = "GetEventStreamOutput",
    members = {
        EventStream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EventStream }),
    },
}

M.GetExportJobInput = {
    type = "structure",
    id = "GetExportJobInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetExportJobOutput = {
    type = "structure",
    id = "GetExportJobOutput",
    members = {
        ExportJobResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ExportJobResponse }),
    },
}

M.GetExportJobsInput = {
    type = "structure",
    id = "GetExportJobsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.GetExportJobsOutput = {
    type = "structure",
    id = "GetExportJobsOutput",
    members = {
        ExportJobsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ExportJobsResponse }),
    },
}

M.GetGcmChannelInput = {
    type = "structure",
    id = "GetGcmChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGcmChannelOutput = {
    type = "structure",
    id = "GetGcmChannelOutput",
    members = {
        GCMChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.GCMChannelResponse }),
    },
}

M.GetImportJobInput = {
    type = "structure",
    id = "GetImportJobInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetImportJobOutput = {
    type = "structure",
    id = "GetImportJobOutput",
    members = {
        ImportJobResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ImportJobResponse }),
    },
}

M.GetImportJobsInput = {
    type = "structure",
    id = "GetImportJobsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.ImportJobsResponse = {
    type = "structure",
    id = "ImportJobsResponse",
    members = {
        Item = {
            type = "list",
            member = M.ImportJobResponse,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetImportJobsOutput = {
    type = "structure",
    id = "GetImportJobsOutput",
    members = {
        ImportJobsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ImportJobsResponse }),
    },
}

M.GetInAppMessagesInput = {
    type = "structure",
    id = "GetInAppMessagesInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InAppMessage = {
    type = "structure",
    id = "InAppMessage",
    members = {
        Content = {
            type = "list",
            member = M.InAppMessageContent,
        },
        CustomConfig = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Layout = {
            type = "string",
        },
    },
}

M.InAppCampaignSchedule = {
    type = "structure",
    id = "InAppCampaignSchedule",
    members = {
        EndDate = {
            type = "string",
        },
        EventFilter = M.CampaignEventFilter,
        QuietTime = M.QuietTime,
    },
}

M.InAppMessageCampaign = {
    type = "structure",
    id = "InAppMessageCampaign",
    members = {
        CampaignId = {
            type = "string",
        },
        DailyCap = {
            type = "integer",
        },
        InAppMessage = M.InAppMessage,
        Priority = {
            type = "integer",
        },
        Schedule = M.InAppCampaignSchedule,
        SessionCap = {
            type = "integer",
        },
        TotalCap = {
            type = "integer",
        },
        TreatmentId = {
            type = "string",
        },
    },
}

M.InAppMessagesResponse = {
    type = "structure",
    id = "InAppMessagesResponse",
    members = {
        InAppMessageCampaigns = {
            type = "list",
            member = M.InAppMessageCampaign,
        },
    },
}

M.GetInAppMessagesOutput = {
    type = "structure",
    id = "GetInAppMessagesOutput",
    members = {
        InAppMessagesResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.InAppMessagesResponse }),
    },
}

M.GetInAppTemplateInput = {
    type = "structure",
    id = "GetInAppTemplateInput",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.InAppTemplateResponse = {
    type = "structure",
    id = "InAppTemplateResponse",
    members = {
        Arn = {
            type = "string",
        },
        Content = {
            type = "list",
            member = M.InAppMessageContent,
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomConfig = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LastModifiedDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Layout = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateDescription = {
            type = "string",
        },
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
    },
}

M.GetInAppTemplateOutput = {
    type = "structure",
    id = "GetInAppTemplateOutput",
    members = {
        InAppTemplateResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.InAppTemplateResponse }),
    },
}

M.GetJourneyInput = {
    type = "structure",
    id = "GetJourneyInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetJourneyOutput = {
    type = "structure",
    id = "GetJourneyOutput",
    members = {
        JourneyResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneyResponse }),
    },
}

M.GetJourneyDateRangeKpiInput = {
    type = "structure",
    id = "GetJourneyDateRangeKpiInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                http_query = "end-time",
                timestamp_format = "date-time",
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        KpiName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                http_query = "start-time",
                timestamp_format = "date-time",
            },
        },
    },
}

M.JourneyDateRangeKpiResponse = {
    type = "structure",
    id = "JourneyDateRangeKpiResponse",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KpiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KpiResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BaseKpiResult }),
        NextToken = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetJourneyDateRangeKpiOutput = {
    type = "structure",
    id = "GetJourneyDateRangeKpiOutput",
    members = {
        JourneyDateRangeKpiResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneyDateRangeKpiResponse }),
    },
}

M.GetJourneyExecutionActivityMetricsInput = {
    type = "structure",
    id = "GetJourneyExecutionActivityMetricsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JourneyActivityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
    },
}

M.JourneyExecutionActivityMetricsResponse = {
    type = "structure",
    id = "JourneyExecutionActivityMetricsResponse",
    members = {
        ActivityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JourneyActivityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastEvaluatedTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetJourneyExecutionActivityMetricsOutput = {
    type = "structure",
    id = "GetJourneyExecutionActivityMetricsOutput",
    members = {
        JourneyExecutionActivityMetricsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneyExecutionActivityMetricsResponse }),
    },
}

M.GetJourneyExecutionMetricsInput = {
    type = "structure",
    id = "GetJourneyExecutionMetricsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
    },
}

M.JourneyExecutionMetricsResponse = {
    type = "structure",
    id = "JourneyExecutionMetricsResponse",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastEvaluatedTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetJourneyExecutionMetricsOutput = {
    type = "structure",
    id = "GetJourneyExecutionMetricsOutput",
    members = {
        JourneyExecutionMetricsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneyExecutionMetricsResponse }),
    },
}

M.GetJourneyRunExecutionActivityMetricsInput = {
    type = "structure",
    id = "GetJourneyRunExecutionActivityMetricsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JourneyActivityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        RunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.JourneyRunExecutionActivityMetricsResponse = {
    type = "structure",
    id = "JourneyRunExecutionActivityMetricsResponse",
    members = {
        ActivityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JourneyActivityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastEvaluatedTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetJourneyRunExecutionActivityMetricsOutput = {
    type = "structure",
    id = "GetJourneyRunExecutionActivityMetricsOutput",
    members = {
        JourneyRunExecutionActivityMetricsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneyRunExecutionActivityMetricsResponse }),
    },
}

M.GetJourneyRunExecutionMetricsInput = {
    type = "structure",
    id = "GetJourneyRunExecutionMetricsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        RunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.JourneyRunExecutionMetricsResponse = {
    type = "structure",
    id = "JourneyRunExecutionMetricsResponse",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastEvaluatedTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        RunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetJourneyRunExecutionMetricsOutput = {
    type = "structure",
    id = "GetJourneyRunExecutionMetricsOutput",
    members = {
        JourneyRunExecutionMetricsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneyRunExecutionMetricsResponse }),
    },
}

M.GetJourneyRunsInput = {
    type = "structure",
    id = "GetJourneyRunsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.JourneyRunStatus = {
    SCHEDULED = "SCHEDULED",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
}

M.JourneyRunResponse = {
    type = "structure",
    id = "JourneyRunResponse",
    members = {
        CreationTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastUpdateTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunId = {
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

M.JourneyRunsResponse = {
    type = "structure",
    id = "JourneyRunsResponse",
    members = {
        Item = {
            type = "list",
            member = M.JourneyRunResponse,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetJourneyRunsOutput = {
    type = "structure",
    id = "GetJourneyRunsOutput",
    members = {
        JourneyRunsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneyRunsResponse }),
    },
}

M.GetPushTemplateInput = {
    type = "structure",
    id = "GetPushTemplateInput",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.PushNotificationTemplateResponse = {
    type = "structure",
    id = "PushNotificationTemplateResponse",
    members = {
        ADM = M.AndroidPushNotificationTemplate,
        APNS = M.APNSPushNotificationTemplate,
        Arn = {
            type = "string",
        },
        Baidu = M.AndroidPushNotificationTemplate,
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Default = M.DefaultPushNotificationTemplate,
        DefaultSubstitutions = {
            type = "string",
        },
        GCM = M.AndroidPushNotificationTemplate,
        LastModifiedDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommenderId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateDescription = {
            type = "string",
        },
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
    },
}

M.GetPushTemplateOutput = {
    type = "structure",
    id = "GetPushTemplateOutput",
    members = {
        PushNotificationTemplateResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.PushNotificationTemplateResponse }),
    },
}

M.GetRecommenderConfigurationInput = {
    type = "structure",
    id = "GetRecommenderConfigurationInput",
    members = {
        RecommenderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRecommenderConfigurationOutput = {
    type = "structure",
    id = "GetRecommenderConfigurationOutput",
    members = {
        RecommenderConfigurationResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RecommenderConfigurationResponse }),
    },
}

M.GetRecommenderConfigurationsInput = {
    type = "structure",
    id = "GetRecommenderConfigurationsInput",
    members = {
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.ListRecommenderConfigurationsResponse = {
    type = "structure",
    id = "ListRecommenderConfigurationsResponse",
    members = {
        Item = {
            type = "list",
            member = M.RecommenderConfigurationResponse,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetRecommenderConfigurationsOutput = {
    type = "structure",
    id = "GetRecommenderConfigurationsOutput",
    members = {
        ListRecommenderConfigurationsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ListRecommenderConfigurationsResponse }),
    },
}

M.GetSegmentInput = {
    type = "structure",
    id = "GetSegmentInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SegmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSegmentOutput = {
    type = "structure",
    id = "GetSegmentOutput",
    members = {
        SegmentResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SegmentResponse }),
    },
}

M.GetSegmentExportJobsInput = {
    type = "structure",
    id = "GetSegmentExportJobsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        SegmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.GetSegmentExportJobsOutput = {
    type = "structure",
    id = "GetSegmentExportJobsOutput",
    members = {
        ExportJobsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ExportJobsResponse }),
    },
}

M.GetSegmentImportJobsInput = {
    type = "structure",
    id = "GetSegmentImportJobsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        SegmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.GetSegmentImportJobsOutput = {
    type = "structure",
    id = "GetSegmentImportJobsOutput",
    members = {
        ImportJobsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ImportJobsResponse }),
    },
}

M.GetSegmentsInput = {
    type = "structure",
    id = "GetSegmentsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.SegmentsResponse = {
    type = "structure",
    id = "SegmentsResponse",
    members = {
        Item = {
            type = "list",
            member = M.SegmentResponse,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetSegmentsOutput = {
    type = "structure",
    id = "GetSegmentsOutput",
    members = {
        SegmentsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SegmentsResponse }),
    },
}

M.GetSegmentVersionInput = {
    type = "structure",
    id = "GetSegmentVersionInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SegmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSegmentVersionOutput = {
    type = "structure",
    id = "GetSegmentVersionOutput",
    members = {
        SegmentResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SegmentResponse }),
    },
}

M.GetSegmentVersionsInput = {
    type = "structure",
    id = "GetSegmentVersionsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        SegmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.GetSegmentVersionsOutput = {
    type = "structure",
    id = "GetSegmentVersionsOutput",
    members = {
        SegmentsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SegmentsResponse }),
    },
}

M.GetSmsChannelInput = {
    type = "structure",
    id = "GetSmsChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSmsChannelOutput = {
    type = "structure",
    id = "GetSmsChannelOutput",
    members = {
        SMSChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SMSChannelResponse }),
    },
}

M.GetSmsTemplateInput = {
    type = "structure",
    id = "GetSmsTemplateInput",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.SMSTemplateResponse = {
    type = "structure",
    id = "SMSTemplateResponse",
    members = {
        Arn = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultSubstitutions = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommenderId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateDescription = {
            type = "string",
        },
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
    },
}

M.GetSmsTemplateOutput = {
    type = "structure",
    id = "GetSmsTemplateOutput",
    members = {
        SMSTemplateResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SMSTemplateResponse }),
    },
}

M.GetUserEndpointsInput = {
    type = "structure",
    id = "GetUserEndpointsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetUserEndpointsOutput = {
    type = "structure",
    id = "GetUserEndpointsOutput",
    members = {
        EndpointsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EndpointsResponse }),
    },
}

M.GetVoiceChannelInput = {
    type = "structure",
    id = "GetVoiceChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVoiceChannelOutput = {
    type = "structure",
    id = "GetVoiceChannelOutput",
    members = {
        VoiceChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VoiceChannelResponse }),
    },
}

M.GetVoiceTemplateInput = {
    type = "structure",
    id = "GetVoiceTemplateInput",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.VoiceTemplateResponse = {
    type = "structure",
    id = "VoiceTemplateResponse",
    members = {
        Arn = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultSubstitutions = {
            type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateDescription = {
            type = "string",
        },
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
        VoiceId = {
            type = "string",
        },
    },
}

M.GetVoiceTemplateOutput = {
    type = "structure",
    id = "GetVoiceTemplateOutput",
    members = {
        VoiceTemplateResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VoiceTemplateResponse }),
    },
}

M.JourneysResponse = {
    type = "structure",
    id = "JourneysResponse",
    members = {
        Item = {
            type = "list",
            member = M.JourneyResponse,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.JourneyStateRequest = {
    type = "structure",
    id = "JourneyStateRequest",
    members = {
        State = {
            type = "string",
        },
    },
}

M.ListJourneysInput = {
    type = "structure",
    id = "ListJourneysInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        Token = {
            type = "string",
            traits = {
                http_query = "token",
            },
        },
    },
}

M.ListJourneysOutput = {
    type = "structure",
    id = "ListJourneysOutput",
    members = {
        JourneysResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneysResponse }),
    },
}

M.TemplateResponse = {
    type = "structure",
    id = "TemplateResponse",
    members = {
        Arn = {
            type = "string",
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultSubstitutions = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
        TemplateDescription = {
            type = "string",
        },
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
    },
}

M.TemplateVersionResponse = {
    type = "structure",
    id = "TemplateVersionResponse",
    members = {
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultSubstitutions = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateDescription = {
            type = "string",
        },
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
    },
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

M.TagsModel = {
    type = "structure",
    id = "TagsModel",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        TagsModel = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.TagsModel }),
    },
}

M.ListTemplatesInput = {
    type = "structure",
    id = "ListTemplatesInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        Prefix = {
            type = "string",
            traits = {
                http_query = "prefix",
            },
        },
        TemplateType = {
            type = "string",
            traits = {
                http_query = "template-type",
            },
        },
    },
}

M.TemplatesResponse = {
    type = "structure",
    id = "TemplatesResponse",
    members = {
        Item = {
            type = "list",
            member = M.TemplateResponse,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTemplatesOutput = {
    type = "structure",
    id = "ListTemplatesOutput",
    members = {
        TemplatesResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.TemplatesResponse }),
    },
}

M.ListTemplateVersionsInput = {
    type = "structure",
    id = "ListTemplateVersionsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        PageSize = {
            type = "string",
            traits = {
                http_query = "page-size",
            },
        },
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TemplateVersionsResponse = {
    type = "structure",
    id = "TemplateVersionsResponse",
    members = {
        Item = {
            type = "list",
            member = M.TemplateVersionResponse,
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        RequestID = {
            type = "string",
        },
    },
}

M.ListTemplateVersionsOutput = {
    type = "structure",
    id = "ListTemplateVersionsOutput",
    members = {
        TemplateVersionsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.TemplateVersionsResponse }),
    },
}

M.MessageResult = {
    type = "structure",
    id = "MessageResult",
    members = {
        DeliveryStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageId = {
            type = "string",
        },
        StatusCode = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        StatusMessage = {
            type = "string",
        },
        UpdatedToken = {
            type = "string",
        },
    },
}

M.MessageRequest = {
    type = "structure",
    id = "MessageRequest",
    members = {
        Addresses = {
            type = "map",
            key = { type = "string" },
            value = M.AddressConfiguration,
        },
        Context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Endpoints = {
            type = "map",
            key = { type = "string" },
            value = M.EndpointSendConfiguration,
        },
        MessageConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DirectMessageConfiguration }),
        TemplateConfiguration = M.TemplateConfiguration,
        TraceId = {
            type = "string",
        },
    },
}

M.MessageResponse = {
    type = "structure",
    id = "MessageResponse",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointResult = {
            type = "map",
            key = { type = "string" },
            value = M.EndpointMessageResult,
        },
        RequestId = {
            type = "string",
        },
        Result = {
            type = "map",
            key = { type = "string" },
            value = M.MessageResult,
        },
    },
}

M.NumberValidateRequest = {
    type = "structure",
    id = "NumberValidateRequest",
    members = {
        IsoCountryCode = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
    },
}

M.NumberValidateResponse = {
    type = "structure",
    id = "NumberValidateResponse",
    members = {
        Carrier = {
            type = "string",
        },
        City = {
            type = "string",
        },
        CleansedPhoneNumberE164 = {
            type = "string",
        },
        CleansedPhoneNumberNational = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        CountryCodeIso2 = {
            type = "string",
        },
        CountryCodeNumeric = {
            type = "string",
        },
        County = {
            type = "string",
        },
        OriginalCountryCodeIso2 = {
            type = "string",
        },
        OriginalPhoneNumber = {
            type = "string",
        },
        PhoneType = {
            type = "string",
        },
        PhoneTypeCode = {
            type = "integer",
        },
        Timezone = {
            type = "string",
        },
        ZipCode = {
            type = "string",
        },
    },
}

M.PhoneNumberValidateInput = {
    type = "structure",
    id = "PhoneNumberValidateInput",
    members = {
        NumberValidateRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.NumberValidateRequest }),
    },
}

M.PhoneNumberValidateOutput = {
    type = "structure",
    id = "PhoneNumberValidateOutput",
    members = {
        NumberValidateResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.NumberValidateResponse }),
    },
}

M.PutEventsInput = {
    type = "structure",
    id = "PutEventsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventsRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EventsRequest }),
    },
}

M.PutEventsOutput = {
    type = "structure",
    id = "PutEventsOutput",
    members = {
        EventsResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EventsResponse }),
    },
}

M.WriteEventStream = {
    type = "structure",
    id = "WriteEventStream",
    members = {
        DestinationStreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutEventStreamInput = {
    type = "structure",
    id = "PutEventStreamInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteEventStream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.WriteEventStream }),
    },
}

M.PutEventStreamOutput = {
    type = "structure",
    id = "PutEventStreamOutput",
    members = {
        EventStream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EventStream }),
    },
}

M.UpdateAttributesRequest = {
    type = "structure",
    id = "UpdateAttributesRequest",
    members = {
        Blacklist = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemoveAttributesInput = {
    type = "structure",
    id = "RemoveAttributesInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AttributeType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UpdateAttributesRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.UpdateAttributesRequest }),
    },
}

M.RemoveAttributesOutput = {
    type = "structure",
    id = "RemoveAttributesOutput",
    members = {
        AttributesResource = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.AttributesResource }),
    },
}

M.SendMessagesInput = {
    type = "structure",
    id = "SendMessagesInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MessageRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageRequest }),
    },
}

M.SendMessagesOutput = {
    type = "structure",
    id = "SendMessagesOutput",
    members = {
        MessageResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageResponse }),
    },
}

M.SendOTPMessageRequestParameters = {
    type = "structure",
    id = "SendOTPMessageRequestParameters",
    members = {
        AllowedAttempts = {
            type = "integer",
        },
        BrandName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CodeLength = {
            type = "integer",
        },
        DestinationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
            type = "string",
        },
        Language = {
            type = "string",
        },
        OriginationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReferenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateId = {
            type = "string",
        },
        ValidityPeriod = {
            type = "integer",
        },
    },
}

M.SendOTPMessageInput = {
    type = "structure",
    id = "SendOTPMessageInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SendOTPMessageRequestParameters = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SendOTPMessageRequestParameters }),
    },
}

M.SendOTPMessageOutput = {
    type = "structure",
    id = "SendOTPMessageOutput",
    members = {
        MessageResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageResponse }),
    },
}

M.SendUsersMessageRequest = {
    type = "structure",
    id = "SendUsersMessageRequest",
    members = {
        Context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MessageConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DirectMessageConfiguration }),
        TemplateConfiguration = M.TemplateConfiguration,
        TraceId = {
            type = "string",
        },
        Users = {
            type = "map",
            key = { type = "string" },
            value = M.EndpointSendConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.SendUsersMessagesInput = {
    type = "structure",
    id = "SendUsersMessagesInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SendUsersMessageRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SendUsersMessageRequest }),
    },
}

M.SendUsersMessageResponse = {
    type = "structure",
    id = "SendUsersMessageResponse",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestId = {
            type = "string",
        },
        Result = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.SendUsersMessagesOutput = {
    type = "structure",
    id = "SendUsersMessagesOutput",
    members = {
        SendUsersMessageResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SendUsersMessageResponse }),
    },
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
        TagsModel = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.TagsModel }),
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

M.UpdateAdmChannelInput = {
    type = "structure",
    id = "UpdateAdmChannelInput",
    members = {
        ADMChannelRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ADMChannelRequest }),
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateAdmChannelOutput = {
    type = "structure",
    id = "UpdateAdmChannelOutput",
    members = {
        ADMChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ADMChannelResponse }),
    },
}

M.UpdateApnsChannelInput = {
    type = "structure",
    id = "UpdateApnsChannelInput",
    members = {
        APNSChannelRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSChannelRequest }),
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateApnsChannelOutput = {
    type = "structure",
    id = "UpdateApnsChannelOutput",
    members = {
        APNSChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSChannelResponse }),
    },
}

M.UpdateApnsSandboxChannelInput = {
    type = "structure",
    id = "UpdateApnsSandboxChannelInput",
    members = {
        APNSSandboxChannelRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSSandboxChannelRequest }),
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateApnsSandboxChannelOutput = {
    type = "structure",
    id = "UpdateApnsSandboxChannelOutput",
    members = {
        APNSSandboxChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSSandboxChannelResponse }),
    },
}

M.UpdateApnsVoipChannelInput = {
    type = "structure",
    id = "UpdateApnsVoipChannelInput",
    members = {
        APNSVoipChannelRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSVoipChannelRequest }),
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateApnsVoipChannelOutput = {
    type = "structure",
    id = "UpdateApnsVoipChannelOutput",
    members = {
        APNSVoipChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSVoipChannelResponse }),
    },
}

M.UpdateApnsVoipSandboxChannelInput = {
    type = "structure",
    id = "UpdateApnsVoipSandboxChannelInput",
    members = {
        APNSVoipSandboxChannelRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSVoipSandboxChannelRequest }),
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateApnsVoipSandboxChannelOutput = {
    type = "structure",
    id = "UpdateApnsVoipSandboxChannelOutput",
    members = {
        APNSVoipSandboxChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.APNSVoipSandboxChannelResponse }),
    },
}

M.WriteApplicationSettingsRequest = {
    type = "structure",
    id = "WriteApplicationSettingsRequest",
    members = {
        CampaignHook = M.CampaignHook,
        CloudWatchMetricsEnabled = {
            type = "boolean",
        },
        EventTaggingEnabled = {
            type = "boolean",
        },
        Limits = M.CampaignLimits,
        QuietTime = M.QuietTime,
        JourneyLimits = M.ApplicationSettingsJourneyLimits,
    },
}

M.UpdateApplicationSettingsInput = {
    type = "structure",
    id = "UpdateApplicationSettingsInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteApplicationSettingsRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.WriteApplicationSettingsRequest }),
    },
}

M.UpdateApplicationSettingsOutput = {
    type = "structure",
    id = "UpdateApplicationSettingsOutput",
    members = {
        ApplicationSettingsResource = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ApplicationSettingsResource }),
    },
}

M.UpdateBaiduChannelInput = {
    type = "structure",
    id = "UpdateBaiduChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BaiduChannelRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.BaiduChannelRequest }),
    },
}

M.UpdateBaiduChannelOutput = {
    type = "structure",
    id = "UpdateBaiduChannelOutput",
    members = {
        BaiduChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.BaiduChannelResponse }),
    },
}

M.UpdateCampaignInput = {
    type = "structure",
    id = "UpdateCampaignInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CampaignId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteCampaignRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.WriteCampaignRequest }),
    },
}

M.UpdateCampaignOutput = {
    type = "structure",
    id = "UpdateCampaignOutput",
    members = {
        CampaignResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CampaignResponse }),
    },
}

M.UpdateEmailChannelInput = {
    type = "structure",
    id = "UpdateEmailChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailChannelRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EmailChannelRequest }),
    },
}

M.UpdateEmailChannelOutput = {
    type = "structure",
    id = "UpdateEmailChannelOutput",
    members = {
        EmailChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EmailChannelResponse }),
    },
}

M.UpdateEmailTemplateInput = {
    type = "structure",
    id = "UpdateEmailTemplateInput",
    members = {
        CreateNewVersion = {
            type = "boolean",
            traits = {
                http_query = "create-new-version",
            },
        },
        EmailTemplateRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EmailTemplateRequest }),
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.UpdateEmailTemplateOutput = {
    type = "structure",
    id = "UpdateEmailTemplateOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.UpdateEndpointInput = {
    type = "structure",
    id = "UpdateEndpointInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndpointRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EndpointRequest }),
    },
}

M.UpdateEndpointOutput = {
    type = "structure",
    id = "UpdateEndpointOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.UpdateEndpointsBatchInput = {
    type = "structure",
    id = "UpdateEndpointsBatchInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndpointBatchRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.EndpointBatchRequest }),
    },
}

M.UpdateEndpointsBatchOutput = {
    type = "structure",
    id = "UpdateEndpointsBatchOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.UpdateGcmChannelInput = {
    type = "structure",
    id = "UpdateGcmChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GCMChannelRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.GCMChannelRequest }),
    },
}

M.UpdateGcmChannelOutput = {
    type = "structure",
    id = "UpdateGcmChannelOutput",
    members = {
        GCMChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.GCMChannelResponse }),
    },
}

M.UpdateInAppTemplateInput = {
    type = "structure",
    id = "UpdateInAppTemplateInput",
    members = {
        CreateNewVersion = {
            type = "boolean",
            traits = {
                http_query = "create-new-version",
            },
        },
        InAppTemplateRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.InAppTemplateRequest }),
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.UpdateInAppTemplateOutput = {
    type = "structure",
    id = "UpdateInAppTemplateOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.UpdateJourneyInput = {
    type = "structure",
    id = "UpdateJourneyInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteJourneyRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.WriteJourneyRequest }),
    },
}

M.UpdateJourneyOutput = {
    type = "structure",
    id = "UpdateJourneyOutput",
    members = {
        JourneyResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneyResponse }),
    },
}

M.UpdateJourneyStateInput = {
    type = "structure",
    id = "UpdateJourneyStateInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JourneyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        JourneyStateRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneyStateRequest }),
    },
}

M.UpdateJourneyStateOutput = {
    type = "structure",
    id = "UpdateJourneyStateOutput",
    members = {
        JourneyResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.JourneyResponse }),
    },
}

M.UpdatePushTemplateInput = {
    type = "structure",
    id = "UpdatePushTemplateInput",
    members = {
        CreateNewVersion = {
            type = "boolean",
            traits = {
                http_query = "create-new-version",
            },
        },
        PushNotificationTemplateRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.PushNotificationTemplateRequest }),
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.UpdatePushTemplateOutput = {
    type = "structure",
    id = "UpdatePushTemplateOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.UpdateRecommenderConfigurationShape = {
    type = "structure",
    id = "UpdateRecommenderConfigurationShape",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        RecommendationProviderIdType = {
            type = "string",
        },
        RecommendationProviderRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommendationProviderUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecommendationTransformerUri = {
            type = "string",
        },
        RecommendationsDisplayName = {
            type = "string",
        },
        RecommendationsPerMessage = {
            type = "integer",
        },
    },
}

M.UpdateRecommenderConfigurationInput = {
    type = "structure",
    id = "UpdateRecommenderConfigurationInput",
    members = {
        RecommenderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UpdateRecommenderConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.UpdateRecommenderConfigurationShape }),
    },
}

M.UpdateRecommenderConfigurationOutput = {
    type = "structure",
    id = "UpdateRecommenderConfigurationOutput",
    members = {
        RecommenderConfigurationResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.RecommenderConfigurationResponse }),
    },
}

M.UpdateSegmentInput = {
    type = "structure",
    id = "UpdateSegmentInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SegmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteSegmentRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.WriteSegmentRequest }),
    },
}

M.UpdateSegmentOutput = {
    type = "structure",
    id = "UpdateSegmentOutput",
    members = {
        SegmentResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SegmentResponse }),
    },
}

M.SMSChannelRequest = {
    type = "structure",
    id = "SMSChannelRequest",
    members = {
        Enabled = {
            type = "boolean",
        },
        SenderId = {
            type = "string",
        },
        ShortCode = {
            type = "string",
        },
    },
}

M.UpdateSmsChannelInput = {
    type = "structure",
    id = "UpdateSmsChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SMSChannelRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SMSChannelRequest }),
    },
}

M.UpdateSmsChannelOutput = {
    type = "structure",
    id = "UpdateSmsChannelOutput",
    members = {
        SMSChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SMSChannelResponse }),
    },
}

M.UpdateSmsTemplateInput = {
    type = "structure",
    id = "UpdateSmsTemplateInput",
    members = {
        CreateNewVersion = {
            type = "boolean",
            traits = {
                http_query = "create-new-version",
            },
        },
        SMSTemplateRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SMSTemplateRequest }),
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.UpdateSmsTemplateOutput = {
    type = "structure",
    id = "UpdateSmsTemplateOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.TemplateActiveVersionRequest = {
    type = "structure",
    id = "TemplateActiveVersionRequest",
    members = {
        Version = {
            type = "string",
        },
    },
}

M.UpdateTemplateActiveVersionInput = {
    type = "structure",
    id = "UpdateTemplateActiveVersionInput",
    members = {
        TemplateActiveVersionRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.TemplateActiveVersionRequest }),
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateTemplateActiveVersionOutput = {
    type = "structure",
    id = "UpdateTemplateActiveVersionOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.VoiceChannelRequest = {
    type = "structure",
    id = "VoiceChannelRequest",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.UpdateVoiceChannelInput = {
    type = "structure",
    id = "UpdateVoiceChannelInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VoiceChannelRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VoiceChannelRequest }),
    },
}

M.UpdateVoiceChannelOutput = {
    type = "structure",
    id = "UpdateVoiceChannelOutput",
    members = {
        VoiceChannelResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VoiceChannelResponse }),
    },
}

M.UpdateVoiceTemplateInput = {
    type = "structure",
    id = "UpdateVoiceTemplateInput",
    members = {
        CreateNewVersion = {
            type = "boolean",
            traits = {
                http_query = "create-new-version",
            },
        },
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                http_query = "version",
            },
        },
        VoiceTemplateRequest = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VoiceTemplateRequest }),
    },
}

M.UpdateVoiceTemplateOutput = {
    type = "structure",
    id = "UpdateVoiceTemplateOutput",
    members = {
        MessageBody = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.MessageBody }),
    },
}

M.VerifyOTPMessageRequestParameters = {
    type = "structure",
    id = "VerifyOTPMessageRequestParameters",
    members = {
        DestinationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Otp = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReferenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerifyOTPMessageInput = {
    type = "structure",
    id = "VerifyOTPMessageInput",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VerifyOTPMessageRequestParameters = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VerifyOTPMessageRequestParameters }),
    },
}

M.VerificationResponse = {
    type = "structure",
    id = "VerificationResponse",
    members = {
        Valid = {
            type = "boolean",
        },
    },
}

M.VerifyOTPMessageOutput = {
    type = "structure",
    id = "VerifyOTPMessageOutput",
    members = {
        VerificationResponse = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.VerificationResponse }),
    },
}

return M
