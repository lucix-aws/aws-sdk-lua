local M = {}

M.AddPermissionInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ActionName = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddPermissionOutput = {
    type = "structure",
}

M.AuthorizationErrorException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
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

M.CheckIfPhoneNumberIsOptedOutInput = {
    type = "structure",
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
    members = {
        isOptedOut = {
            type = "boolean",
        },
    },
}

M.ThrottledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConfirmSubscriptionInput = {
    type = "structure",
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
    members = {
        SubscriptionArn = {
            type = "string",
        },
    },
}

M.FilterPolicyLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplayLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SubscriptionLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreatePlatformApplicationInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePlatformApplicationOutput = {
    type = "structure",
    members = {
        PlatformApplicationArn = {
            type = "string",
        },
    },
}

M.CreatePlatformEndpointInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreatePlatformEndpointOutput = {
    type = "structure",
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
}

M.OptedOutException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UserErrorException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ConcurrentAccessException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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

M.CreateTopicInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        DataProtectionPolicy = {
            type = "string",
        },
    },
}

M.CreateTopicOutput = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
        },
    },
}

M.InvalidSecurityException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StaleTagException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagPolicyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TopicLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteEndpointInput = {
    type = "structure",
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
}

M.DeletePlatformApplicationInput = {
    type = "structure",
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
}

M.DeleteSMSSandboxPhoneNumberInput = {
    type = "structure",
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
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteTopicInput = {
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

M.DeleteTopicOutput = {
    type = "structure",
}

M.InvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetDataProtectionPolicyInput = {
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

M.GetDataProtectionPolicyOutput = {
    type = "structure",
    members = {
        DataProtectionPolicy = {
            type = "string",
        },
    },
}

M.GetEndpointAttributesInput = {
    type = "structure",
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
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetPlatformApplicationAttributesInput = {
    type = "structure",
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
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetSMSAttributesInput = {
    type = "structure",
    members = {
        attributes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetSMSAttributesOutput = {
    type = "structure",
    members = {
        attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetSMSSandboxAccountStatusInput = {
    type = "structure",
}

M.GetSMSSandboxAccountStatusOutput = {
    type = "structure",
    members = {
        IsInSandbox = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSubscriptionAttributesInput = {
    type = "structure",
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
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetTopicAttributesInput = {
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

M.GetTopicAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListEndpointsByPlatformApplicationInput = {
    type = "structure",
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
    members = {
        EndpointArn = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListEndpointsByPlatformApplicationOutput = {
    type = "structure",
    members = {
        Endpoints = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOriginationNumbersInput = {
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
            member_type = "string",
        },
    },
}

M.ListOriginationNumbersOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        PhoneNumbers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ValidationException = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.ListPhoneNumbersOptedOutOutput = {
    type = "structure",
    members = {
        phoneNumbers = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPlatformApplicationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.PlatformApplication = {
    type = "structure",
    members = {
        PlatformApplicationArn = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListPlatformApplicationsOutput = {
    type = "structure",
    members = {
        PlatformApplications = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSMSSandboxPhoneNumbersInput = {
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

M.SMSSandboxPhoneNumberVerificationStatus = {
    Pending = "Pending",
    Verified = "Verified",
}

M.SMSSandboxPhoneNumber = {
    type = "structure",
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
    members = {
        PhoneNumbers = {
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

M.ListSubscriptionsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.Subscription = {
    type = "structure",
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
    members = {
        Subscriptions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSubscriptionsByTopicInput = {
    type = "structure",
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
    members = {
        Subscriptions = {
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
        },
    },
}

M.ListTopicsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.Topic = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
        },
    },
}

M.ListTopicsOutput = {
    type = "structure",
    members = {
        Topics = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OptInPhoneNumberInput = {
    type = "structure",
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
}

M.EndpointDisabledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSAccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSDisabledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSInvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSOptInRequired = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KMSThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PlatformApplicationDisabledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MessageAttributeValue = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchRequestTooLongException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EmptyBatchRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidBatchEntryIdException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PublishBatchRequestEntry = {
    type = "structure",
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
            key_type = "string",
            value_type = "structure",
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
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublishBatchRequestEntries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchResultErrorEntry = {
    type = "structure",
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
                required = true,
            },
        },
    },
}

M.PublishBatchResultEntry = {
    type = "structure",
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
    members = {
        Successful = {
            type = "list",
            member_type = "structure",
        },
        Failed = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TooManyEntriesInBatchRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutDataProtectionPolicyInput = {
    type = "structure",
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
}

M.RemovePermissionInput = {
    type = "structure",
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
}

M.SetEndpointAttributesInput = {
    type = "structure",
    members = {
        EndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetEndpointAttributesOutput = {
    type = "structure",
}

M.SetPlatformApplicationAttributesInput = {
    type = "structure",
    members = {
        PlatformApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetPlatformApplicationAttributesOutput = {
    type = "structure",
}

M.SetSMSAttributesInput = {
    type = "structure",
    members = {
        attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetSMSAttributesOutput = {
    type = "structure",
}

M.SetSubscriptionAttributesInput = {
    type = "structure",
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
}

M.SetTopicAttributesInput = {
    type = "structure",
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
}

M.SubscribeInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        ReturnSubscriptionArn = {
            type = "boolean",
        },
    },
}

M.SubscribeOutput = {
    type = "structure",
    members = {
        SubscriptionArn = {
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

M.UnsubscribeInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.VerificationException = {
    type = "structure",
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
}

return M
