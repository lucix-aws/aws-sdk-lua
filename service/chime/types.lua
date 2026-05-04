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

M.AccountStatus = {
    Suspended = "Suspended",
    Active = "Active",
}

M.AccountType = {
    Team = "Team",
    EnterpriseDirectory = "EnterpriseDirectory",
    EnterpriseLWA = "EnterpriseLWA",
    EnterpriseOIDC = "EnterpriseOIDC",
}

M.License = {
    Basic = "Basic",
    Plus = "Plus",
    Pro = "Pro",
    ProTrial = "ProTrial",
}

M.SigninDelegateGroup = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
    },
}

M.Account = {
    type = "structure",
    members = {
        AwsAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
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
        AccountType = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        DefaultLicense = {
            type = "string",
        },
        SupportedLicenses = {
            type = "list",
            member = { type = "string" },
        },
        AccountStatus = {
            type = "string",
        },
        SigninDelegateGroups = {
            type = "list",
            member = M.SigninDelegateGroup,
        },
    },
}

M.AccountSettings = {
    type = "structure",
    members = {
        DisableRemoteControl = {
            type = "boolean",
        },
        EnableDialOut = {
            type = "boolean",
        },
    },
}

M.AlexaForBusinessMetadata = {
    type = "structure",
    members = {
        IsAlexaForBusinessEnabled = {
            type = "boolean",
        },
        AlexaForBusinessRoomArn = {
            type = "string",
        },
    },
}

M.AssociatePhoneNumberWithUserInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        E164PhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociatePhoneNumberWithUserOutput = {
    type = "structure",
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

M.AssociateSigninDelegateGroupsWithAccountInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SigninDelegateGroups = {
            type = "list",
            member = M.SigninDelegateGroup,
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateSigninDelegateGroupsWithAccountOutput = {
    type = "structure",
}

M.RoomMembershipRole = {
    Administrator = "Administrator",
    Member = "Member",
}

M.MembershipItem = {
    type = "structure",
    members = {
        MemberId = {
            type = "string",
        },
        Role = {
            type = "string",
        },
    },
}

M.BatchCreateRoomMembershipInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoomId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MembershipItemList = {
            type = "list",
            member = M.MembershipItem,
            traits = {
                required = true,
            },
        },
    },
}

M.MemberError = {
    type = "structure",
    members = {
        MemberId = {
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

M.BatchCreateRoomMembershipOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member = M.MemberError,
        },
    },
}

M.BatchDeletePhoneNumberInput = {
    type = "structure",
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

M.BatchDeletePhoneNumberOutput = {
    type = "structure",
    members = {
        PhoneNumberErrors = {
            type = "list",
            member = M.PhoneNumberError,
        },
    },
}

M.BatchSuspendUserInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserIdList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UserError = {
    type = "structure",
    members = {
        UserId = {
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

M.BatchSuspendUserOutput = {
    type = "structure",
    members = {
        UserErrors = {
            type = "list",
            member = M.UserError,
        },
    },
}

M.BatchUnsuspendUserInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserIdList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUnsuspendUserOutput = {
    type = "structure",
    members = {
        UserErrors = {
            type = "list",
            member = M.UserError,
        },
    },
}

M.PhoneNumberProductType = {
    BusinessCalling = "BusinessCalling",
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
    },
}

M.BatchUpdatePhoneNumberInput = {
    type = "structure",
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
    members = {
        PhoneNumberErrors = {
            type = "list",
            member = M.PhoneNumberError,
        },
    },
}

M.UserType = {
    PrivateUser = "PrivateUser",
    SharedDevice = "SharedDevice",
}

M.UpdateUserRequestItem = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LicenseType = {
            type = "string",
        },
        UserType = {
            type = "string",
        },
        AlexaForBusinessMetadata = M.AlexaForBusinessMetadata,
    },
}

M.BatchUpdateUserInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UpdateUserRequestItems = {
            type = "list",
            member = M.UpdateUserRequestItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateUserOutput = {
    type = "structure",
    members = {
        UserErrors = {
            type = "list",
            member = M.UserError,
        },
    },
}

M.BotType = {
    ChatBot = "ChatBot",
}

M.Bot = {
    type = "structure",
    members = {
        BotId = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        BotType = {
            type = "string",
        },
        Disabled = {
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
        BotEmail = {
            type = "string",
        },
        SecurityToken = {
            type = "string",
        },
    },
}

M.BusinessCallingSettings = {
    type = "structure",
    members = {
        CdrBucket = {
            type = "string",
        },
    },
}

M.CallingNameStatus = {
    Unassigned = "Unassigned",
    UpdateInProgress = "UpdateInProgress",
    UpdateSucceeded = "UpdateSucceeded",
    UpdateFailed = "UpdateFailed",
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

M.ConversationRetentionSettings = {
    type = "structure",
    members = {
        RetentionDays = {
            type = "integer",
        },
    },
}

M.CreateAccountInput = {
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

M.CreateAccountOutput = {
    type = "structure",
    members = {
        Account = M.Account,
    },
}

M.CreateBotInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domain = {
            type = "string",
        },
    },
}

M.CreateBotOutput = {
    type = "structure",
    members = {
        Bot = M.Bot,
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

M.CreateMeetingDialOutInput = {
    type = "structure",
    members = {
        MeetingId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
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
        JoinToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMeetingDialOutOutput = {
    type = "structure",
    members = {
        TransactionId = {
            type = "string",
        },
    },
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
            member = { type = "string" },
            traits = {
                required = true,
            },
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

M.PhoneNumberOrderStatus = {
    Processing = "Processing",
    Successful = "Successful",
    Failed = "Failed",
    Partial = "Partial",
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
    },
}

M.CreatePhoneNumberOrderOutput = {
    type = "structure",
    members = {
        PhoneNumberOrder = M.PhoneNumberOrder,
    },
}

M.CreateRoomInput = {
    type = "structure",
    members = {
        AccountId = {
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
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.Room = {
    type = "structure",
    members = {
        RoomId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        CreatedBy = {
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

M.CreateRoomOutput = {
    type = "structure",
    members = {
        Room = M.Room,
    },
}

M.CreateRoomMembershipInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoomId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Role = {
            type = "string",
        },
    },
}

M.MemberType = {
    User = "User",
    Bot = "Bot",
    Webhook = "Webhook",
}

M.Member = {
    type = "structure",
    members = {
        MemberId = {
            type = "string",
        },
        MemberType = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        FullName = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
    },
}

M.RoomMembership = {
    type = "structure",
    members = {
        RoomId = {
            type = "string",
        },
        Member = M.Member,
        Role = {
            type = "string",
        },
        InvitedBy = {
            type = "string",
        },
        UpdatedTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreateRoomMembershipOutput = {
    type = "structure",
    members = {
        RoomMembership = M.RoomMembership,
    },
}

M.CreateUserInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Username = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        UserType = {
            type = "string",
        },
    },
}

M.InviteStatus = {
    Pending = "Pending",
    Accepted = "Accepted",
    Failed = "Failed",
}

M.RegistrationStatus = {
    Unregistered = "Unregistered",
    Registered = "Registered",
    Suspended = "Suspended",
}

M.User = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
        },
        PrimaryEmail = {
            type = "string",
        },
        PrimaryProvisionedNumber = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        LicenseType = {
            type = "string",
        },
        UserType = {
            type = "string",
        },
        UserRegistrationStatus = {
            type = "string",
        },
        UserInvitationStatus = {
            type = "string",
        },
        RegisteredOn = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        InvitedOn = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        AlexaForBusinessMetadata = M.AlexaForBusinessMetadata,
        PersonalPIN = {
            type = "string",
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    members = {
        User = M.User,
    },
}

M.DeleteAccountInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccountOutput = {
    type = "structure",
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

M.DeleteEventsConfigurationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteEventsConfigurationOutput = {
    type = "structure",
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

M.DeleteRoomInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoomId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRoomOutput = {
    type = "structure",
}

M.DeleteRoomMembershipInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoomId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRoomMembershipOutput = {
    type = "structure",
}

M.DisassociatePhoneNumberFromUserInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociatePhoneNumberFromUserOutput = {
    type = "structure",
}

M.DisassociateSigninDelegateGroupsFromAccountInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateSigninDelegateGroupsFromAccountOutput = {
    type = "structure",
}

M.EmailStatus = {
    NotSent = "NotSent",
    Sent = "Sent",
    Failed = "Failed",
}

M.EventsConfiguration = {
    type = "structure",
    members = {
        BotId = {
            type = "string",
        },
        OutboundEventsHTTPSEndpoint = {
            type = "string",
        },
        LambdaFunctionArn = {
            type = "string",
        },
    },
}

M.GetAccountInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccountOutput = {
    type = "structure",
    members = {
        Account = M.Account,
    },
}

M.GetAccountSettingsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccountSettingsOutput = {
    type = "structure",
    members = {
        AccountSettings = M.AccountSettings,
    },
}

M.GetBotInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBotOutput = {
    type = "structure",
    members = {
        Bot = M.Bot,
    },
}

M.GetEventsConfigurationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEventsConfigurationOutput = {
    type = "structure",
    members = {
        EventsConfiguration = M.EventsConfiguration,
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
        BusinessCalling = M.BusinessCallingSettings,
        VoiceConnector = M.VoiceConnectorSettings,
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
    AccountId = "AccountId",
    UserId = "UserId",
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
            traits = {
                timestamp_format = "date-time",
            },
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
    },
}

M.GetPhoneNumberOutput = {
    type = "structure",
    members = {
        PhoneNumber = M.PhoneNumber,
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
        PhoneNumberOrder = M.PhoneNumberOrder,
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
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetRetentionSettingsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RoomRetentionSettings = {
    type = "structure",
    members = {
        RetentionDays = {
            type = "integer",
        },
    },
}

M.RetentionSettings = {
    type = "structure",
    members = {
        RoomRetentionSettings = M.RoomRetentionSettings,
        ConversationRetentionSettings = M.ConversationRetentionSettings,
    },
}

M.GetRetentionSettingsOutput = {
    type = "structure",
    members = {
        RetentionSettings = M.RetentionSettings,
        InitiateDeletionTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetRoomInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoomId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetRoomOutput = {
    type = "structure",
    members = {
        Room = M.Room,
    },
}

M.GetUserInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetUserOutput = {
    type = "structure",
    members = {
        User = M.User,
    },
}

M.GetUserSettingsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TelephonySettings = {
    type = "structure",
    members = {
        InboundCalling = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        OutboundCalling = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        SMS = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UserSettings = {
    type = "structure",
    members = {
        Telephony = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelephonySettings }),
    },
}

M.GetUserSettingsOutput = {
    type = "structure",
    members = {
        UserSettings = M.UserSettings,
    },
}

M.Invite = {
    type = "structure",
    members = {
        InviteId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        EmailAddress = {
            type = "string",
        },
        EmailStatus = {
            type = "string",
        },
    },
}

M.InviteUsersInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserEmailList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        UserType = {
            type = "string",
        },
    },
}

M.InviteUsersOutput = {
    type = "structure",
    members = {
        Invites = {
            type = "list",
            member = M.Invite,
        },
    },
}

M.ListAccountsInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
        UserEmail = {
            type = "string",
            traits = {
                http_query = "user-email",
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

M.ListAccountsOutput = {
    type = "structure",
    members = {
        Accounts = {
            type = "list",
            member = M.Account,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBotsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.ListBotsOutput = {
    type = "structure",
    members = {
        Bots = {
            type = "list",
            member = M.Bot,
        },
        NextToken = {
            type = "string",
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
            type = "integer",
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
            member = M.PhoneNumberOrder,
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

M.ListRoomMembershipsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoomId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
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

M.ListRoomMembershipsOutput = {
    type = "structure",
    members = {
        RoomMemberships = {
            type = "list",
            member = M.RoomMembership,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRoomsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                http_query = "member-id",
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

M.ListRoomsOutput = {
    type = "structure",
    members = {
        Rooms = {
            type = "list",
            member = M.Room,
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
            member = { type = "string" },
        },
    },
}

M.ListSupportedPhoneNumberCountriesOutput = {
    type = "structure",
    members = {
        PhoneNumberCountries = {
            type = "list",
            member = M.PhoneNumberCountry,
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserEmail = {
            type = "string",
            traits = {
                http_query = "user-email",
            },
        },
        UserType = {
            type = "string",
            traits = {
                http_query = "user-type",
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

M.ListUsersOutput = {
    type = "structure",
    members = {
        Users = {
            type = "list",
            member = M.User,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.LogoutUserInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LogoutUserOutput = {
    type = "structure",
}

M.PutEventsConfigurationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OutboundEventsHTTPSEndpoint = {
            type = "string",
        },
        LambdaFunctionArn = {
            type = "string",
        },
    },
}

M.PutEventsConfigurationOutput = {
    type = "structure",
    members = {
        EventsConfiguration = M.EventsConfiguration,
    },
}

M.PutRetentionSettingsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RetentionSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetentionSettings }),
    },
}

M.PutRetentionSettingsOutput = {
    type = "structure",
    members = {
        RetentionSettings = M.RetentionSettings,
        InitiateDeletionTimestamp = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.RedactConversationMessageInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConversationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MessageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RedactConversationMessageOutput = {
    type = "structure",
}

M.RedactRoomMessageInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoomId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MessageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RedactRoomMessageOutput = {
    type = "structure",
}

M.RegenerateSecurityTokenInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RegenerateSecurityTokenOutput = {
    type = "structure",
    members = {
        Bot = M.Bot,
    },
}

M.ResetPersonalPINInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResetPersonalPINOutput = {
    type = "structure",
    members = {
        User = M.User,
    },
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
        PhoneNumber = M.PhoneNumber,
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

M.UpdateAccountInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        DefaultLicense = {
            type = "string",
        },
    },
}

M.UpdateAccountOutput = {
    type = "structure",
    members = {
        Account = M.Account,
    },
}

M.UpdateAccountSettingsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountSettings }),
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
}

M.UpdateBotInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        BotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Disabled = {
            type = "boolean",
        },
    },
}

M.UpdateBotOutput = {
    type = "structure",
    members = {
        Bot = M.Bot,
    },
}

M.UpdateGlobalSettingsInput = {
    type = "structure",
    members = {
        BusinessCalling = M.BusinessCallingSettings,
        VoiceConnector = M.VoiceConnectorSettings,
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
    },
}

M.UpdatePhoneNumberOutput = {
    type = "structure",
    members = {
        PhoneNumber = M.PhoneNumber,
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

M.UpdateRoomInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoomId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdateRoomOutput = {
    type = "structure",
    members = {
        Room = M.Room,
    },
}

M.UpdateRoomMembershipInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoomId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Role = {
            type = "string",
        },
    },
}

M.UpdateRoomMembershipOutput = {
    type = "structure",
    members = {
        RoomMembership = M.RoomMembership,
    },
}

M.UpdateUserInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LicenseType = {
            type = "string",
        },
        UserType = {
            type = "string",
        },
        AlexaForBusinessMetadata = M.AlexaForBusinessMetadata,
    },
}

M.UpdateUserOutput = {
    type = "structure",
    members = {
        User = M.User,
    },
}

M.UpdateUserSettingsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UserSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserSettings }),
    },
}

M.UpdateUserSettingsOutput = {
    type = "structure",
}

return M
