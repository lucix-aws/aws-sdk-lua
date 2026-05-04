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
        TrackingOptions = {
            type = "structure",
        },
        DeliveryOptions = {
            type = "structure",
        },
        ReputationOptions = {
            type = "structure",
        },
        SendingOptions = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        },
        MatchingEventTypes = {
            type = "list",
            member_type = "string",
        },
        KinesisFirehoseDestination = {
            type = "structure",
        },
        CloudWatchDestination = {
            type = "structure",
        },
        SnsDestination = {
            type = "structure",
        },
        PinpointDestination = {
            type = "structure",
        },
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
        EventDestination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
        Text = {
            type = "structure",
        },
        Html = {
            type = "structure",
        },
    },
}

M.Message = {
    type = "structure",
    members = {
        Subject = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Body = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Simple = {
            type = "structure",
        },
        Raw = {
            type = "structure",
        },
        Template = {
            type = "structure",
        },
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
        Content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        },
        Status = {
            type = "string",
        },
        Tokens = {
            type = "list",
            member_type = "string",
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
        },
        DkimAttributes = {
            type = "structure",
        },
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
            type = "number",
        },
        MaxSendRate = {
            type = "number",
        },
        SentLast24Hours = {
            type = "number",
        },
    },
}

M.GetAccountOutput = {
    type = "structure",
    members = {
        SendQuota = {
            type = "structure",
        },
        SendingEnabled = {
            type = "boolean",
        },
        DedicatedIpAutoWarmupEnabled = {
            type = "boolean",
        },
        EnforcementStatus = {
            type = "string",
        },
        ProductionAccessEnabled = {
            type = "boolean",
        },
    },
}

M.GetBlacklistReportsInput = {
    type = "structure",
    members = {
        BlacklistItemNames = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "list",
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
        TrackingOptions = {
            type = "structure",
        },
        DeliveryOptions = {
            type = "structure",
        },
        ReputationOptions = {
            type = "structure",
        },
        SendingOptions = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
        },
        MatchingEventTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        KinesisFirehoseDestination = {
            type = "structure",
        },
        CloudWatchDestination = {
            type = "structure",
        },
        SnsDestination = {
            type = "structure",
        },
        PinpointDestination = {
            type = "structure",
        },
    },
}

M.GetConfigurationSetEventDestinationsOutput = {
    type = "structure",
    members = {
        EventDestinations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        DedicatedIp = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
        },
        TrackedIsps = {
            type = "list",
            member_type = "string",
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
        InboxPlacementTrackingOption = {
            type = "structure",
        },
    },
}

M.GetDeliverabilityDashboardOptionsOutput = {
    type = "structure",
    members = {
        DashboardEnabled = {
            type = "boolean",
            traits = {
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
            member_type = "structure",
        },
        PendingExpirationSubscribedDomains = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        SpamPercentage = {
            type = "number",
        },
        MissingPercentage = {
            type = "number",
        },
        SpfPercentage = {
            type = "number",
        },
        DkimPercentage = {
            type = "number",
        },
    },
}

M.IspPlacement = {
    type = "structure",
    members = {
        IspName = {
            type = "string",
        },
        PlacementStatistics = {
            type = "structure",
        },
    },
}

M.GetDeliverabilityTestReportOutput = {
    type = "structure",
    members = {
        DeliverabilityTestReport = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OverallPlacement = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        IspPlacements = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        FirstSeenDateTime = {
            type = "timestamp",
        },
        LastSeenDateTime = {
            type = "timestamp",
        },
        InboxCount = {
            type = "number",
        },
        SpamCount = {
            type = "number",
        },
        ReadRate = {
            type = "number",
        },
        DeleteRate = {
            type = "number",
        },
        ReadDeleteRate = {
            type = "number",
        },
        ProjectedVolume = {
            type = "number",
        },
        Esps = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetDomainDeliverabilityCampaignOutput = {
    type = "structure",
    members = {
        DomainDeliverabilityCampaign = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
        },
        SpamRawCount = {
            type = "number",
        },
        InboxPercentage = {
            type = "number",
        },
        SpamPercentage = {
            type = "number",
        },
    },
}

M.VolumeStatistics = {
    type = "structure",
    members = {
        InboxRawCount = {
            type = "number",
        },
        SpamRawCount = {
            type = "number",
        },
        ProjectedInbox = {
            type = "number",
        },
        ProjectedSpam = {
            type = "number",
        },
    },
}

M.DailyVolume = {
    type = "structure",
    members = {
        StartDate = {
            type = "timestamp",
        },
        VolumeStatistics = {
            type = "structure",
        },
        DomainIspPlacements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.OverallVolume = {
    type = "structure",
    members = {
        VolumeStatistics = {
            type = "structure",
        },
        ReadRatePercent = {
            type = "number",
        },
        DomainIspPlacements = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetDomainStatisticsReportOutput = {
    type = "structure",
    members = {
        OverallVolume = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DailyVolumes = {
            type = "list",
            member_type = "structure",
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
        },
        VerifiedForSendingStatus = {
            type = "boolean",
        },
        DkimAttributes = {
            type = "structure",
        },
        MailFromAttributes = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "string",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
        },
    },
}

M.ListEmailIdentitiesOutput = {
    type = "structure",
    members = {
        EmailIdentities = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
                required = true,
            },
        },
        SubscribedDomains = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        CcAddresses = {
            type = "list",
            member_type = "string",
        },
        BccAddresses = {
            type = "list",
            member_type = "string",
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
        Destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ReplyToAddresses = {
            type = "list",
            member_type = "string",
        },
        FeedbackForwardingEmailAddress = {
            type = "string",
        },
        Content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        EmailTags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
        EventDestination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConfigurationSetEventDestinationOutput = {
    type = "structure",
}

return M
