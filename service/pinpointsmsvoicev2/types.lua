local M = {}

M.AccessDeniedExceptionReason = {
    INSUFFICIENT_ACCOUNT_REPUTATION = "INSUFFICIENT_ACCOUNT_REPUTATION",
    ACCOUNT_DISABLED = "ACCOUNT_DISABLED",
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.AccountAttributeName = {
    ACCOUNT_TIER = "ACCOUNT_TIER",
    DEFAULT_PROTECT_CONFIGURATION_ID = "DEFAULT_PROTECT_CONFIGURATION_ID",
}

M.AccountAttribute = {
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

M.AccountLimitName = {
    PHONE_NUMBERS = "PHONE_NUMBERS",
    POOLS = "POOLS",
    CONFIGURATION_SETS = "CONFIGURATION_SETS",
    OPT_OUT_LISTS = "OPT_OUT_LISTS",
    SENDER_IDS = "SENDER_IDS",
    REGISTRATIONS = "REGISTRATIONS",
    REGISTRATION_ATTACHMENTS = "REGISTRATION_ATTACHMENTS",
    VERIFIED_DESTINATION_NUMBERS = "VERIFIED_DESTINATION_NUMBERS",
}

M.AccountLimit = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Used = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Max = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateOriginationIdentityInput = {
    type = "structure",
    members = {
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.AssociateOriginationIdentityOutput = {
    type = "structure",
    members = {
        PoolArn = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        OriginationIdentityArn = {
            type = "string",
        },
        OriginationIdentity = {
            type = "string",
        },
        IsoCountryCode = {
            type = "string",
        },
    },
}

M.ConflictExceptionReason = {
    CREATE_REGISTRATION_VERSION_NOT_ALLOWED = "CREATE_REGISTRATION_VERSION_NOT_ALLOWED",
    DELETION_PROTECTION_ENABLED = "DELETION_PROTECTION_ENABLED",
    DESTINATION_PHONE_NUMBER_NOT_VERIFIED = "DESTINATION_PHONE_NUMBER_NOT_VERIFIED",
    DESTINATION_PHONE_NUMBER_OPTED_OUT = "DESTINATION_PHONE_NUMBER_OPTED_OUT",
    DISASSOCIATE_REGISTRATION_NOT_ALLOWED = "DISASSOCIATE_REGISTRATION_NOT_ALLOWED",
    DISCARD_REGISTRATION_VERSION_NOT_ALLOWED = "DISCARD_REGISTRATION_VERSION_NOT_ALLOWED",
    EDIT_REGISTRATION_FIELD_VALUES_NOT_ALLOWED = "EDIT_REGISTRATION_FIELD_VALUES_NOT_ALLOWED",
    EVENT_DESTINATION_MISMATCH = "EVENT_DESTINATION_MISMATCH",
    KEYWORD_MISMATCH = "KEYWORD_MISMATCH",
    LAST_PHONE_NUMBER = "LAST_PHONE_NUMBER",
    NUMBER_CAPABILITIES_MISMATCH = "NUMBER_CAPABILITIES_MISMATCH",
    MESSAGE_TYPE_MISMATCH = "MESSAGE_TYPE_MISMATCH",
    NO_ORIGINATION_IDENTITIES_FOUND = "NO_ORIGINATION_IDENTITIES_FOUND",
    OPT_OUT_LIST_MISMATCH = "OPT_OUT_LIST_MISMATCH",
    PHONE_NUMBER_ASSOCIATED_TO_POOL = "PHONE_NUMBER_ASSOCIATED_TO_POOL",
    PHONE_NUMBER_ASSOCIATED_TO_REGISTRATION = "PHONE_NUMBER_ASSOCIATED_TO_REGISTRATION",
    PHONE_NUMBER_NOT_ASSOCIATED_TO_POOL = "PHONE_NUMBER_NOT_ASSOCIATED_TO_POOL",
    PHONE_NUMBER_NOT_IN_REGISTRATION_REGION = "PHONE_NUMBER_NOT_IN_REGISTRATION_REGION",
    REGISTRATION_ALREADY_SUBMITTED = "REGISTRATION_ALREADY_SUBMITTED",
    REGISTRATION_NOT_COMPLETE = "REGISTRATION_NOT_COMPLETE",
    RESOURCE_ALREADY_ASSOCIATED = "RESOURCE_ALREADY_ASSOCIATED",
    SENDER_ID_ASSOCIATED_TO_POOL = "SENDER_ID_ASSOCIATED_TO_POOL",
    RCS_AGENT_ASSOCIATED_TO_POOL = "RCS_AGENT_ASSOCIATED_TO_POOL",
    POOL_ASSOCIATED_TO_NOTIFY_CONFIGURATION = "POOL_ASSOCIATED_TO_NOTIFY_CONFIGURATION",
    RESOURCE_ALREADY_EXISTS = "RESOURCE_ALREADY_EXISTS",
    RESOURCE_DELETION_NOT_ALLOWED = "RESOURCE_DELETION_NOT_ALLOWED",
    RESOURCE_MODIFICATION_NOT_ALLOWED = "RESOURCE_MODIFICATION_NOT_ALLOWED",
    RESOURCE_NOT_ACTIVE = "RESOURCE_NOT_ACTIVE",
    RESOURCE_NOT_EMPTY = "RESOURCE_NOT_EMPTY",
    SELF_MANAGED_OPT_OUTS_MISMATCH = "SELF_MANAGED_OPT_OUTS_MISMATCH",
    SUBMIT_REGISTRATION_VERSION_NOT_ALLOWED = "SUBMIT_REGISTRATION_VERSION_NOT_ALLOWED",
    TWO_WAY_CONFIG_MISMATCH = "TWO_WAY_CONFIG_MISMATCH",
    VERIFICATION_CODE_EXPIRED = "VERIFICATION_CODE_EXPIRED",
    VERIFICATION_ALREADY_COMPLETE = "VERIFICATION_ALREADY_COMPLETE",
    PROTECT_CONFIGURATION_IS_ACCOUNT_DEFAULT = "PROTECT_CONFIGURATION_IS_ACCOUNT_DEFAULT",
    PROTECT_CONFIGURATION_ASSOCIATED_WITH_CONFIGURATION_SET = "PROTECT_CONFIGURATION_ASSOCIATED_WITH_CONFIGURATION_SET",
    PROTECT_CONFIGURATION_NOT_ASSOCIATED_WITH_CONFIGURATION_SET = "PROTECT_CONFIGURATION_NOT_ASSOCIATED_WITH_CONFIGURATION_SET",
    DESTINATION_COUNTRY_BLOCKED_BY_PROTECT_CONFIGURATION = "DESTINATION_COUNTRY_BLOCKED_BY_PROTECT_CONFIGURATION",
    DESTINATION_PHONE_NUMBER_BLOCKED_BY_PROTECT_NUMBER_OVERRIDE = "DESTINATION_PHONE_NUMBER_BLOCKED_BY_PROTECT_NUMBER_OVERRIDE",
    RCS_AGENT_ALREADY_ASSOCIATED_TO_REGISTRATION_TYPE = "RCS_AGENT_ALREADY_ASSOCIATED_TO_REGISTRATION_TYPE",
    NOTIFY_CONFIGURATION_NOT_ACTIVE = "NOTIFY_CONFIGURATION_NOT_ACTIVE",
}

M.ResourceType = {
    ACCOUNT = "account",
    PHONE_NUMBER = "phone-number",
    SENDER_ID = "sender-id",
    POOL = "pool",
    CONFIGURATION_SET = "configuration-set",
    OPT_OUT_LIST = "opt-out-list",
    EVENT_DESTINATION = "event-destination",
    KEYWORD = "keyword",
    OPTED_OUT_NUMBER = "opted-out-number",
    REGISTRATION = "registration",
    REGISTRATION_ATTACHMENT = "registration-attachment",
    VERIFIED_DESTINATION_NUMBER = "verified-destination-number",
    PROTECT_CONFIGURATION = "protect-configuration",
    NOTIFY_CONFIGURATION = "notify-configuration",
    NOTIFY_TEMPLATE = "notify-template",
    MESSAGE_TEMPLATE = "message-template",
    POLICY = "policy",
    MESSAGE = "message",
    RCS_AGENT = "rcs-agent",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
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
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededExceptionReason = {
    ASSOCIATIONS_PER_REGISTRATION = "ASSOCIATIONS_PER_REGISTRATION",
    CONFIGURATION_SETS_PER_ACCOUNT = "CONFIGURATION_SETS_PER_ACCOUNT",
    DAILY_DESTINATION_CALL_LIMIT = "DAILY_DESTINATION_CALL_LIMIT",
    DAILY_NOTIFY_TIER_MESSAGE_LIMIT = "DAILY_NOTIFY_TIER_MESSAGE_LIMIT",
    EVENT_DESTINATIONS_PER_CONFIGURATION_SET = "EVENT_DESTINATIONS_PER_CONFIGURATION_SET",
    KEYWORDS_PER_PHONE_NUMBER = "KEYWORDS_PER_PHONE_NUMBER",
    KEYWORDS_PER_POOL = "KEYWORDS_PER_POOL",
    MONTHLY_SPEND_LIMIT_REACHED_FOR_MEDIA = "MONTHLY_SPEND_LIMIT_REACHED_FOR_MEDIA",
    MONTHLY_SPEND_LIMIT_REACHED_FOR_NOTIFY = "MONTHLY_SPEND_LIMIT_REACHED_FOR_NOTIFY",
    MONTHLY_SPEND_LIMIT_REACHED_FOR_TEXT = "MONTHLY_SPEND_LIMIT_REACHED_FOR_TEXT",
    MONTHLY_SPEND_LIMIT_REACHED_FOR_VOICE = "MONTHLY_SPEND_LIMIT_REACHED_FOR_VOICE",
    NOTIFY_CONFIGURATIONS_PER_ACCOUNT = "NOTIFY_CONFIGURATIONS_PER_ACCOUNT",
    OPT_OUT_LISTS_PER_ACCOUNT = "OPT_OUT_LISTS_PER_ACCOUNT",
    ORIGINATION_IDENTITIES_PER_POOL = "ORIGINATION_IDENTITIES_PER_POOL",
    PHONE_NUMBERS_PER_ACCOUNT = "PHONE_NUMBERS_PER_ACCOUNT",
    PHONE_NUMBERS_PER_REGISTRATION = "PHONE_NUMBERS_PER_REGISTRATION",
    POOLS_PER_ACCOUNT = "POOLS_PER_ACCOUNT",
    RCS_AGENTS_PER_ACCOUNT = "RCS_AGENTS_PER_ACCOUNT",
    REGISTRATION_ATTACHMENTS_CREATED_PER_DAY = "REGISTRATION_ATTACHMENTS_CREATED_PER_DAY",
    REGISTRATION_ATTACHMENTS_PER_ACCOUNT = "REGISTRATION_ATTACHMENTS_PER_ACCOUNT",
    REGISTRATION_VERSIONS_CREATED_PER_DAY = "REGISTRATION_VERSIONS_CREATED_PER_DAY",
    REGISTRATIONS_PER_ACCOUNT = "REGISTRATIONS_PER_ACCOUNT",
    SENDER_IDS_PER_ACCOUNT = "SENDER_IDS_PER_ACCOUNT",
    TAGS_PER_RESOURCE = "TAGS_PER_RESOURCE",
    VERIFIED_DESTINATION_NUMBERS_PER_ACCOUNT = "VERIFIED_DESTINATION_NUMBERS_PER_ACCOUNT",
    VERIFICATION_ATTEMPTS_PER_DAY = "VERIFICATION_ATTEMPTS_PER_DAY",
    PROTECT_CONFIGURATIONS_PER_ACCOUNT = "PROTECT_CONFIGURATIONS_PER_ACCOUNT",
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
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

M.ValidationExceptionField = {
    type = "structure",
    members = {
        Name = {
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
    },
}

M.ValidationExceptionReason = {
    CANNOT_ADD_OPTED_OUT_NUMBER = "CANNOT_ADD_OPTED_OUT_NUMBER",
    CANNOT_PARSE = "CANNOT_PARSE",
    CHANNEL_NOT_ENABLED = "CHANNEL_NOT_ENABLED",
    COUNTRY_CODE_MISMATCH = "COUNTRY_CODE_MISMATCH",
    COUNTRY_NOT_ENABLED = "COUNTRY_NOT_ENABLED",
    DESTINATION_COUNTRY_BLOCKED = "DESTINATION_COUNTRY_BLOCKED",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    ATTACHMENT_TYPE_NOT_SUPPORTED = "ATTACHMENT_TYPE_NOT_SUPPORTED",
    INTERNATIONAL_SENDING_NOT_SUPPORTED = "INTERNATIONAL_SENDING_NOT_SUPPORTED",
    INVALID_ARN = "INVALID_ARN",
    INVALID_FILTER_VALUES = "INVALID_FILTER_VALUES",
    INVALID_IDENTITY_FOR_DESTINATION_COUNTRY = "INVALID_IDENTITY_FOR_DESTINATION_COUNTRY",
    INVALID_NEXT_TOKEN = "INVALID_NEXT_TOKEN",
    INVALID_PARAMETER = "INVALID_PARAMETER",
    INVALID_REQUEST = "INVALID_REQUEST",
    INVALID_REGISTRATION_ASSOCIATION = "INVALID_REGISTRATION_ASSOCIATION",
    MAXIMUM_SIZE_EXCEEDED = "MAXIMUM_SIZE_EXCEEDED",
    MEDIA_TYPE_NOT_SUPPORTED = "MEDIA_TYPE_NOT_SUPPORTED",
    MISSING_PARAMETER = "MISSING_PARAMETER",
    PARAMETERS_CANNOT_BE_USED_TOGETHER = "PARAMETERS_CANNOT_BE_USED_TOGETHER",
    PHONE_NUMBER_CANNOT_BE_OPTED_IN = "PHONE_NUMBER_CANNOT_BE_OPTED_IN",
    PHONE_NUMBER_CANNOT_BE_RELEASED = "PHONE_NUMBER_CANNOT_BE_RELEASED",
    PRICE_OVER_THRESHOLD = "PRICE_OVER_THRESHOLD",
    RESOURCE_NOT_ACCESSIBLE = "RESOURCE_NOT_ACCESSIBLE",
    REQUESTED_SPEND_LIMIT_HIGHER_THAN_SERVICE_LIMIT = "REQUESTED_SPEND_LIMIT_HIGHER_THAN_SERVICE_LIMIT",
    SENDER_ID_NOT_REGISTERED = "SENDER_ID_NOT_REGISTERED",
    SENDER_ID_NOT_SUPPORTED = "SENDER_ID_NOT_SUPPORTED",
    SENDER_ID_REQUIRES_REGISTRATION = "SENDER_ID_REQUIRES_REGISTRATION",
    TWO_WAY_TOPIC_NOT_PRESENT = "TWO_WAY_TOPIC_NOT_PRESENT",
    TWO_WAY_NOT_ENABLED = "TWO_WAY_NOT_ENABLED",
    TWO_WAY_NOT_SUPPORTED_IN_COUNTRY = "TWO_WAY_NOT_SUPPORTED_IN_COUNTRY",
    TWO_WAY_NOT_SUPPORTED_IN_REGION = "TWO_WAY_NOT_SUPPORTED_IN_REGION",
    TWO_WAY_CHANNEL_NOT_PRESENT = "TWO_WAY_CHANNEL_NOT_PRESENT",
    UNKNOWN_REGISTRATION_FIELD = "UNKNOWN_REGISTRATION_FIELD",
    UNKNOWN_REGISTRATION_SECTION = "UNKNOWN_REGISTRATION_SECTION",
    UNKNOWN_REGISTRATION_TYPE = "UNKNOWN_REGISTRATION_TYPE",
    UNKNOWN_REGISTRATION_VERSION = "UNKNOWN_REGISTRATION_VERSION",
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    REGISTRATION_FIELD_CANNOT_BE_DELETED = "REGISTRATION_FIELD_CANNOT_BE_DELETED",
    VERIFICATION_CODE_MISMATCH = "VERIFICATION_CODE_MISMATCH",
    VOICE_CAPABILITY_NOT_AVAILABLE = "VOICE_CAPABILITY_NOT_AVAILABLE",
    UNSPECIFIED_PARAMETER_NOT_SUPPORTED = "UNSPECIFIED_PARAMETER_NOT_SUPPORTED",
    OTHER = "OTHER",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Fields = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssociateProtectConfigurationInput = {
    type = "structure",
    members = {
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateProtectConfigurationOutput = {
    type = "structure",
    members = {
        ConfigurationSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachmentStatus = {
    UPLOAD_IN_PROGRESS = "UPLOAD_IN_PROGRESS",
    UPLOAD_COMPLETE = "UPLOAD_COMPLETE",
    UPLOAD_FAILED = "UPLOAD_FAILED",
    DELETED = "DELETED",
}

M.AttachmentUploadErrorReason = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.CarrierLookupInput = {
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

M.PhoneNumberType = {
    MOBILE = "MOBILE",
    LANDLINE = "LANDLINE",
    OTHER = "OTHER",
    INVALID = "INVALID",
}

M.CarrierLookupOutput = {
    type = "structure",
    members = {
        E164PhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DialingCountryCode = {
            type = "string",
        },
        IsoCountryCode = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        MCC = {
            type = "string",
        },
        MNC = {
            type = "string",
        },
        Carrier = {
            type = "string",
        },
        PhoneNumberType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CarrierStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    REJECTED = "REJECTED",
}

M.CarrierStatusInformation = {
    type = "structure",
    members = {
        CarrierName = {
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

M.CloudWatchLogsDestination = {
    type = "structure",
    members = {
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurationSetFilterName = {
    EVENT_DESTINATION_NAME = "event-destination-name",
    MATCHING_EVENT_TYPES = "matching-event-types",
    DEFAULT_MESSAGE_TYPE = "default-message-type",
    DEFAULT_SENDER_ID = "default-sender-id",
    DEFAULT_MESSAGE_FEEDBACK_ENABLED = "default-message-feedback-enabled",
    PROTECT_CONFIGURATION_ID = "protect-configuration-id",
}

M.ConfigurationSetFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MessageType = {
    TRANSACTIONAL = "TRANSACTIONAL",
    PROMOTIONAL = "PROMOTIONAL",
}

M.KinesisFirehoseDestination = {
    type = "structure",
    members = {
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeliveryStreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventType = {
    ALL = "ALL",
    TEXT_ALL = "TEXT_ALL",
    TEXT_SENT = "TEXT_SENT",
    TEXT_PENDING = "TEXT_PENDING",
    TEXT_QUEUED = "TEXT_QUEUED",
    TEXT_SUCCESSFUL = "TEXT_SUCCESSFUL",
    TEXT_DELIVERED = "TEXT_DELIVERED",
    TEXT_INVALID = "TEXT_INVALID",
    TEXT_INVALID_MESSAGE = "TEXT_INVALID_MESSAGE",
    TEXT_UNREACHABLE = "TEXT_UNREACHABLE",
    TEXT_CARRIER_UNREACHABLE = "TEXT_CARRIER_UNREACHABLE",
    TEXT_BLOCKED = "TEXT_BLOCKED",
    TEXT_CARRIER_BLOCKED = "TEXT_CARRIER_BLOCKED",
    TEXT_SPAM = "TEXT_SPAM",
    TEXT_UNKNOWN = "TEXT_UNKNOWN",
    TEXT_TTL_EXPIRED = "TEXT_TTL_EXPIRED",
    TEXT_PROTECT_BLOCKED = "TEXT_PROTECT_BLOCKED",
    VOICE_ALL = "VOICE_ALL",
    VOICE_INITIATED = "VOICE_INITIATED",
    VOICE_RINGING = "VOICE_RINGING",
    VOICE_ANSWERED = "VOICE_ANSWERED",
    VOICE_COMPLETED = "VOICE_COMPLETED",
    VOICE_BUSY = "VOICE_BUSY",
    VOICE_NO_ANSWER = "VOICE_NO_ANSWER",
    VOICE_FAILED = "VOICE_FAILED",
    VOICE_TTL_EXPIRED = "VOICE_TTL_EXPIRED",
    MEDIA_ALL = "MEDIA_ALL",
    MEDIA_PENDING = "MEDIA_PENDING",
    MEDIA_QUEUED = "MEDIA_QUEUED",
    MEDIA_SUCCESSFUL = "MEDIA_SUCCESSFUL",
    MEDIA_DELIVERED = "MEDIA_DELIVERED",
    MEDIA_INVALID = "MEDIA_INVALID",
    MEDIA_INVALID_MESSAGE = "MEDIA_INVALID_MESSAGE",
    MEDIA_UNREACHABLE = "MEDIA_UNREACHABLE",
    MEDIA_CARRIER_UNREACHABLE = "MEDIA_CARRIER_UNREACHABLE",
    MEDIA_BLOCKED = "MEDIA_BLOCKED",
    MEDIA_CARRIER_BLOCKED = "MEDIA_CARRIER_BLOCKED",
    MEDIA_SPAM = "MEDIA_SPAM",
    MEDIA_UNKNOWN = "MEDIA_UNKNOWN",
    MEDIA_TTL_EXPIRED = "MEDIA_TTL_EXPIRED",
    MEDIA_FILE_INACCESSIBLE = "MEDIA_FILE_INACCESSIBLE",
    MEDIA_FILE_TYPE_UNSUPPORTED = "MEDIA_FILE_TYPE_UNSUPPORTED",
    MEDIA_FILE_SIZE_EXCEEDED = "MEDIA_FILE_SIZE_EXCEEDED",
}

M.SnsDestination = {
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

M.EventDestination = {
    type = "structure",
    members = {
        EventDestinationName = {
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
        MatchingEventTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        CloudWatchLogsDestination = {
            type = "structure",
        },
        KinesisFirehoseDestination = {
            type = "structure",
        },
        SnsDestination = {
            type = "structure",
        },
    },
}

M.ConfigurationSetInformation = {
    type = "structure",
    members = {
        ConfigurationSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventDestinations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DefaultMessageType = {
            type = "string",
        },
        DefaultSenderId = {
            type = "string",
        },
        DefaultMessageFeedbackEnabled = {
            type = "boolean",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationId = {
            type = "string",
        },
    },
}

M.CountryLaunchStatus = {
    CREATED = "CREATED",
    PENDING = "PENDING",
    PARTIAL = "PARTIAL",
    ACTIVE = "ACTIVE",
    REJECTED = "REJECTED",
}

M.CountryLaunchStatusFilterName = {
    COUNTRY_LAUNCH_STATUS = "country-launch-status",
}

M.CountryLaunchStatusFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CountryLaunchStatusInformation = {
    type = "structure",
    members = {
        IsoCountryCode = {
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
        RcsPlatformId = {
            type = "string",
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CarrierStatus = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
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

M.CreateConfigurationSetInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateConfigurationSetOutput = {
    type = "structure",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateEventDestinationInput = {
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
        MatchingEventTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        CloudWatchLogsDestination = {
            type = "structure",
        },
        KinesisFirehoseDestination = {
            type = "structure",
        },
        SnsDestination = {
            type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateEventDestinationOutput = {
    type = "structure",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        EventDestination = {
            type = "structure",
        },
    },
}

M.NumberCapability = {
    SMS = "SMS",
    VOICE = "VOICE",
    MMS = "MMS",
    RCS = "RCS",
}

M.NotifyConfigurationUseCase = {
    CODE_VERIFICATION = "CODE_VERIFICATION",
}

M.CreateNotifyConfigurationInput = {
    type = "structure",
    members = {
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseCase = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultTemplateId = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        EnabledCountries = {
            type = "list",
            member_type = "string",
        },
        EnabledChannels = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NotifyConfigurationStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    REJECTED = "REJECTED",
    REQUIRES_VERIFICATION = "REQUIRES_VERIFICATION",
}

M.NotifyConfigurationTier = {
    BASIC = "BASIC",
    ADVANCED = "ADVANCED",
}

M.TierUpgradeStatus = {
    BASIC = "BASIC",
    PENDING_UPGRADE = "PENDING_UPGRADE",
    ADVANCED = "ADVANCED",
    REJECTED = "REJECTED",
}

M.CreateNotifyConfigurationOutput = {
    type = "structure",
    members = {
        NotifyConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotifyConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseCase = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultTemplateId = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        EnabledCountries = {
            type = "list",
            member_type = "string",
        },
        EnabledChannels = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TierUpgradeStatus = {
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
        RejectionReason = {
            type = "string",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateOptOutListInput = {
    type = "structure",
    members = {
        OptOutListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateOptOutListOutput = {
    type = "structure",
    members = {
        OptOutListArn = {
            type = "string",
        },
        OptOutListName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreatePoolInput = {
    type = "structure",
    members = {
        OriginationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
        },
        MessageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.PoolStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.CreatePoolOutput = {
    type = "structure",
    members = {
        PoolArn = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        MessageType = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
        },
        OptOutListName = {
            type = "string",
        },
        SharedRoutesEnabled = {
            type = "boolean",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateProtectConfigurationInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateProtectConfigurationOutput = {
    type = "structure",
    members = {
        ProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationId = {
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
        AccountDefault = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
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

M.CreateRcsAgentInput = {
    type = "structure",
    members = {
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        OptOutListName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.RcsAgentStatus = {
    CREATED = "CREATED",
    PENDING = "PENDING",
    TESTING = "TESTING",
    PARTIAL = "PARTIAL",
    ACTIVE = "ACTIVE",
    DELETED = "DELETED",
}

M.CreateRcsAgentOutput = {
    type = "structure",
    members = {
        RcsAgentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RcsAgentId = {
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
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        OptOutListName = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
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

M.CreateRegistrationInput = {
    type = "structure",
    members = {
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.RegistrationStatus = {
    CREATED = "CREATED",
    SUBMITTED = "SUBMITTED",
    AWS_REVIEWING = "AWS_REVIEWING",
    REVIEWING = "REVIEWING",
    REQUIRES_AUTHENTICATION = "REQUIRES_AUTHENTICATION",
    PROVISIONING = "PROVISIONING",
    COMPLETE = "COMPLETE",
    REQUIRES_UPDATES = "REQUIRES_UPDATES",
    CLOSED = "CLOSED",
    DELETED = "DELETED",
}

M.CreateRegistrationOutput = {
    type = "structure",
    members = {
        RegistrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentVersionNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        AdditionalAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRegistrationAssociationInput = {
    type = "structure",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRegistrationAssociationOutput = {
    type = "structure",
    members = {
        RegistrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
    },
}

M.CreateRegistrationAttachmentInput = {
    type = "structure",
    members = {
        AttachmentBody = {
            type = "blob",
        },
        AttachmentUrl = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateRegistrationAttachmentOutput = {
    type = "structure",
    members = {
        RegistrationAttachmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationAttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttachmentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRegistrationVersionInput = {
    type = "structure",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegistrationVersionStatus = {
    DRAFT = "DRAFT",
    SUBMITTED = "SUBMITTED",
    AWS_REVIEWING = "AWS_REVIEWING",
    REVIEWING = "REVIEWING",
    REQUIRES_AUTHENTICATION = "REQUIRES_AUTHENTICATION",
    APPROVED = "APPROVED",
    DISCARDED = "DISCARDED",
    DENIED = "DENIED",
    REVOKED = "REVOKED",
    ARCHIVED = "ARCHIVED",
    REQUIRES_OFFLINE_REVIEW = "REQUIRES_OFFLINE_REVIEW",
}

M.RegistrationVersionStatusHistory = {
    type = "structure",
    members = {
        DraftTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        SubmittedTimestamp = {
            type = "timestamp",
        },
        AwsReviewingTimestamp = {
            type = "timestamp",
        },
        ReviewingTimestamp = {
            type = "timestamp",
        },
        RequiresAuthenticationTimestamp = {
            type = "timestamp",
        },
        ApprovedTimestamp = {
            type = "timestamp",
        },
        DiscardedTimestamp = {
            type = "timestamp",
        },
        DeniedTimestamp = {
            type = "timestamp",
        },
        RevokedTimestamp = {
            type = "timestamp",
        },
        ArchivedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateRegistrationVersionOutput = {
    type = "structure",
    members = {
        RegistrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        RegistrationVersionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationVersionStatusHistory = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVerifiedDestinationNumberInput = {
    type = "structure",
    members = {
        DestinationPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RcsAgentId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.VerificationStatus = {
    PENDING = "PENDING",
    VERIFIED = "VERIFIED",
    UNSUPPORTED = "UNSUPPORTED",
}

M.CreateVerifiedDestinationNumberOutput = {
    type = "structure",
    members = {
        VerifiedDestinationNumberArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerifiedDestinationNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPhoneNumber = {
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
        RcsAgentId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAccountDefaultProtectConfigurationInput = {
    type = "structure",
}

M.DeleteAccountDefaultProtectConfigurationOutput = {
    type = "structure",
    members = {
        DefaultProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
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
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        EventDestinations = {
            type = "list",
            member_type = "structure",
        },
        DefaultMessageType = {
            type = "string",
        },
        DefaultSenderId = {
            type = "string",
        },
        DefaultMessageFeedbackEnabled = {
            type = "boolean",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.DeleteDefaultMessageTypeInput = {
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

M.DeleteDefaultMessageTypeOutput = {
    type = "structure",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        MessageType = {
            type = "string",
        },
    },
}

M.DeleteDefaultSenderIdInput = {
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

M.DeleteDefaultSenderIdOutput = {
    type = "structure",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        SenderId = {
            type = "string",
        },
    },
}

M.DeleteEventDestinationInput = {
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

M.DeleteEventDestinationOutput = {
    type = "structure",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        EventDestination = {
            type = "structure",
        },
    },
}

M.DeleteKeywordInput = {
    type = "structure",
    members = {
        OriginationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keyword = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KeywordAction = {
    AUTOMATIC_RESPONSE = "AUTOMATIC_RESPONSE",
    OPT_OUT = "OPT_OUT",
    OPT_IN = "OPT_IN",
}

M.DeleteKeywordOutput = {
    type = "structure",
    members = {
        OriginationIdentityArn = {
            type = "string",
        },
        OriginationIdentity = {
            type = "string",
        },
        Keyword = {
            type = "string",
        },
        KeywordMessage = {
            type = "string",
        },
        KeywordAction = {
            type = "string",
        },
    },
}

M.DeleteMediaMessageSpendLimitOverrideInput = {
    type = "structure",
}

M.DeleteMediaMessageSpendLimitOverrideOutput = {
    type = "structure",
    members = {
        MonthlyLimit = {
            type = "number",
        },
    },
}

M.DeleteNotifyConfigurationInput = {
    type = "structure",
    members = {
        NotifyConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNotifyConfigurationOutput = {
    type = "structure",
    members = {
        NotifyConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotifyConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseCase = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultTemplateId = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        EnabledCountries = {
            type = "list",
            member_type = "string",
        },
        EnabledChannels = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TierUpgradeStatus = {
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
        RejectionReason = {
            type = "string",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
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

M.DeleteNotifyMessageSpendLimitOverrideInput = {
    type = "structure",
}

M.DeleteNotifyMessageSpendLimitOverrideOutput = {
    type = "structure",
    members = {
        MonthlyLimit = {
            type = "number",
        },
    },
}

M.DeleteOptedOutNumberInput = {
    type = "structure",
    members = {
        OptOutListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptedOutNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOptedOutNumberOutput = {
    type = "structure",
    members = {
        OptOutListArn = {
            type = "string",
        },
        OptOutListName = {
            type = "string",
        },
        OptedOutNumber = {
            type = "string",
        },
        OptedOutTimestamp = {
            type = "timestamp",
        },
        EndUserOptedOut = {
            type = "boolean",
        },
    },
}

M.DeleteOptOutListInput = {
    type = "structure",
    members = {
        OptOutListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOptOutListOutput = {
    type = "structure",
    members = {
        OptOutListArn = {
            type = "string",
        },
        OptOutListName = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.DeletePoolInput = {
    type = "structure",
    members = {
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePoolOutput = {
    type = "structure",
    members = {
        PoolArn = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        MessageType = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
        },
        OptOutListName = {
            type = "string",
        },
        SharedRoutesEnabled = {
            type = "boolean",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.DeleteProtectConfigurationInput = {
    type = "structure",
    members = {
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProtectConfigurationOutput = {
    type = "structure",
    members = {
        ProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationId = {
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
        AccountDefault = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProtectConfigurationRuleSetNumberOverrideInput = {
    type = "structure",
    members = {
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectConfigurationRuleOverrideAction = {
    ALLOW = "ALLOW",
    BLOCK = "BLOCK",
}

M.DeleteProtectConfigurationRuleSetNumberOverrideOutput = {
    type = "structure",
    members = {
        ProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPhoneNumber = {
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
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
        },
        ExpirationTimestamp = {
            type = "timestamp",
        },
    },
}

M.DeleteRcsAgentInput = {
    type = "structure",
    members = {
        RcsAgentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRcsAgentOutput = {
    type = "structure",
    members = {
        RcsAgentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RcsAgentId = {
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
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        OptOutListName = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRegistrationInput = {
    type = "structure",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRegistrationOutput = {
    type = "structure",
    members = {
        RegistrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentVersionNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ApprovedVersionNumber = {
            type = "number",
        },
        LatestDeniedVersionNumber = {
            type = "number",
        },
        AdditionalAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRegistrationAttachmentInput = {
    type = "structure",
    members = {
        RegistrationAttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRegistrationAttachmentOutput = {
    type = "structure",
    members = {
        RegistrationAttachmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationAttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttachmentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttachmentUploadErrorReason = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRegistrationFieldValueInput = {
    type = "structure",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRegistrationFieldValueOutput = {
    type = "structure",
    members = {
        RegistrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        FieldPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectChoices = {
            type = "list",
            member_type = "string",
        },
        TextValue = {
            type = "string",
        },
        RegistrationAttachmentId = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
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

M.DeleteResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.DeleteTextMessageSpendLimitOverrideInput = {
    type = "structure",
}

M.DeleteTextMessageSpendLimitOverrideOutput = {
    type = "structure",
    members = {
        MonthlyLimit = {
            type = "number",
        },
    },
}

M.DeleteVerifiedDestinationNumberInput = {
    type = "structure",
    members = {
        VerifiedDestinationNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVerifiedDestinationNumberOutput = {
    type = "structure",
    members = {
        VerifiedDestinationNumberArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerifiedDestinationNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPhoneNumber = {
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

M.DeleteVoiceMessageSpendLimitOverrideInput = {
    type = "structure",
}

M.DeleteVoiceMessageSpendLimitOverrideOutput = {
    type = "structure",
    members = {
        MonthlyLimit = {
            type = "number",
        },
    },
}

M.DescribeAccountAttributesInput = {
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

M.DescribeAccountAttributesOutput = {
    type = "structure",
    members = {
        AccountAttributes = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAccountLimitsInput = {
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

M.DescribeAccountLimitsOutput = {
    type = "structure",
    members = {
        AccountLimits = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigurationSetsInput = {
    type = "structure",
    members = {
        ConfigurationSetNames = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.DescribeConfigurationSetsOutput = {
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

M.KeywordFilterName = {
    KEYWORD_ACTION = "keyword-action",
}

M.KeywordFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeKeywordsInput = {
    type = "structure",
    members = {
        OriginationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keywords = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.KeywordInformation = {
    type = "structure",
    members = {
        Keyword = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeywordMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeywordAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeKeywordsOutput = {
    type = "structure",
    members = {
        OriginationIdentityArn = {
            type = "string",
        },
        OriginationIdentity = {
            type = "string",
        },
        Keywords = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.NotifyConfigurationFilterName = {
    DISPLAY_NAME = "display-name",
    ENABLED_COUNTRIES = "enabled-countries",
    ENABLED_CHANNELS = "enabled-channels",
    DEFAULT_TEMPLATE = "default-template",
    DEFAULT_POOL = "default-pool",
    USE_CASE = "use-case",
    STATUS = "status",
    DELETION_PROTECTION_ENABLED = "deletion-protection-enabled",
    TIER_UPGRADE_STATUS = "tier-upgrade-status",
}

M.NotifyConfigurationFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeNotifyConfigurationsInput = {
    type = "structure",
    members = {
        NotifyConfigurationIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.NotifyConfigurationInformation = {
    type = "structure",
    members = {
        NotifyConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotifyConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseCase = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultTemplateId = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        EnabledCountries = {
            type = "list",
            member_type = "string",
        },
        EnabledChannels = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TierUpgradeStatus = {
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
        RejectionReason = {
            type = "string",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
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

M.DescribeNotifyConfigurationsOutput = {
    type = "structure",
    members = {
        NotifyConfigurations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.NotifyTemplateFilterName = {
    TEMPLATE_TYPE = "template-type",
    CHANNELS = "channels",
    TIER_ACCESS = "tier-access",
    SUPPORTED_COUNTRIES = "supported-countries",
    LANGUAGE_CODE = "language-code",
    SUPPORTED_VOICE_IDS = "supported-voice-ids",
}

M.NotifyTemplateFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeNotifyTemplatesInput = {
    type = "structure",
    members = {
        TemplateIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.NotifyTemplateStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.VoiceId = {
    AMY = "AMY",
    ASTRID = "ASTRID",
    BIANCA = "BIANCA",
    BRIAN = "BRIAN",
    CAMILA = "CAMILA",
    CARLA = "CARLA",
    CARMEN = "CARMEN",
    CELINE = "CELINE",
    CHANTAL = "CHANTAL",
    CONCHITA = "CONCHITA",
    CRISTIANO = "CRISTIANO",
    DORA = "DORA",
    EMMA = "EMMA",
    ENRIQUE = "ENRIQUE",
    EWA = "EWA",
    FILIZ = "FILIZ",
    GERAINT = "GERAINT",
    GIORGIO = "GIORGIO",
    GWYNETH = "GWYNETH",
    HANS = "HANS",
    INES = "INES",
    IVY = "IVY",
    JACEK = "JACEK",
    JAN = "JAN",
    JOANNA = "JOANNA",
    JOEY = "JOEY",
    JUSTIN = "JUSTIN",
    KARL = "KARL",
    KENDRA = "KENDRA",
    KIMBERLY = "KIMBERLY",
    LEA = "LEA",
    LIV = "LIV",
    LOTTE = "LOTTE",
    LUCIA = "LUCIA",
    LUPE = "LUPE",
    MADS = "MADS",
    MAJA = "MAJA",
    MARLENE = "MARLENE",
    MATHIEU = "MATHIEU",
    MATTHEW = "MATTHEW",
    MAXIM = "MAXIM",
    MIA = "MIA",
    MIGUEL = "MIGUEL",
    MIZUKI = "MIZUKI",
    NAJA = "NAJA",
    NICOLE = "NICOLE",
    PENELOPE = "PENELOPE",
    RAVEENA = "RAVEENA",
    RICARDO = "RICARDO",
    RUBEN = "RUBEN",
    RUSSELL = "RUSSELL",
    SALLI = "SALLI",
    SEOYEON = "SEOYEON",
    TAKUMI = "TAKUMI",
    TATYANA = "TATYANA",
    VICKI = "VICKI",
    VITORIA = "VITORIA",
    ZEINA = "ZEINA",
    ZHIYU = "ZHIYU",
}

M.NotifyTemplateType = {
    OTP_VERIFICATION = "OTP_VERIFICATION",
}

M.TemplateVariableSource = {
    CUSTOMER = "CUSTOMER",
    SYSTEM = "SYSTEM",
}

M.TemplateVariableType = {
    STRING = "STRING",
    INTEGER = "INTEGER",
    BOOLEAN = "BOOLEAN",
}

M.TemplateVariableMetadata = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Required = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        MaxLength = {
            type = "number",
        },
        MinValue = {
            type = "number",
        },
        MaxValue = {
            type = "number",
        },
        DefaultValue = {
            type = "string",
        },
        Pattern = {
            type = "string",
        },
        Sample = {
            type = "string",
        },
        Source = {
            type = "string",
        },
    },
}

M.NotifyTemplateInformation = {
    type = "structure",
    members = {
        TemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "number",
            traits = {
                required = true,
            },
        },
        TemplateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Channels = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        TierAccess = {
            type = "list",
            member_type = "string",
        },
        Status = {
            type = "string",
        },
        SupportedCountries = {
            type = "list",
            member_type = "string",
        },
        LanguageCode = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Variables = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        SupportedVoiceIds = {
            type = "list",
            member_type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeNotifyTemplatesOutput = {
    type = "structure",
    members = {
        NotifyTemplates = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OptedOutFilterName = {
    END_USER_OPTED_OUT = "end-user-opted-out",
}

M.OptedOutFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeOptedOutNumbersInput = {
    type = "structure",
    members = {
        OptOutListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptedOutNumbers = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.OptedOutNumberInformation = {
    type = "structure",
    members = {
        OptedOutNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptedOutTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndUserOptedOut = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeOptedOutNumbersOutput = {
    type = "structure",
    members = {
        OptOutListArn = {
            type = "string",
        },
        OptOutListName = {
            type = "string",
        },
        OptedOutNumbers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Owner = {
    SELF = "SELF",
    SHARED = "SHARED",
}

M.DescribeOptOutListsInput = {
    type = "structure",
    members = {
        OptOutListNames = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Owner = {
            type = "string",
        },
    },
}

M.OptOutListInformation = {
    type = "structure",
    members = {
        OptOutListArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptOutListName = {
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

M.DescribeOptOutListsOutput = {
    type = "structure",
    members = {
        OptOutLists = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PhoneNumberFilterName = {
    STATUS = "status",
    ISO_COUNTRY_CODE = "iso-country-code",
    MESSAGE_TYPE = "message-type",
    NUMBER_CAPABILITY = "number-capability",
    NUMBER_TYPE = "number-type",
    TWO_WAY_ENABLED = "two-way-enabled",
    SELF_MANAGED_OPT_OUTS_ENABLED = "self-managed-opt-outs-enabled",
    OPT_OUT_LIST_NAME = "opt-out-list-name",
    DELETION_PROTECTION_ENABLED = "deletion-protection-enabled",
    TWO_WAY_CHANNEL_ARN = "two-way-channel-arn",
}

M.PhoneNumberFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePhoneNumbersInput = {
    type = "structure",
    members = {
        PhoneNumberIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Owner = {
            type = "string",
        },
    },
}

M.NumberType = {
    SHORT_CODE = "SHORT_CODE",
    LONG_CODE = "LONG_CODE",
    TOLL_FREE = "TOLL_FREE",
    TEN_DLC = "TEN_DLC",
    SIMULATOR = "SIMULATOR",
}

M.NumberStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    ASSOCIATING = "ASSOCIATING",
    DISASSOCIATING = "DISASSOCIATING",
    DELETED = "DELETED",
}

M.PhoneNumberInformation = {
    type = "structure",
    members = {
        PhoneNumberArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhoneNumberId = {
            type = "string",
        },
        PhoneNumber = {
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
        IsoCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberCapabilities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        NumberType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MonthlyLeasingPrice = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TwoWayEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        OptOutListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InternationalSendingEnabled = {
            type = "boolean",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        PoolId = {
            type = "string",
        },
        RegistrationId = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePhoneNumbersOutput = {
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

M.PoolFilterName = {
    STATUS = "status",
    MESSAGE_TYPE = "message-type",
    TWO_WAY_ENABLED = "two-way-enabled",
    SELF_MANAGED_OPT_OUTS_ENABLED = "self-managed-opt-outs-enabled",
    OPT_OUT_LIST_NAME = "opt-out-list-name",
    SHARED_ROUTES_ENABLED = "shared-routes-enabled",
    DELETION_PROTECTION_ENABLED = "deletion-protection-enabled",
    TWO_WAY_CHANNEL_ARN = "two-way-channel-arn",
}

M.PoolFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePoolsInput = {
    type = "structure",
    members = {
        PoolIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Owner = {
            type = "string",
        },
    },
}

M.PoolInformation = {
    type = "structure",
    members = {
        PoolArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PoolId = {
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
        MessageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TwoWayEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        OptOutListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SharedRoutesEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
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

M.DescribePoolsOutput = {
    type = "structure",
    members = {
        Pools = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ProtectConfigurationFilterName = {
    ACCOUNT_DEFAULT = "account-default",
    DELETION_PROTECTION_ENABLED = "deletion-protection-enabled",
}

M.ProtectConfigurationFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeProtectConfigurationsInput = {
    type = "structure",
    members = {
        ProtectConfigurationIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ProtectConfigurationInformation = {
    type = "structure",
    members = {
        ProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationId = {
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
        AccountDefault = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeProtectConfigurationsOutput = {
    type = "structure",
    members = {
        ProtectConfigurations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRcsAgentCountryLaunchStatusInput = {
    type = "structure",
    members = {
        RcsAgentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCodes = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRcsAgentCountryLaunchStatusOutput = {
    type = "structure",
    members = {
        RcsAgentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RcsAgentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CountryLaunchStatus = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RcsAgentFilterName = {
    STATUS = "status",
    TWO_WAY_ENABLED = "two-way-enabled",
    SELF_MANAGED_OPT_OUTS_ENABLED = "self-managed-opt-outs-enabled",
    OPT_OUT_LIST_NAME = "opt-out-list-name",
    DELETION_PROTECTION_ENABLED = "deletion-protection-enabled",
    TWO_WAY_CHANNEL_ARN = "two-way-channel-arn",
}

M.RcsAgentFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRcsAgentsInput = {
    type = "structure",
    members = {
        RcsAgentIds = {
            type = "list",
            member_type = "string",
        },
        Owner = {
            type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.TestingAgentStatus = {
    CREATED = "CREATED",
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
}

M.TestingAgentInformation = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TestingAgentId = {
            type = "string",
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RcsAgentInformation = {
    type = "structure",
    members = {
        RcsAgentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RcsAgentId = {
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
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        OptOutListName = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        PoolId = {
            type = "string",
        },
        TestingAgent = {
            type = "structure",
        },
    },
}

M.DescribeRcsAgentsOutput = {
    type = "structure",
    members = {
        RcsAgents = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegistrationAttachmentFilterName = {
    ATTACHMENT_STATUS = "attachment-status",
}

M.RegistrationAttachmentFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRegistrationAttachmentsInput = {
    type = "structure",
    members = {
        RegistrationAttachmentIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.RegistrationAttachmentsInformation = {
    type = "structure",
    members = {
        RegistrationAttachmentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationAttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttachmentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttachmentUploadErrorReason = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        AttachmentUrl = {
            type = "string",
        },
    },
}

M.DescribeRegistrationAttachmentsOutput = {
    type = "structure",
    members = {
        RegistrationAttachments = {
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

M.DescribeRegistrationFieldDefinitionsInput = {
    type = "structure",
    members = {
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SectionPath = {
            type = "string",
        },
        FieldPaths = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.SelectOptionDescription = {
    type = "structure",
    members = {
        Option = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Title = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.RegistrationFieldDisplayHints = {
    type = "structure",
    members = {
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShortDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LongDescription = {
            type = "string",
        },
        DocumentationTitle = {
            type = "string",
        },
        DocumentationLink = {
            type = "string",
        },
        SelectOptionDescriptions = {
            type = "list",
            member_type = "structure",
        },
        TextValidationDescription = {
            type = "string",
        },
        ExampleTextValue = {
            type = "string",
        },
    },
}

M.FieldRequirement = {
    REQUIRED = "REQUIRED",
    CONDITIONAL = "CONDITIONAL",
    OPTIONAL = "OPTIONAL",
}

M.FieldType = {
    SELECT = "SELECT",
    TEXT = "TEXT",
    ATTACHMENT = "ATTACHMENT",
}

M.SelectValidation = {
    type = "structure",
    members = {
        MinChoices = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxChoices = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Options = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TextValidation = {
    type = "structure",
    members = {
        MinLength = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxLength = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Pattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegistrationFieldDefinition = {
    type = "structure",
    members = {
        SectionPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldRequirement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectValidation = {
            type = "structure",
        },
        TextValidation = {
            type = "structure",
        },
        DisplayHints = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRegistrationFieldDefinitionsOutput = {
    type = "structure",
    members = {
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationFieldDefinitions = {
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

M.DescribeRegistrationFieldValuesInput = {
    type = "structure",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNumber = {
            type = "number",
        },
        SectionPath = {
            type = "string",
        },
        FieldPaths = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.RegistrationFieldValueInformation = {
    type = "structure",
    members = {
        FieldPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectChoices = {
            type = "list",
            member_type = "string",
        },
        TextValue = {
            type = "string",
        },
        RegistrationAttachmentId = {
            type = "string",
        },
        DeniedReason = {
            type = "string",
        },
        Feedback = {
            type = "string",
        },
    },
}

M.DescribeRegistrationFieldValuesOutput = {
    type = "structure",
    members = {
        RegistrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        RegistrationFieldValues = {
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

M.RegistrationFilterName = {
    REGISTRATION_TYPE = "registration-type",
    REGISTRATION_STATUS = "registration-status",
}

M.RegistrationFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRegistrationsInput = {
    type = "structure",
    members = {
        RegistrationIds = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.RegistrationInformation = {
    type = "structure",
    members = {
        RegistrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentVersionNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ApprovedVersionNumber = {
            type = "number",
        },
        LatestDeniedVersionNumber = {
            type = "number",
        },
        AdditionalAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRegistrationsOutput = {
    type = "structure",
    members = {
        Registrations = {
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

M.DescribeRegistrationSectionDefinitionsInput = {
    type = "structure",
    members = {
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SectionPaths = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.RegistrationSectionDisplayHints = {
    type = "structure",
    members = {
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShortDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LongDescription = {
            type = "string",
        },
        DocumentationTitle = {
            type = "string",
        },
        DocumentationLink = {
            type = "string",
        },
    },
}

M.RegistrationSectionDefinition = {
    type = "structure",
    members = {
        SectionPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayHints = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRegistrationSectionDefinitionsOutput = {
    type = "structure",
    members = {
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationSectionDefinitions = {
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

M.RegistrationTypeFilterName = {
    SUPPORTED_ASSOCIATION_RESOURCE_TYPE = "supported-association-resource-type",
    SUPPORTED_ASSOCIATION_ISO_COUNTRY_CODE = "supported-association-iso-country-code",
}

M.RegistrationTypeFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRegistrationTypeDefinitionsInput = {
    type = "structure",
    members = {
        RegistrationTypes = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.RegistrationTypeDisplayHints = {
    type = "structure",
    members = {
        Title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShortDescription = {
            type = "string",
        },
        LongDescription = {
            type = "string",
        },
        DocumentationTitle = {
            type = "string",
        },
        DocumentationLink = {
            type = "string",
        },
    },
}

M.RegistrationAssociationBehavior = {
    ASSOCIATE_BEFORE_SUBMIT = "ASSOCIATE_BEFORE_SUBMIT",
    ASSOCIATE_ON_APPROVAL = "ASSOCIATE_ON_APPROVAL",
    ASSOCIATE_AFTER_COMPLETE = "ASSOCIATE_AFTER_COMPLETE",
}

M.RegistrationDisassociationBehavior = {
    DISASSOCIATE_ALL_CLOSES_REGISTRATION = "DISASSOCIATE_ALL_CLOSES_REGISTRATION",
    DISASSOCIATE_ALL_ALLOWS_DELETE_REGISTRATION = "DISASSOCIATE_ALL_ALLOWS_DELETE_REGISTRATION",
    DELETE_REGISTRATION_DISASSOCIATES = "DELETE_REGISTRATION_DISASSOCIATES",
}

M.SupportedAssociation = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
        },
        AssociationBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisassociationBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegistrationTypeDefinition = {
    type = "structure",
    members = {
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupportedAssociations = {
            type = "list",
            member_type = "structure",
        },
        DisplayHints = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRegistrationTypeDefinitionsOutput = {
    type = "structure",
    members = {
        RegistrationTypeDefinitions = {
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

M.RegistrationVersionFilterName = {
    REGISTRATION_VERSION_STATUS = "registration-version-status",
}

M.RegistrationVersionFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRegistrationVersionsInput = {
    type = "structure",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNumbers = {
            type = "list",
            member_type = "number",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.RegistrationDeniedReasonInformation = {
    type = "structure",
    members = {
        Reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShortDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LongDescription = {
            type = "string",
        },
        DocumentationTitle = {
            type = "string",
        },
        DocumentationLink = {
            type = "string",
        },
    },
}

M.RegistrationVersionInformation = {
    type = "structure",
    members = {
        VersionNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        RegistrationVersionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationVersionStatusHistory = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DeniedReasons = {
            type = "list",
            member_type = "structure",
        },
        Feedback = {
            type = "string",
        },
    },
}

M.DescribeRegistrationVersionsOutput = {
    type = "structure",
    members = {
        RegistrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationVersions = {
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

M.SenderIdFilterName = {
    SENDER_ID = "sender-id",
    ISO_COUNTRY_CODE = "iso-country-code",
    MESSAGE_TYPE = "message-type",
    DELETION_PROTECTION_ENABLED = "deletion-protection-enabled",
    REGISTERED = "registered",
}

M.SenderIdFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SenderIdAndCountry = {
    type = "structure",
    members = {
        SenderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeSenderIdsInput = {
    type = "structure",
    members = {
        SenderIds = {
            type = "list",
            member_type = "structure",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Owner = {
            type = "string",
        },
    },
}

M.SenderIdInformation = {
    type = "structure",
    members = {
        SenderIdArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        MonthlyLeasingPrice = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Registered = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
        },
    },
}

M.DescribeSenderIdsOutput = {
    type = "structure",
    members = {
        SenderIds = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSpendLimitsInput = {
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

M.SpendLimitName = {
    TEXT_MESSAGE_MONTHLY_SPEND_LIMIT = "TEXT_MESSAGE_MONTHLY_SPEND_LIMIT",
    VOICE_MESSAGE_MONTHLY_SPEND_LIMIT = "VOICE_MESSAGE_MONTHLY_SPEND_LIMIT",
    MEDIA_MESSAGE_MONTHLY_SPEND_LIMIT = "MEDIA_MESSAGE_MONTHLY_SPEND_LIMIT",
    NOTIFY_MESSAGE_MONTHLY_SPEND_LIMIT = "NOTIFY_MESSAGE_MONTHLY_SPEND_LIMIT",
}

M.SpendLimit = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnforcedLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Overridden = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeSpendLimitsOutput = {
    type = "structure",
    members = {
        SpendLimits = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.VerifiedDestinationNumberFilterName = {
    STATUS = "status",
    RCS_AGENT_ID = "rcs-agent-id",
}

M.VerifiedDestinationNumberFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeVerifiedDestinationNumbersInput = {
    type = "structure",
    members = {
        VerifiedDestinationNumberIds = {
            type = "list",
            member_type = "string",
        },
        DestinationPhoneNumbers = {
            type = "list",
            member_type = "string",
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.VerifiedDestinationNumberInformation = {
    type = "structure",
    members = {
        VerifiedDestinationNumberArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerifiedDestinationNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPhoneNumber = {
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
        RcsAgentId = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeVerifiedDestinationNumbersOutput = {
    type = "structure",
    members = {
        VerifiedDestinationNumbers = {
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

M.DestinationCountryParameterKey = {
    IN_TEMPLATE_ID = "IN_TEMPLATE_ID",
    IN_ENTITY_ID = "IN_ENTITY_ID",
}

M.DisassociateOriginationIdentityInput = {
    type = "structure",
    members = {
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.DisassociateOriginationIdentityOutput = {
    type = "structure",
    members = {
        PoolArn = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        OriginationIdentityArn = {
            type = "string",
        },
        OriginationIdentity = {
            type = "string",
        },
        IsoCountryCode = {
            type = "string",
        },
    },
}

M.DisassociateProtectConfigurationInput = {
    type = "structure",
    members = {
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateProtectConfigurationOutput = {
    type = "structure",
    members = {
        ConfigurationSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DiscardRegistrationVersionInput = {
    type = "structure",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DiscardRegistrationVersionOutput = {
    type = "structure",
    members = {
        RegistrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        RegistrationVersionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationVersionStatusHistory = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetProtectConfigurationCountryRuleSetInput = {
    type = "structure",
    members = {
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberCapability = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectStatus = {
    ALLOW = "ALLOW",
    BLOCK = "BLOCK",
    MONITOR = "MONITOR",
    FILTER = "FILTER",
}

M.ProtectConfigurationCountryRuleSetInformation = {
    type = "structure",
    members = {
        ProtectStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetProtectConfigurationCountryRuleSetOutput = {
    type = "structure",
    members = {
        ProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberCapability = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CountryRuleSet = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyInput = {
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

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.LanguageCode = {
    DE_DE = "DE_DE",
    EN_GB = "EN_GB",
    EN_US = "EN_US",
    ES_419 = "ES_419",
    ES_ES = "ES_ES",
    FR_CA = "FR_CA",
    FR_FR = "FR_FR",
    IT_IT = "IT_IT",
    JA_JP = "JA_JP",
    KO_KR = "KO_KR",
    PT_BR = "PT_BR",
    ZH_CN = "ZH_CN",
    ZH_TW = "ZH_TW",
}

M.ListNotifyCountriesInput = {
    type = "structure",
    members = {
        Channels = {
            type = "list",
            member_type = "string",
        },
        UseCases = {
            type = "list",
            member_type = "string",
        },
        Tier = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.NotifyCountryInformation = {
    type = "structure",
    members = {
        IsoCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CountryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupportedChannels = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SupportedUseCases = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SupportedTiers = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        CustomerOwnedIdentityRequired = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ListNotifyCountriesOutput = {
    type = "structure",
    members = {
        NotifyCountries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PoolOriginationIdentitiesFilterName = {
    ISO_COUNTRY_CODE = "iso-country-code",
    NUMBER_CAPABILITY = "number-capability",
}

M.PoolOriginationIdentitiesFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPoolOriginationIdentitiesInput = {
    type = "structure",
    members = {
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.OriginationIdentityMetadata = {
    type = "structure",
    members = {
        OriginationIdentityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberCapabilities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        PhoneNumber = {
            type = "string",
        },
    },
}

M.ListPoolOriginationIdentitiesOutput = {
    type = "structure",
    members = {
        PoolArn = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        OriginationIdentities = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ProtectConfigurationRuleSetNumberOverrideFilterName = {
    ISO_COUNTRY_CODE = "iso-country-code",
    DESTINATION_PHONE_NUMBER_BEGINS_WITH = "destination-phone-number-begins-with",
    ACTION = "action",
    EXPIRES_BEFORE = "expires-before",
    EXPIRES_AFTER = "expires-after",
    CREATED_BEFORE = "created-before",
    CREATED_AFTER = "created-after",
}

M.ProtectConfigurationRuleSetNumberOverrideFilterItem = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListProtectConfigurationRuleSetNumberOverridesInput = {
    type = "structure",
    members = {
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ProtectConfigurationRuleSetNumberOverride = {
    type = "structure",
    members = {
        DestinationPhoneNumber = {
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
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
        },
        ExpirationTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListProtectConfigurationRuleSetNumberOverridesOutput = {
    type = "structure",
    members = {
        ProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleSetNumberOverrides = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegistrationAssociationFilterName = {
    RESOURCE_TYPE = "resource-type",
    ISO_COUNTRY_CODE = "iso-country-code",
}

M.RegistrationAssociationFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRegistrationAssociationsInput = {
    type = "structure",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.RegistrationAssociationMetadata = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
    },
}

M.ListRegistrationAssociationsOutput = {
    type = "structure",
    members = {
        RegistrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationAssociations = {
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
        ResourceArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MessageFeedbackStatus = {
    RECEIVED = "RECEIVED",
    FAILED = "FAILED",
}

M.PutKeywordInput = {
    type = "structure",
    members = {
        OriginationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keyword = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeywordMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeywordAction = {
            type = "string",
        },
    },
}

M.PutKeywordOutput = {
    type = "structure",
    members = {
        OriginationIdentityArn = {
            type = "string",
        },
        OriginationIdentity = {
            type = "string",
        },
        Keyword = {
            type = "string",
        },
        KeywordMessage = {
            type = "string",
        },
        KeywordAction = {
            type = "string",
        },
    },
}

M.PutMessageFeedbackInput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageFeedbackStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutMessageFeedbackOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageFeedbackStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutOptedOutNumberInput = {
    type = "structure",
    members = {
        OptOutListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptedOutNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutOptedOutNumberOutput = {
    type = "structure",
    members = {
        OptOutListArn = {
            type = "string",
        },
        OptOutListName = {
            type = "string",
        },
        OptedOutNumber = {
            type = "string",
        },
        OptedOutTimestamp = {
            type = "timestamp",
        },
        EndUserOptedOut = {
            type = "boolean",
        },
    },
}

M.PutProtectConfigurationRuleSetNumberOverrideInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPhoneNumber = {
            type = "string",
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
        ExpirationTimestamp = {
            type = "timestamp",
        },
    },
}

M.PutProtectConfigurationRuleSetNumberOverrideOutput = {
    type = "structure",
    members = {
        ProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPhoneNumber = {
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
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
        },
        ExpirationTimestamp = {
            type = "timestamp",
        },
    },
}

M.PutRegistrationFieldValueInput = {
    type = "structure",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectChoices = {
            type = "list",
            member_type = "string",
        },
        TextValue = {
            type = "string",
        },
        RegistrationAttachmentId = {
            type = "string",
        },
    },
}

M.PutRegistrationFieldValueOutput = {
    type = "structure",
    members = {
        RegistrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        FieldPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectChoices = {
            type = "list",
            member_type = "string",
        },
        TextValue = {
            type = "string",
        },
        RegistrationAttachmentId = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
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

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        Policy = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ReleasePhoneNumberInput = {
    type = "structure",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReleasePhoneNumberOutput = {
    type = "structure",
    members = {
        PhoneNumberArn = {
            type = "string",
        },
        PhoneNumberId = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        IsoCountryCode = {
            type = "string",
        },
        MessageType = {
            type = "string",
        },
        NumberCapabilities = {
            type = "list",
            member_type = "string",
        },
        NumberType = {
            type = "string",
        },
        MonthlyLeasingPrice = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
        },
        OptOutListName = {
            type = "string",
        },
        RegistrationId = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ReleaseSenderIdInput = {
    type = "structure",
    members = {
        SenderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReleaseSenderIdOutput = {
    type = "structure",
    members = {
        SenderIdArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        MonthlyLeasingPrice = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Registered = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
        },
    },
}

M.RequestableNumberType = {
    LONG_CODE = "LONG_CODE",
    TOLL_FREE = "TOLL_FREE",
    TEN_DLC = "TEN_DLC",
    SIMULATOR = "SIMULATOR",
}

M.RequestPhoneNumberInput = {
    type = "structure",
    members = {
        IsoCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberCapabilities = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        NumberType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptOutListName = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        RegistrationId = {
            type = "string",
        },
        InternationalSendingEnabled = {
            type = "boolean",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.RequestPhoneNumberOutput = {
    type = "structure",
    members = {
        PhoneNumberArn = {
            type = "string",
        },
        PhoneNumberId = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        IsoCountryCode = {
            type = "string",
        },
        MessageType = {
            type = "string",
        },
        NumberCapabilities = {
            type = "list",
            member_type = "string",
        },
        NumberType = {
            type = "string",
        },
        MonthlyLeasingPrice = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
        },
        OptOutListName = {
            type = "string",
        },
        InternationalSendingEnabled = {
            type = "boolean",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        PoolId = {
            type = "string",
        },
        RegistrationId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.RequestSenderIdInput = {
    type = "structure",
    members = {
        SenderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageTypes = {
            type = "list",
            member_type = "string",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.RequestSenderIdOutput = {
    type = "structure",
    members = {
        SenderIdArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        MonthlyLeasingPrice = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Registered = {
            type = "boolean",
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

M.VerificationChannel = {
    TEXT = "TEXT",
    VOICE = "VOICE",
}

M.SendDestinationNumberVerificationCodeInput = {
    type = "structure",
    members = {
        VerifiedDestinationNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerificationChannel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LanguageCode = {
            type = "string",
        },
        OriginationIdentity = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        Context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        DestinationCountryParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SendDestinationNumberVerificationCodeOutput = {
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

M.SendMediaMessageInput = {
    type = "structure",
    members = {
        DestinationPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageBody = {
            type = "string",
        },
        MediaUrls = {
            type = "list",
            member_type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        MaxPrice = {
            type = "string",
        },
        TimeToLive = {
            type = "number",
        },
        Context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        DryRun = {
            type = "boolean",
        },
        ProtectConfigurationId = {
            type = "string",
        },
        MessageFeedbackEnabled = {
            type = "boolean",
        },
    },
}

M.SendMediaMessageOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.SendNotifyTextMessageInput = {
    type = "structure",
    members = {
        NotifyConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateId = {
            type = "string",
        },
        TemplateVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        TimeToLive = {
            type = "number",
        },
        Context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
        },
        MessageFeedbackEnabled = {
            type = "boolean",
        },
    },
}

M.SendNotifyTextMessageOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
        TemplateId = {
            type = "string",
        },
        ResolvedMessageBody = {
            type = "string",
        },
    },
}

M.SendNotifyVoiceMessageInput = {
    type = "structure",
    members = {
        NotifyConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateId = {
            type = "string",
        },
        TemplateVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        VoiceId = {
            type = "string",
        },
        TimeToLive = {
            type = "number",
        },
        Context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
        },
        MessageFeedbackEnabled = {
            type = "boolean",
        },
    },
}

M.SendNotifyVoiceMessageOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
        TemplateId = {
            type = "string",
        },
        ResolvedMessageBody = {
            type = "string",
        },
    },
}

M.SendTextMessageInput = {
    type = "structure",
    members = {
        DestinationPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginationIdentity = {
            type = "string",
        },
        MessageBody = {
            type = "string",
        },
        MessageType = {
            type = "string",
        },
        Keyword = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        MaxPrice = {
            type = "string",
        },
        TimeToLive = {
            type = "number",
        },
        Context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        DestinationCountryParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        DryRun = {
            type = "boolean",
        },
        ProtectConfigurationId = {
            type = "string",
        },
        MessageFeedbackEnabled = {
            type = "boolean",
        },
    },
}

M.SendTextMessageOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.VoiceMessageBodyTextType = {
    TEXT = "TEXT",
    SSML = "SSML",
}

M.SendVoiceMessageInput = {
    type = "structure",
    members = {
        DestinationPhoneNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageBody = {
            type = "string",
        },
        MessageBodyTextType = {
            type = "string",
        },
        VoiceId = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        MaxPricePerMinute = {
            type = "string",
        },
        TimeToLive = {
            type = "number",
        },
        Context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        DryRun = {
            type = "boolean",
        },
        ProtectConfigurationId = {
            type = "string",
        },
        MessageFeedbackEnabled = {
            type = "boolean",
        },
    },
}

M.SendVoiceMessageOutput = {
    type = "structure",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.SetAccountDefaultProtectConfigurationInput = {
    type = "structure",
    members = {
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetAccountDefaultProtectConfigurationOutput = {
    type = "structure",
    members = {
        DefaultProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetDefaultMessageFeedbackEnabledInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageFeedbackEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.SetDefaultMessageFeedbackEnabledOutput = {
    type = "structure",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        MessageFeedbackEnabled = {
            type = "boolean",
        },
    },
}

M.SetDefaultMessageTypeInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetDefaultMessageTypeOutput = {
    type = "structure",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        MessageType = {
            type = "string",
        },
    },
}

M.SetDefaultSenderIdInput = {
    type = "structure",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetDefaultSenderIdOutput = {
    type = "structure",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        SenderId = {
            type = "string",
        },
    },
}

M.SetMediaMessageSpendLimitOverrideInput = {
    type = "structure",
    members = {
        MonthlyLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SetMediaMessageSpendLimitOverrideOutput = {
    type = "structure",
    members = {
        MonthlyLimit = {
            type = "number",
        },
    },
}

M.SetNotifyMessageSpendLimitOverrideInput = {
    type = "structure",
    members = {
        MonthlyLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SetNotifyMessageSpendLimitOverrideOutput = {
    type = "structure",
    members = {
        MonthlyLimit = {
            type = "number",
        },
    },
}

M.SetTextMessageSpendLimitOverrideInput = {
    type = "structure",
    members = {
        MonthlyLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SetTextMessageSpendLimitOverrideOutput = {
    type = "structure",
    members = {
        MonthlyLimit = {
            type = "number",
        },
    },
}

M.SetVoiceMessageSpendLimitOverrideInput = {
    type = "structure",
    members = {
        MonthlyLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SetVoiceMessageSpendLimitOverrideOutput = {
    type = "structure",
    members = {
        MonthlyLimit = {
            type = "number",
        },
    },
}

M.SubmitRegistrationVersionInput = {
    type = "structure",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsReview = {
            type = "boolean",
        },
    },
}

M.SubmitRegistrationVersionOutput = {
    type = "structure",
    members = {
        RegistrationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        RegistrationVersionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationVersionStatusHistory = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AwsReview = {
            type = "boolean",
            traits = {
                required = true,
            },
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

M.UpdateEventDestinationInput = {
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
        Enabled = {
            type = "boolean",
        },
        MatchingEventTypes = {
            type = "list",
            member_type = "string",
        },
        CloudWatchLogsDestination = {
            type = "structure",
        },
        KinesisFirehoseDestination = {
            type = "structure",
        },
        SnsDestination = {
            type = "structure",
        },
    },
}

M.UpdateEventDestinationOutput = {
    type = "structure",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        EventDestination = {
            type = "structure",
        },
    },
}

M.UpdateNotifyConfigurationInput = {
    type = "structure",
    members = {
        NotifyConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultTemplateId = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        EnabledCountries = {
            type = "list",
            member_type = "string",
        },
        EnabledChannels = {
            type = "list",
            member_type = "string",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateNotifyConfigurationOutput = {
    type = "structure",
    members = {
        NotifyConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotifyConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseCase = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultTemplateId = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        EnabledCountries = {
            type = "list",
            member_type = "string",
        },
        EnabledChannels = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TierUpgradeStatus = {
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
        RejectionReason = {
            type = "string",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
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

M.UpdatePhoneNumberInput = {
    type = "structure",
    members = {
        PhoneNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TwoWayEnabled = {
            type = "boolean",
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
        },
        OptOutListName = {
            type = "string",
        },
        InternationalSendingEnabled = {
            type = "boolean",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
    },
}

M.UpdatePhoneNumberOutput = {
    type = "structure",
    members = {
        PhoneNumberArn = {
            type = "string",
        },
        PhoneNumberId = {
            type = "string",
        },
        PhoneNumber = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        IsoCountryCode = {
            type = "string",
        },
        MessageType = {
            type = "string",
        },
        NumberCapabilities = {
            type = "list",
            member_type = "string",
        },
        NumberType = {
            type = "string",
        },
        MonthlyLeasingPrice = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
        },
        OptOutListName = {
            type = "string",
        },
        InternationalSendingEnabled = {
            type = "boolean",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        RegistrationId = {
            type = "string",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.UpdatePoolInput = {
    type = "structure",
    members = {
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TwoWayEnabled = {
            type = "boolean",
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
        },
        OptOutListName = {
            type = "string",
        },
        SharedRoutesEnabled = {
            type = "boolean",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
    },
}

M.UpdatePoolOutput = {
    type = "structure",
    members = {
        PoolArn = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        MessageType = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
        },
        OptOutListName = {
            type = "string",
        },
        SharedRoutesEnabled = {
            type = "boolean",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.UpdateProtectConfigurationInput = {
    type = "structure",
    members = {
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateProtectConfigurationOutput = {
    type = "structure",
    members = {
        ProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationId = {
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
        AccountDefault = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProtectConfigurationCountryRuleSetInput = {
    type = "structure",
    members = {
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberCapability = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CountryRuleSetUpdates = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProtectConfigurationCountryRuleSetOutput = {
    type = "structure",
    members = {
        ProtectConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberCapability = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CountryRuleSet = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRcsAgentInput = {
    type = "structure",
    members = {
        RcsAgentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        OptOutListName = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateRcsAgentOutput = {
    type = "structure",
    members = {
        RcsAgentArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RcsAgentId = {
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
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        OptOutListName = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        TwoWayChannelArn = {
            type = "string",
        },
        TwoWayChannelRole = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSenderIdInput = {
    type = "structure",
    members = {
        SenderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateSenderIdOutput = {
    type = "structure",
    members = {
        SenderIdArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SenderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MessageTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        MonthlyLeasingPrice = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Registered = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        RegistrationId = {
            type = "string",
        },
    },
}

M.VerifyDestinationNumberInput = {
    type = "structure",
    members = {
        VerifiedDestinationNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerificationCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerifyDestinationNumberOutput = {
    type = "structure",
    members = {
        VerifiedDestinationNumberArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VerifiedDestinationNumberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPhoneNumber = {
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
        CreatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

return M
