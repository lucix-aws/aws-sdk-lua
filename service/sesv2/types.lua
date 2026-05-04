local M = {}

M.ContactLanguage = {
    EN = "EN",
    JA = "JA",
}

M.MailType = {
    MARKETING = "MARKETING",
    TRANSACTIONAL = "TRANSACTIONAL",
}

M.ReviewStatus = {
    PENDING = "PENDING",
    FAILED = "FAILED",
    GRANTED = "GRANTED",
    DENIED = "DENIED",
}

M.ReviewDetails = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        CaseId = {
            type = "string",
        },
    },
}

M.AccountDetails = {
    type = "structure",
    members = {
        MailType = {
            type = "string",
        },
        WebsiteURL = {
            type = "string",
        },
        ContactLanguage = {
            type = "string",
        },
        UseCaseDescription = {
            type = "string",
        },
        AdditionalContactEmailAddresses = {
            type = "list",
            member = { type = "string" },
        },
        ReviewDetails = M.ReviewDetails,
    },
}

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

M.ArchivingOptions = {
    type = "structure",
    members = {
        ArchiveArn = {
            type = "string",
        },
    },
}

M.AttachmentContentDisposition = {
    ATTACHMENT = "ATTACHMENT",
    INLINE = "INLINE",
}

M.AttachmentContentTransferEncoding = {
    BASE64 = "BASE64",
    QUOTED_PRINTABLE = "QUOTED_PRINTABLE",
    SEVEN_BIT = "SEVEN_BIT",
}

M.Attachment = {
    type = "structure",
    members = {
        RawContent = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        ContentDisposition = {
            type = "string",
        },
        FileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentDescription = {
            type = "string",
        },
        ContentId = {
            type = "string",
        },
        ContentTransferEncoding = {
            type = "string",
        },
        ContentType = {
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

M.MetricDimensionName = {
    EMAIL_IDENTITY = "EMAIL_IDENTITY",
    CONFIGURATION_SET = "CONFIGURATION_SET",
    ISP = "ISP",
}

M.Metric = {
    SEND = "SEND",
    COMPLAINT = "COMPLAINT",
    PERMANENT_BOUNCE = "PERMANENT_BOUNCE",
    TRANSIENT_BOUNCE = "TRANSIENT_BOUNCE",
    OPEN = "OPEN",
    CLICK = "CLICK",
    DELIVERY = "DELIVERY",
    DELIVERY_OPEN = "DELIVERY_OPEN",
    DELIVERY_CLICK = "DELIVERY_CLICK",
    DELIVERY_COMPLAINT = "DELIVERY_COMPLAINT",
}

M.MetricNamespace = {
    VDM = "VDM",
}

M.BatchGetMetricDataQuery = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metric = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        StartDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetMetricDataInput = {
    type = "structure",
    members = {
        Queries = {
            type = "list",
            member = M.BatchGetMetricDataQuery,
            traits = {
                required = true,
            },
        },
    },
}

M.QueryErrorCode = {
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
    ACCESS_DENIED = "ACCESS_DENIED",
}

M.MetricDataError = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.MetricDataResult = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Timestamps = {
            type = "list",
            member = { type = "timestamp" },
        },
        Values = {
            type = "list",
            member = { type = "long" },
        },
    },
}

M.BatchGetMetricDataOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member = M.MetricDataResult,
        },
        Errors = {
            type = "list",
            member = M.MetricDataError,
        },
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    error = "server",
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

M.BehaviorOnMxFailure = {
    USE_DEFAULT_VALUE = "USE_DEFAULT_VALUE",
    REJECT_MESSAGE = "REJECT_MESSAGE",
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

M.BounceType = {
    UNDETERMINED = "UNDETERMINED",
    TRANSIENT = "TRANSIENT",
    PERMANENT = "PERMANENT",
}

M.Bounce = {
    type = "structure",
    members = {
        BounceType = {
            type = "string",
        },
        BounceSubType = {
            type = "string",
        },
        DiagnosticCode = {
            type = "string",
        },
    },
}

M.MessageHeader = {
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

M.EmailTemplateContent = {
    type = "structure",
    members = {
        Subject = {
            type = "string",
        },
        Text = {
            type = "string",
        },
        Html = {
            type = "string",
        },
    },
}

M.Template = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
        },
        TemplateArn = {
            type = "string",
        },
        TemplateContent = M.EmailTemplateContent,
        TemplateData = {
            type = "string",
        },
        Headers = {
            type = "list",
            member = M.MessageHeader,
        },
        Attachments = {
            type = "list",
            member = M.Attachment,
        },
    },
}

M.BulkEmailContent = {
    type = "structure",
    members = {
        Template = M.Template,
    },
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

M.ReplacementTemplate = {
    type = "structure",
    members = {
        ReplacementTemplateData = {
            type = "string",
        },
    },
}

M.ReplacementEmailContent = {
    type = "structure",
    members = {
        ReplacementTemplate = M.ReplacementTemplate,
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

M.BulkEmailEntry = {
    type = "structure",
    members = {
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        ReplacementTags = {
            type = "list",
            member = M.MessageTag,
        },
        ReplacementEmailContent = M.ReplacementEmailContent,
        ReplacementHeaders = {
            type = "list",
            member = M.MessageHeader,
        },
    },
}

M.BulkEmailStatus = {
    SUCCESS = "SUCCESS",
    MESSAGE_REJECTED = "MESSAGE_REJECTED",
    MAIL_FROM_DOMAIN_NOT_VERIFIED = "MAIL_FROM_DOMAIN_NOT_VERIFIED",
    CONFIGURATION_SET_NOT_FOUND = "CONFIGURATION_SET_NOT_FOUND",
    TEMPLATE_NOT_FOUND = "TEMPLATE_NOT_FOUND",
    ACCOUNT_SUSPENDED = "ACCOUNT_SUSPENDED",
    ACCOUNT_THROTTLED = "ACCOUNT_THROTTLED",
    ACCOUNT_DAILY_QUOTA_EXCEEDED = "ACCOUNT_DAILY_QUOTA_EXCEEDED",
    INVALID_SENDING_POOL_NAME = "INVALID_SENDING_POOL_NAME",
    ACCOUNT_SENDING_PAUSED = "ACCOUNT_SENDING_PAUSED",
    CONFIGURATION_SET_SENDING_PAUSED = "CONFIGURATION_SET_SENDING_PAUSED",
    INVALID_PARAMETER = "INVALID_PARAMETER",
    TRANSIENT_FAILURE = "TRANSIENT_FAILURE",
    FAILED = "FAILED",
}

M.BulkEmailEntryResult = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        Error = {
            type = "string",
        },
        MessageId = {
            type = "string",
        },
    },
}

M.CancelExportJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelExportJobOutput = {
    type = "structure",
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

M.Complaint = {
    type = "structure",
    members = {
        ComplaintSubType = {
            type = "string",
        },
        ComplaintFeedbackType = {
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

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionStatus = {
    OPT_IN = "OPT_IN",
    OPT_OUT = "OPT_OUT",
}

M.TopicPreference = {
    type = "structure",
    members = {
        TopicName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubscriptionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Contact = {
    type = "structure",
    members = {
        EmailAddress = {
            type = "string",
        },
        TopicPreferences = {
            type = "list",
            member = M.TopicPreference,
        },
        TopicDefaultPreferences = {
            type = "list",
            member = M.TopicPreference,
        },
        UnsubscribeAll = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ContactList = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ContactListImportAction = {
    DELETE = "DELETE",
    PUT = "PUT",
}

M.ContactListDestination = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactListImportAction = {
            type = "string",
            traits = {
                required = true,
            },
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
        MaxDeliverySeconds = {
            type = "long",
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

M.SuppressionListReason = {
    BOUNCE = "BOUNCE",
    COMPLAINT = "COMPLAINT",
}

M.FeatureStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SuppressionConfidenceVerdictThreshold = {
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    MANAGED = "MANAGED",
}

M.SuppressionConfidenceThreshold = {
    type = "structure",
    members = {
        ConfidenceVerdictThreshold = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SuppressionConditionThreshold = {
    type = "structure",
    members = {
        ConditionThresholdEnabled = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OverallConfidenceThreshold = M.SuppressionConfidenceThreshold,
    },
}

M.SuppressionValidationOptions = {
    type = "structure",
    members = {
        ConditionThreshold = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SuppressionConditionThreshold }),
    },
}

M.SuppressionOptions = {
    type = "structure",
    members = {
        SuppressedReasons = {
            type = "list",
            member = { type = "string" },
        },
        ValidationOptions = M.SuppressionValidationOptions,
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

M.HttpsPolicy = {
    REQUIRE = "REQUIRE",
    REQUIRE_OPEN_ONLY = "REQUIRE_OPEN_ONLY",
    OPTIONAL = "OPTIONAL",
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
        HttpsPolicy = {
            type = "string",
        },
    },
}

M.DashboardOptions = {
    type = "structure",
    members = {
        EngagementMetrics = {
            type = "string",
        },
    },
}

M.GuardianOptions = {
    type = "structure",
    members = {
        OptimizedSharedDelivery = {
            type = "string",
        },
    },
}

M.VdmOptions = {
    type = "structure",
    members = {
        DashboardOptions = M.DashboardOptions,
        GuardianOptions = M.GuardianOptions,
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
        SuppressionOptions = M.SuppressionOptions,
        VdmOptions = M.VdmOptions,
        ArchivingOptions = M.ArchivingOptions,
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

M.EventBridgeDestination = {
    type = "structure",
    members = {
        EventBusArn = {
            type = "string",
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
    DELIVERY_DELAY = "DELIVERY_DELAY",
    SUBSCRIPTION = "SUBSCRIPTION",
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
        EventBridgeDestination = M.EventBridgeDestination,
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

M.CreateContactInput = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TopicPreferences = {
            type = "list",
            member = M.TopicPreference,
        },
        UnsubscribeAll = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AttributesData = {
            type = "string",
        },
    },
}

M.CreateContactOutput = {
    type = "structure",
}

M.Topic = {
    type = "structure",
    members = {
        TopicName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DefaultSubscriptionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateContactListInput = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Topics = {
            type = "list",
            member = M.Topic,
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateContactListOutput = {
    type = "structure",
}

M.CreateCustomVerificationEmailTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FromEmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateSubject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SuccessRedirectionURL = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureRedirectionURL = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCustomVerificationEmailTemplateOutput = {
    type = "structure",
}

M.ScalingMode = {
    STANDARD = "STANDARD",
    MANAGED = "MANAGED",
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
        ScalingMode = {
            type = "string",
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

M.Message = {
    type = "structure",
    members = {
        Subject = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Content }),
        Body = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Body }),
        Headers = {
            type = "list",
            member = M.MessageHeader,
        },
        Attachments = {
            type = "list",
            member = M.Attachment,
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

M.DkimSigningAttributesOrigin = {
    AWS_SES = "AWS_SES",
    EXTERNAL = "EXTERNAL",
    AWS_SES_AF_SOUTH_1 = "AWS_SES_AF_SOUTH_1",
    AWS_SES_EU_NORTH_1 = "AWS_SES_EU_NORTH_1",
    AWS_SES_AP_SOUTH_1 = "AWS_SES_AP_SOUTH_1",
    AWS_SES_EU_WEST_3 = "AWS_SES_EU_WEST_3",
    AWS_SES_EU_WEST_2 = "AWS_SES_EU_WEST_2",
    AWS_SES_EU_SOUTH_1 = "AWS_SES_EU_SOUTH_1",
    AWS_SES_EU_WEST_1 = "AWS_SES_EU_WEST_1",
    AWS_SES_AP_NORTHEAST_3 = "AWS_SES_AP_NORTHEAST_3",
    AWS_SES_AP_NORTHEAST_2 = "AWS_SES_AP_NORTHEAST_2",
    AWS_SES_ME_SOUTH_1 = "AWS_SES_ME_SOUTH_1",
    AWS_SES_AP_NORTHEAST_1 = "AWS_SES_AP_NORTHEAST_1",
    AWS_SES_IL_CENTRAL_1 = "AWS_SES_IL_CENTRAL_1",
    AWS_SES_SA_EAST_1 = "AWS_SES_SA_EAST_1",
    AWS_SES_CA_CENTRAL_1 = "AWS_SES_CA_CENTRAL_1",
    AWS_SES_AP_SOUTHEAST_1 = "AWS_SES_AP_SOUTHEAST_1",
    AWS_SES_AP_SOUTHEAST_2 = "AWS_SES_AP_SOUTHEAST_2",
    AWS_SES_AP_SOUTHEAST_3 = "AWS_SES_AP_SOUTHEAST_3",
    AWS_SES_EU_CENTRAL_1 = "AWS_SES_EU_CENTRAL_1",
    AWS_SES_US_EAST_1 = "AWS_SES_US_EAST_1",
    AWS_SES_US_EAST_2 = "AWS_SES_US_EAST_2",
    AWS_SES_US_WEST_1 = "AWS_SES_US_WEST_1",
    AWS_SES_US_WEST_2 = "AWS_SES_US_WEST_2",
    AWS_SES_ME_CENTRAL_1 = "AWS_SES_ME_CENTRAL_1",
    AWS_SES_AP_SOUTH_2 = "AWS_SES_AP_SOUTH_2",
    AWS_SES_EU_CENTRAL_2 = "AWS_SES_EU_CENTRAL_2",
    AWS_SES_AP_SOUTHEAST_5 = "AWS_SES_AP_SOUTHEAST_5",
    AWS_SES_CA_WEST_1 = "AWS_SES_CA_WEST_1",
}

M.DkimSigningKeyLength = {
    RSA_1024_BIT = "RSA_1024_BIT",
    RSA_2048_BIT = "RSA_2048_BIT",
}

M.DkimSigningAttributes = {
    type = "structure",
    members = {
        DomainSigningSelector = {
            type = "string",
        },
        DomainSigningPrivateKey = {
            type = "string",
        },
        NextSigningKeyLength = {
            type = "string",
        },
        DomainSigningAttributesOrigin = {
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
        DkimSigningAttributes = M.DkimSigningAttributes,
        ConfigurationSetName = {
            type = "string",
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
        SigningHostedZone = {
            type = "string",
        },
        SigningAttributesOrigin = {
            type = "string",
        },
        NextSigningKeyLength = {
            type = "string",
        },
        CurrentSigningKeyLength = {
            type = "string",
        },
        LastKeyGenerationTimestamp = {
            type = "timestamp",
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

M.CreateEmailIdentityPolicyInput = {
    type = "structure",
    members = {
        EmailIdentity = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                http_label = true,
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

M.CreateEmailIdentityPolicyOutput = {
    type = "structure",
}

M.CreateEmailTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateContent = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmailTemplateContent }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateEmailTemplateOutput = {
    type = "structure",
}

M.DeliveryEventType = {
    SEND = "SEND",
    DELIVERY = "DELIVERY",
    TRANSIENT_BOUNCE = "TRANSIENT_BOUNCE",
    PERMANENT_BOUNCE = "PERMANENT_BOUNCE",
    UNDETERMINED_BOUNCE = "UNDETERMINED_BOUNCE",
    COMPLAINT = "COMPLAINT",
}

M.EngagementEventType = {
    OPEN = "OPEN",
    CLICK = "CLICK",
}

M.MessageInsightsFilters = {
    type = "structure",
    members = {
        FromEmailAddress = {
            type = "list",
            member = { type = "string" },
        },
        Destination = {
            type = "list",
            member = { type = "string" },
        },
        Subject = {
            type = "list",
            member = { type = "string" },
        },
        Isp = {
            type = "list",
            member = { type = "string" },
        },
        LastDeliveryEvent = {
            type = "list",
            member = { type = "string" },
        },
        LastEngagementEvent = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MessageInsightsDataSource = {
    type = "structure",
    members = {
        StartDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Include = M.MessageInsightsFilters,
        Exclude = M.MessageInsightsFilters,
        MaxResults = {
            type = "integer",
        },
    },
}

M.MetricAggregation = {
    RATE = "RATE",
    VOLUME = "VOLUME",
}

M.ExportMetric = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Aggregation = {
            type = "string",
        },
    },
}

M.MetricsDataSource = {
    type = "structure",
    members = {
        Dimensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metrics = {
            type = "list",
            member = M.ExportMetric,
            traits = {
                required = true,
            },
        },
        StartDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportDataSource = {
    type = "structure",
    members = {
        MetricsDataSource = M.MetricsDataSource,
        MessageInsightsDataSource = M.MessageInsightsDataSource,
    },
}

M.DataFormat = {
    CSV = "CSV",
    JSON = "JSON",
}

M.ExportDestination = {
    type = "structure",
    members = {
        DataFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Url = {
            type = "string",
        },
    },
}

M.CreateExportJobInput = {
    type = "structure",
    members = {
        ExportDataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportDataSource }),
        ExportDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportDestination }),
    },
}

M.CreateExportJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.ImportDataSource = {
    type = "structure",
    members = {
        S3Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SuppressionListImportAction = {
    DELETE = "DELETE",
    PUT = "PUT",
}

M.SuppressionListDestination = {
    type = "structure",
    members = {
        SuppressionListImportAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportDestination = {
    type = "structure",
    members = {
        SuppressionListDestination = M.SuppressionListDestination,
        ContactListDestination = M.ContactListDestination,
    },
}

M.CreateImportJobInput = {
    type = "structure",
    members = {
        ImportDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImportDestination }),
        ImportDataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImportDataSource }),
    },
}

M.CreateImportJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.RouteDetails = {
    type = "structure",
    members = {
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Details = {
    type = "structure",
    members = {
        RoutesDetails = {
            type = "list",
            member = M.RouteDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMultiRegionEndpointInput = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Details = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Details }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.Status = {
    CREATING = "CREATING",
    READY = "READY",
    FAILED = "FAILED",
    DELETING = "DELETING",
}

M.CreateMultiRegionEndpointOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
    },
}

M.CreateTenantInput = {
    type = "structure",
    members = {
        TenantName = {
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

M.SendingStatus = {
    ENABLED = "ENABLED",
    REINSTATED = "REINSTATED",
    DISABLED = "DISABLED",
}

M.CreateTenantOutput = {
    type = "structure",
    members = {
        TenantName = {
            type = "string",
        },
        TenantId = {
            type = "string",
        },
        TenantArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SendingStatus = {
            type = "string",
        },
    },
}

M.CreateTenantResourceAssociationInput = {
    type = "structure",
    members = {
        TenantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTenantResourceAssociationOutput = {
    type = "structure",
}

M.CustomVerificationEmailTemplateMetadata = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
        },
        FromEmailAddress = {
            type = "string",
        },
        TemplateSubject = {
            type = "string",
        },
        SuccessRedirectionURL = {
            type = "string",
        },
        FailureRedirectionURL = {
            type = "string",
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

M.DashboardAttributes = {
    type = "structure",
    members = {
        EngagementMetrics = {
            type = "string",
        },
    },
}

M.WarmupStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    DONE = "DONE",
    NOT_APPLICABLE = "NOT_APPLICABLE",
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

M.DedicatedIpPool = {
    type = "structure",
    members = {
        PoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScalingMode = {
            type = "string",
            traits = {
                required = true,
            },
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

M.DeleteContactInput = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailAddress = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteContactOutput = {
    type = "structure",
}

M.DeleteContactListInput = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteContactListOutput = {
    type = "structure",
}

M.DeleteCustomVerificationEmailTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCustomVerificationEmailTemplateOutput = {
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

M.DeleteEmailIdentityPolicyInput = {
    type = "structure",
    members = {
        EmailIdentity = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEmailIdentityPolicyOutput = {
    type = "structure",
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
    },
}

M.DeleteEmailTemplateOutput = {
    type = "structure",
}

M.DeleteMultiRegionEndpointInput = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMultiRegionEndpointOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.DeleteSuppressedDestinationInput = {
    type = "structure",
    members = {
        EmailAddress = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSuppressedDestinationOutput = {
    type = "structure",
}

M.DeleteTenantInput = {
    type = "structure",
    members = {
        TenantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTenantOutput = {
    type = "structure",
}

M.DeleteTenantResourceAssociationInput = {
    type = "structure",
    members = {
        TenantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTenantResourceAssociationOutput = {
    type = "structure",
}

M.DeliverabilityDashboardAccountStatus = {
    ACTIVE = "ACTIVE",
    PENDING_EXPIRATION = "PENDING_EXPIRATION",
    DISABLED = "DISABLED",
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

M.EmailAddressInsightsConfidenceVerdict = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.EmailAddressInsightsVerdict = {
    type = "structure",
    members = {
        ConfidenceVerdict = {
            type = "string",
        },
    },
}

M.EmailAddressInsightsMailboxEvaluations = {
    type = "structure",
    members = {
        HasValidSyntax = M.EmailAddressInsightsVerdict,
        HasValidDnsRecords = M.EmailAddressInsightsVerdict,
        MailboxExists = M.EmailAddressInsightsVerdict,
        IsRoleAddress = M.EmailAddressInsightsVerdict,
        IsDisposable = M.EmailAddressInsightsVerdict,
        IsRandomInput = M.EmailAddressInsightsVerdict,
    },
}

M.EventDetails = {
    type = "structure",
    members = {
        Bounce = M.Bounce,
        Complaint = M.Complaint,
    },
}

M.InsightsEvent = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
        },
        Type = {
            type = "string",
        },
        Details = M.EventDetails,
    },
}

M.EmailInsights = {
    type = "structure",
    members = {
        Destination = {
            type = "string",
        },
        Isp = {
            type = "string",
        },
        Events = {
            type = "list",
            member = M.InsightsEvent,
        },
    },
}

M.EmailTemplateMetadata = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
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
        EventBridgeDestination = M.EventBridgeDestination,
        PinpointDestination = M.PinpointDestination,
    },
}

M.ExportSourceType = {
    METRICS_DATA = "METRICS_DATA",
    MESSAGE_INSIGHTS = "MESSAGE_INSIGHTS",
}

M.JobStatus = {
    CREATED = "CREATED",
    PROCESSING = "PROCESSING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.ExportJobSummary = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        ExportSourceType = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        CompletedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ExportStatistics = {
    type = "structure",
    members = {
        ProcessedRecordsCount = {
            type = "integer",
        },
        ExportedRecordsCount = {
            type = "integer",
        },
    },
}

M.FailureInfo = {
    type = "structure",
    members = {
        FailedRecordsS3Url = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
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

M.SuppressionValidationAttributes = {
    type = "structure",
    members = {
        ConditionThreshold = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SuppressionConditionThreshold }),
    },
}

M.SuppressionAttributes = {
    type = "structure",
    members = {
        SuppressedReasons = {
            type = "list",
            member = { type = "string" },
        },
        ValidationAttributes = M.SuppressionValidationAttributes,
    },
}

M.GuardianAttributes = {
    type = "structure",
    members = {
        OptimizedSharedDelivery = {
            type = "string",
        },
    },
}

M.VdmAttributes = {
    type = "structure",
    members = {
        VdmEnabled = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DashboardAttributes = M.DashboardAttributes,
        GuardianAttributes = M.GuardianAttributes,
    },
}

M.GetAccountOutput = {
    type = "structure",
    members = {
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
        SendQuota = M.SendQuota,
        SendingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SuppressionAttributes = M.SuppressionAttributes,
        Details = M.AccountDetails,
        VdmAttributes = M.VdmAttributes,
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
        SuppressionOptions = M.SuppressionOptions,
        VdmOptions = M.VdmOptions,
        ArchivingOptions = M.ArchivingOptions,
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

M.GetConfigurationSetEventDestinationsOutput = {
    type = "structure",
    members = {
        EventDestinations = {
            type = "list",
            member = M.EventDestination,
        },
    },
}

M.GetContactInput = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailAddress = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetContactOutput = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        TopicPreferences = {
            type = "list",
            member = M.TopicPreference,
        },
        TopicDefaultPreferences = {
            type = "list",
            member = M.TopicPreference,
        },
        UnsubscribeAll = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AttributesData = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetContactListInput = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetContactListOutput = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
        },
        Topics = {
            type = "list",
            member = M.Topic,
        },
        Description = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetCustomVerificationEmailTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCustomVerificationEmailTemplateOutput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
        },
        FromEmailAddress = {
            type = "string",
        },
        TemplateSubject = {
            type = "string",
        },
        TemplateContent = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SuccessRedirectionURL = {
            type = "string",
        },
        FailureRedirectionURL = {
            type = "string",
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

M.GetDedicatedIpOutput = {
    type = "structure",
    members = {
        DedicatedIp = M.DedicatedIp,
    },
}

M.GetDedicatedIpPoolInput = {
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

M.GetDedicatedIpPoolOutput = {
    type = "structure",
    members = {
        DedicatedIpPool = M.DedicatedIpPool,
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

M.GetEmailAddressInsightsInput = {
    type = "structure",
    members = {
        EmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MailboxValidation = {
    type = "structure",
    members = {
        IsValid = M.EmailAddressInsightsVerdict,
        Evaluations = M.EmailAddressInsightsMailboxEvaluations,
    },
}

M.GetEmailAddressInsightsOutput = {
    type = "structure",
    members = {
        MailboxValidation = M.MailboxValidation,
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

M.VerificationError = {
    SERVICE_ERROR = "SERVICE_ERROR",
    DNS_SERVER_ERROR = "DNS_SERVER_ERROR",
    HOST_NOT_FOUND = "HOST_NOT_FOUND",
    TYPE_NOT_FOUND = "TYPE_NOT_FOUND",
    INVALID_VALUE = "INVALID_VALUE",
    REPLICATION_ACCESS_DENIED = "REPLICATION_ACCESS_DENIED",
    REPLICATION_PRIMARY_NOT_FOUND = "REPLICATION_PRIMARY_NOT_FOUND",
    REPLICATION_PRIMARY_BYO_DKIM_NOT_SUPPORTED = "REPLICATION_PRIMARY_BYO_DKIM_NOT_SUPPORTED",
    REPLICATION_REPLICA_AS_PRIMARY_NOT_SUPPORTED = "REPLICATION_REPLICA_AS_PRIMARY_NOT_SUPPORTED",
    REPLICATION_PRIMARY_INVALID_REGION = "REPLICATION_PRIMARY_INVALID_REGION",
}

M.SOARecord = {
    type = "structure",
    members = {
        PrimaryNameServer = {
            type = "string",
        },
        AdminEmail = {
            type = "string",
        },
        SerialNumber = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.VerificationInfo = {
    type = "structure",
    members = {
        LastCheckedTimestamp = {
            type = "timestamp",
        },
        LastSuccessTimestamp = {
            type = "timestamp",
        },
        ErrorType = {
            type = "string",
        },
        SOARecord = M.SOARecord,
    },
}

M.VerificationStatus = {
    PENDING = "PENDING",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    TEMPORARY_FAILURE = "TEMPORARY_FAILURE",
    NOT_STARTED = "NOT_STARTED",
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
        Policies = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ConfigurationSetName = {
            type = "string",
        },
        VerificationStatus = {
            type = "string",
        },
        VerificationInfo = M.VerificationInfo,
    },
}

M.GetEmailIdentityPoliciesInput = {
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

M.GetEmailIdentityPoliciesOutput = {
    type = "structure",
    members = {
        Policies = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    },
}

M.GetEmailTemplateOutput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateContent = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmailTemplateContent }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetExportJobInput = {
    type = "structure",
    members = {
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
        JobId = {
            type = "string",
        },
        ExportSourceType = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
        ExportDestination = M.ExportDestination,
        ExportDataSource = M.ExportDataSource,
        CreatedTimestamp = {
            type = "timestamp",
        },
        CompletedTimestamp = {
            type = "timestamp",
        },
        FailureInfo = M.FailureInfo,
        Statistics = M.ExportStatistics,
    },
}

M.GetImportJobInput = {
    type = "structure",
    members = {
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
        JobId = {
            type = "string",
        },
        ImportDestination = M.ImportDestination,
        ImportDataSource = M.ImportDataSource,
        FailureInfo = M.FailureInfo,
        JobStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        CompletedTimestamp = {
            type = "timestamp",
        },
        ProcessedRecordsCount = {
            type = "integer",
        },
        FailedRecordsCount = {
            type = "integer",
        },
    },
}

M.GetMessageInsightsInput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMessageInsightsOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
        FromEmailAddress = {
            type = "string",
        },
        Subject = {
            type = "string",
        },
        EmailTags = {
            type = "list",
            member = M.MessageTag,
        },
        Insights = {
            type = "list",
            member = M.EmailInsights,
        },
    },
}

M.GetMultiRegionEndpointInput = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Route = {
    type = "structure",
    members = {
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMultiRegionEndpointOutput = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        Routes = {
            type = "list",
            member = M.Route,
        },
        Status = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ReputationEntityType = {
    RESOURCE = "RESOURCE",
}

M.GetReputationEntityInput = {
    type = "structure",
    members = {
        ReputationEntityReference = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReputationEntityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StatusRecord = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        Cause = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.RecommendationImpact = {
    LOW = "LOW",
    HIGH = "HIGH",
}

M.ReputationEntity = {
    type = "structure",
    members = {
        ReputationEntityReference = {
            type = "string",
        },
        ReputationEntityType = {
            type = "string",
        },
        ReputationManagementPolicy = {
            type = "string",
        },
        CustomerManagedStatus = M.StatusRecord,
        AwsSesManagedStatus = M.StatusRecord,
        SendingStatusAggregate = {
            type = "string",
        },
        ReputationImpact = {
            type = "string",
        },
    },
}

M.GetReputationEntityOutput = {
    type = "structure",
    members = {
        ReputationEntity = M.ReputationEntity,
    },
}

M.GetSuppressedDestinationInput = {
    type = "structure",
    members = {
        EmailAddress = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SuppressedDestinationAttributes = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
        FeedbackId = {
            type = "string",
        },
    },
}

M.SuppressedDestination = {
    type = "structure",
    members = {
        EmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastUpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Attributes = M.SuppressedDestinationAttributes,
    },
}

M.GetSuppressedDestinationOutput = {
    type = "structure",
    members = {
        SuppressedDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SuppressedDestination }),
    },
}

M.GetTenantInput = {
    type = "structure",
    members = {
        TenantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Tenant = {
    type = "structure",
    members = {
        TenantName = {
            type = "string",
        },
        TenantId = {
            type = "string",
        },
        TenantArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        SendingStatus = {
            type = "string",
        },
    },
}

M.GetTenantOutput = {
    type = "structure",
    members = {
        Tenant = M.Tenant,
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
        VerificationStatus = {
            type = "string",
        },
    },
}

M.ImportDestinationType = {
    SUPPRESSION_LIST = "SUPPRESSION_LIST",
    CONTACT_LIST = "CONTACT_LIST",
}

M.ImportJobSummary = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        ImportDestination = M.ImportDestination,
        JobStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        ProcessedRecordsCount = {
            type = "integer",
        },
        FailedRecordsCount = {
            type = "integer",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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

M.ListContactListsInput = {
    type = "structure",
    members = {
        PageSize = {
            type = "integer",
            traits = {
                http_query = "PageSize",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListContactListsOutput = {
    type = "structure",
    members = {
        ContactLists = {
            type = "list",
            member = M.ContactList,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TopicFilter = {
    type = "structure",
    members = {
        TopicName = {
            type = "string",
        },
        UseDefaultIfPreferenceUnavailable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListContactsFilter = {
    type = "structure",
    members = {
        FilteredStatus = {
            type = "string",
        },
        TopicFilter = M.TopicFilter,
    },
}

M.ListContactsInput = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Filter = M.ListContactsFilter,
        PageSize = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListContactsOutput = {
    type = "structure",
    members = {
        Contacts = {
            type = "list",
            member = M.Contact,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomVerificationEmailTemplatesInput = {
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

M.ListCustomVerificationEmailTemplatesOutput = {
    type = "structure",
    members = {
        CustomVerificationEmailTemplates = {
            type = "list",
            member = M.CustomVerificationEmailTemplateMetadata,
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

M.ListEmailTemplatesInput = {
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

M.ListEmailTemplatesOutput = {
    type = "structure",
    members = {
        TemplatesMetadata = {
            type = "list",
            member = M.EmailTemplateMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListExportJobsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
        ExportSourceType = {
            type = "string",
        },
        JobStatus = {
            type = "string",
        },
    },
}

M.ListExportJobsOutput = {
    type = "structure",
    members = {
        ExportJobs = {
            type = "list",
            member = M.ExportJobSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListImportJobsInput = {
    type = "structure",
    members = {
        ImportDestinationType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.ListImportJobsOutput = {
    type = "structure",
    members = {
        ImportJobs = {
            type = "list",
            member = M.ImportJobSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListManagementOptions = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TopicName = {
            type = "string",
        },
    },
}

M.ListMultiRegionEndpointsInput = {
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

M.MultiRegionEndpoint = {
    type = "structure",
    members = {
        EndpointName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListMultiRegionEndpointsOutput = {
    type = "structure",
    members = {
        MultiRegionEndpoints = {
            type = "list",
            member = M.MultiRegionEndpoint,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRecommendationsFilterKey = {
    TYPE = "TYPE",
    IMPACT = "IMPACT",
    STATUS = "STATUS",
    RESOURCE_ARN = "RESOURCE_ARN",
}

M.ListRecommendationsInput = {
    type = "structure",
    members = {
        Filter = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.RecommendationStatus = {
    OPEN = "OPEN",
    FIXED = "FIXED",
}

M.RecommendationType = {
    DKIM = "DKIM",
    DMARC = "DMARC",
    SPF = "SPF",
    BIMI = "BIMI",
    COMPLAINT = "COMPLAINT",
    BOUNCE = "BOUNCE",
    FEEDBACK_3P = "FEEDBACK_3P",
    IP_LISTING = "IP_LISTING",
}

M.Recommendation = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        Impact = {
            type = "string",
        },
    },
}

M.ListRecommendationsOutput = {
    type = "structure",
    members = {
        Recommendations = {
            type = "list",
            member = M.Recommendation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ReputationEntityFilterKey = {
    ENTITY_TYPE = "ENTITY_TYPE",
    REPUTATION_IMPACT = "REPUTATION_IMPACT",
    STATUS = "SENDING_STATUS",
    ENTITY_REFERENCE_PREFIX = "ENTITY_REFERENCE_PREFIX",
}

M.ListReputationEntitiesInput = {
    type = "structure",
    members = {
        Filter = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.ListReputationEntitiesOutput = {
    type = "structure",
    members = {
        ReputationEntities = {
            type = "list",
            member = M.ReputationEntity,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceTenantsInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PageSize = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceTenantMetadata = {
    type = "structure",
    members = {
        TenantName = {
            type = "string",
        },
        TenantId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        AssociatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListResourceTenantsOutput = {
    type = "structure",
    members = {
        ResourceTenants = {
            type = "list",
            member = M.ResourceTenantMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSuppressedDestinationsInput = {
    type = "structure",
    members = {
        Reasons = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "Reason",
            },
        },
        StartDate = {
            type = "timestamp",
            traits = {
                http_query = "StartDate",
            },
        },
        EndDate = {
            type = "timestamp",
            traits = {
                http_query = "EndDate",
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

M.SuppressedDestinationSummary = {
    type = "structure",
    members = {
        EmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastUpdateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSuppressedDestinationsOutput = {
    type = "structure",
    members = {
        SuppressedDestinationSummaries = {
            type = "list",
            member = M.SuppressedDestinationSummary,
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

M.ListTenantResourcesFilterKey = {
    RESOURCE_TYPE = "RESOURCE_TYPE",
}

M.ListTenantResourcesInput = {
    type = "structure",
    members = {
        TenantName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PageSize = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceType = {
    EMAIL_IDENTITY = "EMAIL_IDENTITY",
    CONFIGURATION_SET = "CONFIGURATION_SET",
    EMAIL_TEMPLATE = "EMAIL_TEMPLATE",
}

M.TenantResource = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
    },
}

M.ListTenantResourcesOutput = {
    type = "structure",
    members = {
        TenantResources = {
            type = "list",
            member = M.TenantResource,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTenantsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.TenantInfo = {
    type = "structure",
    members = {
        TenantName = {
            type = "string",
        },
        TenantId = {
            type = "string",
        },
        TenantArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListTenantsOutput = {
    type = "structure",
    members = {
        Tenants = {
            type = "list",
            member = M.TenantInfo,
        },
        NextToken = {
            type = "string",
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

M.PutAccountDetailsInput = {
    type = "structure",
    members = {
        MailType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebsiteURL = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContactLanguage = {
            type = "string",
        },
        UseCaseDescription = {
            type = "string",
        },
        AdditionalContactEmailAddresses = {
            type = "list",
            member = { type = "string" },
        },
        ProductionAccessEnabled = {
            type = "boolean",
        },
    },
}

M.PutAccountDetailsOutput = {
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

M.PutAccountSuppressionAttributesInput = {
    type = "structure",
    members = {
        SuppressedReasons = {
            type = "list",
            member = { type = "string" },
        },
        ValidationAttributes = M.SuppressionValidationAttributes,
    },
}

M.PutAccountSuppressionAttributesOutput = {
    type = "structure",
}

M.PutAccountVdmAttributesInput = {
    type = "structure",
    members = {
        VdmAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VdmAttributes }),
    },
}

M.PutAccountVdmAttributesOutput = {
    type = "structure",
}

M.PutConfigurationSetArchivingOptionsInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ArchiveArn = {
            type = "string",
        },
    },
}

M.PutConfigurationSetArchivingOptionsOutput = {
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
        MaxDeliverySeconds = {
            type = "long",
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

M.PutConfigurationSetSuppressionOptionsInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SuppressedReasons = {
            type = "list",
            member = { type = "string" },
        },
        ValidationOptions = M.SuppressionValidationOptions,
    },
}

M.PutConfigurationSetSuppressionOptionsOutput = {
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
        HttpsPolicy = {
            type = "string",
        },
    },
}

M.PutConfigurationSetTrackingOptionsOutput = {
    type = "structure",
}

M.PutConfigurationSetVdmOptionsInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VdmOptions = M.VdmOptions,
    },
}

M.PutConfigurationSetVdmOptionsOutput = {
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

M.PutDedicatedIpPoolScalingAttributesInput = {
    type = "structure",
    members = {
        PoolName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ScalingMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDedicatedIpPoolScalingAttributesOutput = {
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

M.PutEmailIdentityConfigurationSetAttributesInput = {
    type = "structure",
    members = {
        EmailIdentity = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationSetName = {
            type = "string",
        },
    },
}

M.PutEmailIdentityConfigurationSetAttributesOutput = {
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

M.PutEmailIdentityDkimSigningAttributesInput = {
    type = "structure",
    members = {
        EmailIdentity = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SigningAttributesOrigin = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SigningAttributes = M.DkimSigningAttributes,
    },
}

M.PutEmailIdentityDkimSigningAttributesOutput = {
    type = "structure",
    members = {
        DkimStatus = {
            type = "string",
        },
        DkimTokens = {
            type = "list",
            member = { type = "string" },
        },
        SigningHostedZone = {
            type = "string",
        },
    },
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

M.PutSuppressedDestinationInput = {
    type = "structure",
    members = {
        EmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutSuppressedDestinationOutput = {
    type = "structure",
}

M.SendBulkEmailInput = {
    type = "structure",
    members = {
        FromEmailAddress = {
            type = "string",
        },
        FromEmailAddressIdentityArn = {
            type = "string",
        },
        ReplyToAddresses = {
            type = "list",
            member = { type = "string" },
        },
        FeedbackForwardingEmailAddress = {
            type = "string",
        },
        FeedbackForwardingEmailAddressIdentityArn = {
            type = "string",
        },
        DefaultEmailTags = {
            type = "list",
            member = M.MessageTag,
        },
        DefaultContent = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BulkEmailContent }),
        BulkEmailEntries = {
            type = "list",
            member = M.BulkEmailEntry,
            traits = {
                required = true,
            },
        },
        ConfigurationSetName = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        TenantName = {
            type = "string",
        },
    },
}

M.SendBulkEmailOutput = {
    type = "structure",
    members = {
        BulkEmailEntryResults = {
            type = "list",
            member = M.BulkEmailEntryResult,
            traits = {
                required = true,
            },
        },
    },
}

M.SendCustomVerificationEmailInput = {
    type = "structure",
    members = {
        EmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationSetName = {
            type = "string",
        },
    },
}

M.SendCustomVerificationEmailOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.SendEmailInput = {
    type = "structure",
    members = {
        FromEmailAddress = {
            type = "string",
        },
        FromEmailAddressIdentityArn = {
            type = "string",
        },
        Destination = M.Destination,
        ReplyToAddresses = {
            type = "list",
            member = { type = "string" },
        },
        FeedbackForwardingEmailAddress = {
            type = "string",
        },
        FeedbackForwardingEmailAddressIdentityArn = {
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
        EndpointId = {
            type = "string",
        },
        TenantName = {
            type = "string",
        },
        ListManagementOptions = M.ListManagementOptions,
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

M.TestRenderEmailTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateData = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestRenderEmailTemplateOutput = {
    type = "structure",
    members = {
        RenderedTemplate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
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

M.UpdateContactInput = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmailAddress = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TopicPreferences = {
            type = "list",
            member = M.TopicPreference,
        },
        UnsubscribeAll = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AttributesData = {
            type = "string",
        },
    },
}

M.UpdateContactOutput = {
    type = "structure",
}

M.UpdateContactListInput = {
    type = "structure",
    members = {
        ContactListName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Topics = {
            type = "list",
            member = M.Topic,
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateContactListOutput = {
    type = "structure",
}

M.UpdateCustomVerificationEmailTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FromEmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateSubject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SuccessRedirectionURL = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailureRedirectionURL = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCustomVerificationEmailTemplateOutput = {
    type = "structure",
}

M.UpdateEmailIdentityPolicyInput = {
    type = "structure",
    members = {
        EmailIdentity = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                http_label = true,
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

M.UpdateEmailIdentityPolicyOutput = {
    type = "structure",
}

M.UpdateEmailTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TemplateContent = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmailTemplateContent }),
    },
}

M.UpdateEmailTemplateOutput = {
    type = "structure",
}

M.UpdateReputationEntityCustomerManagedStatusInput = {
    type = "structure",
    members = {
        ReputationEntityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReputationEntityReference = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SendingStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateReputationEntityCustomerManagedStatusOutput = {
    type = "structure",
}

M.UpdateReputationEntityPolicyInput = {
    type = "structure",
    members = {
        ReputationEntityType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReputationEntityReference = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReputationEntityPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateReputationEntityPolicyOutput = {
    type = "structure",
}

return M
