local M = {}

M.AccountSuspendedException = {
    type = "structure",
    id = "AccountSuspendedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AlreadyExistsException = {
    type = "structure",
    id = "AlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TlsPolicy = {
    REQUIRE = "REQUIRE",
    OPTIONAL = "OPTIONAL",
}

M.DeliveryOptions = {
    type = "structure",
    id = "DeliveryOptions",
    members = {
        TlsPolicy = {
            type = "string",
        },
        SendingPoolName = {
            type = "string",
        },
    },
}

M.ReputationOptions = {
    type = "structure",
    id = "ReputationOptions",
    members = {
        ReputationMetricsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LastFreshStart = {
            type = "timestamp",
        },
    },
}

M.SendingOptions = {
    type = "structure",
    id = "SendingOptions",
    members = {
        SendingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
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

M.TrackingOptions = {
    type = "structure",
    id = "TrackingOptions",
    members = {
        CustomRedirectDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConfigurationSetInput = {
    type = "structure",
    id = "CreateConfigurationSetInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrackingOptions = M.TrackingOptions,
        DeliveryOptions = M.DeliveryOptions,
        ReputationOptions = M.ReputationOptions,
        SendingOptions = M.SendingOptions,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateConfigurationSetOutput = {
    type = "structure",
    id = "CreateConfigurationSetOutput",
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DimensionValueSource = {
    MESSAGE_TAG = "MESSAGE_TAG",
    EMAIL_HEADER = "EMAIL_HEADER",
    LINK_TAG = "LINK_TAG",
}

M.CloudWatchDimensionConfiguration = {
    type = "structure",
    id = "CloudWatchDimensionConfiguration",
    members = {
        DimensionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DimensionValueSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultDimensionValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudWatchDestination = {
    type = "structure",
    id = "CloudWatchDestination",
    members = {
        DimensionConfigurations = {
            type = "list",
            member = M.CloudWatchDimensionConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.KinesisFirehoseDestination = {
    type = "structure",
    id = "KinesisFirehoseDestination",
    members = {
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryStreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventType = {
    SEND = "SEND",
    REJECT = "REJECT",
    BOUNCE = "BOUNCE",
    COMPLAINT = "COMPLAINT",
    DELIVERY = "DELIVERY",
    OPEN = "OPEN",
    CLICK = "CLICK",
    RENDERING_FAILURE = "RENDERING_FAILURE",
}

M.PinpointDestination = {
    type = "structure",
    id = "PinpointDestination",
    members = {
        ApplicationArn = {
            type = "string",
        },
    },
}

M.SnsDestination = {
    type = "structure",
    id = "SnsDestination",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventDestinationDefinition = {
    type = "structure",
    id = "EventDestinationDefinition",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        MatchingEventTypes = {
            type = "list",
            member = { type = "string" },
        },
        KinesisFirehoseDestination = M.KinesisFirehoseDestination,
        CloudWatchDestination = M.CloudWatchDestination,
        SnsDestination = M.SnsDestination,
        PinpointDestination = M.PinpointDestination,
    },
}

M.CreateConfigurationSetEventDestinationInput = {
    type = "structure",
    id = "CreateConfigurationSetEventDestinationInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventDestinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventDestinationDefinition }),
    },
}

M.CreateConfigurationSetEventDestinationOutput = {
    type = "structure",
    id = "CreateConfigurationSetEventDestinationOutput",
}

M.CreateDedicatedIpPoolInput = {
    type = "structure",
    id = "CreateDedicatedIpPoolInput",
    members = {
        PoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDedicatedIpPoolOutput = {
    type = "structure",
    id = "CreateDedicatedIpPoolOutput",
}

M.RawMessage = {
    type = "structure",
    id = "RawMessage",
    members = {
        Data = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.Content = {
    type = "structure",
    id = "Content",
    members = {
        Data = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Charset = {
            type = "string",
        },
    },
}

M.Body = {
    type = "structure",
    id = "Body",
    members = {
        Text = M.Content,
        Html = M.Content,
    },
}

M.Message = {
    type = "structure",
    id = "Message",
    members = {
        Subject = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Content }),
        Body = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Body }),
    },
}

M.Template = {
    type = "structure",
    id = "Template",
    members = {
        TemplateArn = {
            type = "string",
        },
        TemplateData = {
            type = "string",
        },
    },
}

M.EmailContent = {
    type = "structure",
    id = "EmailContent",
    members = {
        Simple = M.Message,
        Raw = M.RawMessage,
        Template = M.Template,
    },
}

M.CreateDeliverabilityTestReportInput = {
    type = "structure",
    id = "CreateDeliverabilityTestReportInput",
    members = {
        ReportName = {
            type = "string",
        },
        FromEmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmailContent }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DeliverabilityTestStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
}

M.CreateDeliverabilityTestReportOutput = {
    type = "structure",
    id = "CreateDeliverabilityTestReportOutput",
    members = {
        ReportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliverabilityTestStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MailFromDomainNotVerifiedException = {
    type = "structure",
    id = "MailFromDomainNotVerifiedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MessageRejected = {
    type = "structure",
    id = "MessageRejected",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SendingPausedException = {
    type = "structure",
    id = "SendingPausedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateEmailIdentityInput = {
    type = "structure",
    id = "CreateEmailIdentityInput",
    members = {
        EmailIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DkimStatus = {
    PENDING = "PENDING",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    TEMPORARY_FAILURE = "TEMPORARY_FAILURE",
    NOT_STARTED = "NOT_STARTED",
}

M.DkimAttributes = {
    type = "structure",
    id = "DkimAttributes",
    members = {
        SigningEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Status = {
            type = "string",
        },
        Tokens = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.IdentityType = {
    EMAIL_ADDRESS = "EMAIL_ADDRESS",
    DOMAIN = "DOMAIN",
    MANAGED_DOMAIN = "MANAGED_DOMAIN",
}

M.CreateEmailIdentityOutput = {
    type = "structure",
    id = "CreateEmailIdentityOutput",
    members = {
        IdentityType = {
            type = "string",
        },
        VerifiedForSendingStatus = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DkimAttributes = M.DkimAttributes,
    },
}

M.DeleteConfigurationSetInput = {
    type = "structure",
    id = "DeleteConfigurationSetInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfigurationSetOutput = {
    type = "structure",
    id = "DeleteConfigurationSetOutput",
}

M.DeleteConfigurationSetEventDestinationInput = {
    type = "structure",
    id = "DeleteConfigurationSetEventDestinationInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventDestinationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfigurationSetEventDestinationOutput = {
    type = "structure",
    id = "DeleteConfigurationSetEventDestinationOutput",
}

M.DeleteDedicatedIpPoolInput = {
    type = "structure",
    id = "DeleteDedicatedIpPoolInput",
    members = {
        PoolName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDedicatedIpPoolOutput = {
    type = "structure",
    id = "DeleteDedicatedIpPoolOutput",
}

M.DeleteEmailIdentityInput = {
    type = "structure",
    id = "DeleteEmailIdentityInput",
    members = {
        EmailIdentity = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEmailIdentityOutput = {
    type = "structure",
    id = "DeleteEmailIdentityOutput",
}

M.GetAccountInput = {
    type = "structure",
    id = "GetAccountInput",
}

M.SendQuota = {
    type = "structure",
    id = "SendQuota",
    members = {
        Max24HourSend = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        MaxSendRate = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        SentLast24Hours = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetAccountOutput = {
    type = "structure",
    id = "GetAccountOutput",
    members = {
        SendQuota = M.SendQuota,
        SendingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DedicatedIpAutoWarmupEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EnforcementStatus = {
            type = "string",
        },
        ProductionAccessEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetBlacklistReportsInput = {
    type = "structure",
    id = "GetBlacklistReportsInput",
    members = {
        BlacklistItemNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "BlacklistItemNames",
                required = true,
            },
        },
    },
}

M.BlacklistEntry = {
    type = "structure",
    id = "BlacklistEntry",
    members = {
        RblName = {
            type = "string",
        },
        ListingTime = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
    },
}

M.GetBlacklistReportsOutput = {
    type = "structure",
    id = "GetBlacklistReportsOutput",
    members = {
        BlacklistReport = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetConfigurationSetInput = {
    type = "structure",
    id = "GetConfigurationSetInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfigurationSetOutput = {
    type = "structure",
    id = "GetConfigurationSetOutput",
    members = {
        ConfigurationSetName = {
            type = "string",
        },
        TrackingOptions = M.TrackingOptions,
        DeliveryOptions = M.DeliveryOptions,
        ReputationOptions = M.ReputationOptions,
        SendingOptions = M.SendingOptions,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetConfigurationSetEventDestinationsInput = {
    type = "structure",
    id = "GetConfigurationSetEventDestinationsInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EventDestination = {
    type = "structure",
    id = "EventDestination",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        MatchingEventTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        KinesisFirehoseDestination = M.KinesisFirehoseDestination,
        CloudWatchDestination = M.CloudWatchDestination,
        SnsDestination = M.SnsDestination,
        PinpointDestination = M.PinpointDestination,
    },
}

M.GetConfigurationSetEventDestinationsOutput = {
    type = "structure",
    id = "GetConfigurationSetEventDestinationsOutput",
    members = {
        EventDestinations = {
            type = "list",
            member = M.EventDestination,
        },
    },
}

M.GetDedicatedIpInput = {
    type = "structure",
    id = "GetDedicatedIpInput",
    members = {
        Ip = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WarmupStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    DONE = "DONE",
}

M.DedicatedIp = {
    type = "structure",
    id = "DedicatedIp",
    members = {
        Ip = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WarmupStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WarmupPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        PoolName = {
            type = "string",
        },
    },
}

M.GetDedicatedIpOutput = {
    type = "structure",
    id = "GetDedicatedIpOutput",
    members = {
        DedicatedIp = M.DedicatedIp,
    },
}

M.GetDedicatedIpsInput = {
    type = "structure",
    id = "GetDedicatedIpsInput",
    members = {
        PoolName = {
            type = "string",
            traits = {
                http_query = "PoolName",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        PageSize = {
            type = "integer",
            traits = {
                http_query = "PageSize",
            },
        },
    },
}

M.GetDedicatedIpsOutput = {
    type = "structure",
    id = "GetDedicatedIpsOutput",
    members = {
        DedicatedIps = {
            type = "list",
            member = M.DedicatedIp,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetDeliverabilityDashboardOptionsInput = {
    type = "structure",
    id = "GetDeliverabilityDashboardOptionsInput",
}

M.DeliverabilityDashboardAccountStatus = {
    ACTIVE = "ACTIVE",
    PENDING_EXPIRATION = "PENDING_EXPIRATION",
    DISABLED = "DISABLED",
}

M.InboxPlacementTrackingOption = {
    type = "structure",
    id = "InboxPlacementTrackingOption",
    members = {
        Global = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        TrackedIsps = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DomainDeliverabilityTrackingOption = {
    type = "structure",
    id = "DomainDeliverabilityTrackingOption",
    members = {
        Domain = {
            type = "string",
        },
        SubscriptionStartDate = {
            type = "timestamp",
        },
        InboxPlacementTrackingOption = M.InboxPlacementTrackingOption,
    },
}

M.GetDeliverabilityDashboardOptionsOutput = {
    type = "structure",
    id = "GetDeliverabilityDashboardOptionsOutput",
    members = {
        DashboardEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        SubscriptionExpiryDate = {
            type = "timestamp",
        },
        AccountStatus = {
            type = "string",
        },
        ActiveSubscribedDomains = {
            type = "list",
            member = M.DomainDeliverabilityTrackingOption,
        },
        PendingExpirationSubscribedDomains = {
            type = "list",
            member = M.DomainDeliverabilityTrackingOption,
        },
    },
}

M.GetDeliverabilityTestReportInput = {
    type = "structure",
    id = "GetDeliverabilityTestReportInput",
    members = {
        ReportId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeliverabilityTestReport = {
    type = "structure",
    id = "DeliverabilityTestReport",
    members = {
        ReportId = {
            type = "string",
        },
        ReportName = {
            type = "string",
        },
        Subject = {
            type = "string",
        },
        FromEmailAddress = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        DeliverabilityTestStatus = {
            type = "string",
        },
    },
}

M.PlacementStatistics = {
    type = "structure",
    id = "PlacementStatistics",
    members = {
        InboxPercentage = {
            type = "double",
        },
        SpamPercentage = {
            type = "double",
        },
        MissingPercentage = {
            type = "double",
        },
        SpfPercentage = {
            type = "double",
        },
        DkimPercentage = {
            type = "double",
        },
    },
}

M.IspPlacement = {
    type = "structure",
    id = "IspPlacement",
    members = {
        IspName = {
            type = "string",
        },
        PlacementStatistics = M.PlacementStatistics,
    },
}

M.GetDeliverabilityTestReportOutput = {
    type = "structure",
    id = "GetDeliverabilityTestReportOutput",
    members = {
        DeliverabilityTestReport = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeliverabilityTestReport }),
        OverallPlacement = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PlacementStatistics }),
        IspPlacements = {
            type = "list",
            member = M.IspPlacement,
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetDomainDeliverabilityCampaignInput = {
    type = "structure",
    id = "GetDomainDeliverabilityCampaignInput",
    members = {
        CampaignId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DomainDeliverabilityCampaign = {
    type = "structure",
    id = "DomainDeliverabilityCampaign",
    members = {
        CampaignId = {
            type = "string",
        },
        ImageUrl = {
            type = "string",
        },
        Subject = {
            type = "string",
        },
        FromAddress = {
            type = "string",
        },
        SendingIps = {
            type = "list",
            member = { type = "string" },
        },
        FirstSeenDateTime = {
            type = "timestamp",
        },
        LastSeenDateTime = {
            type = "timestamp",
        },
        InboxCount = {
            type = "long",
        },
        SpamCount = {
            type = "long",
        },
        ReadRate = {
            type = "double",
        },
        DeleteRate = {
            type = "double",
        },
        ReadDeleteRate = {
            type = "double",
        },
        ProjectedVolume = {
            type = "long",
        },
        Esps = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetDomainDeliverabilityCampaignOutput = {
    type = "structure",
    id = "GetDomainDeliverabilityCampaignOutput",
    members = {
        DomainDeliverabilityCampaign = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainDeliverabilityCampaign }),
    },
}

M.GetDomainStatisticsReportInput = {
    type = "structure",
    id = "GetDomainStatisticsReportInput",
    members = {
        Domain = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StartDate = {
            type = "timestamp",
            traits = {
                http_query = "StartDate",
                required = true,
            },
        },
        EndDate = {
            type = "timestamp",
            traits = {
                http_query = "EndDate",
                required = true,
            },
        },
    },
}

M.DomainIspPlacement = {
    type = "structure",
    id = "DomainIspPlacement",
    members = {
        IspName = {
            type = "string",
        },
        InboxRawCount = {
            type = "long",
        },
        SpamRawCount = {
            type = "long",
        },
        InboxPercentage = {
            type = "double",
        },
        SpamPercentage = {
            type = "double",
        },
    },
}

M.VolumeStatistics = {
    type = "structure",
    id = "VolumeStatistics",
    members = {
        InboxRawCount = {
            type = "long",
        },
        SpamRawCount = {
            type = "long",
        },
        ProjectedInbox = {
            type = "long",
        },
        ProjectedSpam = {
            type = "long",
        },
    },
}

M.DailyVolume = {
    type = "structure",
    id = "DailyVolume",
    members = {
        StartDate = {
            type = "timestamp",
        },
        VolumeStatistics = M.VolumeStatistics,
        DomainIspPlacements = {
            type = "list",
            member = M.DomainIspPlacement,
        },
    },
}

M.OverallVolume = {
    type = "structure",
    id = "OverallVolume",
    members = {
        VolumeStatistics = M.VolumeStatistics,
        ReadRatePercent = {
            type = "double",
        },
        DomainIspPlacements = {
            type = "list",
            member = M.DomainIspPlacement,
        },
    },
}

M.GetDomainStatisticsReportOutput = {
    type = "structure",
    id = "GetDomainStatisticsReportOutput",
    members = {
        OverallVolume = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OverallVolume }),
        DailyVolumes = {
            type = "list",
            member = M.DailyVolume,
            traits = {
                required = true,
            },
        },
    },
}

M.GetEmailIdentityInput = {
    type = "structure",
    id = "GetEmailIdentityInput",
    members = {
        EmailIdentity = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.BehaviorOnMxFailure = {
    USE_DEFAULT_VALUE = "USE_DEFAULT_VALUE",
    REJECT_MESSAGE = "REJECT_MESSAGE",
}

M.MailFromDomainStatus = {
    PENDING = "PENDING",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    TEMPORARY_FAILURE = "TEMPORARY_FAILURE",
}

M.MailFromAttributes = {
    type = "structure",
    id = "MailFromAttributes",
    members = {
        MailFromDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MailFromDomainStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BehaviorOnMxFailure = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEmailIdentityOutput = {
    type = "structure",
    id = "GetEmailIdentityOutput",
    members = {
        IdentityType = {
            type = "string",
        },
        FeedbackForwardingStatus = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        VerifiedForSendingStatus = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DkimAttributes = M.DkimAttributes,
        MailFromAttributes = M.MailFromAttributes,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListConfigurationSetsInput = {
    type = "structure",
    id = "ListConfigurationSetsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        PageSize = {
            type = "integer",
            traits = {
                http_query = "PageSize",
            },
        },
    },
}

M.ListConfigurationSetsOutput = {
    type = "structure",
    id = "ListConfigurationSetsOutput",
    members = {
        ConfigurationSets = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDedicatedIpPoolsInput = {
    type = "structure",
    id = "ListDedicatedIpPoolsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        PageSize = {
            type = "integer",
            traits = {
                http_query = "PageSize",
            },
        },
    },
}

M.ListDedicatedIpPoolsOutput = {
    type = "structure",
    id = "ListDedicatedIpPoolsOutput",
    members = {
        DedicatedIpPools = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDeliverabilityTestReportsInput = {
    type = "structure",
    id = "ListDeliverabilityTestReportsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        PageSize = {
            type = "integer",
            traits = {
                http_query = "PageSize",
            },
        },
    },
}

M.ListDeliverabilityTestReportsOutput = {
    type = "structure",
    id = "ListDeliverabilityTestReportsOutput",
    members = {
        DeliverabilityTestReports = {
            type = "list",
            member = M.DeliverabilityTestReport,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDomainDeliverabilityCampaignsInput = {
    type = "structure",
    id = "ListDomainDeliverabilityCampaignsInput",
    members = {
        StartDate = {
            type = "timestamp",
            traits = {
                http_query = "StartDate",
                required = true,
            },
        },
        EndDate = {
            type = "timestamp",
            traits = {
                http_query = "EndDate",
                required = true,
            },
        },
        SubscribedDomain = {
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
        PageSize = {
            type = "integer",
            traits = {
                http_query = "PageSize",
            },
        },
    },
}

M.ListDomainDeliverabilityCampaignsOutput = {
    type = "structure",
    id = "ListDomainDeliverabilityCampaignsOutput",
    members = {
        DomainDeliverabilityCampaigns = {
            type = "list",
            member = M.DomainDeliverabilityCampaign,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEmailIdentitiesInput = {
    type = "structure",
    id = "ListEmailIdentitiesInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        PageSize = {
            type = "integer",
            traits = {
                http_query = "PageSize",
            },
        },
    },
}

M.IdentityInfo = {
    type = "structure",
    id = "IdentityInfo",
    members = {
        IdentityType = {
            type = "string",
        },
        IdentityName = {
            type = "string",
        },
        SendingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListEmailIdentitiesOutput = {
    type = "structure",
    id = "ListEmailIdentitiesOutput",
    members = {
        EmailIdentities = {
            type = "list",
            member = M.IdentityInfo,
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
        ResourceArn = {
            type = "string",
            traits = {
                http_query = "ResourceArn",
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
            traits = {
                required = true,
            },
        },
    },
}

M.PutAccountDedicatedIpWarmupAttributesInput = {
    type = "structure",
    id = "PutAccountDedicatedIpWarmupAttributesInput",
    members = {
        AutoWarmupEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutAccountDedicatedIpWarmupAttributesOutput = {
    type = "structure",
    id = "PutAccountDedicatedIpWarmupAttributesOutput",
}

M.PutAccountSendingAttributesInput = {
    type = "structure",
    id = "PutAccountSendingAttributesInput",
    members = {
        SendingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutAccountSendingAttributesOutput = {
    type = "structure",
    id = "PutAccountSendingAttributesOutput",
}

M.PutConfigurationSetDeliveryOptionsInput = {
    type = "structure",
    id = "PutConfigurationSetDeliveryOptionsInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TlsPolicy = {
            type = "string",
        },
        SendingPoolName = {
            type = "string",
        },
    },
}

M.PutConfigurationSetDeliveryOptionsOutput = {
    type = "structure",
    id = "PutConfigurationSetDeliveryOptionsOutput",
}

M.PutConfigurationSetReputationOptionsInput = {
    type = "structure",
    id = "PutConfigurationSetReputationOptionsInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReputationMetricsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutConfigurationSetReputationOptionsOutput = {
    type = "structure",
    id = "PutConfigurationSetReputationOptionsOutput",
}

M.PutConfigurationSetSendingOptionsInput = {
    type = "structure",
    id = "PutConfigurationSetSendingOptionsInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SendingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutConfigurationSetSendingOptionsOutput = {
    type = "structure",
    id = "PutConfigurationSetSendingOptionsOutput",
}

M.PutConfigurationSetTrackingOptionsInput = {
    type = "structure",
    id = "PutConfigurationSetTrackingOptionsInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CustomRedirectDomain = {
            type = "string",
        },
    },
}

M.PutConfigurationSetTrackingOptionsOutput = {
    type = "structure",
    id = "PutConfigurationSetTrackingOptionsOutput",
}

M.PutDedicatedIpInPoolInput = {
    type = "structure",
    id = "PutDedicatedIpInPoolInput",
    members = {
        Ip = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DestinationPoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDedicatedIpInPoolOutput = {
    type = "structure",
    id = "PutDedicatedIpInPoolOutput",
}

M.PutDedicatedIpWarmupAttributesInput = {
    type = "structure",
    id = "PutDedicatedIpWarmupAttributesInput",
    members = {
        Ip = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WarmupPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDedicatedIpWarmupAttributesOutput = {
    type = "structure",
    id = "PutDedicatedIpWarmupAttributesOutput",
}

M.PutDeliverabilityDashboardOptionInput = {
    type = "structure",
    id = "PutDeliverabilityDashboardOptionInput",
    members = {
        DashboardEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        SubscribedDomains = {
            type = "list",
            member = M.DomainDeliverabilityTrackingOption,
        },
    },
}

M.PutDeliverabilityDashboardOptionOutput = {
    type = "structure",
    id = "PutDeliverabilityDashboardOptionOutput",
}

M.PutEmailIdentityDkimAttributesInput = {
    type = "structure",
    id = "PutEmailIdentityDkimAttributesInput",
    members = {
        EmailIdentity = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SigningEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutEmailIdentityDkimAttributesOutput = {
    type = "structure",
    id = "PutEmailIdentityDkimAttributesOutput",
}

M.PutEmailIdentityFeedbackAttributesInput = {
    type = "structure",
    id = "PutEmailIdentityFeedbackAttributesInput",
    members = {
        EmailIdentity = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailForwardingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutEmailIdentityFeedbackAttributesOutput = {
    type = "structure",
    id = "PutEmailIdentityFeedbackAttributesOutput",
}

M.PutEmailIdentityMailFromAttributesInput = {
    type = "structure",
    id = "PutEmailIdentityMailFromAttributesInput",
    members = {
        EmailIdentity = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MailFromDomain = {
            type = "string",
        },
        BehaviorOnMxFailure = {
            type = "string",
        },
    },
}

M.PutEmailIdentityMailFromAttributesOutput = {
    type = "structure",
    id = "PutEmailIdentityMailFromAttributesOutput",
}

M.Destination = {
    type = "structure",
    id = "Destination",
    members = {
        ToAddresses = {
            type = "list",
            member = { type = "string" },
        },
        CcAddresses = {
            type = "list",
            member = { type = "string" },
        },
        BccAddresses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MessageTag = {
    type = "structure",
    id = "MessageTag",
    members = {
        Name = {
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

M.SendEmailInput = {
    type = "structure",
    id = "SendEmailInput",
    members = {
        FromEmailAddress = {
            type = "string",
        },
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        ReplyToAddresses = {
            type = "list",
            member = { type = "string" },
        },
        FeedbackForwardingEmailAddress = {
            type = "string",
        },
        Content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmailContent }),
        EmailTags = {
            type = "list",
            member = M.MessageTag,
        },
        ConfigurationSetName = {
            type = "string",
        },
    },
}

M.SendEmailOutput = {
    type = "structure",
    id = "SendEmailOutput",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
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
        ResourceArn = {
            type = "string",
            traits = {
                http_query = "ResourceArn",
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "TagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateConfigurationSetEventDestinationInput = {
    type = "structure",
    id = "UpdateConfigurationSetEventDestinationInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventDestinationName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EventDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventDestinationDefinition }),
    },
}

M.UpdateConfigurationSetEventDestinationOutput = {
    type = "structure",
    id = "UpdateConfigurationSetEventDestinationOutput",
}

return M
