local M = {}

M.AccountSendingPausedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddHeaderAction = {
    type = "structure",
    members = {
        HeaderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HeaderValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Name = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.BehaviorOnMXFailure = {
    UseDefaultValue = "UseDefaultValue",
    RejectMessage = "RejectMessage",
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

M.BounceAction = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
        },
        SmtpReplyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusCode = {
            type = "string",
        },
        Message = {
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
    },
}

M.BounceType = {
    DoesNotExist = "DoesNotExist",
    MessageTooLarge = "MessageTooLarge",
    ExceededQuota = "ExceededQuota",
    ContentRejected = "ContentRejected",
    Undefined = "Undefined",
    TemporaryFailure = "TemporaryFailure",
}

M.DsnAction = {
    FAILED = "failed",
    DELAYED = "delayed",
    DELIVERED = "delivered",
    RELAYED = "relayed",
    EXPANDED = "expanded",
}

M.ExtensionField = {
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

M.RecipientDsnFields = {
    type = "structure",
    members = {
        FinalRecipient = {
            type = "string",
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RemoteMta = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DiagnosticCode = {
            type = "string",
        },
        LastAttemptDate = {
            type = "timestamp",
        },
        ExtensionFields = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BouncedRecipientInfo = {
    type = "structure",
    members = {
        Recipient = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecipientArn = {
            type = "string",
        },
        BounceType = {
            type = "string",
        },
        RecipientDsnFields = {
            type = "structure",
        },
    },
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

M.BulkEmailDestination = {
    type = "structure",
    members = {
        Destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ReplacementTags = {
            type = "list",
            member_type = "structure",
        },
        ReplacementTemplateData = {
            type = "string",
        },
    },
}

M.BulkEmailStatus = {
    Success = "Success",
    MessageRejected = "MessageRejected",
    MailFromDomainNotVerified = "MailFromDomainNotVerified",
    ConfigurationSetDoesNotExist = "ConfigurationSetDoesNotExist",
    TemplateDoesNotExist = "TemplateDoesNotExist",
    AccountSuspended = "AccountSuspended",
    AccountThrottled = "AccountThrottled",
    AccountDailyQuotaExceeded = "AccountDailyQuotaExceeded",
    InvalidSendingPoolName = "InvalidSendingPoolName",
    AccountSendingPaused = "AccountSendingPaused",
    ConfigurationSetSendingPaused = "ConfigurationSetSendingPaused",
    InvalidParameterValue = "InvalidParameterValue",
    TransientFailure = "TransientFailure",
    Failed = "Failed",
}

M.BulkEmailDestinationStatus = {
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

M.CannotDeleteException = {
    type = "structure",
    error = "client",
    members = {
        Name = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.CloneReceiptRuleSetInput = {
    type = "structure",
    members = {
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginalRuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloneReceiptRuleSetOutput = {
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

M.RuleSetDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        Name = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.DimensionValueSource = {
    MESSAGE_TAG = "messageTag",
    EMAIL_HEADER = "emailHeader",
    LINK_TAG = "linkTag",
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

M.ConfigurationSet = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurationSetAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        ConfigurationSetName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ConfigurationSetAttribute = {
    EVENT_DESTINATIONS = "eventDestinations",
    TRACKING_OPTIONS = "trackingOptions",
    DELIVERY_OPTIONS = "deliveryOptions",
    REPUTATION_OPTIONS = "reputationOptions",
}

M.ConfigurationSetDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        ConfigurationSetName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ConfigurationSetSendingPausedException = {
    type = "structure",
    error = "client",
    members = {
        ConfigurationSetName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ConnectAction = {
    type = "structure",
    members = {
        InstanceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IAMRoleARN = {
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
        ConfigurationSet = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConfigurationSetOutput = {
    type = "structure",
}

M.InvalidConfigurationSetException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KinesisFirehoseDestination = {
    type = "structure",
    members = {
        IAMRoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryStreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventType = {
    SEND = "send",
    REJECT = "reject",
    BOUNCE = "bounce",
    COMPLAINT = "complaint",
    DELIVERY = "delivery",
    OPEN = "open",
    CLICK = "click",
    RENDERING_FAILURE = "renderingFailure",
}

M.SNSDestination = {
    type = "structure",
    members = {
        TopicARN = {
            type = "string",
            traits = {
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
        SNSDestination = {
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

M.EventDestinationAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        ConfigurationSetName = {
            type = "string",
        },
        EventDestinationName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.InvalidCloudWatchDestinationException = {
    type = "structure",
    error = "client",
    members = {
        ConfigurationSetName = {
            type = "string",
        },
        EventDestinationName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.InvalidFirehoseDestinationException = {
    type = "structure",
    error = "client",
    members = {
        ConfigurationSetName = {
            type = "string",
        },
        EventDestinationName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.InvalidSNSDestinationException = {
    type = "structure",
    error = "client",
    members = {
        ConfigurationSetName = {
            type = "string",
        },
        EventDestinationName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.TrackingOptions = {
    type = "structure",
    members = {
        CustomRedirectDomain = {
            type = "string",
        },
    },
}

M.CreateConfigurationSetTrackingOptionsInput = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConfigurationSetTrackingOptionsOutput = {
    type = "structure",
}

M.InvalidTrackingOptionsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TrackingOptionsAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        ConfigurationSetName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
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

M.CustomVerificationEmailInvalidContentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomVerificationEmailTemplateAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        CustomVerificationEmailTemplateName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.FromEmailAddressNotVerifiedException = {
    type = "structure",
    error = "client",
    members = {
        FromEmailAddress = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ReceiptFilterPolicy = {
    Block = "Block",
    Allow = "Allow",
}

M.ReceiptIpFilter = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReceiptFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpFilter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateReceiptFilterInput = {
    type = "structure",
    members = {
        Filter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateReceiptFilterOutput = {
    type = "structure",
}

M.InvocationType = {
    Event = "Event",
    RequestResponse = "RequestResponse",
}

M.LambdaAction = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
        },
        FunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvocationType = {
            type = "string",
        },
    },
}

M.S3Action = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
        },
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectKeyPrefix = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
    },
}

M.SNSActionEncoding = {
    UTF8 = "UTF-8",
    Base64 = "Base64",
}

M.SNSAction = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Encoding = {
            type = "string",
        },
    },
}

M.StopScope = {
    RULE_SET = "RuleSet",
}

M.StopAction = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TopicArn = {
            type = "string",
        },
    },
}

M.WorkmailAction = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
        },
        OrganizationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReceiptAction = {
    type = "structure",
    members = {
        S3Action = {
            type = "structure",
        },
        BounceAction = {
            type = "structure",
        },
        WorkmailAction = {
            type = "structure",
        },
        LambdaAction = {
            type = "structure",
        },
        StopAction = {
            type = "structure",
        },
        AddHeaderAction = {
            type = "structure",
        },
        SNSAction = {
            type = "structure",
        },
        ConnectAction = {
            type = "structure",
        },
    },
}

M.TlsPolicy = {
    Require = "Require",
    Optional = "Optional",
}

M.ReceiptRule = {
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
        TlsPolicy = {
            type = "string",
        },
        Recipients = {
            type = "list",
            member_type = "string",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        ScanEnabled = {
            type = "boolean",
        },
    },
}

M.CreateReceiptRuleInput = {
    type = "structure",
    members = {
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        After = {
            type = "string",
        },
        Rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateReceiptRuleOutput = {
    type = "structure",
}

M.InvalidLambdaFunctionException = {
    type = "structure",
    error = "client",
    members = {
        FunctionArn = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.InvalidS3ConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        Bucket = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.InvalidSnsTopicException = {
    type = "structure",
    error = "client",
    members = {
        Topic = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.RuleDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        Name = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.CreateReceiptRuleSetInput = {
    type = "structure",
    members = {
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateReceiptRuleSetOutput = {
    type = "structure",
}

M.Template = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubjectPart = {
            type = "string",
        },
        TextPart = {
            type = "string",
        },
        HtmlPart = {
            type = "string",
        },
    },
}

M.CreateTemplateInput = {
    type = "structure",
    members = {
        Template = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTemplateOutput = {
    type = "structure",
}

M.InvalidTemplateException = {
    type = "structure",
    error = "client",
    members = {
        TemplateName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.CustomMailFromStatus = {
    Pending = "Pending",
    Success = "Success",
    Failed = "Failed",
    TemporaryFailure = "TemporaryFailure",
}

M.CustomVerificationEmailTemplate = {
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

M.CustomVerificationEmailTemplateDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        CustomVerificationEmailTemplateName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.DeleteConfigurationSetInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
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
                required = true,
            },
        },
        EventDestinationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfigurationSetEventDestinationOutput = {
    type = "structure",
}

M.EventDestinationDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        ConfigurationSetName = {
            type = "string",
        },
        EventDestinationName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.DeleteConfigurationSetTrackingOptionsInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConfigurationSetTrackingOptionsOutput = {
    type = "structure",
}

M.TrackingOptionsDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        ConfigurationSetName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.DeleteCustomVerificationEmailTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCustomVerificationEmailTemplateOutput = {
    type = "structure",
}

M.DeleteIdentityInput = {
    type = "structure",
    members = {
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdentityOutput = {
    type = "structure",
}

M.DeleteIdentityPolicyInput = {
    type = "structure",
    members = {
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdentityPolicyOutput = {
    type = "structure",
}

M.DeleteReceiptFilterInput = {
    type = "structure",
    members = {
        FilterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReceiptFilterOutput = {
    type = "structure",
}

M.DeleteReceiptRuleInput = {
    type = "structure",
    members = {
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReceiptRuleOutput = {
    type = "structure",
}

M.DeleteReceiptRuleSetInput = {
    type = "structure",
    members = {
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReceiptRuleSetOutput = {
    type = "structure",
}

M.DeleteTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTemplateOutput = {
    type = "structure",
}

M.DeleteVerifiedEmailAddressInput = {
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

M.DeleteVerifiedEmailAddressOutput = {
    type = "structure",
}

M.DeliveryOptions = {
    type = "structure",
    members = {
        TlsPolicy = {
            type = "string",
        },
    },
}

M.DescribeActiveReceiptRuleSetInput = {
    type = "structure",
}

M.ReceiptRuleSetMetadata = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.DescribeActiveReceiptRuleSetOutput = {
    type = "structure",
    members = {
        Metadata = {
            type = "structure",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeConfigurationSetInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationSetAttributeNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ReputationOptions = {
    type = "structure",
    members = {
        SendingEnabled = {
            type = "boolean",
        },
        ReputationMetricsEnabled = {
            type = "boolean",
        },
        LastFreshStart = {
            type = "timestamp",
        },
    },
}

M.DescribeConfigurationSetOutput = {
    type = "structure",
    members = {
        ConfigurationSet = {
            type = "structure",
        },
        EventDestinations = {
            type = "list",
            member_type = "structure",
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
    },
}

M.DescribeReceiptRuleInput = {
    type = "structure",
    members = {
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeReceiptRuleOutput = {
    type = "structure",
    members = {
        Rule = {
            type = "structure",
        },
    },
}

M.DescribeReceiptRuleSetInput = {
    type = "structure",
    members = {
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeReceiptRuleSetOutput = {
    type = "structure",
    members = {
        Metadata = {
            type = "structure",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.VerificationStatus = {
    Pending = "Pending",
    Success = "Success",
    Failed = "Failed",
    TemporaryFailure = "TemporaryFailure",
    NotStarted = "NotStarted",
}

M.IdentityDkimAttributes = {
    type = "structure",
    members = {
        DkimEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        DkimVerificationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DkimTokens = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetAccountSendingEnabledInput = {
    type = "structure",
}

M.GetAccountSendingEnabledOutput = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.GetCustomVerificationEmailTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
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
        SuccessRedirectionURL = {
            type = "string",
        },
        FailureRedirectionURL = {
            type = "string",
        },
    },
}

M.GetIdentityDkimAttributesInput = {
    type = "structure",
    members = {
        Identities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityDkimAttributesOutput = {
    type = "structure",
    members = {
        DkimAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityMailFromDomainAttributesInput = {
    type = "structure",
    members = {
        Identities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdentityMailFromDomainAttributes = {
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
        BehaviorOnMXFailure = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityMailFromDomainAttributesOutput = {
    type = "structure",
    members = {
        MailFromDomainAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityNotificationAttributesInput = {
    type = "structure",
    members = {
        Identities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdentityNotificationAttributes = {
    type = "structure",
    members = {
        BounceTopic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComplaintTopic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryTopic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForwardingEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        HeadersInBounceNotificationsEnabled = {
            type = "boolean",
        },
        HeadersInComplaintNotificationsEnabled = {
            type = "boolean",
        },
        HeadersInDeliveryNotificationsEnabled = {
            type = "boolean",
        },
    },
}

M.GetIdentityNotificationAttributesOutput = {
    type = "structure",
    members = {
        NotificationAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityPoliciesInput = {
    type = "structure",
    members = {
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityPoliciesOutput = {
    type = "structure",
    members = {
        Policies = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityVerificationAttributesInput = {
    type = "structure",
    members = {
        Identities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdentityVerificationAttributes = {
    type = "structure",
    members = {
        VerificationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerificationToken = {
            type = "string",
        },
    },
}

M.GetIdentityVerificationAttributesOutput = {
    type = "structure",
    members = {
        VerificationAttributes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSendQuotaInput = {
    type = "structure",
}

M.GetSendQuotaOutput = {
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

M.GetSendStatisticsInput = {
    type = "structure",
}

M.SendDataPoint = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
        },
        DeliveryAttempts = {
            type = "number",
        },
        Bounces = {
            type = "number",
        },
        Complaints = {
            type = "number",
        },
        Rejects = {
            type = "number",
        },
    },
}

M.GetSendStatisticsOutput = {
    type = "structure",
    members = {
        SendDataPoints = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTemplateOutput = {
    type = "structure",
    members = {
        Template = {
            type = "structure",
        },
    },
}

M.TemplateDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        TemplateName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.IdentityType = {
    EmailAddress = "EmailAddress",
    Domain = "Domain",
}

M.InvalidDeliveryOptionsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPolicyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRenderingParameterException = {
    type = "structure",
    error = "client",
    members = {
        TemplateName = {
            type = "string",
        },
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
        },
        MaxItems = {
            type = "number",
        },
    },
}

M.ListConfigurationSetsOutput = {
    type = "structure",
    members = {
        ConfigurationSets = {
            type = "list",
            member_type = "structure",
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
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListCustomVerificationEmailTemplatesOutput = {
    type = "structure",
    members = {
        CustomVerificationEmailTemplates = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIdentitiesInput = {
    type = "structure",
    members = {
        IdentityType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxItems = {
            type = "number",
        },
    },
}

M.ListIdentitiesOutput = {
    type = "structure",
    members = {
        Identities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIdentityPoliciesInput = {
    type = "structure",
    members = {
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListIdentityPoliciesOutput = {
    type = "structure",
    members = {
        PolicyNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListReceiptFiltersInput = {
    type = "structure",
}

M.ListReceiptFiltersOutput = {
    type = "structure",
    members = {
        Filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListReceiptRuleSetsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.ListReceiptRuleSetsOutput = {
    type = "structure",
    members = {
        RuleSets = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTemplatesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxItems = {
            type = "number",
        },
    },
}

M.TemplateMetadata = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListTemplatesOutput = {
    type = "structure",
    members = {
        TemplatesMetadata = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListVerifiedEmailAddressesInput = {
    type = "structure",
}

M.ListVerifiedEmailAddressesOutput = {
    type = "structure",
    members = {
        VerifiedEmailAddresses = {
            type = "list",
            member_type = "string",
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

M.MessageDsn = {
    type = "structure",
    members = {
        ReportingMta = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArrivalDate = {
            type = "timestamp",
        },
        ExtensionFields = {
            type = "list",
            member_type = "structure",
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

M.MissingRenderingAttributeException = {
    type = "structure",
    error = "client",
    members = {
        TemplateName = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.NotificationType = {
    Bounce = "Bounce",
    Complaint = "Complaint",
    Delivery = "Delivery",
}

M.ProductionAccessNotGrantedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutConfigurationSetDeliveryOptionsInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryOptions = {
            type = "structure",
        },
    },
}

M.PutConfigurationSetDeliveryOptionsOutput = {
    type = "structure",
}

M.PutIdentityPolicyInput = {
    type = "structure",
    members = {
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
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

M.PutIdentityPolicyOutput = {
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

M.ReorderReceiptRuleSetInput = {
    type = "structure",
    members = {
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReorderReceiptRuleSetOutput = {
    type = "structure",
}

M.SendBounceInput = {
    type = "structure",
    members = {
        OriginalMessageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BounceSender = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Explanation = {
            type = "string",
        },
        MessageDsn = {
            type = "structure",
        },
        BouncedRecipientInfoList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        BounceSenderArn = {
            type = "string",
        },
    },
}

M.SendBounceOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.SendBulkTemplatedEmailInput = {
    type = "structure",
    members = {
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceArn = {
            type = "string",
        },
        ReplyToAddresses = {
            type = "list",
            member_type = "string",
        },
        ReturnPath = {
            type = "string",
        },
        ReturnPathArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        DefaultTags = {
            type = "list",
            member_type = "structure",
        },
        Template = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateArn = {
            type = "string",
        },
        DefaultTemplateData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destinations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SendBulkTemplatedEmailOutput = {
    type = "structure",
    members = {
        Status = {
            type = "list",
            member_type = "structure",
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
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ReplyToAddresses = {
            type = "list",
            member_type = "string",
        },
        ReturnPath = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        ReturnPathArn = {
            type = "string",
        },
        Tags = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.SendRawEmailInput = {
    type = "structure",
    members = {
        Source = {
            type = "string",
        },
        Destinations = {
            type = "list",
            member_type = "string",
        },
        RawMessage = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FromArn = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        ReturnPathArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ConfigurationSetName = {
            type = "string",
        },
    },
}

M.SendRawEmailOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendTemplatedEmailInput = {
    type = "structure",
    members = {
        Source = {
            type = "string",
            traits = {
                required = true,
            },
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
        ReturnPath = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
        ReturnPathArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ConfigurationSetName = {
            type = "string",
        },
        Template = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateArn = {
            type = "string",
        },
        TemplateData = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendTemplatedEmailOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetActiveReceiptRuleSetInput = {
    type = "structure",
    members = {
        RuleSetName = {
            type = "string",
        },
    },
}

M.SetActiveReceiptRuleSetOutput = {
    type = "structure",
}

M.SetIdentityDkimEnabledInput = {
    type = "structure",
    members = {
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DkimEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.SetIdentityDkimEnabledOutput = {
    type = "structure",
}

M.SetIdentityFeedbackForwardingEnabledInput = {
    type = "structure",
    members = {
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ForwardingEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.SetIdentityFeedbackForwardingEnabledOutput = {
    type = "structure",
}

M.SetIdentityHeadersInNotificationsEnabledInput = {
    type = "structure",
    members = {
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.SetIdentityHeadersInNotificationsEnabledOutput = {
    type = "structure",
}

M.SetIdentityMailFromDomainInput = {
    type = "structure",
    members = {
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MailFromDomain = {
            type = "string",
        },
        BehaviorOnMXFailure = {
            type = "string",
        },
    },
}

M.SetIdentityMailFromDomainOutput = {
    type = "structure",
}

M.SetIdentityNotificationTopicInput = {
    type = "structure",
    members = {
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsTopic = {
            type = "string",
        },
    },
}

M.SetIdentityNotificationTopicOutput = {
    type = "structure",
}

M.SetReceiptRulePositionInput = {
    type = "structure",
    members = {
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        After = {
            type = "string",
        },
    },
}

M.SetReceiptRulePositionOutput = {
    type = "structure",
}

M.TestRenderTemplateInput = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
            traits = {
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

M.TestRenderTemplateOutput = {
    type = "structure",
    members = {
        RenderedTemplate = {
            type = "string",
        },
    },
}

M.UpdateAccountSendingEnabledInput = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
    },
}

M.UpdateAccountSendingEnabledOutput = {
    type = "structure",
}

M.UpdateConfigurationSetEventDestinationInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
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

M.UpdateConfigurationSetEventDestinationOutput = {
    type = "structure",
}

M.UpdateConfigurationSetReputationMetricsEnabledInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConfigurationSetReputationMetricsEnabledOutput = {
    type = "structure",
}

M.UpdateConfigurationSetSendingEnabledInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConfigurationSetSendingEnabledOutput = {
    type = "structure",
}

M.UpdateConfigurationSetTrackingOptionsInput = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConfigurationSetTrackingOptionsOutput = {
    type = "structure",
}

M.UpdateCustomVerificationEmailTemplateInput = {
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
        },
        TemplateSubject = {
            type = "string",
        },
        TemplateContent = {
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

M.UpdateCustomVerificationEmailTemplateOutput = {
    type = "structure",
}

M.UpdateReceiptRuleInput = {
    type = "structure",
    members = {
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateReceiptRuleOutput = {
    type = "structure",
}

M.UpdateTemplateInput = {
    type = "structure",
    members = {
        Template = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTemplateOutput = {
    type = "structure",
}

M.VerifyDomainDkimInput = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerifyDomainDkimOutput = {
    type = "structure",
    members = {
        DkimTokens = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerifyDomainIdentityInput = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerifyDomainIdentityOutput = {
    type = "structure",
    members = {
        VerificationToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerifyEmailAddressInput = {
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

M.VerifyEmailAddressOutput = {
    type = "structure",
}

M.VerifyEmailIdentityInput = {
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

M.VerifyEmailIdentityOutput = {
    type = "structure",
}

return M
