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
    id = "ReviewDetails",
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
    id = "AccountDetails",
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

M.ArchivingOptions = {
    type = "structure",
    id = "ArchivingOptions",
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
    id = "Attachment",
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
    id = "BadRequestException",
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
    id = "BatchGetMetricDataQuery",
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
    id = "BatchGetMetricDataInput",
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
    id = "MetricDataError",
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
    id = "MetricDataResult",
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
    id = "BatchGetMetricDataOutput",
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
    id = "InternalServiceErrorException",
    error = "server",
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

M.BehaviorOnMxFailure = {
    USE_DEFAULT_VALUE = "USE_DEFAULT_VALUE",
    REJECT_MESSAGE = "REJECT_MESSAGE",
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

M.BounceType = {
    UNDETERMINED = "UNDETERMINED",
    TRANSIENT = "TRANSIENT",
    PERMANENT = "PERMANENT",
}

M.Bounce = {
    type = "structure",
    id = "Bounce",
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
    id = "MessageHeader",
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
    id = "EmailTemplateContent",
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
    id = "Template",
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
    id = "BulkEmailContent",
    members = {
        Template = M.Template,
    },
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

M.ReplacementTemplate = {
    type = "structure",
    id = "ReplacementTemplate",
    members = {
        ReplacementTemplateData = {
            type = "string",
        },
    },
}

M.ReplacementEmailContent = {
    type = "structure",
    id = "ReplacementEmailContent",
    members = {
        ReplacementTemplate = M.ReplacementTemplate,
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

M.BulkEmailEntry = {
    type = "structure",
    id = "BulkEmailEntry",
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
    id = "BulkEmailEntryResult",
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
    id = "CancelExportJobInput",
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
    id = "CancelExportJobOutput",
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

M.Complaint = {
    type = "structure",
    id = "Complaint",
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
    id = "ConcurrentModificationException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
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
    id = "TopicPreference",
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
    id = "Contact",
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
    id = "ContactList",
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
    id = "ContactListDestination",
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
    id = "DeliveryOptions",
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
    id = "SuppressionConfidenceThreshold",
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
    id = "SuppressionConditionThreshold",
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
    id = "SuppressionValidationOptions",
    members = {
        ConditionThreshold = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SuppressionConditionThreshold }),
    },
}

M.SuppressionOptions = {
    type = "structure",
    id = "SuppressionOptions",
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

M.HttpsPolicy = {
    REQUIRE = "REQUIRE",
    REQUIRE_OPEN_ONLY = "REQUIRE_OPEN_ONLY",
    OPTIONAL = "OPTIONAL",
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
        HttpsPolicy = {
            type = "string",
        },
    },
}

M.DashboardOptions = {
    type = "structure",
    id = "DashboardOptions",
    members = {
        EngagementMetrics = {
            type = "string",
        },
    },
}

M.GuardianOptions = {
    type = "structure",
    id = "GuardianOptions",
    members = {
        OptimizedSharedDelivery = {
            type = "string",
        },
    },
}

M.VdmOptions = {
    type = "structure",
    id = "VdmOptions",
    members = {
        DashboardOptions = M.DashboardOptions,
        GuardianOptions = M.GuardianOptions,
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
        SuppressionOptions = M.SuppressionOptions,
        VdmOptions = M.VdmOptions,
        ArchivingOptions = M.ArchivingOptions,
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

M.EventBridgeDestination = {
    type = "structure",
    id = "EventBridgeDestination",
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
    DELIVERY_DELAY = "DELIVERY_DELAY",
    SUBSCRIPTION = "SUBSCRIPTION",
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
        EventBridgeDestination = M.EventBridgeDestination,
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

M.CreateContactInput = {
    type = "structure",
    id = "CreateContactInput",
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
    id = "CreateContactOutput",
}

M.Topic = {
    type = "structure",
    id = "Topic",
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
    id = "CreateContactListInput",
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
    id = "CreateContactListOutput",
}

M.CreateCustomVerificationEmailTemplateInput = {
    type = "structure",
    id = "CreateCustomVerificationEmailTemplateInput",
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
    id = "CreateCustomVerificationEmailTemplateOutput",
}

M.ScalingMode = {
    STANDARD = "STANDARD",
    MANAGED = "MANAGED",
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
        ScalingMode = {
            type = "string",
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
    id = "DkimSigningAttributes",
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

M.CreateEmailIdentityPolicyInput = {
    type = "structure",
    id = "CreateEmailIdentityPolicyInput",
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
    id = "CreateEmailIdentityPolicyOutput",
}

M.CreateEmailTemplateInput = {
    type = "structure",
    id = "CreateEmailTemplateInput",
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
    id = "CreateEmailTemplateOutput",
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
    id = "MessageInsightsFilters",
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
    id = "MessageInsightsDataSource",
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
    id = "ExportMetric",
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
    id = "MetricsDataSource",
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
    id = "ExportDataSource",
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
    id = "ExportDestination",
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
    id = "CreateExportJobInput",
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
    id = "CreateExportJobOutput",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.ImportDataSource = {
    type = "structure",
    id = "ImportDataSource",
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
    id = "SuppressionListDestination",
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
    id = "ImportDestination",
    members = {
        SuppressionListDestination = M.SuppressionListDestination,
        ContactListDestination = M.ContactListDestination,
    },
}

M.CreateImportJobInput = {
    type = "structure",
    id = "CreateImportJobInput",
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
    id = "CreateImportJobOutput",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.RouteDetails = {
    type = "structure",
    id = "RouteDetails",
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
    id = "Details",
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
    id = "CreateMultiRegionEndpointInput",
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
    id = "CreateMultiRegionEndpointOutput",
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
    id = "CreateTenantInput",
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
    id = "CreateTenantOutput",
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
    id = "CreateTenantResourceAssociationInput",
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
    id = "CreateTenantResourceAssociationOutput",
}

M.CustomVerificationEmailTemplateMetadata = {
    type = "structure",
    id = "CustomVerificationEmailTemplateMetadata",
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

M.DashboardAttributes = {
    type = "structure",
    id = "DashboardAttributes",
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

M.DedicatedIpPool = {
    type = "structure",
    id = "DedicatedIpPool",
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

M.DeleteContactInput = {
    type = "structure",
    id = "DeleteContactInput",
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
    id = "DeleteContactOutput",
}

M.DeleteContactListInput = {
    type = "structure",
    id = "DeleteContactListInput",
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
    id = "DeleteContactListOutput",
}

M.DeleteCustomVerificationEmailTemplateInput = {
    type = "structure",
    id = "DeleteCustomVerificationEmailTemplateInput",
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
    id = "DeleteCustomVerificationEmailTemplateOutput",
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

M.DeleteEmailIdentityPolicyInput = {
    type = "structure",
    id = "DeleteEmailIdentityPolicyInput",
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
    id = "DeleteEmailIdentityPolicyOutput",
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
    },
}

M.DeleteEmailTemplateOutput = {
    type = "structure",
    id = "DeleteEmailTemplateOutput",
}

M.DeleteMultiRegionEndpointInput = {
    type = "structure",
    id = "DeleteMultiRegionEndpointInput",
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
    id = "DeleteMultiRegionEndpointOutput",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.DeleteSuppressedDestinationInput = {
    type = "structure",
    id = "DeleteSuppressedDestinationInput",
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
    id = "DeleteSuppressedDestinationOutput",
}

M.DeleteTenantInput = {
    type = "structure",
    id = "DeleteTenantInput",
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
    id = "DeleteTenantOutput",
}

M.DeleteTenantResourceAssociationInput = {
    type = "structure",
    id = "DeleteTenantResourceAssociationInput",
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
    id = "DeleteTenantResourceAssociationOutput",
}

M.DeliverabilityDashboardAccountStatus = {
    ACTIVE = "ACTIVE",
    PENDING_EXPIRATION = "PENDING_EXPIRATION",
    DISABLED = "DISABLED",
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

M.EmailAddressInsightsConfidenceVerdict = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.EmailAddressInsightsVerdict = {
    type = "structure",
    id = "EmailAddressInsightsVerdict",
    members = {
        ConfidenceVerdict = {
            type = "string",
        },
    },
}

M.EmailAddressInsightsMailboxEvaluations = {
    type = "structure",
    id = "EmailAddressInsightsMailboxEvaluations",
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
    id = "EventDetails",
    members = {
        Bounce = M.Bounce,
        Complaint = M.Complaint,
    },
}

M.InsightsEvent = {
    type = "structure",
    id = "InsightsEvent",
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
    id = "EmailInsights",
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
    id = "EmailTemplateMetadata",
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
    id = "ExportJobSummary",
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
    id = "ExportStatistics",
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
    id = "FailureInfo",
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

M.SuppressionValidationAttributes = {
    type = "structure",
    id = "SuppressionValidationAttributes",
    members = {
        ConditionThreshold = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SuppressionConditionThreshold }),
    },
}

M.SuppressionAttributes = {
    type = "structure",
    id = "SuppressionAttributes",
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
    id = "GuardianAttributes",
    members = {
        OptimizedSharedDelivery = {
            type = "string",
        },
    },
}

M.VdmAttributes = {
    type = "structure",
    id = "VdmAttributes",
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
    id = "GetAccountOutput",
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
        SuppressionOptions = M.SuppressionOptions,
        VdmOptions = M.VdmOptions,
        ArchivingOptions = M.ArchivingOptions,
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

M.GetContactInput = {
    type = "structure",
    id = "GetContactInput",
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
    id = "GetContactOutput",
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
    id = "GetContactListInput",
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
    id = "GetContactListOutput",
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
    id = "GetCustomVerificationEmailTemplateInput",
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
    id = "GetCustomVerificationEmailTemplateOutput",
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

M.GetDedicatedIpOutput = {
    type = "structure",
    id = "GetDedicatedIpOutput",
    members = {
        DedicatedIp = M.DedicatedIp,
    },
}

M.GetDedicatedIpPoolInput = {
    type = "structure",
    id = "GetDedicatedIpPoolInput",
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
    id = "GetDedicatedIpPoolOutput",
    members = {
        DedicatedIpPool = M.DedicatedIpPool,
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

M.GetEmailAddressInsightsInput = {
    type = "structure",
    id = "GetEmailAddressInsightsInput",
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
    id = "MailboxValidation",
    members = {
        IsValid = M.EmailAddressInsightsVerdict,
        Evaluations = M.EmailAddressInsightsMailboxEvaluations,
    },
}

M.GetEmailAddressInsightsOutput = {
    type = "structure",
    id = "GetEmailAddressInsightsOutput",
    members = {
        MailboxValidation = M.MailboxValidation,
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
    id = "SOARecord",
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
    id = "VerificationInfo",
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
    id = "GetEmailIdentityPoliciesInput",
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
    id = "GetEmailIdentityPoliciesOutput",
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
    id = "GetEmailTemplateInput",
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
    id = "GetEmailTemplateOutput",
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
    id = "GetExportJobInput",
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
    id = "GetExportJobOutput",
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
    id = "GetImportJobInput",
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
    id = "GetImportJobOutput",
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
    id = "GetMessageInsightsInput",
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
    id = "GetMessageInsightsOutput",
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
    id = "GetMultiRegionEndpointInput",
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
    id = "Route",
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
    id = "GetMultiRegionEndpointOutput",
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
    id = "GetReputationEntityInput",
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
    id = "StatusRecord",
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
    id = "ReputationEntity",
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
    id = "GetReputationEntityOutput",
    members = {
        ReputationEntity = M.ReputationEntity,
    },
}

M.GetSuppressedDestinationInput = {
    type = "structure",
    id = "GetSuppressedDestinationInput",
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
    id = "SuppressedDestinationAttributes",
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
    id = "SuppressedDestination",
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
    id = "GetSuppressedDestinationOutput",
    members = {
        SuppressedDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SuppressedDestination }),
    },
}

M.GetTenantInput = {
    type = "structure",
    id = "GetTenantInput",
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
    id = "Tenant",
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
    id = "GetTenantOutput",
    members = {
        Tenant = M.Tenant,
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
    id = "ImportJobSummary",
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
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
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

M.ListContactListsInput = {
    type = "structure",
    id = "ListContactListsInput",
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
    id = "ListContactListsOutput",
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
    id = "TopicFilter",
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
    id = "ListContactsFilter",
    members = {
        FilteredStatus = {
            type = "string",
        },
        TopicFilter = M.TopicFilter,
    },
}

M.ListContactsInput = {
    type = "structure",
    id = "ListContactsInput",
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
    id = "ListContactsOutput",
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
    id = "ListCustomVerificationEmailTemplatesInput",
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
    id = "ListCustomVerificationEmailTemplatesOutput",
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

M.ListEmailTemplatesInput = {
    type = "structure",
    id = "ListEmailTemplatesInput",
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
    id = "ListEmailTemplatesOutput",
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
    id = "ListExportJobsInput",
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
    id = "ListExportJobsOutput",
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
    id = "ListImportJobsInput",
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
    id = "ListImportJobsOutput",
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
    id = "ListManagementOptions",
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
    id = "ListMultiRegionEndpointsInput",
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
    id = "MultiRegionEndpoint",
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
    id = "ListMultiRegionEndpointsOutput",
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
    id = "ListRecommendationsInput",
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
    id = "Recommendation",
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
    id = "ListRecommendationsOutput",
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
    id = "ListReputationEntitiesInput",
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
    id = "ListReputationEntitiesOutput",
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
    id = "ListResourceTenantsInput",
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
    id = "ResourceTenantMetadata",
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
    id = "ListResourceTenantsOutput",
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
    id = "ListSuppressedDestinationsInput",
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
    id = "SuppressedDestinationSummary",
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
    id = "ListSuppressedDestinationsOutput",
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

M.ListTenantResourcesFilterKey = {
    RESOURCE_TYPE = "RESOURCE_TYPE",
}

M.ListTenantResourcesInput = {
    type = "structure",
    id = "ListTenantResourcesInput",
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
    id = "TenantResource",
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
    id = "ListTenantResourcesOutput",
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
    id = "ListTenantsInput",
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
    id = "TenantInfo",
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
    id = "ListTenantsOutput",
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

M.PutAccountDetailsInput = {
    type = "structure",
    id = "PutAccountDetailsInput",
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
    id = "PutAccountDetailsOutput",
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

M.PutAccountSuppressionAttributesInput = {
    type = "structure",
    id = "PutAccountSuppressionAttributesInput",
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
    id = "PutAccountSuppressionAttributesOutput",
}

M.PutAccountVdmAttributesInput = {
    type = "structure",
    id = "PutAccountVdmAttributesInput",
    members = {
        VdmAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VdmAttributes }),
    },
}

M.PutAccountVdmAttributesOutput = {
    type = "structure",
    id = "PutAccountVdmAttributesOutput",
}

M.PutConfigurationSetArchivingOptionsInput = {
    type = "structure",
    id = "PutConfigurationSetArchivingOptionsInput",
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
    id = "PutConfigurationSetArchivingOptionsOutput",
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
        MaxDeliverySeconds = {
            type = "long",
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

M.PutConfigurationSetSuppressionOptionsInput = {
    type = "structure",
    id = "PutConfigurationSetSuppressionOptionsInput",
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
    id = "PutConfigurationSetSuppressionOptionsOutput",
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
        HttpsPolicy = {
            type = "string",
        },
    },
}

M.PutConfigurationSetTrackingOptionsOutput = {
    type = "structure",
    id = "PutConfigurationSetTrackingOptionsOutput",
}

M.PutConfigurationSetVdmOptionsInput = {
    type = "structure",
    id = "PutConfigurationSetVdmOptionsInput",
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
    id = "PutConfigurationSetVdmOptionsOutput",
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

M.PutDedicatedIpPoolScalingAttributesInput = {
    type = "structure",
    id = "PutDedicatedIpPoolScalingAttributesInput",
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
    id = "PutDedicatedIpPoolScalingAttributesOutput",
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

M.PutEmailIdentityConfigurationSetAttributesInput = {
    type = "structure",
    id = "PutEmailIdentityConfigurationSetAttributesInput",
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
    id = "PutEmailIdentityConfigurationSetAttributesOutput",
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

M.PutEmailIdentityDkimSigningAttributesInput = {
    type = "structure",
    id = "PutEmailIdentityDkimSigningAttributesInput",
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
    id = "PutEmailIdentityDkimSigningAttributesOutput",
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

M.PutSuppressedDestinationInput = {
    type = "structure",
    id = "PutSuppressedDestinationInput",
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
    id = "PutSuppressedDestinationOutput",
}

M.SendBulkEmailInput = {
    type = "structure",
    id = "SendBulkEmailInput",
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
    id = "SendBulkEmailOutput",
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
    id = "SendCustomVerificationEmailInput",
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
    id = "SendCustomVerificationEmailOutput",
    members = {
        MessageId = {
            type = "string",
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

M.TestRenderEmailTemplateInput = {
    type = "structure",
    id = "TestRenderEmailTemplateInput",
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
    id = "TestRenderEmailTemplateOutput",
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

M.UpdateContactInput = {
    type = "structure",
    id = "UpdateContactInput",
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
    id = "UpdateContactOutput",
}

M.UpdateContactListInput = {
    type = "structure",
    id = "UpdateContactListInput",
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
    id = "UpdateContactListOutput",
}

M.UpdateCustomVerificationEmailTemplateInput = {
    type = "structure",
    id = "UpdateCustomVerificationEmailTemplateInput",
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
    id = "UpdateCustomVerificationEmailTemplateOutput",
}

M.UpdateEmailIdentityPolicyInput = {
    type = "structure",
    id = "UpdateEmailIdentityPolicyInput",
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
    id = "UpdateEmailIdentityPolicyOutput",
}

M.UpdateEmailTemplateInput = {
    type = "structure",
    id = "UpdateEmailTemplateInput",
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
    id = "UpdateEmailTemplateOutput",
}

M.UpdateReputationEntityCustomerManagedStatusInput = {
    type = "structure",
    id = "UpdateReputationEntityCustomerManagedStatusInput",
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
    id = "UpdateReputationEntityCustomerManagedStatusOutput",
}

M.UpdateReputationEntityPolicyInput = {
    type = "structure",
    id = "UpdateReputationEntityPolicyInput",
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
    id = "UpdateReputationEntityPolicyOutput",
}

return M
