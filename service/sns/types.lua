local M = {}

M.AddPermissionInput = {
    type = "structure",
    id = "AddPermissionInput",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Label = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AWSAccountId = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ActionName = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AddPermissionOutput = {
    type = "structure",
    id = "AddPermissionOutput",
}

M.AuthorizationErrorException = {
    type = "structure",
    id = "AuthorizationErrorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalErrorException = {
    type = "structure",
    id = "InternalErrorException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
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

M.CheckIfPhoneNumberIsOptedOutInput = {
    type = "structure",
    id = "CheckIfPhoneNumberIsOptedOutInput",
    members = {
        phoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CheckIfPhoneNumberIsOptedOutOutput = {
    type = "structure",
    id = "CheckIfPhoneNumberIsOptedOutOutput",
    members = {
        isOptedOut = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ThrottledException = {
    type = "structure",
    id = "ThrottledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConfirmSubscriptionInput = {
    type = "structure",
    id = "ConfirmSubscriptionInput",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Token = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticateOnUnsubscribe = {
            type = "string",
        },
    },
}

M.ConfirmSubscriptionOutput = {
    type = "structure",
    id = "ConfirmSubscriptionOutput",
    members = {
        SubscriptionArn = {
            type = "string",
        },
    },
}

M.FilterPolicyLimitExceededException = {
    type = "structure",
    id = "FilterPolicyLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplayLimitExceededException = {
    type = "structure",
    id = "ReplayLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionLimitExceededException = {
    type = "structure",
    id = "SubscriptionLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreatePlatformApplicationInput = {
    type = "structure",
    id = "CreatePlatformApplicationInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Platform = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePlatformApplicationOutput = {
    type = "structure",
    id = "CreatePlatformApplicationOutput",
    members = {
        PlatformApplicationArn = {
            type = "string",
        },
    },
}

M.CreatePlatformEndpointInput = {
    type = "structure",
    id = "CreatePlatformEndpointInput",
    members = {
        PlatformApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Token = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomUserData = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreatePlatformEndpointOutput = {
    type = "structure",
    id = "CreatePlatformEndpointOutput",
    members = {
        EndpointArn = {
            type = "string",
        },
    },
}

M.LanguageCodeString = {
    en_US = "en-US",
    en_GB = "en-GB",
    es_419 = "es-419",
    es_ES = "es-ES",
    de_DE = "de-DE",
    fr_CA = "fr-CA",
    fr_FR = "fr-FR",
    it_IT = "it-IT",
    jp_JP = "ja-JP",
    pt_BR = "pt-BR",
    kr_KR = "kr-KR",
    zh_CN = "zh-CN",
    zh_TW = "zh-TW",
}

M.CreateSMSSandboxPhoneNumberInput = {
    type = "structure",
    id = "CreateSMSSandboxPhoneNumberInput",
    members = {
        PhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
        },
    },
}

M.CreateSMSSandboxPhoneNumberOutput = {
    type = "structure",
    id = "CreateSMSSandboxPhoneNumberOutput",
}

M.OptedOutException = {
    type = "structure",
    id = "OptedOutException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserErrorException = {
    type = "structure",
    id = "UserErrorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConcurrentAccessException = {
    type = "structure",
    id = "ConcurrentAccessException",
    error = "client",
    members = {
        message = {
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

M.CreateTopicInput = {
    type = "structure",
    id = "CreateTopicInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DataProtectionPolicy = {
            type = "string",
        },
    },
}

M.CreateTopicOutput = {
    type = "structure",
    id = "CreateTopicOutput",
    members = {
        TopicArn = {
            type = "string",
        },
    },
}

M.InvalidSecurityException = {
    type = "structure",
    id = "InvalidSecurityException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StaleTagException = {
    type = "structure",
    id = "StaleTagException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagLimitExceededException = {
    type = "structure",
    id = "TagLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagPolicyException = {
    type = "structure",
    id = "TagPolicyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TopicLimitExceededException = {
    type = "structure",
    id = "TopicLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteEndpointInput = {
    type = "structure",
    id = "DeleteEndpointInput",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEndpointOutput = {
    type = "structure",
    id = "DeleteEndpointOutput",
}

M.DeletePlatformApplicationInput = {
    type = "structure",
    id = "DeletePlatformApplicationInput",
    members = {
        PlatformApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePlatformApplicationOutput = {
    type = "structure",
    id = "DeletePlatformApplicationOutput",
}

M.DeleteSMSSandboxPhoneNumberInput = {
    type = "structure",
    id = "DeleteSMSSandboxPhoneNumberInput",
    members = {
        PhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSMSSandboxPhoneNumberOutput = {
    type = "structure",
    id = "DeleteSMSSandboxPhoneNumberOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteTopicInput = {
    type = "structure",
    id = "DeleteTopicInput",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTopicOutput = {
    type = "structure",
    id = "DeleteTopicOutput",
}

M.InvalidStateException = {
    type = "structure",
    id = "InvalidStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetDataProtectionPolicyInput = {
    type = "structure",
    id = "GetDataProtectionPolicyInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDataProtectionPolicyOutput = {
    type = "structure",
    id = "GetDataProtectionPolicyOutput",
    members = {
        DataProtectionPolicy = {
            type = "string",
        },
    },
}

M.GetEndpointAttributesInput = {
    type = "structure",
    id = "GetEndpointAttributesInput",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEndpointAttributesOutput = {
    type = "structure",
    id = "GetEndpointAttributesOutput",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetPlatformApplicationAttributesInput = {
    type = "structure",
    id = "GetPlatformApplicationAttributesInput",
    members = {
        PlatformApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPlatformApplicationAttributesOutput = {
    type = "structure",
    id = "GetPlatformApplicationAttributesOutput",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetSMSAttributesInput = {
    type = "structure",
    id = "GetSMSAttributesInput",
    members = {
        attributes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetSMSAttributesOutput = {
    type = "structure",
    id = "GetSMSAttributesOutput",
    members = {
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetSMSSandboxAccountStatusInput = {
    type = "structure",
    id = "GetSMSSandboxAccountStatusInput",
}

M.GetSMSSandboxAccountStatusOutput = {
    type = "structure",
    id = "GetSMSSandboxAccountStatusOutput",
    members = {
        IsInSandbox = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.GetSubscriptionAttributesInput = {
    type = "structure",
    id = "GetSubscriptionAttributesInput",
    members = {
        SubscriptionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSubscriptionAttributesOutput = {
    type = "structure",
    id = "GetSubscriptionAttributesOutput",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetTopicAttributesInput = {
    type = "structure",
    id = "GetTopicAttributesInput",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTopicAttributesOutput = {
    type = "structure",
    id = "GetTopicAttributesOutput",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListEndpointsByPlatformApplicationInput = {
    type = "structure",
    id = "ListEndpointsByPlatformApplicationInput",
    members = {
        PlatformApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Endpoint = {
    type = "structure",
    id = "Endpoint",
    members = {
        EndpointArn = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListEndpointsByPlatformApplicationOutput = {
    type = "structure",
    id = "ListEndpointsByPlatformApplicationOutput",
    members = {
        Endpoints = {
            type = "list",
            member = M.Endpoint,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOriginationNumbersInput = {
    type = "structure",
    id = "ListOriginationNumbersInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.NumberCapability = {
    SMS = "SMS",
    MMS = "MMS",
    VOICE = "VOICE",
}

M.RouteType = {
    Transactional = "Transactional",
    Promotional = "Promotional",
    Premium = "Premium",
}

M.PhoneNumberInformation = {
    type = "structure",
    id = "PhoneNumberInformation",
    members = {
        CreatedAt = {
            type = "timestamp",
        },
        PhoneNumber = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Iso2CountryCode = {
            type = "string",
        },
        RouteType = {
            type = "string",
        },
        NumberCapabilities = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListOriginationNumbersOutput = {
    type = "structure",
    id = "ListOriginationNumbersOutput",
    members = {
        NextToken = {
            type = "string",
        },
        PhoneNumbers = {
            type = "list",
            member = M.PhoneNumberInformation,
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
            traits = {
                required = true,
            },
        },
    },
}

M.ListPhoneNumbersOptedOutInput = {
    type = "structure",
    id = "ListPhoneNumbersOptedOutInput",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.ListPhoneNumbersOptedOutOutput = {
    type = "structure",
    id = "ListPhoneNumbersOptedOutOutput",
    members = {
        phoneNumbers = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPlatformApplicationsInput = {
    type = "structure",
    id = "ListPlatformApplicationsInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.PlatformApplication = {
    type = "structure",
    id = "PlatformApplication",
    members = {
        PlatformApplicationArn = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListPlatformApplicationsOutput = {
    type = "structure",
    id = "ListPlatformApplicationsOutput",
    members = {
        PlatformApplications = {
            type = "list",
            member = M.PlatformApplication,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSMSSandboxPhoneNumbersInput = {
    type = "structure",
    id = "ListSMSSandboxPhoneNumbersInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.SMSSandboxPhoneNumberVerificationStatus = {
    Pending = "Pending",
    Verified = "Verified",
}

M.SMSSandboxPhoneNumber = {
    type = "structure",
    id = "SMSSandboxPhoneNumber",
    members = {
        PhoneNumber = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListSMSSandboxPhoneNumbersOutput = {
    type = "structure",
    id = "ListSMSSandboxPhoneNumbersOutput",
    members = {
        PhoneNumbers = {
            type = "list",
            member = M.SMSSandboxPhoneNumber,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSubscriptionsInput = {
    type = "structure",
    id = "ListSubscriptionsInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.Subscription = {
    type = "structure",
    id = "Subscription",
    members = {
        SubscriptionArn = {
            type = "string",
        },
        Owner = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        Endpoint = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
    },
}

M.ListSubscriptionsOutput = {
    type = "structure",
    id = "ListSubscriptionsOutput",
    members = {
        Subscriptions = {
            type = "list",
            member = M.Subscription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSubscriptionsByTopicInput = {
    type = "structure",
    id = "ListSubscriptionsByTopicInput",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSubscriptionsByTopicOutput = {
    type = "structure",
    id = "ListSubscriptionsByTopicOutput",
    members = {
        Subscriptions = {
            type = "list",
            member = M.Subscription,
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
        },
    },
}

M.ListTopicsInput = {
    type = "structure",
    id = "ListTopicsInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.Topic = {
    type = "structure",
    id = "Topic",
    members = {
        TopicArn = {
            type = "string",
        },
    },
}

M.ListTopicsOutput = {
    type = "structure",
    id = "ListTopicsOutput",
    members = {
        Topics = {
            type = "list",
            member = M.Topic,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OptInPhoneNumberInput = {
    type = "structure",
    id = "OptInPhoneNumberInput",
    members = {
        phoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OptInPhoneNumberOutput = {
    type = "structure",
    id = "OptInPhoneNumberOutput",
}

M.EndpointDisabledException = {
    type = "structure",
    id = "EndpointDisabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    id = "InvalidParameterValueException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSAccessDeniedException = {
    type = "structure",
    id = "KMSAccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSDisabledException = {
    type = "structure",
    id = "KMSDisabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSInvalidStateException = {
    type = "structure",
    id = "KMSInvalidStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSNotFoundException = {
    type = "structure",
    id = "KMSNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSOptInRequired = {
    type = "structure",
    id = "KMSOptInRequired",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSThrottlingException = {
    type = "structure",
    id = "KMSThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PlatformApplicationDisabledException = {
    type = "structure",
    id = "PlatformApplicationDisabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MessageAttributeValue = {
    type = "structure",
    id = "MessageAttributeValue",
    members = {
        DataType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StringValue = {
            type = "string",
        },
        BinaryValue = {
            type = "blob",
        },
    },
}

M.PublishInput = {
    type = "structure",
    id = "PublishInput",
    members = {
        TopicArn = {
            type = "string",
        },
        TargetArn = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subject = {
            type = "string",
        },
        MessageStructure = {
            type = "string",
        },
        MessageAttributes = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Name",
            } },
            value = M.MessageAttributeValue,
        },
        MessageDeduplicationId = {
            type = "string",
        },
        MessageGroupId = {
            type = "string",
        },
    },
}

M.PublishOutput = {
    type = "structure",
    id = "PublishOutput",
    members = {
        MessageId = {
            type = "string",
        },
        SequenceNumber = {
            type = "string",
        },
    },
}

M.BatchEntryIdsNotDistinctException = {
    type = "structure",
    id = "BatchEntryIdsNotDistinctException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchRequestTooLongException = {
    type = "structure",
    id = "BatchRequestTooLongException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EmptyBatchRequestException = {
    type = "structure",
    id = "EmptyBatchRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidBatchEntryIdException = {
    type = "structure",
    id = "InvalidBatchEntryIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PublishBatchRequestEntry = {
    type = "structure",
    id = "PublishBatchRequestEntry",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subject = {
            type = "string",
        },
        MessageStructure = {
            type = "string",
        },
        MessageAttributes = {
            type = "map",
            key = { type = "string", traits = {
                xml_name = "Name",
            } },
            value = M.MessageAttributeValue,
        },
        MessageDeduplicationId = {
            type = "string",
        },
        MessageGroupId = {
            type = "string",
        },
    },
}

M.PublishBatchInput = {
    type = "structure",
    id = "PublishBatchInput",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublishBatchRequestEntries = {
            type = "list",
            member = M.PublishBatchRequestEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchResultErrorEntry = {
    type = "structure",
    id = "BatchResultErrorEntry",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
        SenderFault = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.PublishBatchResultEntry = {
    type = "structure",
    id = "PublishBatchResultEntry",
    members = {
        Id = {
            type = "string",
        },
        MessageId = {
            type = "string",
        },
        SequenceNumber = {
            type = "string",
        },
    },
}

M.PublishBatchOutput = {
    type = "structure",
    id = "PublishBatchOutput",
    members = {
        Successful = {
            type = "list",
            member = M.PublishBatchResultEntry,
        },
        Failed = {
            type = "list",
            member = M.BatchResultErrorEntry,
        },
    },
}

M.TooManyEntriesInBatchRequestException = {
    type = "structure",
    id = "TooManyEntriesInBatchRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutDataProtectionPolicyInput = {
    type = "structure",
    id = "PutDataProtectionPolicyInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataProtectionPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutDataProtectionPolicyOutput = {
    type = "structure",
    id = "PutDataProtectionPolicyOutput",
}

M.RemovePermissionInput = {
    type = "structure",
    id = "RemovePermissionInput",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Label = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemovePermissionOutput = {
    type = "structure",
    id = "RemovePermissionOutput",
}

M.SetEndpointAttributesInput = {
    type = "structure",
    id = "SetEndpointAttributesInput",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SetEndpointAttributesOutput = {
    type = "structure",
    id = "SetEndpointAttributesOutput",
}

M.SetPlatformApplicationAttributesInput = {
    type = "structure",
    id = "SetPlatformApplicationAttributesInput",
    members = {
        PlatformApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SetPlatformApplicationAttributesOutput = {
    type = "structure",
    id = "SetPlatformApplicationAttributesOutput",
}

M.SetSMSAttributesInput = {
    type = "structure",
    id = "SetSMSAttributesInput",
    members = {
        attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.SetSMSAttributesOutput = {
    type = "structure",
    id = "SetSMSAttributesOutput",
}

M.SetSubscriptionAttributesInput = {
    type = "structure",
    id = "SetSubscriptionAttributesInput",
    members = {
        SubscriptionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeValue = {
            type = "string",
        },
    },
}

M.SetSubscriptionAttributesOutput = {
    type = "structure",
    id = "SetSubscriptionAttributesOutput",
}

M.SetTopicAttributesInput = {
    type = "structure",
    id = "SetTopicAttributesInput",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeValue = {
            type = "string",
        },
    },
}

M.SetTopicAttributesOutput = {
    type = "structure",
    id = "SetTopicAttributesOutput",
}

M.SubscribeInput = {
    type = "structure",
    id = "SubscribeInput",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Endpoint = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ReturnSubscriptionArn = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.SubscribeOutput = {
    type = "structure",
    id = "SubscribeOutput",
    members = {
        SubscriptionArn = {
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

M.UnsubscribeInput = {
    type = "structure",
    id = "UnsubscribeInput",
    members = {
        SubscriptionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnsubscribeOutput = {
    type = "structure",
    id = "UnsubscribeOutput",
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

M.VerificationException = {
    type = "structure",
    id = "VerificationException",
    error = "client",
    members = {
        Message = {
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

M.VerifySMSSandboxPhoneNumberInput = {
    type = "structure",
    id = "VerifySMSSandboxPhoneNumberInput",
    members = {
        PhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OneTimePassword = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerifySMSSandboxPhoneNumberOutput = {
    type = "structure",
    id = "VerifySMSSandboxPhoneNumberOutput",
}

return M
