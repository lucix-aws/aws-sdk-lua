local M = {}

M.AcceptAction = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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

M.AddonInstance = {
    type = "structure",
    id = "AddonInstance",
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
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
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

M.CreateAddonInstanceInput = {
    type = "structure",
    id = "CreateAddonInstanceInput",
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
    id = "CreateAddonInstanceOutput",
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
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAddonInstanceInput = {
    type = "structure",
    id = "DeleteAddonInstanceInput",
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
    id = "DeleteAddonInstanceOutput",
}

M.GetAddonInstanceInput = {
    type = "structure",
    id = "GetAddonInstanceInput",
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
    id = "GetAddonInstanceOutput",
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
    id = "ListAddonInstancesInput",
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
    id = "ListAddonInstancesOutput",
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
    id = "AddonSubscription",
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
    id = "CreateAddonSubscriptionInput",
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
    id = "CreateAddonSubscriptionOutput",
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
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAddonSubscriptionInput = {
    type = "structure",
    id = "DeleteAddonSubscriptionInput",
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
    id = "DeleteAddonSubscriptionOutput",
}

M.GetAddonSubscriptionInput = {
    type = "structure",
    id = "GetAddonSubscriptionInput",
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
    id = "GetAddonSubscriptionOutput",
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
    id = "ListAddonSubscriptionsInput",
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
    id = "ListAddonSubscriptionsOutput",
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
    id = "AddressFilter",
    members = {
        AddressPrefix = {
            type = "string",
        },
    },
}

M.AddressList = {
    type = "structure",
    id = "AddressList",
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
    id = "CreateAddressListInput",
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
    id = "CreateAddressListOutput",
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
    id = "DeleteAddressListInput",
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
    id = "DeleteAddressListOutput",
}

M.GetAddressListInput = {
    type = "structure",
    id = "GetAddressListInput",
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
    id = "GetAddressListOutput",
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
    id = "ListAddressListsInput",
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
    id = "ListAddressListsOutput",
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
    id = "Analysis",
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
    id = "Archive",
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
    id = "ArchiveAction",
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
    id = "ArchiveBooleanToEvaluate",
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
    id = "ArchiveBooleanExpression",
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
    id = "ArchiveStringToEvaluate",
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
    id = "ArchiveStringExpression",
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
    id = "ArchiveFilterCondition",
    members = {
        StringExpression = M.ArchiveStringExpression,
        BooleanExpression = M.ArchiveBooleanExpression,
    },
}

M.ArchiveFilters = {
    type = "structure",
    id = "ArchiveFilters",
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
    id = "ArchiveRetention",
    members = {
        RetentionPeriod = {
            type = "string",
        },
    },
}

M.CreateArchiveInput = {
    type = "structure",
    id = "CreateArchiveInput",
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
    id = "CreateArchiveOutput",
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
    id = "DeleteArchiveInput",
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
    id = "DeleteArchiveOutput",
}

M.GetArchiveInput = {
    type = "structure",
    id = "GetArchiveInput",
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
    id = "GetArchiveOutput",
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
    id = "ListArchivesInput",
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
    id = "ListArchivesOutput",
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
    id = "UpdateArchiveInput",
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
    id = "UpdateArchiveOutput",
}

M.BounceAction = {
    type = "structure",
    id = "BounceAction",
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
    id = "ImportDataFormat",
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
    id = "CreateAddressListImportJobInput",
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
    id = "CreateAddressListImportJobOutput",
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
    id = "TrustStore",
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
    id = "TlsAuthConfiguration",
    members = {
        TrustStore = M.TrustStore,
    },
}

M.IngressPointConfiguration = {
    type = "union",
    id = "IngressPointConfiguration",
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
    id = "PrivateNetworkConfiguration",
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
    id = "PublicNetworkConfiguration",
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
    id = "NetworkConfiguration",
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
    id = "CreateIngressPointInput",
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
    id = "CreateIngressPointOutput",
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
    id = "NoAuthentication",
}

M.RelayAuthentication = {
    type = "union",
    id = "RelayAuthentication",
    members = {
        SecretArn = {
            type = "string",
        },
        NoAuthentication = M.NoAuthentication,
    },
}

M.CreateRelayInput = {
    type = "structure",
    id = "CreateRelayInput",
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
    id = "CreateRelayOutput",
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
    id = "DeliverToMailboxAction",
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
    id = "DeliverToQBusinessAction",
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
    id = "DropAction",
}

M.LambdaInvocationType = {
    EVENT = "EVENT",
    REQUEST_RESPONSE = "REQUEST_RESPONSE",
}

M.InvokeLambdaAction = {
    type = "structure",
    id = "InvokeLambdaAction",
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
    id = "SnsAction",
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
    id = "RelayAction",
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
    id = "ReplaceRecipientAction",
    members = {
        ReplaceWith = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SendAction = {
    type = "structure",
    id = "SendAction",
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
    id = "S3Action",
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
    id = "RuleAction",
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
    id = "RuleIsInAddressList",
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
    id = "RuleBooleanToEvaluate",
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
    id = "RuleBooleanExpression",
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
    id = "RuleDmarcExpression",
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
    id = "RuleIpToEvaluate",
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
    id = "RuleIpExpression",
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
    id = "RuleNumberToEvaluate",
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
    id = "RuleNumberExpression",
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
    id = "RuleStringToEvaluate",
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
    id = "RuleStringExpression",
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
    id = "RuleVerdictToEvaluate",
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
    id = "RuleVerdictExpression",
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
    id = "RuleCondition",
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
    id = "Rule",
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
    id = "CreateRuleSetInput",
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
    id = "CreateRuleSetOutput",
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
    id = "IngressAnalysis",
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
    id = "IngressIsInAddressList",
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
    id = "IngressBooleanToEvaluate",
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
    id = "IngressBooleanExpression",
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
    id = "IngressIpToEvaluate",
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
    id = "IngressIpv4Expression",
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
    id = "IngressIpv6ToEvaluate",
    members = {
        Attribute = {
            type = "string",
        },
    },
}

M.IngressIpv6Expression = {
    type = "structure",
    id = "IngressIpv6Expression",
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
    id = "IngressStringToEvaluate",
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
    id = "IngressStringExpression",
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
    id = "IngressTlsProtocolToEvaluate",
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
    id = "IngressTlsProtocolExpression",
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
    id = "PolicyCondition",
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
    id = "PolicyStatement",
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
    id = "CreateTrafficPolicyInput",
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
    id = "CreateTrafficPolicyOutput",
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
    id = "DeleteIngressPointInput",
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
    id = "DeleteIngressPointOutput",
}

M.DeleteRelayInput = {
    type = "structure",
    id = "DeleteRelayInput",
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
    id = "DeleteRelayOutput",
}

M.DeleteRuleSetInput = {
    type = "structure",
    id = "DeleteRuleSetInput",
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
    id = "DeleteRuleSetOutput",
}

M.DeleteTrafficPolicyInput = {
    type = "structure",
    id = "DeleteTrafficPolicyInput",
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
    id = "DeleteTrafficPolicyOutput",
}

M.DeregisterMemberFromAddressListInput = {
    type = "structure",
    id = "DeregisterMemberFromAddressListInput",
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
    id = "DeregisterMemberFromAddressListOutput",
}

M.Envelope = {
    type = "structure",
    id = "Envelope",
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
    id = "S3ExportDestinationConfiguration",
    members = {
        S3Location = {
            type = "string",
        },
    },
}

M.ExportDestinationConfiguration = {
    type = "union",
    id = "ExportDestinationConfiguration",
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
    id = "ExportStatus",
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
    id = "ExportSummary",
    members = {
        ExportId = {
            type = "string",
        },
        Status = M.ExportStatus,
    },
}

M.GetAddressListImportJobInput = {
    type = "structure",
    id = "GetAddressListImportJobInput",
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
    id = "GetAddressListImportJobOutput",
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
    id = "GetArchiveExportInput",
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
    id = "GetArchiveExportOutput",
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
    id = "GetArchiveMessageInput",
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
    id = "Metadata",
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
    id = "GetArchiveMessageOutput",
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
    id = "GetArchiveMessageContentInput",
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
    id = "MessageBody",
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
    id = "GetArchiveMessageContentOutput",
    members = {
        Body = M.MessageBody,
    },
}

M.GetArchiveSearchInput = {
    type = "structure",
    id = "GetArchiveSearchInput",
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
    id = "SearchStatus",
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
    id = "GetArchiveSearchOutput",
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
    id = "GetArchiveSearchResultsInput",
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
    id = "Row",
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
    id = "GetArchiveSearchResultsOutput",
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
    id = "GetIngressPointInput",
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
    id = "IngressPointPasswordConfiguration",
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
    id = "IngressPointAuthConfiguration",
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
    id = "GetIngressPointOutput",
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
    id = "GetMemberOfAddressListInput",
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
    id = "GetMemberOfAddressListOutput",
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
    id = "GetRelayInput",
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
    id = "GetRelayOutput",
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
    id = "GetRuleSetInput",
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
    id = "GetRuleSetOutput",
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
    id = "GetTrafficPolicyInput",
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
    id = "GetTrafficPolicyOutput",
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
    id = "ImportJob",
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
    id = "IngressPoint",
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
    id = "ListIngressPointsInput",
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
    id = "ListIngressPointsOutput",
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
    id = "UpdateIngressPointInput",
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
    id = "UpdateIngressPointOutput",
}

M.ListAddressListImportJobsInput = {
    type = "structure",
    id = "ListAddressListImportJobsInput",
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
    id = "ListAddressListImportJobsOutput",
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
    id = "ListArchiveExportsInput",
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
    id = "ListArchiveExportsOutput",
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
    id = "ListArchiveSearchesInput",
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
    id = "SearchSummary",
    members = {
        SearchId = {
            type = "string",
        },
        Status = M.SearchStatus,
    },
}

M.ListArchiveSearchesOutput = {
    type = "structure",
    id = "ListArchiveSearchesOutput",
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
    id = "ListMembersOfAddressListInput",
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
    id = "SavedAddress",
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
    id = "ListMembersOfAddressListOutput",
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
    id = "ListRelaysInput",
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
    id = "Relay",
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
    id = "ListRelaysOutput",
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
    id = "ListRuleSetsInput",
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
    id = "RuleSet",
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
    id = "ListRuleSetsOutput",
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
    id = "ListTagsForResourceInput",
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

M.ListTrafficPoliciesInput = {
    type = "structure",
    id = "ListTrafficPoliciesInput",
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
    id = "TrafficPolicy",
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
    id = "ListTrafficPoliciesOutput",
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
    id = "RegisterMemberToAddressListInput",
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
    id = "RegisterMemberToAddressListOutput",
}

M.UpdateRelayInput = {
    type = "structure",
    id = "UpdateRelayInput",
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
    id = "UpdateRelayOutput",
}

M.UpdateRuleSetInput = {
    type = "structure",
    id = "UpdateRuleSetInput",
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
    id = "UpdateRuleSetOutput",
}

M.StartAddressListImportJobInput = {
    type = "structure",
    id = "StartAddressListImportJobInput",
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
    id = "StartAddressListImportJobOutput",
}

M.StartArchiveExportInput = {
    type = "structure",
    id = "StartArchiveExportInput",
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
    id = "StartArchiveExportOutput",
    members = {
        ExportId = {
            type = "string",
        },
    },
}

M.StartArchiveSearchInput = {
    type = "structure",
    id = "StartArchiveSearchInput",
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
    id = "StartArchiveSearchOutput",
    members = {
        SearchId = {
            type = "string",
        },
    },
}

M.StopAddressListImportJobInput = {
    type = "structure",
    id = "StopAddressListImportJobInput",
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
    id = "StopAddressListImportJobOutput",
}

M.StopArchiveExportInput = {
    type = "structure",
    id = "StopArchiveExportInput",
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
    id = "StopArchiveExportOutput",
}

M.StopArchiveSearchInput = {
    type = "structure",
    id = "StopArchiveSearchInput",
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
    id = "StopArchiveSearchOutput",
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

M.UpdateTrafficPolicyInput = {
    type = "structure",
    id = "UpdateTrafficPolicyInput",
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
    id = "UpdateTrafficPolicyOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

return M
