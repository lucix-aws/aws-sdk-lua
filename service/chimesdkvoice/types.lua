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
    id = "AccessDeniedException",
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
    id = "Address",
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
    id = "AssociatePhoneNumbersWithVoiceConnectorInput",
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
            member = { type = "string" },
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
    id = "PhoneNumberError",
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
    id = "AssociatePhoneNumbersWithVoiceConnectorOutput",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member = M.PhoneNumberError,
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
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
    id = "ForbiddenException",
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
    id = "NotFoundException",
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
    id = "ServiceFailureException",
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
    id = "ServiceUnavailableException",
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
    id = "ThrottledClientException",
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
    id = "UnauthorizedClientException",
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
    id = "AssociatePhoneNumbersWithVoiceConnectorGroupInput",
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
            member = { type = "string" },
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
    id = "AssociatePhoneNumbersWithVoiceConnectorGroupOutput",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member = M.PhoneNumberError,
        },
    },
}

M.BatchDeletePhoneNumberInput = {
    type = "structure",
    id = "BatchDeletePhoneNumberInput",
    members = {
        PhoneNumberIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeletePhoneNumberOutput = {
    type = "structure",
    id = "BatchDeletePhoneNumberOutput",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member = M.PhoneNumberError,
        },
    },
}

M.PhoneNumberProductType = {
    VoiceConnector = "VoiceConnector",
    SipMediaApplicationDialIn = "SipMediaApplicationDialIn",
}

M.UpdatePhoneNumberRequestItem = {
    type = "structure",
    id = "UpdatePhoneNumberRequestItem",
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
    id = "BatchUpdatePhoneNumberInput",
    members = {
        UpdatePhoneNumberRequestItems = {
            type = "list",
            member = M.UpdatePhoneNumberRequestItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdatePhoneNumberOutput = {
    type = "structure",
    id = "BatchUpdatePhoneNumberOutput",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member = M.PhoneNumberError,
        },
    },
}

M.CallDetails = {
    type = "structure",
    id = "CallDetails",
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
    id = "CandidateAddress",
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
    id = "CreatePhoneNumberOrderInput",
    members = {
        ProductType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        E164PhoneNumbers = {
            type = "list",
            member = { type = "string" },
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
    id = "OrderedPhoneNumber",
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
    id = "PhoneNumberOrder",
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
            member = M.OrderedPhoneNumber,
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        FocDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreatePhoneNumberOrderOutput = {
    type = "structure",
    id = "CreatePhoneNumberOrderOutput",
    members = {
        PhoneNumberOrder = M.PhoneNumberOrder,
    },
}

M.ResourceLimitExceededException = {
    type = "structure",
    id = "ResourceLimitExceededException",
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
    id = "GeoMatchParams",
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
    id = "CreateProxySessionInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        ExpiryMinutes = {
            type = "integer",
        },
        Capabilities = {
            type = "list",
            member = { type = "string" },
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
        GeoMatchParams = M.GeoMatchParams,
    },
}

M.Participant = {
    type = "structure",
    id = "Participant",
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
    id = "ProxySession",
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
            type = "integer",
        },
        Capabilities = {
            type = "list",
            member = { type = "string" },
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        EndedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Participants = {
            type = "list",
            member = M.Participant,
        },
        NumberSelectionBehavior = {
            type = "string",
        },
        GeoMatchLevel = {
            type = "string",
        },
        GeoMatchParams = M.GeoMatchParams,
    },
}

M.CreateProxySessionOutput = {
    type = "structure",
    id = "CreateProxySessionOutput",
    members = {
        ProxySession = M.ProxySession,
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
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
    id = "SipMediaApplicationEndpoint",
    members = {
        LambdaArn = {
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

M.CreateSipMediaApplicationInput = {
    type = "structure",
    id = "CreateSipMediaApplicationInput",
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
            member = M.SipMediaApplicationEndpoint,
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

M.SipMediaApplication = {
    type = "structure",
    id = "SipMediaApplication",
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
            member = M.SipMediaApplicationEndpoint,
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        SipMediaApplicationArn = {
            type = "string",
        },
    },
}

M.CreateSipMediaApplicationOutput = {
    type = "structure",
    id = "CreateSipMediaApplicationOutput",
    members = {
        SipMediaApplication = M.SipMediaApplication,
    },
}

M.CreateSipMediaApplicationCallInput = {
    type = "structure",
    id = "CreateSipMediaApplicationCallInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        ArgumentsMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SipMediaApplicationCall = {
    type = "structure",
    id = "SipMediaApplicationCall",
    members = {
        TransactionId = {
            type = "string",
        },
    },
}

M.CreateSipMediaApplicationCallOutput = {
    type = "structure",
    id = "CreateSipMediaApplicationCallOutput",
    members = {
        SipMediaApplicationCall = M.SipMediaApplicationCall,
    },
}

M.SipRuleTargetApplication = {
    type = "structure",
    id = "SipRuleTargetApplication",
    members = {
        SipMediaApplicationId = {
            type = "string",
        },
        Priority = {
            type = "integer",
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
    id = "CreateSipRuleInput",
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
            member = M.SipRuleTargetApplication,
        },
    },
}

M.SipRule = {
    type = "structure",
    id = "SipRule",
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
            member = M.SipRuleTargetApplication,
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateSipRuleOutput = {
    type = "structure",
    id = "CreateSipRuleOutput",
    members = {
        SipRule = M.SipRule,
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
    id = "CreateVoiceConnectorInput",
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
            member = M.Tag,
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
    id = "VoiceConnector",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "CreateVoiceConnectorOutput",
    members = {
        VoiceConnector = M.VoiceConnector,
    },
}

M.VoiceConnectorItem = {
    type = "structure",
    id = "VoiceConnectorItem",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVoiceConnectorGroupInput = {
    type = "structure",
    id = "CreateVoiceConnectorGroupInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VoiceConnectorItems = {
            type = "list",
            member = M.VoiceConnectorItem,
        },
    },
}

M.VoiceConnectorGroup = {
    type = "structure",
    id = "VoiceConnectorGroup",
    members = {
        VoiceConnectorGroupId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VoiceConnectorItems = {
            type = "list",
            member = M.VoiceConnectorItem,
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        VoiceConnectorGroupArn = {
            type = "string",
        },
    },
}

M.CreateVoiceConnectorGroupOutput = {
    type = "structure",
    id = "CreateVoiceConnectorGroupOutput",
    members = {
        VoiceConnectorGroup = M.VoiceConnectorGroup,
    },
}

M.CreateVoiceProfileInput = {
    type = "structure",
    id = "CreateVoiceProfileInput",
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
    id = "VoiceProfile",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ExpirationTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateVoiceProfileOutput = {
    type = "structure",
    id = "CreateVoiceProfileOutput",
    members = {
        VoiceProfile = M.VoiceProfile,
    },
}

M.GoneException = {
    type = "structure",
    id = "GoneException",
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
    id = "ServerSideEncryptionConfiguration",
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
    id = "CreateVoiceProfileDomainInput",
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
        ServerSideEncryptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServerSideEncryptionConfiguration }),
        ClientRequestToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.VoiceProfileDomain = {
    type = "structure",
    id = "VoiceProfileDomain",
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
        ServerSideEncryptionConfiguration = M.ServerSideEncryptionConfiguration,
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateVoiceProfileDomainOutput = {
    type = "structure",
    id = "CreateVoiceProfileDomainOutput",
    members = {
        VoiceProfileDomain = M.VoiceProfileDomain,
    },
}

M.DeletePhoneNumberInput = {
    type = "structure",
    id = "DeletePhoneNumberInput",
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
    id = "DeletePhoneNumberOutput",
}

M.DeleteProxySessionInput = {
    type = "structure",
    id = "DeleteProxySessionInput",
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
    id = "DeleteProxySessionOutput",
}

M.DeleteSipMediaApplicationInput = {
    type = "structure",
    id = "DeleteSipMediaApplicationInput",
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
    id = "DeleteSipMediaApplicationOutput",
}

M.DeleteSipRuleInput = {
    type = "structure",
    id = "DeleteSipRuleInput",
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
    id = "DeleteSipRuleOutput",
}

M.DeleteVoiceConnectorInput = {
    type = "structure",
    id = "DeleteVoiceConnectorInput",
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
    id = "DeleteVoiceConnectorOutput",
}

M.DeleteVoiceConnectorEmergencyCallingConfigurationInput = {
    type = "structure",
    id = "DeleteVoiceConnectorEmergencyCallingConfigurationInput",
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
    id = "DeleteVoiceConnectorEmergencyCallingConfigurationOutput",
}

M.DeleteVoiceConnectorExternalSystemsConfigurationInput = {
    type = "structure",
    id = "DeleteVoiceConnectorExternalSystemsConfigurationInput",
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
    id = "DeleteVoiceConnectorExternalSystemsConfigurationOutput",
}

M.DeleteVoiceConnectorGroupInput = {
    type = "structure",
    id = "DeleteVoiceConnectorGroupInput",
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
    id = "DeleteVoiceConnectorGroupOutput",
}

M.DeleteVoiceConnectorOriginationInput = {
    type = "structure",
    id = "DeleteVoiceConnectorOriginationInput",
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
    id = "DeleteVoiceConnectorOriginationOutput",
}

M.DeleteVoiceConnectorProxyInput = {
    type = "structure",
    id = "DeleteVoiceConnectorProxyInput",
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
    id = "DeleteVoiceConnectorProxyOutput",
}

M.DeleteVoiceConnectorStreamingConfigurationInput = {
    type = "structure",
    id = "DeleteVoiceConnectorStreamingConfigurationInput",
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
    id = "DeleteVoiceConnectorStreamingConfigurationOutput",
}

M.DeleteVoiceConnectorTerminationInput = {
    type = "structure",
    id = "DeleteVoiceConnectorTerminationInput",
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
    id = "DeleteVoiceConnectorTerminationOutput",
}

M.DeleteVoiceConnectorTerminationCredentialsInput = {
    type = "structure",
    id = "DeleteVoiceConnectorTerminationCredentialsInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVoiceConnectorTerminationCredentialsOutput = {
    type = "structure",
    id = "DeleteVoiceConnectorTerminationCredentialsOutput",
}

M.DeleteVoiceProfileInput = {
    type = "structure",
    id = "DeleteVoiceProfileInput",
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
    id = "DeleteVoiceProfileOutput",
}

M.DeleteVoiceProfileDomainInput = {
    type = "structure",
    id = "DeleteVoiceProfileDomainInput",
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
    id = "DeleteVoiceProfileDomainOutput",
}

M.DisassociatePhoneNumbersFromVoiceConnectorInput = {
    type = "structure",
    id = "DisassociatePhoneNumbersFromVoiceConnectorInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociatePhoneNumbersFromVoiceConnectorOutput = {
    type = "structure",
    id = "DisassociatePhoneNumbersFromVoiceConnectorOutput",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member = M.PhoneNumberError,
        },
    },
}

M.DisassociatePhoneNumbersFromVoiceConnectorGroupInput = {
    type = "structure",
    id = "DisassociatePhoneNumbersFromVoiceConnectorGroupInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociatePhoneNumbersFromVoiceConnectorGroupOutput = {
    type = "structure",
    id = "DisassociatePhoneNumbersFromVoiceConnectorGroupOutput",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member = M.PhoneNumberError,
        },
    },
}

M.GetGlobalSettingsInput = {
    type = "structure",
    id = "GetGlobalSettingsInput",
}

M.VoiceConnectorSettings = {
    type = "structure",
    id = "VoiceConnectorSettings",
    members = {
        CdrBucket = {
            type = "string",
        },
    },
}

M.GetGlobalSettingsOutput = {
    type = "structure",
    id = "GetGlobalSettingsOutput",
    members = {
        VoiceConnector = M.VoiceConnectorSettings,
    },
}

M.GetPhoneNumberInput = {
    type = "structure",
    id = "GetPhoneNumberInput",
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
    id = "PhoneNumberAssociation",
    members = {
        Value = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        AssociatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.PhoneNumberCapabilities = {
    type = "structure",
    id = "PhoneNumberCapabilities",
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
    id = "PhoneNumber",
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
        Capabilities = M.PhoneNumberCapabilities,
        Associations = {
            type = "list",
            member = M.PhoneNumberAssociation,
        },
        CallingName = {
            type = "string",
        },
        CallingNameStatus = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DeletionTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "GetPhoneNumberOutput",
    members = {
        PhoneNumber = M.PhoneNumber,
    },
}

M.GetPhoneNumberOrderInput = {
    type = "structure",
    id = "GetPhoneNumberOrderInput",
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
    id = "GetPhoneNumberOrderOutput",
    members = {
        PhoneNumberOrder = M.PhoneNumberOrder,
    },
}

M.GetPhoneNumberSettingsInput = {
    type = "structure",
    id = "GetPhoneNumberSettingsInput",
}

M.GetPhoneNumberSettingsOutput = {
    type = "structure",
    id = "GetPhoneNumberSettingsOutput",
    members = {
        CallingName = {
            type = "string",
        },
        CallingNameUpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetProxySessionInput = {
    type = "structure",
    id = "GetProxySessionInput",
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
    id = "GetProxySessionOutput",
    members = {
        ProxySession = M.ProxySession,
    },
}

M.GetSipMediaApplicationInput = {
    type = "structure",
    id = "GetSipMediaApplicationInput",
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
    id = "GetSipMediaApplicationOutput",
    members = {
        SipMediaApplication = M.SipMediaApplication,
    },
}

M.GetSipMediaApplicationAlexaSkillConfigurationInput = {
    type = "structure",
    id = "GetSipMediaApplicationAlexaSkillConfigurationInput",
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
    id = "SipMediaApplicationAlexaSkillConfiguration",
    members = {
        AlexaSkillStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlexaSkillIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetSipMediaApplicationAlexaSkillConfigurationOutput = {
    type = "structure",
    id = "GetSipMediaApplicationAlexaSkillConfigurationOutput",
    members = {
        SipMediaApplicationAlexaSkillConfiguration = M.SipMediaApplicationAlexaSkillConfiguration,
    },
}

M.GetSipMediaApplicationLoggingConfigurationInput = {
    type = "structure",
    id = "GetSipMediaApplicationLoggingConfigurationInput",
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
    id = "SipMediaApplicationLoggingConfiguration",
    members = {
        EnableSipMediaApplicationMessageLogs = {
            type = "boolean",
        },
    },
}

M.GetSipMediaApplicationLoggingConfigurationOutput = {
    type = "structure",
    id = "GetSipMediaApplicationLoggingConfigurationOutput",
    members = {
        SipMediaApplicationLoggingConfiguration = M.SipMediaApplicationLoggingConfiguration,
    },
}

M.GetSipRuleInput = {
    type = "structure",
    id = "GetSipRuleInput",
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
    id = "GetSipRuleOutput",
    members = {
        SipRule = M.SipRule,
    },
}

M.GetSpeakerSearchTaskInput = {
    type = "structure",
    id = "GetSpeakerSearchTaskInput",
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
    id = "SpeakerSearchResult",
    members = {
        ConfidenceScore = {
            type = "float",
            traits = {
                default = 0,
            },
        },
        VoiceProfileId = {
            type = "string",
        },
    },
}

M.SpeakerSearchDetails = {
    type = "structure",
    id = "SpeakerSearchDetails",
    members = {
        Results = {
            type = "list",
            member = M.SpeakerSearchResult,
        },
        VoiceprintGenerationStatus = {
            type = "string",
        },
    },
}

M.SpeakerSearchTask = {
    type = "structure",
    id = "SpeakerSearchTask",
    members = {
        SpeakerSearchTaskId = {
            type = "string",
        },
        SpeakerSearchTaskStatus = {
            type = "string",
        },
        CallDetails = M.CallDetails,
        SpeakerSearchDetails = M.SpeakerSearchDetails,
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        StartedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.GetSpeakerSearchTaskOutput = {
    type = "structure",
    id = "GetSpeakerSearchTaskOutput",
    members = {
        SpeakerSearchTask = M.SpeakerSearchTask,
    },
}

M.GetVoiceConnectorInput = {
    type = "structure",
    id = "GetVoiceConnectorInput",
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
    id = "GetVoiceConnectorOutput",
    members = {
        VoiceConnector = M.VoiceConnector,
    },
}

M.GetVoiceConnectorEmergencyCallingConfigurationInput = {
    type = "structure",
    id = "GetVoiceConnectorEmergencyCallingConfigurationInput",
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
    id = "DNISEmergencyCallingConfiguration",
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
    id = "EmergencyCallingConfiguration",
    members = {
        DNIS = {
            type = "list",
            member = M.DNISEmergencyCallingConfiguration,
        },
    },
}

M.GetVoiceConnectorEmergencyCallingConfigurationOutput = {
    type = "structure",
    id = "GetVoiceConnectorEmergencyCallingConfigurationOutput",
    members = {
        EmergencyCallingConfiguration = M.EmergencyCallingConfiguration,
    },
}

M.GetVoiceConnectorExternalSystemsConfigurationInput = {
    type = "structure",
    id = "GetVoiceConnectorExternalSystemsConfigurationInput",
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
    id = "ExternalSystemsConfiguration",
    members = {
        SessionBorderControllerTypes = {
            type = "list",
            member = { type = "string" },
        },
        ContactCenterSystemTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetVoiceConnectorExternalSystemsConfigurationOutput = {
    type = "structure",
    id = "GetVoiceConnectorExternalSystemsConfigurationOutput",
    members = {
        ExternalSystemsConfiguration = M.ExternalSystemsConfiguration,
    },
}

M.GetVoiceConnectorGroupInput = {
    type = "structure",
    id = "GetVoiceConnectorGroupInput",
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
    id = "GetVoiceConnectorGroupOutput",
    members = {
        VoiceConnectorGroup = M.VoiceConnectorGroup,
    },
}

M.GetVoiceConnectorLoggingConfigurationInput = {
    type = "structure",
    id = "GetVoiceConnectorLoggingConfigurationInput",
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
    id = "LoggingConfiguration",
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
    id = "GetVoiceConnectorLoggingConfigurationOutput",
    members = {
        LoggingConfiguration = M.LoggingConfiguration,
    },
}

M.GetVoiceConnectorOriginationInput = {
    type = "structure",
    id = "GetVoiceConnectorOriginationInput",
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
    id = "OriginationRoute",
    members = {
        Host = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        Protocol = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
        Weight = {
            type = "integer",
        },
    },
}

M.Origination = {
    type = "structure",
    id = "Origination",
    members = {
        Routes = {
            type = "list",
            member = M.OriginationRoute,
        },
        Disabled = {
            type = "boolean",
        },
    },
}

M.GetVoiceConnectorOriginationOutput = {
    type = "structure",
    id = "GetVoiceConnectorOriginationOutput",
    members = {
        Origination = M.Origination,
    },
}

M.GetVoiceConnectorProxyInput = {
    type = "structure",
    id = "GetVoiceConnectorProxyInput",
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
    id = "Proxy",
    members = {
        DefaultSessionExpiryMinutes = {
            type = "integer",
        },
        Disabled = {
            type = "boolean",
        },
        FallBackPhoneNumber = {
            type = "string",
        },
        PhoneNumberCountries = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetVoiceConnectorProxyOutput = {
    type = "structure",
    id = "GetVoiceConnectorProxyOutput",
    members = {
        Proxy = M.Proxy,
    },
}

M.GetVoiceConnectorStreamingConfigurationInput = {
    type = "structure",
    id = "GetVoiceConnectorStreamingConfigurationInput",
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
    id = "MediaInsightsConfiguration",
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
    id = "StreamingNotificationTarget",
    members = {
        NotificationTarget = {
            type = "string",
        },
    },
}

M.StreamingConfiguration = {
    type = "structure",
    id = "StreamingConfiguration",
    members = {
        DataRetentionInHours = {
            type = "integer",
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
            member = M.StreamingNotificationTarget,
        },
        MediaInsightsConfiguration = M.MediaInsightsConfiguration,
    },
}

M.GetVoiceConnectorStreamingConfigurationOutput = {
    type = "structure",
    id = "GetVoiceConnectorStreamingConfigurationOutput",
    members = {
        StreamingConfiguration = M.StreamingConfiguration,
    },
}

M.GetVoiceConnectorTerminationInput = {
    type = "structure",
    id = "GetVoiceConnectorTerminationInput",
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
    id = "Termination",
    members = {
        CpsLimit = {
            type = "integer",
        },
        DefaultPhoneNumber = {
            type = "string",
        },
        CallingRegions = {
            type = "list",
            member = { type = "string" },
        },
        CidrAllowedList = {
            type = "list",
            member = { type = "string" },
        },
        Disabled = {
            type = "boolean",
        },
    },
}

M.GetVoiceConnectorTerminationOutput = {
    type = "structure",
    id = "GetVoiceConnectorTerminationOutput",
    members = {
        Termination = M.Termination,
    },
}

M.GetVoiceConnectorTerminationHealthInput = {
    type = "structure",
    id = "GetVoiceConnectorTerminationHealthInput",
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
    id = "TerminationHealth",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        Source = {
            type = "string",
        },
    },
}

M.GetVoiceConnectorTerminationHealthOutput = {
    type = "structure",
    id = "GetVoiceConnectorTerminationHealthOutput",
    members = {
        TerminationHealth = M.TerminationHealth,
    },
}

M.GetVoiceProfileInput = {
    type = "structure",
    id = "GetVoiceProfileInput",
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
    id = "GetVoiceProfileOutput",
    members = {
        VoiceProfile = M.VoiceProfile,
    },
}

M.GetVoiceProfileDomainInput = {
    type = "structure",
    id = "GetVoiceProfileDomainInput",
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
    id = "GetVoiceProfileDomainOutput",
    members = {
        VoiceProfileDomain = M.VoiceProfileDomain,
    },
}

M.GetVoiceToneAnalysisTaskInput = {
    type = "structure",
    id = "GetVoiceToneAnalysisTaskInput",
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
    id = "VoiceToneAnalysisTask",
    members = {
        VoiceToneAnalysisTaskId = {
            type = "string",
        },
        VoiceToneAnalysisTaskStatus = {
            type = "string",
        },
        CallDetails = M.CallDetails,
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        StartedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.GetVoiceToneAnalysisTaskOutput = {
    type = "structure",
    id = "GetVoiceToneAnalysisTaskOutput",
    members = {
        VoiceToneAnalysisTask = M.VoiceToneAnalysisTask,
    },
}

M.ListAvailableVoiceConnectorRegionsInput = {
    type = "structure",
    id = "ListAvailableVoiceConnectorRegionsInput",
}

M.ListAvailableVoiceConnectorRegionsOutput = {
    type = "structure",
    id = "ListAvailableVoiceConnectorRegionsOutput",
    members = {
        VoiceConnectorRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListPhoneNumberOrdersInput = {
    type = "structure",
    id = "ListPhoneNumberOrdersInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListPhoneNumberOrdersOutput = {
    type = "structure",
    id = "ListPhoneNumberOrdersOutput",
    members = {
        PhoneNumberOrders = {
            type = "list",
            member = M.PhoneNumberOrder,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPhoneNumbersInput = {
    type = "structure",
    id = "ListPhoneNumbersInput",
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
            type = "integer",
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
    id = "ListPhoneNumbersOutput",
    members = {
        PhoneNumbers = {
            type = "list",
            member = M.PhoneNumber,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProxySessionsInput = {
    type = "structure",
    id = "ListProxySessionsInput",
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
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListProxySessionsOutput = {
    type = "structure",
    id = "ListProxySessionsOutput",
    members = {
        ProxySessions = {
            type = "list",
            member = M.ProxySession,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSipMediaApplicationsInput = {
    type = "structure",
    id = "ListSipMediaApplicationsInput",
    members = {
        MaxResults = {
            type = "integer",
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
    id = "ListSipMediaApplicationsOutput",
    members = {
        SipMediaApplications = {
            type = "list",
            member = M.SipMediaApplication,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSipRulesInput = {
    type = "structure",
    id = "ListSipRulesInput",
    members = {
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_query = "sip-media-application",
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "ListSipRulesOutput",
    members = {
        SipRules = {
            type = "list",
            member = M.SipRule,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSupportedPhoneNumberCountriesInput = {
    type = "structure",
    id = "ListSupportedPhoneNumberCountriesInput",
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
    id = "PhoneNumberCountry",
    members = {
        CountryCode = {
            type = "string",
        },
        SupportedPhoneNumberTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListSupportedPhoneNumberCountriesOutput = {
    type = "structure",
    id = "ListSupportedPhoneNumberCountriesOutput",
    members = {
        PhoneNumberCountries = {
            type = "list",
            member = M.PhoneNumberCountry,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListVoiceConnectorGroupsInput = {
    type = "structure",
    id = "ListVoiceConnectorGroupsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListVoiceConnectorGroupsOutput = {
    type = "structure",
    id = "ListVoiceConnectorGroupsOutput",
    members = {
        VoiceConnectorGroups = {
            type = "list",
            member = M.VoiceConnectorGroup,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListVoiceConnectorsInput = {
    type = "structure",
    id = "ListVoiceConnectorsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.ListVoiceConnectorsOutput = {
    type = "structure",
    id = "ListVoiceConnectorsOutput",
    members = {
        VoiceConnectors = {
            type = "list",
            member = M.VoiceConnector,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListVoiceConnectorTerminationCredentialsInput = {
    type = "structure",
    id = "ListVoiceConnectorTerminationCredentialsInput",
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
    id = "ListVoiceConnectorTerminationCredentialsOutput",
    members = {
        Usernames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListVoiceProfileDomainsInput = {
    type = "structure",
    id = "ListVoiceProfileDomainsInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "next-token",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.VoiceProfileDomainSummary = {
    type = "structure",
    id = "VoiceProfileDomainSummary",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListVoiceProfileDomainsOutput = {
    type = "structure",
    id = "ListVoiceProfileDomainsOutput",
    members = {
        VoiceProfileDomains = {
            type = "list",
            member = M.VoiceProfileDomainSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListVoiceProfilesInput = {
    type = "structure",
    id = "ListVoiceProfilesInput",
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
            type = "integer",
            traits = {
                http_query = "max-results",
            },
        },
    },
}

M.VoiceProfileSummary = {
    type = "structure",
    id = "VoiceProfileSummary",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        ExpirationTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListVoiceProfilesOutput = {
    type = "structure",
    id = "ListVoiceProfilesOutput",
    members = {
        VoiceProfiles = {
            type = "list",
            member = M.VoiceProfileSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutSipMediaApplicationAlexaSkillConfigurationInput = {
    type = "structure",
    id = "PutSipMediaApplicationAlexaSkillConfigurationInput",
    members = {
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SipMediaApplicationAlexaSkillConfiguration = M.SipMediaApplicationAlexaSkillConfiguration,
    },
}

M.PutSipMediaApplicationAlexaSkillConfigurationOutput = {
    type = "structure",
    id = "PutSipMediaApplicationAlexaSkillConfigurationOutput",
    members = {
        SipMediaApplicationAlexaSkillConfiguration = M.SipMediaApplicationAlexaSkillConfiguration,
    },
}

M.PutSipMediaApplicationLoggingConfigurationInput = {
    type = "structure",
    id = "PutSipMediaApplicationLoggingConfigurationInput",
    members = {
        SipMediaApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SipMediaApplicationLoggingConfiguration = M.SipMediaApplicationLoggingConfiguration,
    },
}

M.PutSipMediaApplicationLoggingConfigurationOutput = {
    type = "structure",
    id = "PutSipMediaApplicationLoggingConfigurationOutput",
    members = {
        SipMediaApplicationLoggingConfiguration = M.SipMediaApplicationLoggingConfiguration,
    },
}

M.PutVoiceConnectorEmergencyCallingConfigurationInput = {
    type = "structure",
    id = "PutVoiceConnectorEmergencyCallingConfigurationInput",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EmergencyCallingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EmergencyCallingConfiguration }),
    },
}

M.PutVoiceConnectorEmergencyCallingConfigurationOutput = {
    type = "structure",
    id = "PutVoiceConnectorEmergencyCallingConfigurationOutput",
    members = {
        EmergencyCallingConfiguration = M.EmergencyCallingConfiguration,
    },
}

M.PutVoiceConnectorExternalSystemsConfigurationInput = {
    type = "structure",
    id = "PutVoiceConnectorExternalSystemsConfigurationInput",
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
            member = { type = "string" },
        },
        ContactCenterSystemTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PutVoiceConnectorExternalSystemsConfigurationOutput = {
    type = "structure",
    id = "PutVoiceConnectorExternalSystemsConfigurationOutput",
    members = {
        ExternalSystemsConfiguration = M.ExternalSystemsConfiguration,
    },
}

M.PutVoiceConnectorLoggingConfigurationInput = {
    type = "structure",
    id = "PutVoiceConnectorLoggingConfigurationInput",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LoggingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoggingConfiguration }),
    },
}

M.PutVoiceConnectorLoggingConfigurationOutput = {
    type = "structure",
    id = "PutVoiceConnectorLoggingConfigurationOutput",
    members = {
        LoggingConfiguration = M.LoggingConfiguration,
    },
}

M.PutVoiceConnectorOriginationInput = {
    type = "structure",
    id = "PutVoiceConnectorOriginationInput",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Origination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Origination }),
    },
}

M.PutVoiceConnectorOriginationOutput = {
    type = "structure",
    id = "PutVoiceConnectorOriginationOutput",
    members = {
        Origination = M.Origination,
    },
}

M.PutVoiceConnectorProxyInput = {
    type = "structure",
    id = "PutVoiceConnectorProxyInput",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DefaultSessionExpiryMinutes = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        PhoneNumberPoolCountries = {
            type = "list",
            member = { type = "string" },
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
    id = "PutVoiceConnectorProxyOutput",
    members = {
        Proxy = M.Proxy,
    },
}

M.PutVoiceConnectorStreamingConfigurationInput = {
    type = "structure",
    id = "PutVoiceConnectorStreamingConfigurationInput",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StreamingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StreamingConfiguration }),
    },
}

M.PutVoiceConnectorStreamingConfigurationOutput = {
    type = "structure",
    id = "PutVoiceConnectorStreamingConfigurationOutput",
    members = {
        StreamingConfiguration = M.StreamingConfiguration,
    },
}

M.PutVoiceConnectorTerminationInput = {
    type = "structure",
    id = "PutVoiceConnectorTerminationInput",
    members = {
        VoiceConnectorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Termination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Termination }),
    },
}

M.PutVoiceConnectorTerminationOutput = {
    type = "structure",
    id = "PutVoiceConnectorTerminationOutput",
    members = {
        Termination = M.Termination,
    },
}

M.Credential = {
    type = "structure",
    id = "Credential",
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
    id = "PutVoiceConnectorTerminationCredentialsInput",
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
            member = M.Credential,
        },
    },
}

M.PutVoiceConnectorTerminationCredentialsOutput = {
    type = "structure",
    id = "PutVoiceConnectorTerminationCredentialsOutput",
}

M.RestorePhoneNumberInput = {
    type = "structure",
    id = "RestorePhoneNumberInput",
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
    id = "RestorePhoneNumberOutput",
    members = {
        PhoneNumber = M.PhoneNumber,
    },
}

M.SearchAvailablePhoneNumbersInput = {
    type = "structure",
    id = "SearchAvailablePhoneNumbersInput",
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
            type = "integer",
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
    id = "SearchAvailablePhoneNumbersOutput",
    members = {
        E164PhoneNumbers = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartSpeakerSearchTaskInput = {
    type = "structure",
    id = "StartSpeakerSearchTaskInput",
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
    id = "StartSpeakerSearchTaskOutput",
    members = {
        SpeakerSearchTask = M.SpeakerSearchTask,
    },
}

M.UnprocessableEntityException = {
    type = "structure",
    id = "UnprocessableEntityException",
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
    id = "StartVoiceToneAnalysisTaskInput",
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
    id = "StartVoiceToneAnalysisTaskOutput",
    members = {
        VoiceToneAnalysisTask = M.VoiceToneAnalysisTask,
    },
}

M.StopSpeakerSearchTaskInput = {
    type = "structure",
    id = "StopSpeakerSearchTaskInput",
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
    id = "StopSpeakerSearchTaskOutput",
}

M.StopVoiceToneAnalysisTaskInput = {
    type = "structure",
    id = "StopVoiceToneAnalysisTaskInput",
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
    id = "StopVoiceToneAnalysisTaskOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
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

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
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

M.UpdateGlobalSettingsInput = {
    type = "structure",
    id = "UpdateGlobalSettingsInput",
    members = {
        VoiceConnector = M.VoiceConnectorSettings,
    },
}

M.UpdateGlobalSettingsOutput = {
    type = "structure",
    id = "UpdateGlobalSettingsOutput",
}

M.UpdatePhoneNumberInput = {
    type = "structure",
    id = "UpdatePhoneNumberInput",
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
    id = "UpdatePhoneNumberOutput",
    members = {
        PhoneNumber = M.PhoneNumber,
    },
}

M.UpdatePhoneNumberSettingsInput = {
    type = "structure",
    id = "UpdatePhoneNumberSettingsInput",
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
    id = "UpdatePhoneNumberSettingsOutput",
}

M.UpdateProxySessionInput = {
    type = "structure",
    id = "UpdateProxySessionInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ExpiryMinutes = {
            type = "integer",
        },
    },
}

M.UpdateProxySessionOutput = {
    type = "structure",
    id = "UpdateProxySessionOutput",
    members = {
        ProxySession = M.ProxySession,
    },
}

M.UpdateSipMediaApplicationInput = {
    type = "structure",
    id = "UpdateSipMediaApplicationInput",
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
            member = M.SipMediaApplicationEndpoint,
        },
    },
}

M.UpdateSipMediaApplicationOutput = {
    type = "structure",
    id = "UpdateSipMediaApplicationOutput",
    members = {
        SipMediaApplication = M.SipMediaApplication,
    },
}

M.UpdateSipMediaApplicationCallInput = {
    type = "structure",
    id = "UpdateSipMediaApplicationCallInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSipMediaApplicationCallOutput = {
    type = "structure",
    id = "UpdateSipMediaApplicationCallOutput",
    members = {
        SipMediaApplicationCall = M.SipMediaApplicationCall,
    },
}

M.UpdateSipRuleInput = {
    type = "structure",
    id = "UpdateSipRuleInput",
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
            member = M.SipRuleTargetApplication,
        },
    },
}

M.UpdateSipRuleOutput = {
    type = "structure",
    id = "UpdateSipRuleOutput",
    members = {
        SipRule = M.SipRule,
    },
}

M.UpdateVoiceConnectorInput = {
    type = "structure",
    id = "UpdateVoiceConnectorInput",
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
    id = "UpdateVoiceConnectorOutput",
    members = {
        VoiceConnector = M.VoiceConnector,
    },
}

M.UpdateVoiceConnectorGroupInput = {
    type = "structure",
    id = "UpdateVoiceConnectorGroupInput",
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
            member = M.VoiceConnectorItem,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateVoiceConnectorGroupOutput = {
    type = "structure",
    id = "UpdateVoiceConnectorGroupOutput",
    members = {
        VoiceConnectorGroup = M.VoiceConnectorGroup,
    },
}

M.UpdateVoiceProfileInput = {
    type = "structure",
    id = "UpdateVoiceProfileInput",
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
    id = "UpdateVoiceProfileOutput",
    members = {
        VoiceProfile = M.VoiceProfile,
    },
}

M.UpdateVoiceProfileDomainInput = {
    type = "structure",
    id = "UpdateVoiceProfileDomainInput",
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
    id = "UpdateVoiceProfileDomainOutput",
    members = {
        VoiceProfileDomain = M.VoiceProfileDomain,
    },
}

M.ValidateE911AddressInput = {
    type = "structure",
    id = "ValidateE911AddressInput",
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
    id = "ValidateE911AddressOutput",
    members = {
        ValidationResult = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        AddressExternalId = {
            type = "string",
        },
        Address = M.Address,
        CandidateAddressList = {
            type = "list",
            member = M.CandidateAddress,
        },
    },
}

return M
