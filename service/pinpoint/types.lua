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
            type = "number",
        },
        TimezonesCompletedCount = {
            type = "number",
        },
        TimezonesTotalCount = {
            type = "number",
        },
        TotalEndpointCount = {
            type = "number",
        },
        TreatmentId = {
            type = "string",
        },
        ExecutionMetrics = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ActivitiesResponse = {
    type = "structure",
    members = {
        Item = {
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
    members = {
        AttributeType = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
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
    members = {
        DimensionType = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricDimension = {
    type = "structure",
    members = {
        ComparisonOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.EventDimensions = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        EventType = {
            type = "structure",
        },
        Metrics = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.EventCondition = {
    type = "structure",
    members = {
        Dimensions = {
            type = "structure",
        },
        MessageActivity = {
            type = "string",
        },
    },
}

M.SegmentCondition = {
    type = "structure",
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
    members = {
        Recency = {
            type = "structure",
        },
    },
}

M.SegmentDemographics = {
    type = "structure",
    members = {
        AppVersion = {
            type = "structure",
        },
        Channel = {
            type = "structure",
        },
        DeviceType = {
            type = "structure",
        },
        Make = {
            type = "structure",
        },
        Model = {
            type = "structure",
        },
        Platform = {
            type = "structure",
        },
    },
}

M.GPSCoordinates = {
    type = "structure",
    members = {
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

M.GPSPointDimension = {
    type = "structure",
    members = {
        Coordinates = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RangeInKilometers = {
            type = "number",
        },
    },
}

M.SegmentLocation = {
    type = "structure",
    members = {
        Country = {
            type = "structure",
        },
        GPSPoint = {
            type = "structure",
        },
    },
}

M.SegmentDimensions = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        Behavior = {
            type = "structure",
        },
        Demographic = {
            type = "structure",
        },
        Location = {
            type = "structure",
        },
        Metrics = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        UserAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.SimpleCondition = {
    type = "structure",
    members = {
        EventCondition = {
            type = "structure",
        },
        SegmentCondition = {
            type = "structure",
        },
        SegmentDimensions = {
            type = "structure",
            traits = {
                json_name = "segmentDimensions",
            },
        },
    },
}

M.Operator = {
    ALL = "ALL",
    ANY = "ANY",
}

M.Condition = {
    type = "structure",
    members = {
        Conditions = {
            type = "list",
            member_type = "structure",
        },
        Operator = {
            type = "string",
        },
    },
}

M.WaitTime = {
    type = "structure",
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
    members = {
        Condition = {
            type = "structure",
        },
        EvaluationWaitTime = {
            type = "structure",
        },
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
    members = {
        NextActivity = {
            type = "string",
        },
    },
}

M.JourneyCustomMessage = {
    type = "structure",
    members = {
        Data = {
            type = "string",
        },
    },
}

M.CustomMessageActivity = {
    type = "structure",
    members = {
        DeliveryUri = {
            type = "string",
        },
        EndpointTypes = {
            type = "list",
            member_type = "string",
        },
        MessageConfig = {
            type = "structure",
        },
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
    members = {
        FromAddress = {
            type = "string",
        },
    },
}

M.EmailMessageActivity = {
    type = "structure",
    members = {
        MessageConfig = {
            type = "structure",
        },
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
    members = {
        NextActivity = {
            type = "string",
        },
        Percentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.MultiConditionalBranch = {
    type = "structure",
    members = {
        Condition = {
            type = "structure",
        },
        NextActivity = {
            type = "string",
        },
    },
}

M.MultiConditionalSplitActivity = {
    type = "structure",
    members = {
        Branches = {
            type = "list",
            member_type = "structure",
        },
        DefaultActivity = {
            type = "string",
        },
        EvaluationWaitTime = {
            type = "structure",
        },
    },
}

M.JourneyPushMessage = {
    type = "structure",
    members = {
        TimeToLive = {
            type = "string",
        },
    },
}

M.PushMessageActivity = {
    type = "structure",
    members = {
        MessageConfig = {
            type = "structure",
        },
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
    members = {
        NextActivity = {
            type = "string",
        },
        Percentage = {
            type = "number",
        },
    },
}

M.RandomSplitActivity = {
    type = "structure",
    members = {
        Branches = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MessageType = {
    TRANSACTIONAL = "TRANSACTIONAL",
    PROMOTIONAL = "PROMOTIONAL",
}

M.JourneySMSMessage = {
    type = "structure",
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
    members = {
        MessageConfig = {
            type = "structure",
        },
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
    members = {
        NextActivity = {
            type = "string",
        },
        WaitTime = {
            type = "structure",
        },
    },
}

M.Activity = {
    type = "structure",
    members = {
        CUSTOM = {
            type = "structure",
        },
        ConditionalSplit = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        EMAIL = {
            type = "structure",
        },
        Holdout = {
            type = "structure",
        },
        MultiCondition = {
            type = "structure",
        },
        PUSH = {
            type = "structure",
        },
        RandomSplit = {
            type = "structure",
        },
        SMS = {
            type = "structure",
        },
        Wait = {
            type = "structure",
        },
        ContactCenter = {
            type = "structure",
        },
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
    members = {
        BodyOverride = {
            type = "string",
        },
        ChannelType = {
            type = "string",
        },
        Context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RawContent = {
            type = "string",
        },
        Substitutions = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        TitleOverride = {
            type = "string",
        },
    },
}

M.ADMChannelRequest = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ADMMessage = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "list",
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
            type = "number",
        },
    },
}

M.APNSMessage = {
    type = "structure",
    members = {
        APNSPushType = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        Badge = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "list",
        },
        ThreadId = {
            type = "string",
        },
        TimeToLive = {
            type = "number",
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
            type = "number",
        },
    },
}

M.APNSVoipChannelRequest = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.APNSVoipSandboxChannelRequest = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ResultRowValue = {
    type = "structure",
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
    members = {
        GroupedBys = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BaseKpiResult = {
    type = "structure",
    members = {
        Rows = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationDateRangeKpiResponse = {
    type = "structure",
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
            },
        },
        KpiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KpiResult = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationResponse = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        Cap = {
            type = "number",
        },
        Days = {
            type = "number",
        },
    },
}

M.ApplicationSettingsJourneyLimits = {
    type = "structure",
    members = {
        DailyCap = {
            type = "number",
        },
        TimeframeCap = {
            type = "structure",
        },
        TotalCap = {
            type = "number",
        },
    },
}

M.Mode = {
    DELIVERY = "DELIVERY",
    FILTER = "FILTER",
}

M.CampaignHook = {
    type = "structure",
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
    members = {
        Daily = {
            type = "number",
        },
        MaximumDuration = {
            type = "number",
        },
        MessagesPerSecond = {
            type = "number",
        },
        Total = {
            type = "number",
        },
        Session = {
            type = "number",
        },
    },
}

M.QuietTime = {
    type = "structure",
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
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CampaignHook = {
            type = "structure",
        },
        LastModifiedDate = {
            type = "string",
        },
        Limits = {
            type = "structure",
        },
        QuietTime = {
            type = "structure",
        },
        JourneyLimits = {
            type = "structure",
        },
    },
}

M.ApplicationsResponse = {
    type = "structure",
    members = {
        Item = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AttributesResource = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.BaiduMessage = {
    type = "structure",
    members = {
        Action = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        Data = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "list",
        },
        TimeToLive = {
            type = "number",
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
    members = {
        Data = {
            type = "string",
        },
    },
}

M.CampaignDateRangeKpiResponse = {
    type = "structure",
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
            },
        },
        KpiName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KpiResult = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.MessageHeader = {
    type = "structure",
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
    members = {
        Body = {
            type = "string",
        },
        FromAddress = {
            type = "string",
        },
        Headers = {
            type = "list",
            member_type = "structure",
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
    members = {
        Dimensions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        BackgroundColor = {
            type = "string",
        },
        BorderRadius = {
            type = "number",
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
    members = {
        Android = {
            type = "structure",
        },
        DefaultConfig = {
            type = "structure",
        },
        IOS = {
            type = "structure",
        },
        Web = {
            type = "structure",
        },
    },
}

M.InAppMessageContent = {
    type = "structure",
    members = {
        BackgroundColor = {
            type = "string",
        },
        BodyConfig = {
            type = "structure",
        },
        HeaderConfig = {
            type = "structure",
        },
        ImageUrl = {
            type = "string",
        },
        PrimaryBtn = {
            type = "structure",
        },
        SecondaryBtn = {
            type = "structure",
        },
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
    members = {
        Body = {
            type = "string",
        },
        Content = {
            type = "list",
            member_type = "structure",
        },
        CustomConfig = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Layout = {
            type = "string",
        },
    },
}

M.CustomDeliveryConfiguration = {
    type = "structure",
    members = {
        DeliveryUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Message = {
    type = "structure",
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
            type = "number",
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
    members = {
        ADMMessage = {
            type = "structure",
        },
        APNSMessage = {
            type = "structure",
        },
        BaiduMessage = {
            type = "structure",
        },
        CustomMessage = {
            type = "structure",
        },
        DefaultMessage = {
            type = "structure",
        },
        EmailMessage = {
            type = "structure",
        },
        GCMMessage = {
            type = "structure",
        },
        SMSMessage = {
            type = "structure",
        },
        InAppMessage = {
            type = "structure",
        },
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
    members = {
        EndTime = {
            type = "string",
        },
        EventFilter = {
            type = "structure",
        },
        Frequency = {
            type = "string",
        },
        IsLocalTime = {
            type = "boolean",
        },
        QuietTime = {
            type = "structure",
        },
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
    members = {
        CampaignStatus = {
            type = "string",
        },
    },
}

M.Template = {
    type = "structure",
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
    members = {
        EmailTemplate = {
            type = "structure",
        },
        PushTemplate = {
            type = "structure",
        },
        SMSTemplate = {
            type = "structure",
        },
        VoiceTemplate = {
            type = "structure",
        },
        InAppTemplate = {
            type = "structure",
        },
    },
}

M.TreatmentResource = {
    type = "structure",
    members = {
        CustomDeliveryConfiguration = {
            type = "structure",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageConfiguration = {
            type = "structure",
        },
        Schedule = {
            type = "structure",
        },
        SizePercent = {
            type = "number",
            traits = {
                required = true,
            },
        },
        State = {
            type = "structure",
        },
        TemplateConfiguration = {
            type = "structure",
        },
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
    members = {
        AdditionalTreatments = {
            type = "list",
            member_type = "structure",
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
        CustomDeliveryConfiguration = {
            type = "structure",
        },
        DefaultState = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        HoldoutPercent = {
            type = "number",
        },
        Hook = {
            type = "structure",
        },
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
        Limits = {
            type = "structure",
        },
        MessageConfiguration = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        Schedule = {
            type = "structure",
        },
        SegmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SegmentVersion = {
            type = "number",
            traits = {
                required = true,
            },
        },
        State = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        TemplateConfiguration = {
            type = "structure",
        },
        TreatmentDescription = {
            type = "string",
        },
        TreatmentName = {
            type = "string",
        },
        Version = {
            type = "number",
        },
        Priority = {
            type = "number",
        },
    },
}

M.CampaignsResponse = {
    type = "structure",
    members = {
        Item = {
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

M.ChannelResponse = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ChannelsResponse = {
    type = "structure",
    members = {
        Channels = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ClosedDaysRule = {
    type = "structure",
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
    members = {
        EMAIL = {
            type = "list",
            member_type = "structure",
        },
        SMS = {
            type = "list",
            member_type = "structure",
        },
        PUSH = {
            type = "list",
            member_type = "structure",
        },
        VOICE = {
            type = "list",
            member_type = "structure",
        },
        CUSTOM = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateAppInput = {
    type = "structure",
    members = {
        CreateApplicationRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.CreateAppOutput = {
    type = "structure",
    members = {
        ApplicationResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ForbiddenException = {
    type = "structure",
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
    members = {
        CustomDeliveryConfiguration = {
            type = "structure",
        },
        MessageConfiguration = {
            type = "structure",
        },
        Schedule = {
            type = "structure",
        },
        SizePercent = {
            type = "number",
            traits = {
                required = true,
            },
        },
        TemplateConfiguration = {
            type = "structure",
        },
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
    members = {
        AdditionalTreatments = {
            type = "list",
            member_type = "structure",
        },
        CustomDeliveryConfiguration = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        HoldoutPercent = {
            type = "number",
        },
        Hook = {
            type = "structure",
        },
        IsPaused = {
            type = "boolean",
        },
        Limits = {
            type = "structure",
        },
        MessageConfiguration = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        Schedule = {
            type = "structure",
        },
        SegmentId = {
            type = "string",
        },
        SegmentVersion = {
            type = "number",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        TemplateConfiguration = {
            type = "structure",
        },
        TreatmentDescription = {
            type = "string",
        },
        TreatmentName = {
            type = "string",
        },
        Priority = {
            type = "number",
        },
    },
}

M.CreateCampaignInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteCampaignRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.CreateCampaignOutput = {
    type = "structure",
    members = {
        CampaignResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.EmailTemplateRequest = {
    type = "structure",
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
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
    members = {
        EmailTemplateRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        CreateTemplateMessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ExportJobRequest = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.CreateExportJobInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExportJobRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ExportJobResource = {
    type = "structure",
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
            type = "number",
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
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompletedPieces = {
            type = "number",
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
        Definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FailedPieces = {
            type = "number",
        },
        Failures = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        TotalPieces = {
            type = "number",
        },
        TotalProcessed = {
            type = "number",
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
    members = {
        ExportJobResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.Format = {
    CSV = "CSV",
    JSON = "JSON",
}

M.ImportJobRequest = {
    type = "structure",
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
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ImportJobRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ImportJobResource = {
    type = "structure",
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
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CompletedPieces = {
            type = "number",
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
        Definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FailedPieces = {
            type = "number",
        },
        Failures = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        TotalPieces = {
            type = "number",
        },
        TotalProcessed = {
            type = "number",
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
    members = {
        ImportJobResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.InAppTemplateRequest = {
    type = "structure",
    members = {
        Content = {
            type = "list",
            member_type = "structure",
        },
        CustomConfig = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Layout = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
    members = {
        InAppTemplateRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        TemplateCreateMessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.JourneyChannelSettings = {
    type = "structure",
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
    members = {
        DailyCap = {
            type = "number",
        },
        EndpointReentryCap = {
            type = "number",
        },
        MessagesPerSecond = {
            type = "number",
        },
        EndpointReentryInterval = {
            type = "string",
        },
        TimeframeCap = {
            type = "structure",
        },
        TotalCap = {
            type = "number",
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
    members = {
        EMAIL = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        SMS = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        PUSH = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        VOICE = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        CUSTOM = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.JourneySchedule = {
    type = "structure",
    members = {
        EndTime = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        Timezone = {
            type = "string",
        },
    },
}

M.EventFilter = {
    type = "structure",
    members = {
        Dimensions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        EventFilter = {
            type = "structure",
        },
        SegmentId = {
            type = "string",
        },
    },
}

M.StartCondition = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        EventStartCondition = {
            type = "structure",
        },
        SegmentStartCondition = {
            type = "structure",
        },
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
    members = {
        Activities = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        CreationDate = {
            type = "string",
        },
        LastModifiedDate = {
            type = "string",
        },
        Limits = {
            type = "structure",
        },
        LocalTime = {
            type = "boolean",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuietTime = {
            type = "structure",
        },
        RefreshFrequency = {
            type = "string",
        },
        Schedule = {
            type = "structure",
        },
        StartActivity = {
            type = "string",
        },
        StartCondition = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        WaitForQuietTime = {
            type = "boolean",
        },
        RefreshOnSegmentUpdate = {
            type = "boolean",
        },
        JourneyChannelSettings = {
            type = "structure",
        },
        SendingSchedule = {
            type = "boolean",
        },
        OpenHours = {
            type = "structure",
        },
        ClosedDays = {
            type = "structure",
        },
        TimezoneEstimationMethods = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateJourneyInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteJourneyRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.JourneyResponse = {
    type = "structure",
    members = {
        Activities = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
        Limits = {
            type = "structure",
        },
        LocalTime = {
            type = "boolean",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuietTime = {
            type = "structure",
        },
        RefreshFrequency = {
            type = "string",
        },
        Schedule = {
            type = "structure",
        },
        StartActivity = {
            type = "string",
        },
        StartCondition = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        JourneyChannelSettings = {
            type = "structure",
        },
        SendingSchedule = {
            type = "boolean",
        },
        OpenHours = {
            type = "structure",
        },
        ClosedDays = {
            type = "structure",
        },
        TimezoneEstimationMethods = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateJourneyOutput = {
    type = "structure",
    members = {
        JourneyResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DefaultPushNotificationTemplate = {
    type = "structure",
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
    members = {
        ADM = {
            type = "structure",
        },
        APNS = {
            type = "structure",
        },
        Baidu = {
            type = "structure",
        },
        Default = {
            type = "structure",
        },
        DefaultSubstitutions = {
            type = "string",
        },
        GCM = {
            type = "structure",
        },
        RecommenderId = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
    members = {
        PushNotificationTemplateRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        CreateTemplateMessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.CreateRecommenderConfigurationShape = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
    },
}

M.CreateRecommenderConfigurationInput = {
    type = "structure",
    members = {
        CreateRecommenderConfiguration = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.RecommenderConfigurationResponse = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
    },
}

M.CreateRecommenderConfigurationOutput = {
    type = "structure",
    members = {
        RecommenderConfigurationResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.SegmentReference = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "number",
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
    members = {
        Dimensions = {
            type = "list",
            member_type = "structure",
        },
        SourceSegments = {
            type = "list",
            member_type = "structure",
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
    members = {
        Groups = {
            type = "list",
            member_type = "structure",
        },
        Include = {
            type = "string",
        },
    },
}

M.WriteSegmentRequest = {
    type = "structure",
    members = {
        Dimensions = {
            type = "structure",
        },
        Name = {
            type = "string",
        },
        SegmentGroups = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.CreateSegmentInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteSegmentRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.SegmentImportResource = {
    type = "structure",
    members = {
        ChannelCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
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
            type = "number",
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
        Dimensions = {
            type = "structure",
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImportDefinition = {
            type = "structure",
        },
        LastModifiedDate = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        SegmentGroups = {
            type = "structure",
        },
        SegmentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
            },
        },
        Version = {
            type = "number",
        },
    },
}

M.CreateSegmentOutput = {
    type = "structure",
    members = {
        SegmentResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.SMSTemplateRequest = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        SMSTemplateRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        CreateTemplateMessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.VoiceTemplateRequest = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VoiceTemplateRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.CreateVoiceTemplateOutput = {
    type = "structure",
    members = {
        CreateTemplateMessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DefaultMessage = {
    type = "structure",
    members = {
        Body = {
            type = "string",
        },
        Substitutions = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.DefaultPushNotificationMessage = {
    type = "structure",
    members = {
        Action = {
            type = "string",
        },
        Body = {
            type = "string",
        },
        Data = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SilentPush = {
            type = "boolean",
        },
        Substitutions = {
            type = "map",
            key_type = "string",
            value_type = "list",
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
    members = {
        ADMChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteApnsChannelInput = {
    type = "structure",
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
    members = {
        APNSChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteApnsSandboxChannelInput = {
    type = "structure",
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
    members = {
        APNSSandboxChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteApnsVoipChannelInput = {
    type = "structure",
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
    members = {
        APNSVoipChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteApnsVoipSandboxChannelInput = {
    type = "structure",
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
    members = {
        APNSVoipSandboxChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteAppInput = {
    type = "structure",
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
    members = {
        ApplicationResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteBaiduChannelInput = {
    type = "structure",
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
    members = {
        BaiduChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteCampaignInput = {
    type = "structure",
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
    members = {
        CampaignResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteEmailChannelInput = {
    type = "structure",
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
            type = "number",
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
            type = "number",
        },
    },
}

M.DeleteEmailChannelOutput = {
    type = "structure",
    members = {
        EmailChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteEmailTemplateInput = {
    type = "structure",
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
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteEndpointInput = {
    type = "structure",
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
    members = {
        City = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        Latitude = {
            type = "number",
        },
        Longitude = {
            type = "number",
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
    members = {
        UserAttributes = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        UserId = {
            type = "string",
        },
    },
}

M.EndpointResponse = {
    type = "structure",
    members = {
        Address = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "list",
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
        Demographic = {
            type = "structure",
        },
        EffectiveDate = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Location = {
            type = "structure",
        },
        Metrics = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        OptOut = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        User = {
            type = "structure",
        },
    },
}

M.DeleteEndpointOutput = {
    type = "structure",
    members = {
        EndpointResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteEventStreamInput = {
    type = "structure",
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
    members = {
        EventStream = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteGcmChannelInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.DeleteGcmChannelOutput = {
    type = "structure",
    members = {
        GCMChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteInAppTemplateInput = {
    type = "structure",
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
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteJourneyInput = {
    type = "structure",
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
    members = {
        JourneyResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeletePushTemplateInput = {
    type = "structure",
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
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteRecommenderConfigurationInput = {
    type = "structure",
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
    members = {
        RecommenderConfigurationResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteSegmentInput = {
    type = "structure",
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
    members = {
        SegmentResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteSmsChannelInput = {
    type = "structure",
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
            type = "number",
        },
        SenderId = {
            type = "string",
        },
        ShortCode = {
            type = "string",
        },
        TransactionalMessagesPerSecond = {
            type = "number",
        },
        Version = {
            type = "number",
        },
    },
}

M.DeleteSmsChannelOutput = {
    type = "structure",
    members = {
        SMSChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteSmsTemplateInput = {
    type = "structure",
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
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteUserEndpointsInput = {
    type = "structure",
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
    members = {
        Item = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserEndpointsOutput = {
    type = "structure",
    members = {
        EndpointsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteVoiceChannelInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.DeleteVoiceChannelOutput = {
    type = "structure",
    members = {
        VoiceChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteVoiceTemplateInput = {
    type = "structure",
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
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        Data = {
            type = "blob",
        },
    },
}

M.SimpleEmailPart = {
    type = "structure",
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
    members = {
        HtmlPart = {
            type = "structure",
        },
        Subject = {
            type = "structure",
        },
        TextPart = {
            type = "structure",
        },
        Headers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EmailMessage = {
    type = "structure",
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
        RawEmail = {
            type = "structure",
        },
        ReplyToAddresses = {
            type = "list",
            member_type = "string",
        },
        SimpleEmail = {
            type = "structure",
        },
        Substitutions = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.GCMMessage = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "list",
        },
        TimeToLive = {
            type = "number",
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
            key_type = "string",
            value_type = "list",
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
            key_type = "string",
            value_type = "list",
        },
        VoiceId = {
            type = "string",
        },
    },
}

M.DirectMessageConfiguration = {
    type = "structure",
    members = {
        ADMMessage = {
            type = "structure",
        },
        APNSMessage = {
            type = "structure",
        },
        BaiduMessage = {
            type = "structure",
        },
        DefaultMessage = {
            type = "structure",
        },
        DefaultPushNotificationMessage = {
            type = "structure",
        },
        EmailMessage = {
            type = "structure",
        },
        GCMMessage = {
            type = "structure",
        },
        SMSMessage = {
            type = "structure",
        },
        VoiceMessage = {
            type = "structure",
        },
    },
}

M.EmailChannelRequest = {
    type = "structure",
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
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
    members = {
        Address = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        ChannelType = {
            type = "string",
        },
        Demographic = {
            type = "structure",
        },
        EffectiveDate = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Location = {
            type = "structure",
        },
        Metrics = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        OptOut = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        User = {
            type = "structure",
        },
    },
}

M.EndpointBatchRequest = {
    type = "structure",
    members = {
        Item = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EndpointItemResponse = {
    type = "structure",
    members = {
        Message = {
            type = "string",
        },
        StatusCode = {
            type = "number",
        },
    },
}

M.EndpointMessageResult = {
    type = "structure",
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
            type = "number",
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
    members = {
        Address = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        ChannelType = {
            type = "string",
        },
        Demographic = {
            type = "structure",
        },
        EffectiveDate = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        Location = {
            type = "structure",
        },
        Metrics = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        OptOut = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        User = {
            type = "structure",
        },
    },
}

M.EndpointSendConfiguration = {
    type = "structure",
    members = {
        BodyOverride = {
            type = "string",
        },
        Context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        RawContent = {
            type = "string",
        },
        Substitutions = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        TitleOverride = {
            type = "string",
        },
    },
}

M.Session = {
    type = "structure",
    members = {
        Duration = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "number",
        },
        SdkName = {
            type = "string",
        },
        Session = {
            type = "structure",
        },
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
    members = {
        Message = {
            type = "string",
        },
        StatusCode = {
            type = "number",
        },
    },
}

M.PublicEndpoint = {
    type = "structure",
    members = {
        Address = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        ChannelType = {
            type = "string",
        },
        Demographic = {
            type = "structure",
        },
        EffectiveDate = {
            type = "string",
        },
        EndpointStatus = {
            type = "string",
        },
        Location = {
            type = "structure",
        },
        Metrics = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        OptOut = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        User = {
            type = "structure",
        },
    },
}

M.EventsBatch = {
    type = "structure",
    members = {
        Endpoint = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Events = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EventsRequest = {
    type = "structure",
    members = {
        BatchItem = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ItemResponse = {
    type = "structure",
    members = {
        EndpointItemResponse = {
            type = "structure",
        },
        EventsItemResponse = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.EventsResponse = {
    type = "structure",
    members = {
        Results = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ExportJobsResponse = {
    type = "structure",
    members = {
        Item = {
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

M.GCMChannelRequest = {
    type = "structure",
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
    members = {
        ADMChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetApnsChannelInput = {
    type = "structure",
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
    members = {
        APNSChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetApnsSandboxChannelInput = {
    type = "structure",
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
    members = {
        APNSSandboxChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetApnsVoipChannelInput = {
    type = "structure",
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
    members = {
        APNSVoipChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetApnsVoipSandboxChannelInput = {
    type = "structure",
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
    members = {
        APNSVoipSandboxChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetAppInput = {
    type = "structure",
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
    members = {
        ApplicationResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetApplicationDateRangeKpiInput = {
    type = "structure",
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
            },
        },
    },
}

M.GetApplicationDateRangeKpiOutput = {
    type = "structure",
    members = {
        ApplicationDateRangeKpiResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetApplicationSettingsInput = {
    type = "structure",
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
    members = {
        ApplicationSettingsResource = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetAppsInput = {
    type = "structure",
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
    members = {
        ApplicationsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetBaiduChannelInput = {
    type = "structure",
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
    members = {
        BaiduChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetCampaignInput = {
    type = "structure",
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
    members = {
        CampaignResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetCampaignActivitiesInput = {
    type = "structure",
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
    members = {
        ActivitiesResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetCampaignDateRangeKpiInput = {
    type = "structure",
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
            },
        },
    },
}

M.GetCampaignDateRangeKpiOutput = {
    type = "structure",
    members = {
        CampaignDateRangeKpiResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetCampaignsInput = {
    type = "structure",
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
    members = {
        CampaignsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetCampaignVersionInput = {
    type = "structure",
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
    members = {
        CampaignResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetCampaignVersionsInput = {
    type = "structure",
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
    members = {
        CampaignsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetChannelsInput = {
    type = "structure",
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
    members = {
        ChannelsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetEmailChannelInput = {
    type = "structure",
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
    members = {
        EmailChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetEmailTemplateInput = {
    type = "structure",
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
    members = {
        EmailTemplateResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetEndpointInput = {
    type = "structure",
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
    members = {
        EndpointResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetEventStreamInput = {
    type = "structure",
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
    members = {
        EventStream = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetExportJobInput = {
    type = "structure",
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
    members = {
        ExportJobResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetExportJobsInput = {
    type = "structure",
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
    members = {
        ExportJobsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetGcmChannelInput = {
    type = "structure",
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
    members = {
        GCMChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetImportJobInput = {
    type = "structure",
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
    members = {
        ImportJobResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetImportJobsInput = {
    type = "structure",
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
    members = {
        Item = {
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

M.GetImportJobsOutput = {
    type = "structure",
    members = {
        ImportJobsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetInAppMessagesInput = {
    type = "structure",
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
    members = {
        Content = {
            type = "list",
            member_type = "structure",
        },
        CustomConfig = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Layout = {
            type = "string",
        },
    },
}

M.InAppCampaignSchedule = {
    type = "structure",
    members = {
        EndDate = {
            type = "string",
        },
        EventFilter = {
            type = "structure",
        },
        QuietTime = {
            type = "structure",
        },
    },
}

M.InAppMessageCampaign = {
    type = "structure",
    members = {
        CampaignId = {
            type = "string",
        },
        DailyCap = {
            type = "number",
        },
        InAppMessage = {
            type = "structure",
        },
        Priority = {
            type = "number",
        },
        Schedule = {
            type = "structure",
        },
        SessionCap = {
            type = "number",
        },
        TotalCap = {
            type = "number",
        },
        TreatmentId = {
            type = "string",
        },
    },
}

M.InAppMessagesResponse = {
    type = "structure",
    members = {
        InAppMessageCampaigns = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetInAppMessagesOutput = {
    type = "structure",
    members = {
        InAppMessagesResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetInAppTemplateInput = {
    type = "structure",
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
    members = {
        Arn = {
            type = "string",
        },
        Content = {
            type = "list",
            member_type = "structure",
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomConfig = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        InAppTemplateResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetJourneyInput = {
    type = "structure",
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
    members = {
        JourneyResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetJourneyDateRangeKpiInput = {
    type = "structure",
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
            },
        },
    },
}

M.JourneyDateRangeKpiResponse = {
    type = "structure",
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
        KpiResult = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetJourneyDateRangeKpiOutput = {
    type = "structure",
    members = {
        JourneyDateRangeKpiResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetJourneyExecutionActivityMetricsInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetJourneyExecutionActivityMetricsOutput = {
    type = "structure",
    members = {
        JourneyExecutionActivityMetricsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetJourneyExecutionMetricsInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetJourneyExecutionMetricsOutput = {
    type = "structure",
    members = {
        JourneyExecutionMetricsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetJourneyRunExecutionActivityMetricsInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        JourneyRunExecutionActivityMetricsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetJourneyRunExecutionMetricsInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        JourneyRunExecutionMetricsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetJourneyRunsInput = {
    type = "structure",
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
    members = {
        Item = {
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

M.GetJourneyRunsOutput = {
    type = "structure",
    members = {
        JourneyRunsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetPushTemplateInput = {
    type = "structure",
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
    members = {
        ADM = {
            type = "structure",
        },
        APNS = {
            type = "structure",
        },
        Arn = {
            type = "string",
        },
        Baidu = {
            type = "structure",
        },
        CreationDate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Default = {
            type = "structure",
        },
        DefaultSubstitutions = {
            type = "string",
        },
        GCM = {
            type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        PushNotificationTemplateResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetRecommenderConfigurationInput = {
    type = "structure",
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
    members = {
        RecommenderConfigurationResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetRecommenderConfigurationsInput = {
    type = "structure",
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
    members = {
        Item = {
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

M.GetRecommenderConfigurationsOutput = {
    type = "structure",
    members = {
        ListRecommenderConfigurationsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetSegmentInput = {
    type = "structure",
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
    members = {
        SegmentResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetSegmentExportJobsInput = {
    type = "structure",
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
    members = {
        ExportJobsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetSegmentImportJobsInput = {
    type = "structure",
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
    members = {
        ImportJobsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetSegmentsInput = {
    type = "structure",
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
    members = {
        Item = {
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

M.GetSegmentsOutput = {
    type = "structure",
    members = {
        SegmentsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetSegmentVersionInput = {
    type = "structure",
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
    members = {
        SegmentResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetSegmentVersionsInput = {
    type = "structure",
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
    members = {
        SegmentsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetSmsChannelInput = {
    type = "structure",
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
    members = {
        SMSChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetSmsTemplateInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        SMSTemplateResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetUserEndpointsInput = {
    type = "structure",
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
    members = {
        EndpointsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetVoiceChannelInput = {
    type = "structure",
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
    members = {
        VoiceChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetVoiceTemplateInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        VoiceTemplateResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.JourneysResponse = {
    type = "structure",
    members = {
        Item = {
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

M.JourneyStateRequest = {
    type = "structure",
    members = {
        State = {
            type = "string",
        },
    },
}

M.ListJourneysInput = {
    type = "structure",
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
    members = {
        JourneysResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.TemplateResponse = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                json_name = "tags",
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        TagsModel = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ListTemplatesInput = {
    type = "structure",
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
    members = {
        Item = {
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

M.ListTemplatesOutput = {
    type = "structure",
    members = {
        TemplatesResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ListTemplateVersionsInput = {
    type = "structure",
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
    members = {
        Item = {
            type = "list",
            member_type = "structure",
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
    members = {
        TemplateVersionsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.MessageResult = {
    type = "structure",
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
            type = "number",
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
    members = {
        Addresses = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        Context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Endpoints = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        MessageConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TemplateConfiguration = {
            type = "structure",
        },
        TraceId = {
            type = "string",
        },
    },
}

M.MessageResponse = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndpointResult = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        RequestId = {
            type = "string",
        },
        Result = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.NumberValidateRequest = {
    type = "structure",
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
            type = "number",
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
    members = {
        NumberValidateRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.PhoneNumberValidateOutput = {
    type = "structure",
    members = {
        NumberValidateResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.PutEventsInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventsRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.PutEventsOutput = {
    type = "structure",
    members = {
        EventsResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.WriteEventStream = {
    type = "structure",
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
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteEventStream = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.PutEventStreamOutput = {
    type = "structure",
    members = {
        EventStream = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateAttributesRequest = {
    type = "structure",
    members = {
        Blacklist = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RemoveAttributesInput = {
    type = "structure",
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
        UpdateAttributesRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.RemoveAttributesOutput = {
    type = "structure",
    members = {
        AttributesResource = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.SendMessagesInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MessageRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.SendMessagesOutput = {
    type = "structure",
    members = {
        MessageResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.SendOTPMessageRequestParameters = {
    type = "structure",
    members = {
        AllowedAttempts = {
            type = "number",
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
            type = "number",
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
            type = "number",
        },
    },
}

M.SendOTPMessageInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SendOTPMessageRequestParameters = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.SendOTPMessageOutput = {
    type = "structure",
    members = {
        MessageResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.SendUsersMessageRequest = {
    type = "structure",
    members = {
        Context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        MessageConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TemplateConfiguration = {
            type = "structure",
        },
        TraceId = {
            type = "string",
        },
        Users = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SendUsersMessagesInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SendUsersMessageRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.SendUsersMessageResponse = {
    type = "structure",
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
            key_type = "string",
            value_type = "map",
        },
    },
}

M.SendUsersMessagesOutput = {
    type = "structure",
    members = {
        SendUsersMessageResponse = {
            type = "structure",
            traits = {
                http_payload = true,
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
        TagsModel = {
            type = "structure",
            traits = {
                http_payload = true,
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

M.UpdateAdmChannelInput = {
    type = "structure",
    members = {
        ADMChannelRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        ADMChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateApnsChannelInput = {
    type = "structure",
    members = {
        APNSChannelRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        APNSChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateApnsSandboxChannelInput = {
    type = "structure",
    members = {
        APNSSandboxChannelRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        APNSSandboxChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateApnsVoipChannelInput = {
    type = "structure",
    members = {
        APNSVoipChannelRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        APNSVoipChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateApnsVoipSandboxChannelInput = {
    type = "structure",
    members = {
        APNSVoipSandboxChannelRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
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
    members = {
        APNSVoipSandboxChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.WriteApplicationSettingsRequest = {
    type = "structure",
    members = {
        CampaignHook = {
            type = "structure",
        },
        CloudWatchMetricsEnabled = {
            type = "boolean",
        },
        EventTaggingEnabled = {
            type = "boolean",
        },
        Limits = {
            type = "structure",
        },
        QuietTime = {
            type = "structure",
        },
        JourneyLimits = {
            type = "structure",
        },
    },
}

M.UpdateApplicationSettingsInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WriteApplicationSettingsRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateApplicationSettingsOutput = {
    type = "structure",
    members = {
        ApplicationSettingsResource = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateBaiduChannelInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BaiduChannelRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateBaiduChannelOutput = {
    type = "structure",
    members = {
        BaiduChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateCampaignInput = {
    type = "structure",
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
        WriteCampaignRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateCampaignOutput = {
    type = "structure",
    members = {
        CampaignResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateEmailChannelInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailChannelRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateEmailChannelOutput = {
    type = "structure",
    members = {
        EmailChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateEmailTemplateInput = {
    type = "structure",
    members = {
        CreateNewVersion = {
            type = "boolean",
            traits = {
                http_query = "create-new-version",
            },
        },
        EmailTemplateRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
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
    },
}

M.UpdateEmailTemplateOutput = {
    type = "structure",
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateEndpointInput = {
    type = "structure",
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
        EndpointRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateEndpointOutput = {
    type = "structure",
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateEndpointsBatchInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EndpointBatchRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateEndpointsBatchOutput = {
    type = "structure",
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateGcmChannelInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GCMChannelRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateGcmChannelOutput = {
    type = "structure",
    members = {
        GCMChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateInAppTemplateInput = {
    type = "structure",
    members = {
        CreateNewVersion = {
            type = "boolean",
            traits = {
                http_query = "create-new-version",
            },
        },
        InAppTemplateRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
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
    },
}

M.UpdateInAppTemplateOutput = {
    type = "structure",
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateJourneyInput = {
    type = "structure",
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
        WriteJourneyRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateJourneyOutput = {
    type = "structure",
    members = {
        JourneyResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateJourneyStateInput = {
    type = "structure",
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
        JourneyStateRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateJourneyStateOutput = {
    type = "structure",
    members = {
        JourneyResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdatePushTemplateInput = {
    type = "structure",
    members = {
        CreateNewVersion = {
            type = "boolean",
            traits = {
                http_query = "create-new-version",
            },
        },
        PushNotificationTemplateRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
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
    },
}

M.UpdatePushTemplateOutput = {
    type = "structure",
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateRecommenderConfigurationShape = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
    },
}

M.UpdateRecommenderConfigurationInput = {
    type = "structure",
    members = {
        RecommenderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UpdateRecommenderConfiguration = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateRecommenderConfigurationOutput = {
    type = "structure",
    members = {
        RecommenderConfigurationResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateSegmentInput = {
    type = "structure",
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
        WriteSegmentRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateSegmentOutput = {
    type = "structure",
    members = {
        SegmentResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.SMSChannelRequest = {
    type = "structure",
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
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SMSChannelRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateSmsChannelOutput = {
    type = "structure",
    members = {
        SMSChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateSmsTemplateInput = {
    type = "structure",
    members = {
        CreateNewVersion = {
            type = "boolean",
            traits = {
                http_query = "create-new-version",
            },
        },
        SMSTemplateRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
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
    },
}

M.UpdateSmsTemplateOutput = {
    type = "structure",
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.TemplateActiveVersionRequest = {
    type = "structure",
    members = {
        Version = {
            type = "string",
        },
    },
}

M.UpdateTemplateActiveVersionInput = {
    type = "structure",
    members = {
        TemplateActiveVersionRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
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

M.UpdateTemplateActiveVersionOutput = {
    type = "structure",
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.VoiceChannelRequest = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.UpdateVoiceChannelInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VoiceChannelRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateVoiceChannelOutput = {
    type = "structure",
    members = {
        VoiceChannelResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateVoiceTemplateInput = {
    type = "structure",
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
        VoiceTemplateRequest = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.UpdateVoiceTemplateOutput = {
    type = "structure",
    members = {
        MessageBody = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.VerifyOTPMessageRequestParameters = {
    type = "structure",
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
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VerifyOTPMessageRequestParameters = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.VerificationResponse = {
    type = "structure",
    members = {
        Valid = {
            type = "boolean",
        },
    },
}

M.VerifyOTPMessageOutput = {
    type = "structure",
    members = {
        VerificationResponse = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

return M
