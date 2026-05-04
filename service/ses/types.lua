local M = {}

M.AccountSendingPausedException = {
    type = "structure",
    id = "AccountSendingPausedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddHeaderAction = {
    type = "structure",
    id = "AddHeaderAction",
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
    id = "AlreadyExistsException",
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

M.BounceAction = {
    type = "structure",
    id = "BounceAction",
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
    id = "ExtensionField",
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
    id = "RecipientDsnFields",
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
            member = M.ExtensionField,
        },
    },
}

M.BouncedRecipientInfo = {
    type = "structure",
    id = "BouncedRecipientInfo",
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
        RecipientDsnFields = M.RecipientDsnFields,
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

M.BulkEmailDestination = {
    type = "structure",
    id = "BulkEmailDestination",
    members = {
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        ReplacementTags = {
            type = "list",
            member = M.MessageTag,
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
    id = "BulkEmailDestinationStatus",
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
    id = "CannotDeleteException",
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
    id = "CloneReceiptRuleSetInput",
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
    id = "CloneReceiptRuleSetOutput",
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

M.RuleSetDoesNotExistException = {
    type = "structure",
    id = "RuleSetDoesNotExistException",
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

M.ConfigurationSet = {
    type = "structure",
    id = "ConfigurationSet",
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
    id = "ConfigurationSetAlreadyExistsException",
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
    id = "ConfigurationSetDoesNotExistException",
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
    id = "ConfigurationSetSendingPausedException",
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
    id = "ConnectAction",
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
    id = "CreateConfigurationSetInput",
    members = {
        ConfigurationSet = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConfigurationSet }),
    },
}

M.CreateConfigurationSetOutput = {
    type = "structure",
    id = "CreateConfigurationSetOutput",
}

M.InvalidConfigurationSetException = {
    type = "structure",
    id = "InvalidConfigurationSetException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KinesisFirehoseDestination = {
    type = "structure",
    id = "KinesisFirehoseDestination",
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
    id = "SNSDestination",
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
        SNSDestination = M.SNSDestination,
    },
}

M.CreateConfigurationSetEventDestinationInput = {
    type = "structure",
    id = "CreateConfigurationSetEventDestinationInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventDestination }),
    },
}

M.CreateConfigurationSetEventDestinationOutput = {
    type = "structure",
    id = "CreateConfigurationSetEventDestinationOutput",
}

M.EventDestinationAlreadyExistsException = {
    type = "structure",
    id = "EventDestinationAlreadyExistsException",
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
    id = "InvalidCloudWatchDestinationException",
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
    id = "InvalidFirehoseDestinationException",
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
    id = "InvalidSNSDestinationException",
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
    id = "TrackingOptions",
    members = {
        CustomRedirectDomain = {
            type = "string",
        },
    },
}

M.CreateConfigurationSetTrackingOptionsInput = {
    type = "structure",
    id = "CreateConfigurationSetTrackingOptionsInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrackingOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrackingOptions }),
    },
}

M.CreateConfigurationSetTrackingOptionsOutput = {
    type = "structure",
    id = "CreateConfigurationSetTrackingOptionsOutput",
}

M.InvalidTrackingOptionsException = {
    type = "structure",
    id = "InvalidTrackingOptionsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TrackingOptionsAlreadyExistsException = {
    type = "structure",
    id = "TrackingOptionsAlreadyExistsException",
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

M.CustomVerificationEmailInvalidContentException = {
    type = "structure",
    id = "CustomVerificationEmailInvalidContentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomVerificationEmailTemplateAlreadyExistsException = {
    type = "structure",
    id = "CustomVerificationEmailTemplateAlreadyExistsException",
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
    id = "FromEmailAddressNotVerifiedException",
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
    id = "ReceiptIpFilter",
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
    id = "ReceiptFilter",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReceiptIpFilter }),
    },
}

M.CreateReceiptFilterInput = {
    type = "structure",
    id = "CreateReceiptFilterInput",
    members = {
        Filter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReceiptFilter }),
    },
}

M.CreateReceiptFilterOutput = {
    type = "structure",
    id = "CreateReceiptFilterOutput",
}

M.InvocationType = {
    Event = "Event",
    RequestResponse = "RequestResponse",
}

M.LambdaAction = {
    type = "structure",
    id = "LambdaAction",
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
    id = "S3Action",
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
    id = "SNSAction",
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
    id = "StopAction",
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
    id = "WorkmailAction",
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
    id = "ReceiptAction",
    members = {
        S3Action = M.S3Action,
        BounceAction = M.BounceAction,
        WorkmailAction = M.WorkmailAction,
        LambdaAction = M.LambdaAction,
        StopAction = M.StopAction,
        AddHeaderAction = M.AddHeaderAction,
        SNSAction = M.SNSAction,
        ConnectAction = M.ConnectAction,
    },
}

M.TlsPolicy = {
    Require = "Require",
    Optional = "Optional",
}

M.ReceiptRule = {
    type = "structure",
    id = "ReceiptRule",
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
        TlsPolicy = {
            type = "string",
        },
        Recipients = {
            type = "list",
            member = { type = "string" },
        },
        Actions = {
            type = "list",
            member = M.ReceiptAction,
        },
        ScanEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateReceiptRuleInput = {
    type = "structure",
    id = "CreateReceiptRuleInput",
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
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReceiptRule }),
    },
}

M.CreateReceiptRuleOutput = {
    type = "structure",
    id = "CreateReceiptRuleOutput",
}

M.InvalidLambdaFunctionException = {
    type = "structure",
    id = "InvalidLambdaFunctionException",
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
    id = "InvalidS3ConfigurationException",
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
    id = "InvalidSnsTopicException",
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
    id = "RuleDoesNotExistException",
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
    id = "CreateReceiptRuleSetInput",
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
    id = "CreateReceiptRuleSetOutput",
}

M.Template = {
    type = "structure",
    id = "Template",
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
    id = "CreateTemplateInput",
    members = {
        Template = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Template }),
    },
}

M.CreateTemplateOutput = {
    type = "structure",
    id = "CreateTemplateOutput",
}

M.InvalidTemplateException = {
    type = "structure",
    id = "InvalidTemplateException",
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
    id = "CustomVerificationEmailTemplate",
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
    id = "CustomVerificationEmailTemplateDoesNotExistException",
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
    id = "DeleteConfigurationSetInput",
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
    id = "DeleteConfigurationSetOutput",
}

M.DeleteConfigurationSetEventDestinationInput = {
    type = "structure",
    id = "DeleteConfigurationSetEventDestinationInput",
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
    id = "DeleteConfigurationSetEventDestinationOutput",
}

M.EventDestinationDoesNotExistException = {
    type = "structure",
    id = "EventDestinationDoesNotExistException",
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
    id = "DeleteConfigurationSetTrackingOptionsInput",
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
    id = "DeleteConfigurationSetTrackingOptionsOutput",
}

M.TrackingOptionsDoesNotExistException = {
    type = "structure",
    id = "TrackingOptionsDoesNotExistException",
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
    id = "DeleteCustomVerificationEmailTemplateInput",
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
    id = "DeleteCustomVerificationEmailTemplateOutput",
}

M.DeleteIdentityInput = {
    type = "structure",
    id = "DeleteIdentityInput",
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
    id = "DeleteIdentityOutput",
}

M.DeleteIdentityPolicyInput = {
    type = "structure",
    id = "DeleteIdentityPolicyInput",
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
    id = "DeleteIdentityPolicyOutput",
}

M.DeleteReceiptFilterInput = {
    type = "structure",
    id = "DeleteReceiptFilterInput",
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
    id = "DeleteReceiptFilterOutput",
}

M.DeleteReceiptRuleInput = {
    type = "structure",
    id = "DeleteReceiptRuleInput",
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
    id = "DeleteReceiptRuleOutput",
}

M.DeleteReceiptRuleSetInput = {
    type = "structure",
    id = "DeleteReceiptRuleSetInput",
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
    id = "DeleteReceiptRuleSetOutput",
}

M.DeleteTemplateInput = {
    type = "structure",
    id = "DeleteTemplateInput",
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
    id = "DeleteTemplateOutput",
}

M.DeleteVerifiedEmailAddressInput = {
    type = "structure",
    id = "DeleteVerifiedEmailAddressInput",
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
    id = "DeleteVerifiedEmailAddressOutput",
}

M.DeliveryOptions = {
    type = "structure",
    id = "DeliveryOptions",
    members = {
        TlsPolicy = {
            type = "string",
        },
    },
}

M.DescribeActiveReceiptRuleSetInput = {
    type = "structure",
    id = "DescribeActiveReceiptRuleSetInput",
}

M.ReceiptRuleSetMetadata = {
    type = "structure",
    id = "ReceiptRuleSetMetadata",
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
    id = "DescribeActiveReceiptRuleSetOutput",
    members = {
        Metadata = M.ReceiptRuleSetMetadata,
        Rules = {
            type = "list",
            member = M.ReceiptRule,
        },
    },
}

M.DescribeConfigurationSetInput = {
    type = "structure",
    id = "DescribeConfigurationSetInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationSetAttributeNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReputationOptions = {
    type = "structure",
    id = "ReputationOptions",
    members = {
        SendingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
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

M.DescribeConfigurationSetOutput = {
    type = "structure",
    id = "DescribeConfigurationSetOutput",
    members = {
        ConfigurationSet = M.ConfigurationSet,
        EventDestinations = {
            type = "list",
            member = M.EventDestination,
        },
        TrackingOptions = M.TrackingOptions,
        DeliveryOptions = M.DeliveryOptions,
        ReputationOptions = M.ReputationOptions,
    },
}

M.DescribeReceiptRuleInput = {
    type = "structure",
    id = "DescribeReceiptRuleInput",
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
    id = "DescribeReceiptRuleOutput",
    members = {
        Rule = M.ReceiptRule,
    },
}

M.DescribeReceiptRuleSetInput = {
    type = "structure",
    id = "DescribeReceiptRuleSetInput",
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
    id = "DescribeReceiptRuleSetOutput",
    members = {
        Metadata = M.ReceiptRuleSetMetadata,
        Rules = {
            type = "list",
            member = M.ReceiptRule,
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
    id = "IdentityDkimAttributes",
    members = {
        DkimEnabled = {
            type = "boolean",
            traits = {
                default = false,
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
            member = { type = "string" },
        },
    },
}

M.GetAccountSendingEnabledInput = {
    type = "structure",
    id = "GetAccountSendingEnabledInput",
}

M.GetAccountSendingEnabledOutput = {
    type = "structure",
    id = "GetAccountSendingEnabledOutput",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "GetIdentityDkimAttributesInput",
    members = {
        Identities = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityDkimAttributesOutput = {
    type = "structure",
    id = "GetIdentityDkimAttributesOutput",
    members = {
        DkimAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.IdentityDkimAttributes,
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityMailFromDomainAttributesInput = {
    type = "structure",
    id = "GetIdentityMailFromDomainAttributesInput",
    members = {
        Identities = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.IdentityMailFromDomainAttributes = {
    type = "structure",
    id = "IdentityMailFromDomainAttributes",
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
    id = "GetIdentityMailFromDomainAttributesOutput",
    members = {
        MailFromDomainAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.IdentityMailFromDomainAttributes,
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityNotificationAttributesInput = {
    type = "structure",
    id = "GetIdentityNotificationAttributesInput",
    members = {
        Identities = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.IdentityNotificationAttributes = {
    type = "structure",
    id = "IdentityNotificationAttributes",
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
                default = false,
                required = true,
            },
        },
        HeadersInBounceNotificationsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        HeadersInComplaintNotificationsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        HeadersInDeliveryNotificationsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetIdentityNotificationAttributesOutput = {
    type = "structure",
    id = "GetIdentityNotificationAttributesOutput",
    members = {
        NotificationAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.IdentityNotificationAttributes,
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityPoliciesInput = {
    type = "structure",
    id = "GetIdentityPoliciesInput",
    members = {
        Identity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityPoliciesOutput = {
    type = "structure",
    id = "GetIdentityPoliciesOutput",
    members = {
        Policies = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetIdentityVerificationAttributesInput = {
    type = "structure",
    id = "GetIdentityVerificationAttributesInput",
    members = {
        Identities = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.IdentityVerificationAttributes = {
    type = "structure",
    id = "IdentityVerificationAttributes",
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
    id = "GetIdentityVerificationAttributesOutput",
    members = {
        VerificationAttributes = {
            type = "map",
            key = { type = "string" },
            value = M.IdentityVerificationAttributes,
            traits = {
                required = true,
            },
        },
    },
}

M.GetSendQuotaInput = {
    type = "structure",
    id = "GetSendQuotaInput",
}

M.GetSendQuotaOutput = {
    type = "structure",
    id = "GetSendQuotaOutput",
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

M.GetSendStatisticsInput = {
    type = "structure",
    id = "GetSendStatisticsInput",
}

M.SendDataPoint = {
    type = "structure",
    id = "SendDataPoint",
    members = {
        Timestamp = {
            type = "timestamp",
        },
        DeliveryAttempts = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Bounces = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Complaints = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Rejects = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetSendStatisticsOutput = {
    type = "structure",
    id = "GetSendStatisticsOutput",
    members = {
        SendDataPoints = {
            type = "list",
            member = M.SendDataPoint,
        },
    },
}

M.GetTemplateInput = {
    type = "structure",
    id = "GetTemplateInput",
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
    id = "GetTemplateOutput",
    members = {
        Template = M.Template,
    },
}

M.TemplateDoesNotExistException = {
    type = "structure",
    id = "TemplateDoesNotExistException",
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
    id = "InvalidDeliveryOptionsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPolicyException = {
    type = "structure",
    id = "InvalidPolicyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRenderingParameterException = {
    type = "structure",
    id = "InvalidRenderingParameterException",
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
    id = "ListConfigurationSetsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListConfigurationSetsOutput = {
    type = "structure",
    id = "ListConfigurationSetsOutput",
    members = {
        ConfigurationSets = {
            type = "list",
            member = M.ConfigurationSet,
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
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListCustomVerificationEmailTemplatesOutput = {
    type = "structure",
    id = "ListCustomVerificationEmailTemplatesOutput",
    members = {
        CustomVerificationEmailTemplates = {
            type = "list",
            member = M.CustomVerificationEmailTemplate,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIdentitiesInput = {
    type = "structure",
    id = "ListIdentitiesInput",
    members = {
        IdentityType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListIdentitiesOutput = {
    type = "structure",
    id = "ListIdentitiesOutput",
    members = {
        Identities = {
            type = "list",
            member = { type = "string" },
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
    id = "ListIdentityPoliciesInput",
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
    id = "ListIdentityPoliciesOutput",
    members = {
        PolicyNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListReceiptFiltersInput = {
    type = "structure",
    id = "ListReceiptFiltersInput",
}

M.ListReceiptFiltersOutput = {
    type = "structure",
    id = "ListReceiptFiltersOutput",
    members = {
        Filters = {
            type = "list",
            member = M.ReceiptFilter,
        },
    },
}

M.ListReceiptRuleSetsInput = {
    type = "structure",
    id = "ListReceiptRuleSetsInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.ListReceiptRuleSetsOutput = {
    type = "structure",
    id = "ListReceiptRuleSetsOutput",
    members = {
        RuleSets = {
            type = "list",
            member = M.ReceiptRuleSetMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTemplatesInput = {
    type = "structure",
    id = "ListTemplatesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.TemplateMetadata = {
    type = "structure",
    id = "TemplateMetadata",
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
    id = "ListTemplatesOutput",
    members = {
        TemplatesMetadata = {
            type = "list",
            member = M.TemplateMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListVerifiedEmailAddressesInput = {
    type = "structure",
    id = "ListVerifiedEmailAddressesInput",
}

M.ListVerifiedEmailAddressesOutput = {
    type = "structure",
    id = "ListVerifiedEmailAddressesOutput",
    members = {
        VerifiedEmailAddresses = {
            type = "list",
            member = { type = "string" },
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

M.MessageDsn = {
    type = "structure",
    id = "MessageDsn",
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
            member = M.ExtensionField,
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

M.MissingRenderingAttributeException = {
    type = "structure",
    id = "MissingRenderingAttributeException",
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
    id = "ProductionAccessNotGrantedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutConfigurationSetDeliveryOptionsInput = {
    type = "structure",
    id = "PutConfigurationSetDeliveryOptionsInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryOptions = M.DeliveryOptions,
    },
}

M.PutConfigurationSetDeliveryOptionsOutput = {
    type = "structure",
    id = "PutConfigurationSetDeliveryOptionsOutput",
}

M.PutIdentityPolicyInput = {
    type = "structure",
    id = "PutIdentityPolicyInput",
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
    id = "PutIdentityPolicyOutput",
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

M.ReorderReceiptRuleSetInput = {
    type = "structure",
    id = "ReorderReceiptRuleSetInput",
    members = {
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ReorderReceiptRuleSetOutput = {
    type = "structure",
    id = "ReorderReceiptRuleSetOutput",
}

M.SendBounceInput = {
    type = "structure",
    id = "SendBounceInput",
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
        MessageDsn = M.MessageDsn,
        BouncedRecipientInfoList = {
            type = "list",
            member = M.BouncedRecipientInfo,
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
    id = "SendBounceOutput",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.SendBulkTemplatedEmailInput = {
    type = "structure",
    id = "SendBulkTemplatedEmailInput",
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
            member = { type = "string" },
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
            member = M.MessageTag,
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
            member = M.BulkEmailDestination,
            traits = {
                required = true,
            },
        },
    },
}

M.SendBulkTemplatedEmailOutput = {
    type = "structure",
    id = "SendBulkTemplatedEmailOutput",
    members = {
        Status = {
            type = "list",
            member = M.BulkEmailDestinationStatus,
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
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        Message = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Message }),
        ReplyToAddresses = {
            type = "list",
            member = { type = "string" },
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
            traits = {
                required = true,
            },
        },
    },
}

M.SendRawEmailInput = {
    type = "structure",
    id = "SendRawEmailInput",
    members = {
        Source = {
            type = "string",
        },
        Destinations = {
            type = "list",
            member = { type = "string" },
        },
        RawMessage = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RawMessage }),
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
            member = M.MessageTag,
        },
        ConfigurationSetName = {
            type = "string",
        },
    },
}

M.SendRawEmailOutput = {
    type = "structure",
    id = "SendRawEmailOutput",
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
    id = "SendTemplatedEmailInput",
    members = {
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        ReplyToAddresses = {
            type = "list",
            member = { type = "string" },
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
            member = M.MessageTag,
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
    id = "SendTemplatedEmailOutput",
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
    id = "SetActiveReceiptRuleSetInput",
    members = {
        RuleSetName = {
            type = "string",
        },
    },
}

M.SetActiveReceiptRuleSetOutput = {
    type = "structure",
    id = "SetActiveReceiptRuleSetOutput",
}

M.SetIdentityDkimEnabledInput = {
    type = "structure",
    id = "SetIdentityDkimEnabledInput",
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
                default = false,
                required = true,
            },
        },
    },
}

M.SetIdentityDkimEnabledOutput = {
    type = "structure",
    id = "SetIdentityDkimEnabledOutput",
}

M.SetIdentityFeedbackForwardingEnabledInput = {
    type = "structure",
    id = "SetIdentityFeedbackForwardingEnabledInput",
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
                default = false,
                required = true,
            },
        },
    },
}

M.SetIdentityFeedbackForwardingEnabledOutput = {
    type = "structure",
    id = "SetIdentityFeedbackForwardingEnabledOutput",
}

M.SetIdentityHeadersInNotificationsEnabledInput = {
    type = "structure",
    id = "SetIdentityHeadersInNotificationsEnabledInput",
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
                default = false,
                required = true,
            },
        },
    },
}

M.SetIdentityHeadersInNotificationsEnabledOutput = {
    type = "structure",
    id = "SetIdentityHeadersInNotificationsEnabledOutput",
}

M.SetIdentityMailFromDomainInput = {
    type = "structure",
    id = "SetIdentityMailFromDomainInput",
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
    id = "SetIdentityMailFromDomainOutput",
}

M.SetIdentityNotificationTopicInput = {
    type = "structure",
    id = "SetIdentityNotificationTopicInput",
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
    id = "SetIdentityNotificationTopicOutput",
}

M.SetReceiptRulePositionInput = {
    type = "structure",
    id = "SetReceiptRulePositionInput",
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
    id = "SetReceiptRulePositionOutput",
}

M.TestRenderTemplateInput = {
    type = "structure",
    id = "TestRenderTemplateInput",
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
    id = "TestRenderTemplateOutput",
    members = {
        RenderedTemplate = {
            type = "string",
        },
    },
}

M.UpdateAccountSendingEnabledInput = {
    type = "structure",
    id = "UpdateAccountSendingEnabledInput",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.UpdateAccountSendingEnabledOutput = {
    type = "structure",
    id = "UpdateAccountSendingEnabledOutput",
}

M.UpdateConfigurationSetEventDestinationInput = {
    type = "structure",
    id = "UpdateConfigurationSetEventDestinationInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventDestination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventDestination }),
    },
}

M.UpdateConfigurationSetEventDestinationOutput = {
    type = "structure",
    id = "UpdateConfigurationSetEventDestinationOutput",
}

M.UpdateConfigurationSetReputationMetricsEnabledInput = {
    type = "structure",
    id = "UpdateConfigurationSetReputationMetricsEnabledInput",
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
                default = false,
                required = true,
            },
        },
    },
}

M.UpdateConfigurationSetReputationMetricsEnabledOutput = {
    type = "structure",
    id = "UpdateConfigurationSetReputationMetricsEnabledOutput",
}

M.UpdateConfigurationSetSendingEnabledInput = {
    type = "structure",
    id = "UpdateConfigurationSetSendingEnabledInput",
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
                default = false,
                required = true,
            },
        },
    },
}

M.UpdateConfigurationSetSendingEnabledOutput = {
    type = "structure",
    id = "UpdateConfigurationSetSendingEnabledOutput",
}

M.UpdateConfigurationSetTrackingOptionsInput = {
    type = "structure",
    id = "UpdateConfigurationSetTrackingOptionsInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrackingOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrackingOptions }),
    },
}

M.UpdateConfigurationSetTrackingOptionsOutput = {
    type = "structure",
    id = "UpdateConfigurationSetTrackingOptionsOutput",
}

M.UpdateCustomVerificationEmailTemplateInput = {
    type = "structure",
    id = "UpdateCustomVerificationEmailTemplateInput",
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
    id = "UpdateCustomVerificationEmailTemplateOutput",
}

M.UpdateReceiptRuleInput = {
    type = "structure",
    id = "UpdateReceiptRuleInput",
    members = {
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReceiptRule }),
    },
}

M.UpdateReceiptRuleOutput = {
    type = "structure",
    id = "UpdateReceiptRuleOutput",
}

M.UpdateTemplateInput = {
    type = "structure",
    id = "UpdateTemplateInput",
    members = {
        Template = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Template }),
    },
}

M.UpdateTemplateOutput = {
    type = "structure",
    id = "UpdateTemplateOutput",
}

M.VerifyDomainDkimInput = {
    type = "structure",
    id = "VerifyDomainDkimInput",
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
    id = "VerifyDomainDkimOutput",
    members = {
        DkimTokens = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.VerifyDomainIdentityInput = {
    type = "structure",
    id = "VerifyDomainIdentityInput",
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
    id = "VerifyDomainIdentityOutput",
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
    id = "VerifyEmailAddressInput",
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
    id = "VerifyEmailAddressOutput",
}

M.VerifyEmailIdentityInput = {
    type = "structure",
    id = "VerifyEmailIdentityInput",
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
    id = "VerifyEmailIdentityOutput",
}

return M
