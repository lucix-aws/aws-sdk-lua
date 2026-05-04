local M = {}

M.ErrorCode = {
    BadRequest = "BadRequest",
    Conflict = "Conflict",
    Forbidden = "Forbidden",
    NotFound = "NotFound",
    PreconditionFailed = "PreconditionFailed",
    ResourceLimitExceeded = "ResourceLimitExceeded",
    ServiceFailure = "ServiceFailure",
    AccessDenied = "AccessDenied",
    ServiceUnavailable = "ServiceUnavailable",
    Throttled = "Throttled",
    Throttling = "Throttling",
    Unauthorized = "Unauthorized",
    Unprocessable = "Unprocessable",
    VoiceConnectorGroupAssociationsExist = "VoiceConnectorGroupAssociationsExist",
    PhoneNumberAssociationsExist = "PhoneNumberAssociationsExist",
    Gone = "Gone",
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.Address = {
    type = "structure",
    members = {
        streetName = {
            type = "string",
        },
        streetSuffix = {
            type = "string",
        },
        postDirectional = {
            type = "string",
        },
        preDirectional = {
            type = "string",
        },
        streetNumber = {
            type = "string",
        },
        city = {
            type = "string",
        },
        state = {
            type = "string",
        },
        postalCode = {
            type = "string",
        },
        postalCodePlus4 = {
            type = "string",
        },
        country = {
            type = "string",
        },
    },
}

M.AlexaSkillStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.AssociatePhoneNumbersWithVoiceConnectorInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        E164PhoneNumbers = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ForceAssociate = {
            type = "boolean",
        },
    },
}

M.PhoneNumberError = {
    type = "structure",
    members = {
        PhoneNumberId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.AssociatePhoneNumbersWithVoiceConnectorOutput = {
    type = "structure",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ServiceFailureException = {
    type = "structure",
    error = "server",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ThrottledClientException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.UnauthorizedClientException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AssociatePhoneNumbersWithVoiceConnectorGroupInput = {
    type = "structure",
    members = {
        VoiceConnectorGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        E164PhoneNumbers = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ForceAssociate = {
            type = "boolean",
        },
    },
}

M.AssociatePhoneNumbersWithVoiceConnectorGroupOutput = {
    type = "structure",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchDeletePhoneNumberInput = {
    type = "structure",
    members = {
        PhoneNumberIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeletePhoneNumberOutput = {
    type = "structure",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PhoneNumberProductType = {
    VoiceConnector = "VoiceConnector",
    SipMediaApplicationDialIn = "SipMediaApplicationDialIn",
}

M.UpdatePhoneNumberRequestItem = {
    type = "structure",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProductType = {
            type = "string",
        },
        CallingName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.BatchUpdatePhoneNumberInput = {
    type = "structure",
    members = {
        UpdatePhoneNumberRequestItems = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdatePhoneNumberOutput = {
    type = "structure",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CallDetails = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
        },
        TransactionId = {
            type = "string",
        },
        IsCaller = {
            type = "boolean",
        },
    },
}

M.CallingNameStatus = {
    Unassigned = "Unassigned",
    UpdateInProgress = "UpdateInProgress",
    UpdateSucceeded = "UpdateSucceeded",
    UpdateFailed = "UpdateFailed",
}

M.CallLegType = {
    CALLER = "Caller",
    CALLEE = "Callee",
}

M.CandidateAddress = {
    type = "structure",
    members = {
        streetInfo = {
            type = "string",
        },
        streetNumber = {
            type = "string",
        },
        city = {
            type = "string",
        },
        state = {
            type = "string",
        },
        postalCode = {
            type = "string",
        },
        postalCodePlus4 = {
            type = "string",
        },
        country = {
            type = "string",
        },
    },
}

M.Capability = {
    Voice = "Voice",
    SMS = "SMS",
}

M.CreatePhoneNumberOrderInput = {
    type = "structure",
    members = {
        ProductType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        E164PhoneNumbers = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.OrderedPhoneNumberStatus = {
    Processing = "Processing",
    Acquired = "Acquired",
    Failed = "Failed",
}

M.OrderedPhoneNumber = {
    type = "structure",
    members = {
        E164PhoneNumber = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.PhoneNumberOrderType = {
    New = "New",
    Porting = "Porting",
}

M.PhoneNumberOrderStatus = {
    Processing = "Processing",
    Successful = "Successful",
    Failed = "Failed",
    Partial = "Partial",
    PendingDocuments = "PendingDocuments",
    Submitted = "Submitted",
    FOC = "FOC",
    ChangeRequested = "ChangeRequested",
    Exception = "Exception",
    CancelRequested = "CancelRequested",
    Cancelled = "Cancelled",
}

M.PhoneNumberOrder = {
    type = "structure",
    members = {
        PhoneNumberOrderId = {
            type = "string",
        },
        ProductType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        OrderType = {
            type = "string",
        },
        OrderedPhoneNumbers = {
            type = "list",
            member_type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        FocDate = {
            type = "timestamp",
        },
    },
}

M.CreatePhoneNumberOrderOutput = {
    type = "structure",
    members = {
        PhoneNumberOrder = {
            type = "structure",
        },
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.GeoMatchLevel = {
    Country = "Country",
    AreaCode = "AreaCode",
}

M.GeoMatchParams = {
    type = "structure",
    members = {
        Country = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AreaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NumberSelectionBehavior = {
    PreferSticky = "PreferSticky",
    AvoidSticky = "AvoidSticky",
}

M.CreateProxySessionInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ParticipantPhoneNumbers = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        ExpiryMinutes = {
            type = "number",
        },
        Capabilities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        NumberSelectionBehavior = {
            type = "string",
        },
        GeoMatchLevel = {
            type = "string",
        },
        GeoMatchParams = {
            type = "structure",
        },
    },
}

M.Participant = {
    type = "structure",
    members = {
        PhoneNumber = {
            type = "string",
        },
        ProxyPhoneNumber = {
            type = "string",
        },
    },
}

M.ProxySessionStatus = {
    Open = "Open",
    InProgress = "InProgress",
    Closed = "Closed",
}

M.ProxySession = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
        },
        ProxySessionId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ExpiryMinutes = {
            type = "number",
        },
        Capabilities = {
            type = "list",
            member_type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        EndedTimestamp = {
            type = "timestamp",
        },
        Participants = {
            type = "list",
            member_type = "structure",
        },
        NumberSelectionBehavior = {
            type = "string",
        },
        GeoMatchLevel = {
            type = "string",
        },
        GeoMatchParams = {
            type = "structure",
        },
    },
}

M.CreateProxySessionOutput = {
    type = "structure",
    members = {
        ProxySession = {
            type = "structure",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.SipMediaApplicationEndpoint = {
    type = "structure",
    members = {
        LambdaArn = {
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

M.CreateSipMediaApplicationInput = {
    type = "structure",
    members = {
        AwsRegion = {
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
        Endpoints = {
            type = "list",
            member_type = "structure",
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

M.SipMediaApplication = {
    type = "structure",
    members = {
        SipMediaApplicationId = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Endpoints = {
            type = "list",
            member_type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        SipMediaApplicationArn = {
            type = "string",
        },
    },
}

M.CreateSipMediaApplicationOutput = {
    type = "structure",
    members = {
        SipMediaApplication = {
            type = "structure",
        },
    },
}

M.CreateSipMediaApplicationCallInput = {
    type = "structure",
    members = {
        FromPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ToPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SipHeaders = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ArgumentsMap = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SipMediaApplicationCall = {
    type = "structure",
    members = {
        TransactionId = {
            type = "string",
        },
    },
}

M.CreateSipMediaApplicationCallOutput = {
    type = "structure",
    members = {
        SipMediaApplicationCall = {
            type = "structure",
        },
    },
}

M.SipRuleTargetApplication = {
    type = "structure",
    members = {
        SipMediaApplicationId = {
            type = "string",
        },
        Priority = {
            type = "number",
        },
        AwsRegion = {
            type = "string",
        },
    },
}

M.SipRuleTriggerType = {
    ToPhoneNumber = "ToPhoneNumber",
    RequestUriHostname = "RequestUriHostname",
}

M.CreateSipRuleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TriggerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TriggerValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Disabled = {
            type = "boolean",
        },
        TargetApplications = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SipRule = {
    type = "structure",
    members = {
        SipRuleId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Disabled = {
            type = "boolean",
        },
        TriggerType = {
            type = "string",
        },
        TriggerValue = {
            type = "string",
        },
        TargetApplications = {
            type = "list",
            member_type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateSipRuleOutput = {
    type = "structure",
    members = {
        SipRule = {
            type = "structure",
        },
    },
}

M.VoiceConnectorAwsRegion = {
    US_EAST_1 = "us-east-1",
    US_WEST_2 = "us-west-2",
    CA_CENTRAL_1 = "ca-central-1",
    EU_CENTRAL_1 = "eu-central-1",
    EU_WEST_1 = "eu-west-1",
    EU_WEST_2 = "eu-west-2",
    AP_NORTHEAST_2 = "ap-northeast-2",
    AP_NORTHEAST_1 = "ap-northeast-1",
    AP_SOUTHEAST_1 = "ap-southeast-1",
    AP_SOUTHEAST_2 = "ap-southeast-2",
}

M.VoiceConnectorIntegrationType = {
    CONNECT_CALL_TRANSFER_CONNECTOR = "CONNECT_CALL_TRANSFER_CONNECTOR",
    CONNECT_ANALYTICS_CONNECTOR = "CONNECT_ANALYTICS_CONNECTOR",
}

M.NetworkType = {
    IPV4_ONLY = "IPV4_ONLY",
    DUAL_STACK = "DUAL_STACK",
}

M.CreateVoiceConnectorInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsRegion = {
            type = "string",
        },
        RequireEncryption = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        IntegrationType = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.VoiceConnector = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        OutboundHostName = {
            type = "string",
        },
        RequireEncryption = {
            type = "boolean",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        VoiceConnectorArn = {
            type = "string",
        },
        IntegrationType = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.CreateVoiceConnectorOutput = {
    type = "structure",
    members = {
        VoiceConnector = {
            type = "structure",
        },
    },
}

M.VoiceConnectorItem = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVoiceConnectorGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VoiceConnectorItems = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.VoiceConnectorGroup = {
    type = "structure",
    members = {
        VoiceConnectorGroupId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VoiceConnectorItems = {
            type = "list",
            member_type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        VoiceConnectorGroupArn = {
            type = "string",
        },
    },
}

M.CreateVoiceConnectorGroupOutput = {
    type = "structure",
    members = {
        VoiceConnectorGroup = {
            type = "structure",
        },
    },
}

M.CreateVoiceProfileInput = {
    type = "structure",
    members = {
        SpeakerSearchTaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VoiceProfile = {
    type = "structure",
    members = {
        VoiceProfileId = {
            type = "string",
        },
        VoiceProfileArn = {
            type = "string",
        },
        VoiceProfileDomainId = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        ExpirationTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateVoiceProfileOutput = {
    type = "structure",
    members = {
        VoiceProfile = {
            type = "structure",
        },
    },
}

M.GoneException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ServerSideEncryptionConfiguration = {
    type = "structure",
    members = {
        KmsKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVoiceProfileDomainInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        ServerSideEncryptionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.VoiceProfileDomain = {
    type = "structure",
    members = {
        VoiceProfileDomainId = {
            type = "string",
        },
        VoiceProfileDomainArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ServerSideEncryptionConfiguration = {
            type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateVoiceProfileDomainOutput = {
    type = "structure",
    members = {
        VoiceProfileDomain = {
            type = "structure",
        },
    },
}

M.DeletePhoneNumberInput = {
    type = "structure",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePhoneNumberOutput = {
    type = "structure",
}

M.DeleteProxySessionInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProxySessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProxySessionOutput = {
    type = "structure",
}

M.DeleteSipMediaApplicationInput = {
    type = "structure",
    members = {
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSipMediaApplicationOutput = {
    type = "structure",
}

M.DeleteSipRuleInput = {
    type = "structure",
    members = {
        SipRuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSipRuleOutput = {
    type = "structure",
}

M.DeleteVoiceConnectorInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVoiceConnectorOutput = {
    type = "structure",
}

M.DeleteVoiceConnectorEmergencyCallingConfigurationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVoiceConnectorEmergencyCallingConfigurationOutput = {
    type = "structure",
}

M.DeleteVoiceConnectorExternalSystemsConfigurationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVoiceConnectorExternalSystemsConfigurationOutput = {
    type = "structure",
}

M.DeleteVoiceConnectorGroupInput = {
    type = "structure",
    members = {
        VoiceConnectorGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVoiceConnectorGroupOutput = {
    type = "structure",
}

M.DeleteVoiceConnectorOriginationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVoiceConnectorOriginationOutput = {
    type = "structure",
}

M.DeleteVoiceConnectorProxyInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVoiceConnectorProxyOutput = {
    type = "structure",
}

M.DeleteVoiceConnectorStreamingConfigurationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVoiceConnectorStreamingConfigurationOutput = {
    type = "structure",
}

M.DeleteVoiceConnectorTerminationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVoiceConnectorTerminationOutput = {
    type = "structure",
}

M.DeleteVoiceConnectorTerminationCredentialsInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Usernames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVoiceConnectorTerminationCredentialsOutput = {
    type = "structure",
}

M.DeleteVoiceProfileInput = {
    type = "structure",
    members = {
        VoiceProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVoiceProfileOutput = {
    type = "structure",
}

M.DeleteVoiceProfileDomainInput = {
    type = "structure",
    members = {
        VoiceProfileDomainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteVoiceProfileDomainOutput = {
    type = "structure",
}

M.DisassociatePhoneNumbersFromVoiceConnectorInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        E164PhoneNumbers = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociatePhoneNumbersFromVoiceConnectorOutput = {
    type = "structure",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DisassociatePhoneNumbersFromVoiceConnectorGroupInput = {
    type = "structure",
    members = {
        VoiceConnectorGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        E164PhoneNumbers = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociatePhoneNumbersFromVoiceConnectorGroupOutput = {
    type = "structure",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetGlobalSettingsInput = {
    type = "structure",
}

M.VoiceConnectorSettings = {
    type = "structure",
    members = {
        CdrBucket = {
            type = "string",
        },
    },
}

M.GetGlobalSettingsOutput = {
    type = "structure",
    members = {
        VoiceConnector = {
            type = "structure",
        },
    },
}

M.GetPhoneNumberInput = {
    type = "structure",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PhoneNumberAssociationName = {
    VoiceConnectorId = "VoiceConnectorId",
    VoiceConnectorGroupId = "VoiceConnectorGroupId",
    SipRuleId = "SipRuleId",
}

M.PhoneNumberAssociation = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        AssociatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.PhoneNumberCapabilities = {
    type = "structure",
    members = {
        InboundCall = {
            type = "boolean",
        },
        OutboundCall = {
            type = "boolean",
        },
        InboundSMS = {
            type = "boolean",
        },
        OutboundSMS = {
            type = "boolean",
        },
        InboundMMS = {
            type = "boolean",
        },
        OutboundMMS = {
            type = "boolean",
        },
    },
}

M.PhoneNumberStatus = {
    Cancelled = "Cancelled",
    PortinCancelRequested = "PortinCancelRequested",
    PortinInProgress = "PortinInProgress",
    AcquireInProgress = "AcquireInProgress",
    AcquireFailed = "AcquireFailed",
    Unassigned = "Unassigned",
    Assigned = "Assigned",
    ReleaseInProgress = "ReleaseInProgress",
    DeleteInProgress = "DeleteInProgress",
    ReleaseFailed = "ReleaseFailed",
    DeleteFailed = "DeleteFailed",
}

M.PhoneNumberType = {
    Local = "Local",
    TollFree = "TollFree",
}

M.PhoneNumber = {
    type = "structure",
    members = {
        PhoneNumberId = {
            type = "string",
        },
        E164PhoneNumber = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        ProductType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Capabilities = {
            type = "structure",
        },
        Associations = {
            type = "list",
            member_type = "structure",
        },
        CallingName = {
            type = "string",
        },
        CallingNameStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        DeletionTimestamp = {
            type = "timestamp",
        },
        OrderId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.GetPhoneNumberOutput = {
    type = "structure",
    members = {
        PhoneNumber = {
            type = "structure",
        },
    },
}

M.GetPhoneNumberOrderInput = {
    type = "structure",
    members = {
        PhoneNumberOrderId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPhoneNumberOrderOutput = {
    type = "structure",
    members = {
        PhoneNumberOrder = {
            type = "structure",
        },
    },
}

M.GetPhoneNumberSettingsInput = {
    type = "structure",
}

M.GetPhoneNumberSettingsOutput = {
    type = "structure",
    members = {
        CallingName = {
            type = "string",
        },
        CallingNameUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetProxySessionInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProxySessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProxySessionOutput = {
    type = "structure",
    members = {
        ProxySession = {
            type = "structure",
        },
    },
}

M.GetSipMediaApplicationInput = {
    type = "structure",
    members = {
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSipMediaApplicationOutput = {
    type = "structure",
    members = {
        SipMediaApplication = {
            type = "structure",
        },
    },
}

M.GetSipMediaApplicationAlexaSkillConfigurationInput = {
    type = "structure",
    members = {
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SipMediaApplicationAlexaSkillConfiguration = {
    type = "structure",
    members = {
        AlexaSkillStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlexaSkillIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSipMediaApplicationAlexaSkillConfigurationOutput = {
    type = "structure",
    members = {
        SipMediaApplicationAlexaSkillConfiguration = {
            type = "structure",
        },
    },
}

M.GetSipMediaApplicationLoggingConfigurationInput = {
    type = "structure",
    members = {
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SipMediaApplicationLoggingConfiguration = {
    type = "structure",
    members = {
        EnableSipMediaApplicationMessageLogs = {
            type = "boolean",
        },
    },
}

M.GetSipMediaApplicationLoggingConfigurationOutput = {
    type = "structure",
    members = {
        SipMediaApplicationLoggingConfiguration = {
            type = "structure",
        },
    },
}

M.GetSipRuleInput = {
    type = "structure",
    members = {
        SipRuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSipRuleOutput = {
    type = "structure",
    members = {
        SipRule = {
            type = "structure",
        },
    },
}

M.GetSpeakerSearchTaskInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SpeakerSearchTaskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SpeakerSearchResult = {
    type = "structure",
    members = {
        ConfidenceScore = {
            type = "number",
        },
        VoiceProfileId = {
            type = "string",
        },
    },
}

M.SpeakerSearchDetails = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member_type = "structure",
        },
        VoiceprintGenerationStatus = {
            type = "string",
        },
    },
}

M.SpeakerSearchTask = {
    type = "structure",
    members = {
        SpeakerSearchTaskId = {
            type = "string",
        },
        SpeakerSearchTaskStatus = {
            type = "string",
        },
        CallDetails = {
            type = "structure",
        },
        SpeakerSearchDetails = {
            type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        StartedTimestamp = {
            type = "timestamp",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.GetSpeakerSearchTaskOutput = {
    type = "structure",
    members = {
        SpeakerSearchTask = {
            type = "structure",
        },
    },
}

M.GetVoiceConnectorInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVoiceConnectorOutput = {
    type = "structure",
    members = {
        VoiceConnector = {
            type = "structure",
        },
    },
}

M.GetVoiceConnectorEmergencyCallingConfigurationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DNISEmergencyCallingConfiguration = {
    type = "structure",
    members = {
        EmergencyPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TestPhoneNumber = {
            type = "string",
        },
        CallingCountry = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EmergencyCallingConfiguration = {
    type = "structure",
    members = {
        DNIS = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetVoiceConnectorEmergencyCallingConfigurationOutput = {
    type = "structure",
    members = {
        EmergencyCallingConfiguration = {
            type = "structure",
        },
    },
}

M.GetVoiceConnectorExternalSystemsConfigurationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ContactCenterSystemType = {
    GENESYS_ENGAGE_ON_PREMISES = "GENESYS_ENGAGE_ON_PREMISES",
    AVAYA_AURA_CALL_CENTER_ELITE = "AVAYA_AURA_CALL_CENTER_ELITE",
    AVAYA_AURA_CONTACT_CENTER = "AVAYA_AURA_CONTACT_CENTER",
    CISCO_UNIFIED_CONTACT_CENTER_ENTERPRISE = "CISCO_UNIFIED_CONTACT_CENTER_ENTERPRISE",
}

M.SessionBorderControllerType = {
    RIBBON_SBC = "RIBBON_SBC",
    ORACLE_ACME_PACKET_SBC = "ORACLE_ACME_PACKET_SBC",
    AVAYA_SBCE = "AVAYA_SBCE",
    CISCO_UNIFIED_BORDER_ELEMENT = "CISCO_UNIFIED_BORDER_ELEMENT",
    AUDIOCODES_MEDIANT_SBC = "AUDIOCODES_MEDIANT_SBC",
}

M.ExternalSystemsConfiguration = {
    type = "structure",
    members = {
        SessionBorderControllerTypes = {
            type = "list",
            member_type = "string",
        },
        ContactCenterSystemTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetVoiceConnectorExternalSystemsConfigurationOutput = {
    type = "structure",
    members = {
        ExternalSystemsConfiguration = {
            type = "structure",
        },
    },
}

M.GetVoiceConnectorGroupInput = {
    type = "structure",
    members = {
        VoiceConnectorGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVoiceConnectorGroupOutput = {
    type = "structure",
    members = {
        VoiceConnectorGroup = {
            type = "structure",
        },
    },
}

M.GetVoiceConnectorLoggingConfigurationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LoggingConfiguration = {
    type = "structure",
    members = {
        EnableSIPLogs = {
            type = "boolean",
        },
        EnableMediaMetricLogs = {
            type = "boolean",
        },
    },
}

M.GetVoiceConnectorLoggingConfigurationOutput = {
    type = "structure",
    members = {
        LoggingConfiguration = {
            type = "structure",
        },
    },
}

M.GetVoiceConnectorOriginationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.OriginationRouteProtocol = {
    TCP = "TCP",
    UDP = "UDP",
}

M.OriginationRoute = {
    type = "structure",
    members = {
        Host = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        Protocol = {
            type = "string",
        },
        Priority = {
            type = "number",
        },
        Weight = {
            type = "number",
        },
    },
}

M.Origination = {
    type = "structure",
    members = {
        Routes = {
            type = "list",
            member_type = "structure",
        },
        Disabled = {
            type = "boolean",
        },
    },
}

M.GetVoiceConnectorOriginationOutput = {
    type = "structure",
    members = {
        Origination = {
            type = "structure",
        },
    },
}

M.GetVoiceConnectorProxyInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Proxy = {
    type = "structure",
    members = {
        DefaultSessionExpiryMinutes = {
            type = "number",
        },
        Disabled = {
            type = "boolean",
        },
        FallBackPhoneNumber = {
            type = "string",
        },
        PhoneNumberCountries = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetVoiceConnectorProxyOutput = {
    type = "structure",
    members = {
        Proxy = {
            type = "structure",
        },
    },
}

M.GetVoiceConnectorStreamingConfigurationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MediaInsightsConfiguration = {
    type = "structure",
    members = {
        Disabled = {
            type = "boolean",
        },
        ConfigurationArn = {
            type = "string",
        },
    },
}

M.NotificationTarget = {
    EventBridge = "EventBridge",
    SNS = "SNS",
    SQS = "SQS",
}

M.StreamingNotificationTarget = {
    type = "structure",
    members = {
        NotificationTarget = {
            type = "string",
        },
    },
}

M.StreamingConfiguration = {
    type = "structure",
    members = {
        DataRetentionInHours = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Disabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        StreamingNotificationTargets = {
            type = "list",
            member_type = "structure",
        },
        MediaInsightsConfiguration = {
            type = "structure",
        },
    },
}

M.GetVoiceConnectorStreamingConfigurationOutput = {
    type = "structure",
    members = {
        StreamingConfiguration = {
            type = "structure",
        },
    },
}

M.GetVoiceConnectorTerminationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Termination = {
    type = "structure",
    members = {
        CpsLimit = {
            type = "number",
        },
        DefaultPhoneNumber = {
            type = "string",
        },
        CallingRegions = {
            type = "list",
            member_type = "string",
        },
        CidrAllowedList = {
            type = "list",
            member_type = "string",
        },
        Disabled = {
            type = "boolean",
        },
    },
}

M.GetVoiceConnectorTerminationOutput = {
    type = "structure",
    members = {
        Termination = {
            type = "structure",
        },
    },
}

M.GetVoiceConnectorTerminationHealthInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TerminationHealth = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
        },
        Source = {
            type = "string",
        },
    },
}

M.GetVoiceConnectorTerminationHealthOutput = {
    type = "structure",
    members = {
        TerminationHealth = {
            type = "structure",
        },
    },
}

M.GetVoiceProfileInput = {
    type = "structure",
    members = {
        VoiceProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVoiceProfileOutput = {
    type = "structure",
    members = {
        VoiceProfile = {
            type = "structure",
        },
    },
}

M.GetVoiceProfileDomainInput = {
    type = "structure",
    members = {
        VoiceProfileDomainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVoiceProfileDomainOutput = {
    type = "structure",
    members = {
        VoiceProfileDomain = {
            type = "structure",
        },
    },
}

M.GetVoiceToneAnalysisTaskInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VoiceToneAnalysisTaskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IsCaller = {
            type = "boolean",
            traits = {
                http_query = "isCaller",
                required = true,
            },
        },
    },
}

M.VoiceToneAnalysisTask = {
    type = "structure",
    members = {
        VoiceToneAnalysisTaskId = {
            type = "string",
        },
        VoiceToneAnalysisTaskStatus = {
            type = "string",
        },
        CallDetails = {
            type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        StartedTimestamp = {
            type = "timestamp",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.GetVoiceToneAnalysisTaskOutput = {
    type = "structure",
    members = {
        VoiceToneAnalysisTask = {
            type = "structure",
        },
    },
}

M.ListAvailableVoiceConnectorRegionsInput = {
    type = "structure",
}

M.ListAvailableVoiceConnectorRegionsOutput = {
    type = "structure",
    members = {
        VoiceConnectorRegions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListPhoneNumberOrdersInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListPhoneNumberOrdersOutput = {
    type = "structure",
    members = {
        PhoneNumberOrders = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPhoneNumbersInput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        ProductType = {
            type = "string",
            traits = {
                http_query = "product-type",
            },
        },
        FilterName = {
            type = "string",
            traits = {
                http_query = "filter-name",
            },
        },
        FilterValue = {
            type = "string",
            traits = {
                http_query = "filter-value",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListPhoneNumbersOutput = {
    type = "structure",
    members = {
        PhoneNumbers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProxySessionsInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListProxySessionsOutput = {
    type = "structure",
    members = {
        ProxySessions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSipMediaApplicationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListSipMediaApplicationsOutput = {
    type = "structure",
    members = {
        SipMediaApplications = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSipRulesInput = {
    type = "structure",
    members = {
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_query = "sip-media-application",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.ListSipRulesOutput = {
    type = "structure",
    members = {
        SipRules = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSupportedPhoneNumberCountriesInput = {
    type = "structure",
    members = {
        ProductType = {
            type = "string",
            traits = {
                http_query = "product-type",
                required = true,
            },
        },
    },
}

M.PhoneNumberCountry = {
    type = "structure",
    members = {
        CountryCode = {
            type = "string",
        },
        SupportedPhoneNumberTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListSupportedPhoneNumberCountriesOutput = {
    type = "structure",
    members = {
        PhoneNumberCountries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                http_query = "arn",
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

M.ListVoiceConnectorGroupsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListVoiceConnectorGroupsOutput = {
    type = "structure",
    members = {
        VoiceConnectorGroups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListVoiceConnectorsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListVoiceConnectorsOutput = {
    type = "structure",
    members = {
        VoiceConnectors = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListVoiceConnectorTerminationCredentialsInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListVoiceConnectorTerminationCredentialsOutput = {
    type = "structure",
    members = {
        Usernames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListVoiceProfileDomainsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.VoiceProfileDomainSummary = {
    type = "structure",
    members = {
        VoiceProfileDomainId = {
            type = "string",
        },
        VoiceProfileDomainArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListVoiceProfileDomainsOutput = {
    type = "structure",
    members = {
        VoiceProfileDomains = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListVoiceProfilesInput = {
    type = "structure",
    members = {
        VoiceProfileDomainId = {
            type = "string",
            traits = {
                http_query = "voice-profile-domain-id",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.VoiceProfileSummary = {
    type = "structure",
    members = {
        VoiceProfileId = {
            type = "string",
        },
        VoiceProfileArn = {
            type = "string",
        },
        VoiceProfileDomainId = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
        UpdatedTimestamp = {
            type = "timestamp",
        },
        ExpirationTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListVoiceProfilesOutput = {
    type = "structure",
    members = {
        VoiceProfiles = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutSipMediaApplicationAlexaSkillConfigurationInput = {
    type = "structure",
    members = {
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SipMediaApplicationAlexaSkillConfiguration = {
            type = "structure",
        },
    },
}

M.PutSipMediaApplicationAlexaSkillConfigurationOutput = {
    type = "structure",
    members = {
        SipMediaApplicationAlexaSkillConfiguration = {
            type = "structure",
        },
    },
}

M.PutSipMediaApplicationLoggingConfigurationInput = {
    type = "structure",
    members = {
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SipMediaApplicationLoggingConfiguration = {
            type = "structure",
        },
    },
}

M.PutSipMediaApplicationLoggingConfigurationOutput = {
    type = "structure",
    members = {
        SipMediaApplicationLoggingConfiguration = {
            type = "structure",
        },
    },
}

M.PutVoiceConnectorEmergencyCallingConfigurationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmergencyCallingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutVoiceConnectorEmergencyCallingConfigurationOutput = {
    type = "structure",
    members = {
        EmergencyCallingConfiguration = {
            type = "structure",
        },
    },
}

M.PutVoiceConnectorExternalSystemsConfigurationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SessionBorderControllerTypes = {
            type = "list",
            member_type = "string",
        },
        ContactCenterSystemTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.PutVoiceConnectorExternalSystemsConfigurationOutput = {
    type = "structure",
    members = {
        ExternalSystemsConfiguration = {
            type = "structure",
        },
    },
}

M.PutVoiceConnectorLoggingConfigurationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LoggingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutVoiceConnectorLoggingConfigurationOutput = {
    type = "structure",
    members = {
        LoggingConfiguration = {
            type = "structure",
        },
    },
}

M.PutVoiceConnectorOriginationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Origination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutVoiceConnectorOriginationOutput = {
    type = "structure",
    members = {
        Origination = {
            type = "structure",
        },
    },
}

M.PutVoiceConnectorProxyInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DefaultSessionExpiryMinutes = {
            type = "number",
            traits = {
                required = true,
            },
        },
        PhoneNumberPoolCountries = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        FallBackPhoneNumber = {
            type = "string",
        },
        Disabled = {
            type = "boolean",
        },
    },
}

M.PutVoiceConnectorProxyOutput = {
    type = "structure",
    members = {
        Proxy = {
            type = "structure",
        },
    },
}

M.PutVoiceConnectorStreamingConfigurationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StreamingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutVoiceConnectorStreamingConfigurationOutput = {
    type = "structure",
    members = {
        StreamingConfiguration = {
            type = "structure",
        },
    },
}

M.PutVoiceConnectorTerminationInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Termination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutVoiceConnectorTerminationOutput = {
    type = "structure",
    members = {
        Termination = {
            type = "structure",
        },
    },
}

M.Credential = {
    type = "structure",
    members = {
        Username = {
            type = "string",
        },
        Password = {
            type = "string",
        },
    },
}

M.PutVoiceConnectorTerminationCredentialsInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Credentials = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutVoiceConnectorTerminationCredentialsOutput = {
    type = "structure",
}

M.RestorePhoneNumberInput = {
    type = "structure",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RestorePhoneNumberOutput = {
    type = "structure",
    members = {
        PhoneNumber = {
            type = "structure",
        },
    },
}

M.SearchAvailablePhoneNumbersInput = {
    type = "structure",
    members = {
        AreaCode = {
            type = "string",
            traits = {
                http_query = "area-code",
            },
        },
        City = {
            type = "string",
            traits = {
                http_query = "city",
            },
        },
        Country = {
            type = "string",
            traits = {
                http_query = "country",
            },
        },
        State = {
            type = "string",
            traits = {
                http_query = "state",
            },
        },
        TollFreePrefix = {
            type = "string",
            traits = {
                http_query = "toll-free-prefix",
            },
        },
        PhoneNumberType = {
            type = "string",
            traits = {
                http_query = "phone-number-type",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max-results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
    },
}

M.SearchAvailablePhoneNumbersOutput = {
    type = "structure",
    members = {
        E164PhoneNumbers = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartSpeakerSearchTaskInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TransactionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VoiceProfileDomainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        CallLeg = {
            type = "string",
        },
    },
}

M.StartSpeakerSearchTaskOutput = {
    type = "structure",
    members = {
        SpeakerSearchTask = {
            type = "structure",
        },
    },
}

M.UnprocessableEntityException = {
    type = "structure",
    error = "client",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.LanguageCode = {
    EN_US = "en-US",
}

M.StartVoiceToneAnalysisTaskInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TransactionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

M.StartVoiceToneAnalysisTaskOutput = {
    type = "structure",
    members = {
        VoiceToneAnalysisTask = {
            type = "structure",
        },
    },
}

M.StopSpeakerSearchTaskInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SpeakerSearchTaskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopSpeakerSearchTaskOutput = {
    type = "structure",
}

M.StopVoiceToneAnalysisTaskInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VoiceToneAnalysisTaskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopVoiceToneAnalysisTaskOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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
        ResourceARN = {
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

M.UpdateGlobalSettingsInput = {
    type = "structure",
    members = {
        VoiceConnector = {
            type = "structure",
        },
    },
}

M.UpdateGlobalSettingsOutput = {
    type = "structure",
}

M.UpdatePhoneNumberInput = {
    type = "structure",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProductType = {
            type = "string",
        },
        CallingName = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdatePhoneNumberOutput = {
    type = "structure",
    members = {
        PhoneNumber = {
            type = "structure",
        },
    },
}

M.UpdatePhoneNumberSettingsInput = {
    type = "structure",
    members = {
        CallingName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePhoneNumberSettingsOutput = {
    type = "structure",
}

M.UpdateProxySessionInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ProxySessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Capabilities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ExpiryMinutes = {
            type = "number",
        },
    },
}

M.UpdateProxySessionOutput = {
    type = "structure",
    members = {
        ProxySession = {
            type = "structure",
        },
    },
}

M.UpdateSipMediaApplicationInput = {
    type = "structure",
    members = {
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Endpoints = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateSipMediaApplicationOutput = {
    type = "structure",
    members = {
        SipMediaApplication = {
            type = "structure",
        },
    },
}

M.UpdateSipMediaApplicationCallInput = {
    type = "structure",
    members = {
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TransactionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Arguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSipMediaApplicationCallOutput = {
    type = "structure",
    members = {
        SipMediaApplicationCall = {
            type = "structure",
        },
    },
}

M.UpdateSipRuleInput = {
    type = "structure",
    members = {
        SipRuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Disabled = {
            type = "boolean",
        },
        TargetApplications = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateSipRuleOutput = {
    type = "structure",
    members = {
        SipRule = {
            type = "structure",
        },
    },
}

M.UpdateVoiceConnectorInput = {
    type = "structure",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequireEncryption = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateVoiceConnectorOutput = {
    type = "structure",
    members = {
        VoiceConnector = {
            type = "structure",
        },
    },
}

M.UpdateVoiceConnectorGroupInput = {
    type = "structure",
    members = {
        VoiceConnectorGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VoiceConnectorItems = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateVoiceConnectorGroupOutput = {
    type = "structure",
    members = {
        VoiceConnectorGroup = {
            type = "structure",
        },
    },
}

M.UpdateVoiceProfileInput = {
    type = "structure",
    members = {
        VoiceProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SpeakerSearchTaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateVoiceProfileOutput = {
    type = "structure",
    members = {
        VoiceProfile = {
            type = "structure",
        },
    },
}

M.UpdateVoiceProfileDomainInput = {
    type = "structure",
    members = {
        VoiceProfileDomainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateVoiceProfileDomainOutput = {
    type = "structure",
    members = {
        VoiceProfileDomain = {
            type = "structure",
        },
    },
}

M.ValidateE911AddressInput = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreetNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreetInfo = {
            type = "string",
            traits = {
                required = true,
            },
        },
        City = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Country = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PostalCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidateE911AddressOutput = {
    type = "structure",
    members = {
        ValidationResult = {
            type = "number",
        },
        AddressExternalId = {
            type = "string",
        },
        Address = {
            type = "structure",
        },
        CandidateAddressList = {
            type = "list",
            member_type = "structure",
        },
    },
}

return M
