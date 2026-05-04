local M = {}

M.AcceptAction = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ActionFailurePolicy = {
    CONTINUE = "CONTINUE",
    DROP = "DROP",
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

M.AddonInstance = {
    type = "structure",
    members = {
        AddonInstanceId = {
            type = "string",
        },
        AddonSubscriptionId = {
            type = "string",
        },
        AddonName = {
            type = "string",
        },
        AddonInstanceArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
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

M.CreateAddonInstanceInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        AddonSubscriptionId = {
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

M.CreateAddonInstanceOutput = {
    type = "structure",
    members = {
        AddonInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAddonInstanceInput = {
    type = "structure",
    members = {
        AddonInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAddonInstanceOutput = {
    type = "structure",
}

M.GetAddonInstanceInput = {
    type = "structure",
    members = {
        AddonInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAddonInstanceOutput = {
    type = "structure",
    members = {
        AddonSubscriptionId = {
            type = "string",
        },
        AddonName = {
            type = "string",
        },
        AddonInstanceArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListAddonInstancesInput = {
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

M.ListAddonInstancesOutput = {
    type = "structure",
    members = {
        AddonInstances = {
            type = "list",
            member = M.AddonInstance,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AddonSubscription = {
    type = "structure",
    members = {
        AddonSubscriptionId = {
            type = "string",
        },
        AddonName = {
            type = "string",
        },
        AddonSubscriptionArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateAddonSubscriptionInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        AddonName = {
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

M.CreateAddonSubscriptionOutput = {
    type = "structure",
    members = {
        AddonSubscriptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAddonSubscriptionInput = {
    type = "structure",
    members = {
        AddonSubscriptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAddonSubscriptionOutput = {
    type = "structure",
}

M.GetAddonSubscriptionInput = {
    type = "structure",
    members = {
        AddonSubscriptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAddonSubscriptionOutput = {
    type = "structure",
    members = {
        AddonName = {
            type = "string",
        },
        AddonSubscriptionArn = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListAddonSubscriptionsInput = {
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

M.ListAddonSubscriptionsOutput = {
    type = "structure",
    members = {
        AddonSubscriptions = {
            type = "list",
            member = M.AddonSubscription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AddressFilter = {
    type = "structure",
    members = {
        AddressPrefix = {
            type = "string",
        },
    },
}

M.AddressList = {
    type = "structure",
    members = {
        AddressListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddressListArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddressListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAddressListInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        AddressListName = {
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

M.CreateAddressListOutput = {
    type = "structure",
    members = {
        AddressListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAddressListInput = {
    type = "structure",
    members = {
        AddressListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAddressListOutput = {
    type = "structure",
}

M.GetAddressListInput = {
    type = "structure",
    members = {
        AddressListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAddressListOutput = {
    type = "structure",
    members = {
        AddressListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddressListArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddressListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAddressListsInput = {
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

M.ListAddressListsOutput = {
    type = "structure",
    members = {
        AddressLists = {
            type = "list",
            member = M.AddressList,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Analysis = {
    type = "structure",
    members = {
        Analyzer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResultField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ArchiveState = {
    ACTIVE = "ACTIVE",
    PENDING_DELETION = "PENDING_DELETION",
}

M.Archive = {
    type = "structure",
    members = {
        ArchiveId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArchiveName = {
            type = "string",
        },
        ArchiveState = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ArchiveAction = {
    type = "structure",
    members = {
        ActionFailurePolicy = {
            type = "string",
        },
        TargetArchive = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ArchiveBooleanEmailAttribute = {
    HAS_ATTACHMENTS = "HAS_ATTACHMENTS",
}

M.ArchiveBooleanToEvaluate = {
    type = "union",
    members = {
        Attribute = {
            type = "string",
        },
    },
}

M.ArchiveBooleanOperator = {
    IS_TRUE = "IS_TRUE",
    IS_FALSE = "IS_FALSE",
}

M.ArchiveBooleanExpression = {
    type = "structure",
    members = {
        Evaluate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArchiveBooleanToEvaluate }),
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ArchiveStringEmailAttribute = {
    TO = "TO",
    FROM = "FROM",
    CC = "CC",
    SUBJECT = "SUBJECT",
    ENVELOPE_TO = "ENVELOPE_TO",
    ENVELOPE_FROM = "ENVELOPE_FROM",
}

M.ArchiveStringToEvaluate = {
    type = "union",
    members = {
        Attribute = {
            type = "string",
        },
    },
}

M.ArchiveStringOperator = {
    CONTAINS = "CONTAINS",
}

M.ArchiveStringExpression = {
    type = "structure",
    members = {
        Evaluate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArchiveStringToEvaluate }),
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
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

M.ArchiveFilterCondition = {
    type = "union",
    members = {
        StringExpression = M.ArchiveStringExpression,
        BooleanExpression = M.ArchiveBooleanExpression,
    },
}

M.ArchiveFilters = {
    type = "structure",
    members = {
        Include = {
            type = "list",
            member = M.ArchiveFilterCondition,
        },
        Unless = {
            type = "list",
            member = M.ArchiveFilterCondition,
        },
    },
}

M.RetentionPeriod = {
    THREE_MONTHS = "THREE_MONTHS",
    SIX_MONTHS = "SIX_MONTHS",
    NINE_MONTHS = "NINE_MONTHS",
    ONE_YEAR = "ONE_YEAR",
    EIGHTEEN_MONTHS = "EIGHTEEN_MONTHS",
    TWO_YEARS = "TWO_YEARS",
    THIRTY_MONTHS = "THIRTY_MONTHS",
    THREE_YEARS = "THREE_YEARS",
    FOUR_YEARS = "FOUR_YEARS",
    FIVE_YEARS = "FIVE_YEARS",
    SIX_YEARS = "SIX_YEARS",
    SEVEN_YEARS = "SEVEN_YEARS",
    EIGHT_YEARS = "EIGHT_YEARS",
    NINE_YEARS = "NINE_YEARS",
    TEN_YEARS = "TEN_YEARS",
    PERMANENT = "PERMANENT",
}

M.ArchiveRetention = {
    type = "union",
    members = {
        RetentionPeriod = {
            type = "string",
        },
    },
}

M.CreateArchiveInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ArchiveName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Retention = M.ArchiveRetention,
        KmsKeyArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateArchiveOutput = {
    type = "structure",
    members = {
        ArchiveId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteArchiveInput = {
    type = "structure",
    members = {
        ArchiveId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteArchiveOutput = {
    type = "structure",
}

M.GetArchiveInput = {
    type = "structure",
    members = {
        ArchiveId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetArchiveOutput = {
    type = "structure",
    members = {
        ArchiveId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArchiveName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArchiveArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArchiveState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Retention = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArchiveRetention }),
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.ListArchivesInput = {
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

M.ListArchivesOutput = {
    type = "structure",
    members = {
        Archives = {
            type = "list",
            member = M.Archive,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateArchiveInput = {
    type = "structure",
    members = {
        ArchiveId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArchiveName = {
            type = "string",
        },
        Retention = M.ArchiveRetention,
    },
}

M.UpdateArchiveOutput = {
    type = "structure",
}

M.BounceAction = {
    type = "structure",
    members = {
        ActionFailurePolicy = {
            type = "string",
        },
        RoleArn = {
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
        StatusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SmtpReplyCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DiagnosticMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
    },
}

M.ImportDataType = {
    CSV = "CSV",
    JSON = "JSON",
}

M.ImportDataFormat = {
    type = "structure",
    members = {
        ImportDataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAddressListImportJobInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        AddressListId = {
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
        ImportDataFormat = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImportDataFormat }),
    },
}

M.CreateAddressListImportJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PreSignedUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrustStore = {
    type = "structure",
    members = {
        CAContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CrlContent = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.TlsAuthConfiguration = {
    type = "structure",
    members = {
        TrustStore = M.TrustStore,
    },
}

M.IngressPointConfiguration = {
    type = "union",
    members = {
        SmtpPassword = {
            type = "string",
        },
        SecretArn = {
            type = "string",
        },
        TlsAuthConfiguration = M.TlsAuthConfiguration,
    },
}

M.PrivateNetworkConfiguration = {
    type = "structure",
    members = {
        VpcEndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IpType = {
    IPV4 = "IPV4",
    DUAL_STACK = "DUAL_STACK",
}

M.PublicNetworkConfiguration = {
    type = "structure",
    members = {
        IpType = {
            type = "string",
            traits = {
                default = "IPV4",
                required = true,
            },
        },
    },
}

M.NetworkConfiguration = {
    type = "union",
    members = {
        PublicNetworkConfiguration = M.PublicNetworkConfiguration,
        PrivateNetworkConfiguration = M.PrivateNetworkConfiguration,
    },
}

M.TlsPolicy = {
    REQUIRED = "REQUIRED",
    OPTIONAL = "OPTIONAL",
    FIPS = "FIPS",
}

M.IngressPointType = {
    OPEN = "OPEN",
    AUTH = "AUTH",
    MTLS = "MTLS",
}

M.CreateIngressPointInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        IngressPointName = {
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
        RuleSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrafficPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IngressPointConfiguration = M.IngressPointConfiguration,
        NetworkConfiguration = M.NetworkConfiguration,
        TlsPolicy = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateIngressPointOutput = {
    type = "structure",
    members = {
        IngressPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NoAuthentication = {
    type = "structure",
}

M.RelayAuthentication = {
    type = "union",
    members = {
        SecretArn = {
            type = "string",
        },
        NoAuthentication = M.NoAuthentication,
    },
}

M.CreateRelayInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        RelayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Authentication = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RelayAuthentication }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateRelayOutput = {
    type = "structure",
    members = {
        RelayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeliverToMailboxAction = {
    type = "structure",
    members = {
        ActionFailurePolicy = {
            type = "string",
        },
        MailboxArn = {
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

M.DeliverToQBusinessAction = {
    type = "structure",
    members = {
        ActionFailurePolicy = {
            type = "string",
        },
        ApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexId = {
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

M.DropAction = {
    type = "structure",
}

M.LambdaInvocationType = {
    EVENT = "EVENT",
    REQUEST_RESPONSE = "REQUEST_RESPONSE",
}

M.InvokeLambdaAction = {
    type = "structure",
    members = {
        ActionFailurePolicy = {
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
        RetryTimeMinutes = {
            type = "integer",
        },
    },
}

M.SnsNotificationEncoding = {
    UTF_8 = "UTF-8",
    BASE64 = "BASE64",
}

M.SnsNotificationPayloadType = {
    HEADERS = "HEADERS",
    CONTENT = "CONTENT",
}

M.SnsAction = {
    type = "structure",
    members = {
        ActionFailurePolicy = {
            type = "string",
        },
        TopicArn = {
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
        Encoding = {
            type = "string",
            traits = {
                default = "UTF-8",
            },
        },
        PayloadType = {
            type = "string",
            traits = {
                default = "CONTENT",
            },
        },
    },
}

M.MailFrom = {
    REPLACE = "REPLACE",
    PRESERVE = "PRESERVE",
}

M.RelayAction = {
    type = "structure",
    members = {
        ActionFailurePolicy = {
            type = "string",
        },
        Relay = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MailFrom = {
            type = "string",
        },
    },
}

M.ReplaceRecipientAction = {
    type = "structure",
    members = {
        ReplaceWith = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SendAction = {
    type = "structure",
    members = {
        ActionFailurePolicy = {
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

M.S3Action = {
    type = "structure",
    members = {
        ActionFailurePolicy = {
            type = "string",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Prefix = {
            type = "string",
        },
        S3SseKmsKeyId = {
            type = "string",
        },
    },
}

M.RuleAction = {
    type = "union",
    members = {
        Drop = M.DropAction,
        Relay = M.RelayAction,
        Archive = M.ArchiveAction,
        WriteToS3 = M.S3Action,
        Send = M.SendAction,
        AddHeader = M.AddHeaderAction,
        ReplaceRecipient = M.ReplaceRecipientAction,
        DeliverToMailbox = M.DeliverToMailboxAction,
        DeliverToQBusiness = M.DeliverToQBusinessAction,
        PublishToSns = M.SnsAction,
        Bounce = M.BounceAction,
        InvokeLambda = M.InvokeLambdaAction,
    },
}

M.RuleBooleanEmailAttribute = {
    READ_RECEIPT_REQUESTED = "READ_RECEIPT_REQUESTED",
    TLS = "TLS",
    TLS_WRAPPED = "TLS_WRAPPED",
}

M.RuleAddressListEmailAttribute = {
    RECIPIENT = "RECIPIENT",
    MAIL_FROM = "MAIL_FROM",
    SENDER = "SENDER",
    FROM = "FROM",
    TO = "TO",
    CC = "CC",
}

M.RuleIsInAddressList = {
    type = "structure",
    members = {
        Attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddressLists = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RuleBooleanToEvaluate = {
    type = "union",
    members = {
        Attribute = {
            type = "string",
        },
        Analysis = M.Analysis,
        IsInAddressList = M.RuleIsInAddressList,
    },
}

M.RuleBooleanOperator = {
    IS_TRUE = "IS_TRUE",
    IS_FALSE = "IS_FALSE",
}

M.RuleBooleanExpression = {
    type = "structure",
    members = {
        Evaluate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleBooleanToEvaluate }),
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RuleDmarcOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
}

M.RuleDmarcPolicy = {
    NONE = "NONE",
    QUARANTINE = "QUARANTINE",
    REJECT = "REJECT",
}

M.RuleDmarcExpression = {
    type = "structure",
    members = {
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
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

M.RuleIpEmailAttribute = {
    SOURCE_IP = "SOURCE_IP",
}

M.RuleIpToEvaluate = {
    type = "union",
    members = {
        Attribute = {
            type = "string",
        },
    },
}

M.RuleIpOperator = {
    CIDR_MATCHES = "CIDR_MATCHES",
    NOT_CIDR_MATCHES = "NOT_CIDR_MATCHES",
}

M.RuleIpExpression = {
    type = "structure",
    members = {
        Evaluate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleIpToEvaluate }),
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
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

M.RuleNumberEmailAttribute = {
    MESSAGE_SIZE = "MESSAGE_SIZE",
}

M.RuleNumberToEvaluate = {
    type = "union",
    members = {
        Attribute = {
            type = "string",
        },
    },
}

M.RuleNumberOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN_OR_EQUAL = "LESS_THAN_OR_EQUAL",
    GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL",
}

M.RuleNumberExpression = {
    type = "structure",
    members = {
        Evaluate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleNumberToEvaluate }),
        Operator = {
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

M.RuleStringEmailAttribute = {
    MAIL_FROM = "MAIL_FROM",
    HELO = "HELO",
    RECIPIENT = "RECIPIENT",
    SENDER = "SENDER",
    FROM = "FROM",
    SUBJECT = "SUBJECT",
    TO = "TO",
    CC = "CC",
}

M.RuleClientCertificateAttribute = {
    CN = "CN",
    SAN_RFC822_NAME = "SAN_RFC822_NAME",
    SAN_DNS_NAME = "SAN_DNS_NAME",
    SAN_DIRECTORY_NAME = "SAN_DIRECTORY_NAME",
    SAN_UNIFORM_RESOURCE_IDENTIFIER = "SAN_UNIFORM_RESOURCE_IDENTIFIER",
    SAN_IP_ADDRESS = "SAN_IP_ADDRESS",
    SAN_REGISTERED_ID = "SAN_REGISTERED_ID",
    SERIAL_NUMBER = "SERIAL_NUMBER",
}

M.RuleStringToEvaluate = {
    type = "union",
    members = {
        Attribute = {
            type = "string",
        },
        MimeHeaderAttribute = {
            type = "string",
        },
        Analysis = M.Analysis,
        ClientCertificateAttribute = {
            type = "string",
        },
    },
}

M.RuleStringOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
    CONTAINS = "CONTAINS",
}

M.RuleStringExpression = {
    type = "structure",
    members = {
        Evaluate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleStringToEvaluate }),
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
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

M.RuleVerdictAttribute = {
    SPF = "SPF",
    DKIM = "DKIM",
}

M.RuleVerdictToEvaluate = {
    type = "union",
    members = {
        Attribute = {
            type = "string",
        },
        Analysis = M.Analysis,
    },
}

M.RuleVerdictOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
}

M.RuleVerdict = {
    PASS = "PASS",
    FAIL = "FAIL",
    GRAY = "GRAY",
    PROCESSING_FAILED = "PROCESSING_FAILED",
}

M.RuleVerdictExpression = {
    type = "structure",
    members = {
        Evaluate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleVerdictToEvaluate }),
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
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

M.RuleCondition = {
    type = "union",
    members = {
        BooleanExpression = M.RuleBooleanExpression,
        StringExpression = M.RuleStringExpression,
        NumberExpression = M.RuleNumberExpression,
        IpExpression = M.RuleIpExpression,
        VerdictExpression = M.RuleVerdictExpression,
        DmarcExpression = M.RuleDmarcExpression,
    },
}

M.Rule = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Conditions = {
            type = "list",
            member = M.RuleCondition,
        },
        Unless = {
            type = "list",
            member = M.RuleCondition,
        },
        Actions = {
            type = "list",
            member = M.RuleAction,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRuleSetInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rules = {
            type = "list",
            member = M.Rule,
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

M.CreateRuleSetOutput = {
    type = "structure",
    members = {
        RuleSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IngressAnalysis = {
    type = "structure",
    members = {
        Analyzer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResultField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IngressAddressListEmailAttribute = {
    RECIPIENT = "RECIPIENT",
}

M.IngressIsInAddressList = {
    type = "structure",
    members = {
        Attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AddressLists = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.IngressBooleanToEvaluate = {
    type = "union",
    members = {
        Analysis = M.IngressAnalysis,
        IsInAddressList = M.IngressIsInAddressList,
    },
}

M.IngressBooleanOperator = {
    IS_TRUE = "IS_TRUE",
    IS_FALSE = "IS_FALSE",
}

M.IngressBooleanExpression = {
    type = "structure",
    members = {
        Evaluate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngressBooleanToEvaluate }),
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IngressIpv4Attribute = {
    SENDER_IP = "SENDER_IP",
}

M.IngressIpToEvaluate = {
    type = "union",
    members = {
        Attribute = {
            type = "string",
        },
    },
}

M.IngressIpOperator = {
    CIDR_MATCHES = "CIDR_MATCHES",
    NOT_CIDR_MATCHES = "NOT_CIDR_MATCHES",
}

M.IngressIpv4Expression = {
    type = "structure",
    members = {
        Evaluate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngressIpToEvaluate }),
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
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

M.IngressIpv6Attribute = {
    SENDER_IPV6 = "SENDER_IPV6",
}

M.IngressIpv6ToEvaluate = {
    type = "union",
    members = {
        Attribute = {
            type = "string",
        },
    },
}

M.IngressIpv6Expression = {
    type = "structure",
    members = {
        Evaluate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngressIpv6ToEvaluate }),
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
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

M.IngressStringEmailAttribute = {
    RECIPIENT = "RECIPIENT",
}

M.IngressStringToEvaluate = {
    type = "union",
    members = {
        Attribute = {
            type = "string",
        },
        Analysis = M.IngressAnalysis,
    },
}

M.IngressStringOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
    CONTAINS = "CONTAINS",
}

M.IngressStringExpression = {
    type = "structure",
    members = {
        Evaluate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngressStringToEvaluate }),
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
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

M.IngressTlsAttribute = {
    TLS_PROTOCOL = "TLS_PROTOCOL",
}

M.IngressTlsProtocolToEvaluate = {
    type = "union",
    members = {
        Attribute = {
            type = "string",
        },
    },
}

M.IngressTlsProtocolOperator = {
    MINIMUM_TLS_VERSION = "MINIMUM_TLS_VERSION",
    IS = "IS",
}

M.IngressTlsProtocolAttribute = {
    TLS1_2 = "TLS1_2",
    TLS1_3 = "TLS1_3",
}

M.IngressTlsProtocolExpression = {
    type = "structure",
    members = {
        Evaluate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IngressTlsProtocolToEvaluate }),
        Operator = {
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

M.PolicyCondition = {
    type = "union",
    members = {
        StringExpression = M.IngressStringExpression,
        IpExpression = M.IngressIpv4Expression,
        Ipv6Expression = M.IngressIpv6Expression,
        TlsExpression = M.IngressTlsProtocolExpression,
        BooleanExpression = M.IngressBooleanExpression,
    },
}

M.PolicyStatement = {
    type = "structure",
    members = {
        Conditions = {
            type = "list",
            member = M.PolicyCondition,
            traits = {
                required = true,
            },
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTrafficPolicyInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        TrafficPolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyStatements = {
            type = "list",
            member = M.PolicyStatement,
            traits = {
                required = true,
            },
        },
        DefaultAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxMessageSizeBytes = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateTrafficPolicyOutput = {
    type = "structure",
    members = {
        TrafficPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIngressPointInput = {
    type = "structure",
    members = {
        IngressPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIngressPointOutput = {
    type = "structure",
}

M.DeleteRelayInput = {
    type = "structure",
    members = {
        RelayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRelayOutput = {
    type = "structure",
}

M.DeleteRuleSetInput = {
    type = "structure",
    members = {
        RuleSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRuleSetOutput = {
    type = "structure",
}

M.DeleteTrafficPolicyInput = {
    type = "structure",
    members = {
        TrafficPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTrafficPolicyOutput = {
    type = "structure",
}

M.DeregisterMemberFromAddressListInput = {
    type = "structure",
    members = {
        AddressListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterMemberFromAddressListOutput = {
    type = "structure",
}

M.Envelope = {
    type = "structure",
    members = {
        Helo = {
            type = "string",
        },
        From = {
            type = "string",
        },
        To = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.S3ExportDestinationConfiguration = {
    type = "structure",
    members = {
        S3Location = {
            type = "string",
        },
    },
}

M.ExportDestinationConfiguration = {
    type = "union",
    members = {
        S3 = M.S3ExportDestinationConfiguration,
    },
}

M.ExportState = {
    QUEUED = "QUEUED",
    PREPROCESSING = "PREPROCESSING",
    PROCESSING = "PROCESSING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.ExportStatus = {
    type = "structure",
    members = {
        SubmissionTimestamp = {
            type = "timestamp",
        },
        CompletionTimestamp = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.ExportSummary = {
    type = "structure",
    members = {
        ExportId = {
            type = "string",
        },
        Status = M.ExportStatus,
    },
}

M.GetAddressListImportJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportJobStatus = {
    CREATED = "CREATED",
    PROCESSING = "PROCESSING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
}

M.GetAddressListImportJobOutput = {
    type = "structure",
    members = {
        JobId = {
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
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PreSignedUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImportedItemsCount = {
            type = "integer",
        },
        FailedItemsCount = {
            type = "integer",
        },
        ImportDataFormat = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImportDataFormat }),
        AddressListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StartTimestamp = {
            type = "timestamp",
        },
        CompletedTimestamp = {
            type = "timestamp",
        },
        Error = {
            type = "string",
        },
    },
}

M.GetArchiveExportInput = {
    type = "structure",
    members = {
        ExportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetArchiveExportOutput = {
    type = "structure",
    members = {
        ArchiveId = {
            type = "string",
        },
        Filters = M.ArchiveFilters,
        FromTimestamp = {
            type = "timestamp",
        },
        ToTimestamp = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        ExportDestinationConfiguration = M.ExportDestinationConfiguration,
        Status = M.ExportStatus,
    },
}

M.GetArchiveMessageInput = {
    type = "structure",
    members = {
        ArchivedMessageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Metadata = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
        },
        IngressPointId = {
            type = "string",
        },
        TrafficPolicyId = {
            type = "string",
        },
        RuleSetId = {
            type = "string",
        },
        SenderHostname = {
            type = "string",
        },
        SenderIpAddress = {
            type = "string",
        },
        TlsCipherSuite = {
            type = "string",
        },
        TlsProtocol = {
            type = "string",
        },
        SendingMethod = {
            type = "string",
        },
        SourceIdentity = {
            type = "string",
        },
        SendingPool = {
            type = "string",
        },
        ConfigurationSet = {
            type = "string",
        },
        SourceArn = {
            type = "string",
        },
    },
}

M.GetArchiveMessageOutput = {
    type = "structure",
    members = {
        MessageDownloadLink = {
            type = "string",
        },
        Metadata = M.Metadata,
        Envelope = M.Envelope,
    },
}

M.GetArchiveMessageContentInput = {
    type = "structure",
    members = {
        ArchivedMessageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MessageBody = {
    type = "structure",
    members = {
        Text = {
            type = "string",
        },
        Html = {
            type = "string",
        },
        MessageMalformed = {
            type = "boolean",
        },
    },
}

M.GetArchiveMessageContentOutput = {
    type = "structure",
    members = {
        Body = M.MessageBody,
    },
}

M.GetArchiveSearchInput = {
    type = "structure",
    members = {
        SearchId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchState = {
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.SearchStatus = {
    type = "structure",
    members = {
        SubmissionTimestamp = {
            type = "timestamp",
        },
        CompletionTimestamp = {
            type = "timestamp",
        },
        State = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.GetArchiveSearchOutput = {
    type = "structure",
    members = {
        ArchiveId = {
            type = "string",
        },
        Filters = M.ArchiveFilters,
        FromTimestamp = {
            type = "timestamp",
        },
        ToTimestamp = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        Status = M.SearchStatus,
    },
}

M.GetArchiveSearchResultsInput = {
    type = "structure",
    members = {
        SearchId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Row = {
    type = "structure",
    members = {
        ArchivedMessageId = {
            type = "string",
        },
        ReceivedTimestamp = {
            type = "timestamp",
        },
        Date = {
            type = "string",
        },
        To = {
            type = "string",
        },
        From = {
            type = "string",
        },
        Cc = {
            type = "string",
        },
        Subject = {
            type = "string",
        },
        MessageId = {
            type = "string",
        },
        HasAttachments = {
            type = "boolean",
        },
        ReceivedHeaders = {
            type = "list",
            member = { type = "string" },
        },
        InReplyTo = {
            type = "string",
        },
        XMailer = {
            type = "string",
        },
        XOriginalMailer = {
            type = "string",
        },
        XPriority = {
            type = "string",
        },
        IngressPointId = {
            type = "string",
        },
        SenderHostname = {
            type = "string",
        },
        SenderIpAddress = {
            type = "string",
        },
        Envelope = M.Envelope,
        SourceArn = {
            type = "string",
        },
    },
}

M.GetArchiveSearchResultsOutput = {
    type = "structure",
    members = {
        Rows = {
            type = "list",
            member = M.Row,
        },
    },
}

M.TrustStoreResponseOption = {
    EXCLUDE = "EXCLUDE",
    INCLUDE = "INCLUDE",
}

M.GetIngressPointInput = {
    type = "structure",
    members = {
        IngressPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeTrustStoreContents = {
            type = "string",
        },
    },
}

M.IngressPointPasswordConfiguration = {
    type = "structure",
    members = {
        SmtpPasswordVersion = {
            type = "string",
        },
        PreviousSmtpPasswordVersion = {
            type = "string",
        },
        PreviousSmtpPasswordExpiryTimestamp = {
            type = "timestamp",
        },
    },
}

M.IngressPointAuthConfiguration = {
    type = "structure",
    members = {
        IngressPointPasswordConfiguration = M.IngressPointPasswordConfiguration,
        SecretArn = {
            type = "string",
        },
        TlsAuthConfiguration = M.TlsAuthConfiguration,
    },
}

M.IngressPointStatus = {
    PROVISIONING = "PROVISIONING",
    DEPROVISIONING = "DEPROVISIONING",
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
    CLOSED = "CLOSED",
    FAILED = "FAILED",
    ASSOCIATED_VPC_ENDPOINT_DOES_NOT_EXIST = "ASSOCIATED_VPC_ENDPOINT_DOES_NOT_EXIST",
}

M.GetIngressPointOutput = {
    type = "structure",
    members = {
        IngressPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IngressPointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IngressPointArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        ARecord = {
            type = "string",
        },
        RuleSetId = {
            type = "string",
        },
        TrafficPolicyId = {
            type = "string",
        },
        IngressPointAuthConfiguration = M.IngressPointAuthConfiguration,
        NetworkConfiguration = M.NetworkConfiguration,
        TlsPolicy = {
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

M.GetMemberOfAddressListInput = {
    type = "structure",
    members = {
        AddressListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMemberOfAddressListOutput = {
    type = "structure",
    members = {
        Address = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRelayInput = {
    type = "structure",
    members = {
        RelayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRelayOutput = {
    type = "structure",
    members = {
        RelayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelayArn = {
            type = "string",
        },
        RelayName = {
            type = "string",
        },
        ServerName = {
            type = "string",
        },
        ServerPort = {
            type = "integer",
        },
        Authentication = M.RelayAuthentication,
        CreatedTimestamp = {
            type = "timestamp",
        },
        LastModifiedTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetRuleSetInput = {
    type = "structure",
    members = {
        RuleSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRuleSetOutput = {
    type = "structure",
    members = {
        RuleSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModificationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Rules = {
            type = "list",
            member = M.Rule,
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrafficPolicyInput = {
    type = "structure",
    members = {
        TrafficPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrafficPolicyOutput = {
    type = "structure",
    members = {
        TrafficPolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrafficPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrafficPolicyArn = {
            type = "string",
        },
        PolicyStatements = {
            type = "list",
            member = M.PolicyStatement,
        },
        MaxMessageSizeBytes = {
            type = "integer",
        },
        DefaultAction = {
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

M.ImportJob = {
    type = "structure",
    members = {
        JobId = {
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
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PreSignedUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImportedItemsCount = {
            type = "integer",
        },
        FailedItemsCount = {
            type = "integer",
        },
        ImportDataFormat = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImportDataFormat }),
        AddressListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        StartTimestamp = {
            type = "timestamp",
        },
        CompletedTimestamp = {
            type = "timestamp",
        },
        Error = {
            type = "string",
        },
    },
}

M.IngressPoint = {
    type = "structure",
    members = {
        IngressPointName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IngressPointId = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ARecord = {
            type = "string",
        },
    },
}

M.ListIngressPointsInput = {
    type = "structure",
    members = {
        PageSize = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIngressPointsOutput = {
    type = "structure",
    members = {
        IngressPoints = {
            type = "list",
            member = M.IngressPoint,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.IngressPointStatusToUpdate = {
    ACTIVE = "ACTIVE",
    CLOSED = "CLOSED",
}

M.UpdateIngressPointInput = {
    type = "structure",
    members = {
        IngressPointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IngressPointName = {
            type = "string",
        },
        StatusToUpdate = {
            type = "string",
        },
        RuleSetId = {
            type = "string",
        },
        TrafficPolicyId = {
            type = "string",
        },
        IngressPointConfiguration = M.IngressPointConfiguration,
        TlsPolicy = {
            type = "string",
        },
    },
}

M.UpdateIngressPointOutput = {
    type = "structure",
}

M.ListAddressListImportJobsInput = {
    type = "structure",
    members = {
        AddressListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.ListAddressListImportJobsOutput = {
    type = "structure",
    members = {
        ImportJobs = {
            type = "list",
            member = M.ImportJob,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListArchiveExportsInput = {
    type = "structure",
    members = {
        ArchiveId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.ListArchiveExportsOutput = {
    type = "structure",
    members = {
        Exports = {
            type = "list",
            member = M.ExportSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListArchiveSearchesInput = {
    type = "structure",
    members = {
        ArchiveId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.SearchSummary = {
    type = "structure",
    members = {
        SearchId = {
            type = "string",
        },
        Status = M.SearchStatus,
    },
}

M.ListArchiveSearchesOutput = {
    type = "structure",
    members = {
        Searches = {
            type = "list",
            member = M.SearchSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMembersOfAddressListInput = {
    type = "structure",
    members = {
        AddressListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.AddressFilter,
        NextToken = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.SavedAddress = {
    type = "structure",
    members = {
        Address = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMembersOfAddressListOutput = {
    type = "structure",
    members = {
        Addresses = {
            type = "list",
            member = M.SavedAddress,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRelaysInput = {
    type = "structure",
    members = {
        PageSize = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Relay = {
    type = "structure",
    members = {
        RelayId = {
            type = "string",
        },
        RelayName = {
            type = "string",
        },
        LastModifiedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListRelaysOutput = {
    type = "structure",
    members = {
        Relays = {
            type = "list",
            member = M.Relay,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRuleSetsInput = {
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

M.RuleSet = {
    type = "structure",
    members = {
        RuleSetId = {
            type = "string",
        },
        RuleSetName = {
            type = "string",
        },
        LastModificationDate = {
            type = "timestamp",
        },
    },
}

M.ListRuleSetsOutput = {
    type = "structure",
    members = {
        RuleSets = {
            type = "list",
            member = M.RuleSet,
            traits = {
                required = true,
            },
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

M.ListTrafficPoliciesInput = {
    type = "structure",
    members = {
        PageSize = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TrafficPolicy = {
    type = "structure",
    members = {
        TrafficPolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrafficPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTrafficPoliciesOutput = {
    type = "structure",
    members = {
        TrafficPolicies = {
            type = "list",
            member = M.TrafficPolicy,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegisterMemberToAddressListInput = {
    type = "structure",
    members = {
        AddressListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterMemberToAddressListOutput = {
    type = "structure",
}

M.UpdateRelayInput = {
    type = "structure",
    members = {
        RelayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RelayName = {
            type = "string",
        },
        ServerName = {
            type = "string",
        },
        ServerPort = {
            type = "integer",
        },
        Authentication = M.RelayAuthentication,
    },
}

M.UpdateRelayOutput = {
    type = "structure",
}

M.UpdateRuleSetInput = {
    type = "structure",
    members = {
        RuleSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleSetName = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = M.Rule,
        },
    },
}

M.UpdateRuleSetOutput = {
    type = "structure",
}

M.StartAddressListImportJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartAddressListImportJobOutput = {
    type = "structure",
}

M.StartArchiveExportInput = {
    type = "structure",
    members = {
        ArchiveId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.ArchiveFilters,
        FromTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ToTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        ExportDestinationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportDestinationConfiguration }),
        IncludeMetadata = {
            type = "boolean",
        },
    },
}

M.StartArchiveExportOutput = {
    type = "structure",
    members = {
        ExportId = {
            type = "string",
        },
    },
}

M.StartArchiveSearchInput = {
    type = "structure",
    members = {
        ArchiveId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = M.ArchiveFilters,
        FromTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ToTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.StartArchiveSearchOutput = {
    type = "structure",
    members = {
        SearchId = {
            type = "string",
        },
    },
}

M.StopAddressListImportJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopAddressListImportJobOutput = {
    type = "structure",
}

M.StopArchiveExportInput = {
    type = "structure",
    members = {
        ExportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopArchiveExportOutput = {
    type = "structure",
}

M.StopArchiveSearchInput = {
    type = "structure",
    members = {
        SearchId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopArchiveSearchOutput = {
    type = "structure",
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

M.UpdateTrafficPolicyInput = {
    type = "structure",
    members = {
        TrafficPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrafficPolicyName = {
            type = "string",
        },
        PolicyStatements = {
            type = "list",
            member = M.PolicyStatement,
        },
        DefaultAction = {
            type = "string",
        },
        MaxMessageSizeBytes = {
            type = "integer",
        },
    },
}

M.UpdateTrafficPolicyOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
}

return M
