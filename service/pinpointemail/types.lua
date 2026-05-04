local M = {}

M.AccountSuspendedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
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
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
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
    members = {
        ApplicationArn = {
            type = "string",
        },
    },
}

M.SnsDestination = {
    type = "structure",
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
}

M.CreateDedicatedIpPoolInput = {
    type = "structure",
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
}

M.RawMessage = {
    type = "structure",
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
    members = {
        Text = M.Content,
        Html = M.Content,
    },
}

M.Message = {
    type = "structure",
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
    members = {
        Simple = M.Message,
        Raw = M.RawMessage,
        Template = M.Template,
    },
}

M.CreateDeliverabilityTestReportInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MessageRejected = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SendingPausedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateEmailIdentityInput = {
    type = "structure",
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
}

M.DeleteConfigurationSetEventDestinationInput = {
    type = "structure",
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
}

M.DeleteDedicatedIpPoolInput = {
    type = "structure",
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
}

M.DeleteEmailIdentityInput = {
    type = "structure",
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
}

M.GetAccountInput = {
    type = "structure",
}

M.SendQuota = {
    type = "structure",
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
    members = {
        EventDestinations = {
            type = "list",
            member = M.EventDestination,
        },
    },
}

M.GetDedicatedIpInput = {
    type = "structure",
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
    members = {
        DedicatedIp = M.DedicatedIp,
    },
}

M.GetDedicatedIpsInput = {
    type = "structure",
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
}

M.DeliverabilityDashboardAccountStatus = {
    ACTIVE = "ACTIVE",
    PENDING_EXPIRATION = "PENDING_EXPIRATION",
    DISABLED = "DISABLED",
}

M.InboxPlacementTrackingOption = {
    type = "structure",
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
    members = {
        IspName = {
            type = "string",
        },
        PlacementStatistics = M.PlacementStatistics,
    },
}

M.GetDeliverabilityTestReportOutput = {
    type = "structure",
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
    members = {
        DomainDeliverabilityCampaign = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainDeliverabilityCampaign }),
    },
}

M.GetDomainStatisticsReportInput = {
    type = "structure",
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
}

M.PutAccountSendingAttributesInput = {
    type = "structure",
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
}

M.PutConfigurationSetDeliveryOptionsInput = {
    type = "structure",
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
}

M.PutConfigurationSetReputationOptionsInput = {
    type = "structure",
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
}

M.PutConfigurationSetSendingOptionsInput = {
    type = "structure",
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
}

M.PutConfigurationSetTrackingOptionsInput = {
    type = "structure",
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
}

M.PutDedicatedIpInPoolInput = {
    type = "structure",
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
}

M.PutDedicatedIpWarmupAttributesInput = {
    type = "structure",
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
}

M.PutDeliverabilityDashboardOptionInput = {
    type = "structure",
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
}

M.PutEmailIdentityDkimAttributesInput = {
    type = "structure",
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
}

M.PutEmailIdentityFeedbackAttributesInput = {
    type = "structure",
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
}

M.PutEmailIdentityMailFromAttributesInput = {
    type = "structure",
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
}

M.Destination = {
    type = "structure",
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
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateConfigurationSetEventDestinationInput = {
    type = "structure",
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
}

return M
