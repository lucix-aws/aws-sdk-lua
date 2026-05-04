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
    id = "SigninDelegateGroup",
    members = {
        GroupName = {
            type = "string",
        },
    },
}

M.Account = {
    type = "structure",
    id = "Account",
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
    id = "AccountSettings",
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
    id = "AlexaForBusinessMetadata",
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
    id = "AssociatePhoneNumberWithUserInput",
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
    id = "AssociatePhoneNumberWithUserOutput",
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

M.AssociateSigninDelegateGroupsWithAccountInput = {
    type = "structure",
    id = "AssociateSigninDelegateGroupsWithAccountInput",
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
    id = "AssociateSigninDelegateGroupsWithAccountOutput",
}

M.RoomMembershipRole = {
    Administrator = "Administrator",
    Member = "Member",
}

M.MembershipItem = {
    type = "structure",
    id = "MembershipItem",
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
    id = "BatchCreateRoomMembershipInput",
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
    id = "MemberError",
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
    id = "BatchCreateRoomMembershipOutput",
    members = {
        Errors = {
            type = "list",
            member = M.MemberError,
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

M.BatchSuspendUserInput = {
    type = "structure",
    id = "BatchSuspendUserInput",
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
    id = "UserError",
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
    id = "BatchSuspendUserOutput",
    members = {
        UserErrors = {
            type = "list",
            member = M.UserError,
        },
    },
}

M.BatchUnsuspendUserInput = {
    type = "structure",
    id = "BatchUnsuspendUserInput",
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
    id = "BatchUnsuspendUserOutput",
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

M.UserType = {
    PrivateUser = "PrivateUser",
    SharedDevice = "SharedDevice",
}

M.UpdateUserRequestItem = {
    type = "structure",
    id = "UpdateUserRequestItem",
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
    id = "BatchUpdateUserInput",
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
    id = "BatchUpdateUserOutput",
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
    id = "Bot",
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
    id = "BusinessCallingSettings",
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

M.ConversationRetentionSettings = {
    type = "structure",
    id = "ConversationRetentionSettings",
    members = {
        RetentionDays = {
            type = "integer",
        },
    },
}

M.CreateAccountInput = {
    type = "structure",
    id = "CreateAccountInput",
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
    id = "CreateAccountOutput",
    members = {
        Account = M.Account,
    },
}

M.CreateBotInput = {
    type = "structure",
    id = "CreateBotInput",
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
    id = "CreateBotOutput",
    members = {
        Bot = M.Bot,
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

M.CreateMeetingDialOutInput = {
    type = "structure",
    id = "CreateMeetingDialOutInput",
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
    id = "CreateMeetingDialOutOutput",
    members = {
        TransactionId = {
            type = "string",
        },
    },
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

M.PhoneNumberOrderStatus = {
    Processing = "Processing",
    Successful = "Successful",
    Failed = "Failed",
    Partial = "Partial",
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
    id = "CreatePhoneNumberOrderOutput",
    members = {
        PhoneNumberOrder = M.PhoneNumberOrder,
    },
}

M.CreateRoomInput = {
    type = "structure",
    id = "CreateRoomInput",
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
    id = "Room",
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
    id = "CreateRoomOutput",
    members = {
        Room = M.Room,
    },
}

M.CreateRoomMembershipInput = {
    type = "structure",
    id = "CreateRoomMembershipInput",
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
    id = "Member",
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
    id = "RoomMembership",
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
    id = "CreateRoomMembershipOutput",
    members = {
        RoomMembership = M.RoomMembership,
    },
}

M.CreateUserInput = {
    type = "structure",
    id = "CreateUserInput",
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
    id = "User",
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
    id = "CreateUserOutput",
    members = {
        User = M.User,
    },
}

M.DeleteAccountInput = {
    type = "structure",
    id = "DeleteAccountInput",
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
    id = "DeleteAccountOutput",
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

M.DeleteEventsConfigurationInput = {
    type = "structure",
    id = "DeleteEventsConfigurationInput",
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
    id = "DeleteEventsConfigurationOutput",
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

M.DeleteRoomInput = {
    type = "structure",
    id = "DeleteRoomInput",
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
    id = "DeleteRoomOutput",
}

M.DeleteRoomMembershipInput = {
    type = "structure",
    id = "DeleteRoomMembershipInput",
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
    id = "DeleteRoomMembershipOutput",
}

M.DisassociatePhoneNumberFromUserInput = {
    type = "structure",
    id = "DisassociatePhoneNumberFromUserInput",
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
    id = "DisassociatePhoneNumberFromUserOutput",
}

M.DisassociateSigninDelegateGroupsFromAccountInput = {
    type = "structure",
    id = "DisassociateSigninDelegateGroupsFromAccountInput",
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
    id = "DisassociateSigninDelegateGroupsFromAccountOutput",
}

M.EmailStatus = {
    NotSent = "NotSent",
    Sent = "Sent",
    Failed = "Failed",
}

M.EventsConfiguration = {
    type = "structure",
    id = "EventsConfiguration",
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
    id = "GetAccountInput",
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
    id = "GetAccountOutput",
    members = {
        Account = M.Account,
    },
}

M.GetAccountSettingsInput = {
    type = "structure",
    id = "GetAccountSettingsInput",
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
    id = "GetAccountSettingsOutput",
    members = {
        AccountSettings = M.AccountSettings,
    },
}

M.GetBotInput = {
    type = "structure",
    id = "GetBotInput",
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
    id = "GetBotOutput",
    members = {
        Bot = M.Bot,
    },
}

M.GetEventsConfigurationInput = {
    type = "structure",
    id = "GetEventsConfigurationInput",
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
    id = "GetEventsConfigurationOutput",
    members = {
        EventsConfiguration = M.EventsConfiguration,
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
        BusinessCalling = M.BusinessCallingSettings,
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
    AccountId = "AccountId",
    UserId = "UserId",
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

M.GetRetentionSettingsInput = {
    type = "structure",
    id = "GetRetentionSettingsInput",
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
    id = "RoomRetentionSettings",
    members = {
        RetentionDays = {
            type = "integer",
        },
    },
}

M.RetentionSettings = {
    type = "structure",
    id = "RetentionSettings",
    members = {
        RoomRetentionSettings = M.RoomRetentionSettings,
        ConversationRetentionSettings = M.ConversationRetentionSettings,
    },
}

M.GetRetentionSettingsOutput = {
    type = "structure",
    id = "GetRetentionSettingsOutput",
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
    id = "GetRoomInput",
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
    id = "GetRoomOutput",
    members = {
        Room = M.Room,
    },
}

M.GetUserInput = {
    type = "structure",
    id = "GetUserInput",
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
    id = "GetUserOutput",
    members = {
        User = M.User,
    },
}

M.GetUserSettingsInput = {
    type = "structure",
    id = "GetUserSettingsInput",
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
    id = "TelephonySettings",
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
    id = "UserSettings",
    members = {
        Telephony = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TelephonySettings }),
    },
}

M.GetUserSettingsOutput = {
    type = "structure",
    id = "GetUserSettingsOutput",
    members = {
        UserSettings = M.UserSettings,
    },
}

M.Invite = {
    type = "structure",
    id = "Invite",
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
    id = "InviteUsersInput",
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
    id = "InviteUsersOutput",
    members = {
        Invites = {
            type = "list",
            member = M.Invite,
        },
    },
}

M.ListAccountsInput = {
    type = "structure",
    id = "ListAccountsInput",
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
    id = "ListAccountsOutput",
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
    id = "ListBotsInput",
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
    id = "ListBotsOutput",
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

M.ListRoomMembershipsInput = {
    type = "structure",
    id = "ListRoomMembershipsInput",
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
    id = "ListRoomMembershipsOutput",
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
    id = "ListRoomsInput",
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
    id = "ListRoomsOutput",
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

M.ListUsersInput = {
    type = "structure",
    id = "ListUsersInput",
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
    id = "ListUsersOutput",
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
    id = "LogoutUserInput",
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
    id = "LogoutUserOutput",
}

M.PutEventsConfigurationInput = {
    type = "structure",
    id = "PutEventsConfigurationInput",
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
    id = "PutEventsConfigurationOutput",
    members = {
        EventsConfiguration = M.EventsConfiguration,
    },
}

M.PutRetentionSettingsInput = {
    type = "structure",
    id = "PutRetentionSettingsInput",
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
    id = "PutRetentionSettingsOutput",
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
    id = "RedactConversationMessageInput",
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
    id = "RedactConversationMessageOutput",
}

M.RedactRoomMessageInput = {
    type = "structure",
    id = "RedactRoomMessageInput",
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
    id = "RedactRoomMessageOutput",
}

M.RegenerateSecurityTokenInput = {
    type = "structure",
    id = "RegenerateSecurityTokenInput",
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
    id = "RegenerateSecurityTokenOutput",
    members = {
        Bot = M.Bot,
    },
}

M.ResetPersonalPINInput = {
    type = "structure",
    id = "ResetPersonalPINInput",
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
    id = "ResetPersonalPINOutput",
    members = {
        User = M.User,
    },
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

M.UpdateAccountInput = {
    type = "structure",
    id = "UpdateAccountInput",
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
    id = "UpdateAccountOutput",
    members = {
        Account = M.Account,
    },
}

M.UpdateAccountSettingsInput = {
    type = "structure",
    id = "UpdateAccountSettingsInput",
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
    id = "UpdateAccountSettingsOutput",
}

M.UpdateBotInput = {
    type = "structure",
    id = "UpdateBotInput",
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
    id = "UpdateBotOutput",
    members = {
        Bot = M.Bot,
    },
}

M.UpdateGlobalSettingsInput = {
    type = "structure",
    id = "UpdateGlobalSettingsInput",
    members = {
        BusinessCalling = M.BusinessCallingSettings,
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

M.UpdateRoomInput = {
    type = "structure",
    id = "UpdateRoomInput",
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
    id = "UpdateRoomOutput",
    members = {
        Room = M.Room,
    },
}

M.UpdateRoomMembershipInput = {
    type = "structure",
    id = "UpdateRoomMembershipInput",
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
    id = "UpdateRoomMembershipOutput",
    members = {
        RoomMembership = M.RoomMembership,
    },
}

M.UpdateUserInput = {
    type = "structure",
    id = "UpdateUserInput",
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
    id = "UpdateUserOutput",
    members = {
        User = M.User,
    },
}

M.UpdateUserSettingsInput = {
    type = "structure",
    id = "UpdateUserSettingsInput",
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
    id = "UpdateUserSettingsOutput",
}

return M
