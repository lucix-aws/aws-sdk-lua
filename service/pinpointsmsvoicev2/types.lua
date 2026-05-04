local M = {}

M.AccessDeniedExceptionReason = {
    INSUFFICIENT_ACCOUNT_REPUTATION = "INSUFFICIENT_ACCOUNT_REPUTATION",
    ACCOUNT_DISABLED = "ACCOUNT_DISABLED",
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "AccountAttribute",
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
    id = "AccountLimit",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Used = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Max = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.AssociateOriginationIdentityInput = {
    type = "structure",
    id = "AssociateOriginationIdentityInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.AssociateOriginationIdentityOutput = {
    type = "structure",
    id = "AssociateOriginationIdentityOutput",
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
    id = "ConflictException",
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
    id = "InternalServerException",
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
    id = "ResourceNotFoundException",
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
    id = "ServiceQuotaExceededException",
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
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
            member = M.ValidationExceptionField,
        },
    },
}

M.AssociateProtectConfigurationInput = {
    type = "structure",
    id = "AssociateProtectConfigurationInput",
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
    id = "AssociateProtectConfigurationOutput",
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
    id = "CarrierLookupInput",
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
    id = "CarrierLookupOutput",
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
    id = "CarrierStatusInformation",
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
    id = "CloudWatchLogsDestination",
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
    id = "ConfigurationSetFilter",
    members = {
        Name = {
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

M.MessageType = {
    TRANSACTIONAL = "TRANSACTIONAL",
    PROMOTIONAL = "PROMOTIONAL",
}

M.KinesisFirehoseDestination = {
    type = "structure",
    id = "KinesisFirehoseDestination",
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
    id = "SnsDestination",
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
    id = "EventDestination",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        CloudWatchLogsDestination = M.CloudWatchLogsDestination,
        KinesisFirehoseDestination = M.KinesisFirehoseDestination,
        SnsDestination = M.SnsDestination,
    },
}

M.ConfigurationSetInformation = {
    type = "structure",
    id = "ConfigurationSetInformation",
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
            member = M.EventDestination,
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
    id = "CountryLaunchStatusFilter",
    members = {
        Name = {
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

M.CountryLaunchStatusInformation = {
    type = "structure",
    id = "CountryLaunchStatusInformation",
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
            member = M.CarrierStatusInformation,
            traits = {
                required = true,
            },
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

M.CreateConfigurationSetInput = {
    type = "structure",
    id = "CreateConfigurationSetInput",
    members = {
        ConfigurationSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateConfigurationSetOutput = {
    type = "structure",
    id = "CreateConfigurationSetOutput",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateEventDestinationInput = {
    type = "structure",
    id = "CreateEventDestinationInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        CloudWatchLogsDestination = M.CloudWatchLogsDestination,
        KinesisFirehoseDestination = M.KinesisFirehoseDestination,
        SnsDestination = M.SnsDestination,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateEventDestinationOutput = {
    type = "structure",
    id = "CreateEventDestinationOutput",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        EventDestination = M.EventDestination,
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
    id = "CreateNotifyConfigurationInput",
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
            member = { type = "string" },
        },
        EnabledChannels = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
    id = "CreateNotifyConfigurationOutput",
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
            member = { type = "string" },
        },
        EnabledChannels = {
            type = "list",
            member = { type = "string" },
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
                default = false,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
    id = "CreateOptOutListInput",
    members = {
        OptOutListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateOptOutListOutput = {
    type = "structure",
    id = "CreateOptOutListOutput",
    members = {
        OptOutListArn = {
            type = "string",
        },
        OptOutListName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreatePoolInput = {
    type = "structure",
    id = "CreatePoolInput",
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
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "CreatePoolOutput",
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
            traits = {
                default = false,
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
                default = false,
            },
        },
        OptOutListName = {
            type = "string",
        },
        SharedRoutesEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.CreateProtectConfigurationInput = {
    type = "structure",
    id = "CreateProtectConfigurationInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateProtectConfigurationOutput = {
    type = "structure",
    id = "CreateProtectConfigurationOutput",
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
                default = false,
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateRcsAgentInput = {
    type = "structure",
    id = "CreateRcsAgentInput",
    members = {
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        OptOutListName = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateRcsAgentOutput",
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
                default = false,
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
                default = false,
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
                default = false,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateRegistrationInput = {
    type = "structure",
    id = "CreateRegistrationInput",
    members = {
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateRegistrationOutput",
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
            type = "long",
            traits = {
                required = true,
            },
        },
        AdditionalAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
    id = "CreateRegistrationAssociationInput",
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
    id = "CreateRegistrationAssociationOutput",
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
    id = "CreateRegistrationAttachmentInput",
    members = {
        AttachmentBody = {
            type = "blob",
        },
        AttachmentUrl = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateRegistrationAttachmentOutput = {
    type = "structure",
    id = "CreateRegistrationAttachmentOutput",
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
            member = M.Tag,
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
    id = "CreateRegistrationVersionInput",
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
    id = "RegistrationVersionStatusHistory",
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
    id = "CreateRegistrationVersionOutput",
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
            type = "long",
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
        RegistrationVersionStatusHistory = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistrationVersionStatusHistory }),
    },
}

M.CreateVerifiedDestinationNumberInput = {
    type = "structure",
    id = "CreateVerifiedDestinationNumberInput",
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
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateVerifiedDestinationNumberOutput",
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
            member = M.Tag,
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
    id = "DeleteAccountDefaultProtectConfigurationInput",
}

M.DeleteAccountDefaultProtectConfigurationOutput = {
    type = "structure",
    id = "DeleteAccountDefaultProtectConfigurationOutput",
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
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        EventDestinations = {
            type = "list",
            member = M.EventDestination,
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
    id = "DeleteDefaultMessageTypeInput",
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
    id = "DeleteDefaultMessageTypeOutput",
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
    id = "DeleteDefaultSenderIdInput",
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
    id = "DeleteDefaultSenderIdOutput",
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
    id = "DeleteEventDestinationInput",
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
    id = "DeleteEventDestinationOutput",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        EventDestination = M.EventDestination,
    },
}

M.DeleteKeywordInput = {
    type = "structure",
    id = "DeleteKeywordInput",
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
    id = "DeleteKeywordOutput",
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
    id = "DeleteMediaMessageSpendLimitOverrideInput",
}

M.DeleteMediaMessageSpendLimitOverrideOutput = {
    type = "structure",
    id = "DeleteMediaMessageSpendLimitOverrideOutput",
    members = {
        MonthlyLimit = {
            type = "long",
        },
    },
}

M.DeleteNotifyConfigurationInput = {
    type = "structure",
    id = "DeleteNotifyConfigurationInput",
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
    id = "DeleteNotifyConfigurationOutput",
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
            member = { type = "string" },
        },
        EnabledChannels = {
            type = "list",
            member = { type = "string" },
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
                default = false,
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
    id = "DeleteNotifyMessageSpendLimitOverrideInput",
}

M.DeleteNotifyMessageSpendLimitOverrideOutput = {
    type = "structure",
    id = "DeleteNotifyMessageSpendLimitOverrideOutput",
    members = {
        MonthlyLimit = {
            type = "long",
        },
    },
}

M.DeleteOptedOutNumberInput = {
    type = "structure",
    id = "DeleteOptedOutNumberInput",
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
    id = "DeleteOptedOutNumberOutput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteOptOutListInput = {
    type = "structure",
    id = "DeleteOptOutListInput",
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
    id = "DeleteOptOutListOutput",
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
    id = "DeletePoolInput",
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
    id = "DeletePoolOutput",
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
            traits = {
                default = false,
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
                default = false,
            },
        },
        OptOutListName = {
            type = "string",
        },
        SharedRoutesEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.DeleteProtectConfigurationInput = {
    type = "structure",
    id = "DeleteProtectConfigurationInput",
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
    id = "DeleteProtectConfigurationOutput",
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
                default = false,
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.DeleteProtectConfigurationRuleSetNumberOverrideInput = {
    type = "structure",
    id = "DeleteProtectConfigurationRuleSetNumberOverrideInput",
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
    id = "DeleteProtectConfigurationRuleSetNumberOverrideOutput",
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
    id = "DeleteRcsAgentInput",
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
    id = "DeleteRcsAgentOutput",
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
                default = false,
                required = true,
            },
        },
        OptOutListName = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
            traits = {
                default = false,
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
                default = false,
                required = true,
            },
        },
    },
}

M.DeleteRegistrationInput = {
    type = "structure",
    id = "DeleteRegistrationInput",
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
    id = "DeleteRegistrationOutput",
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
            type = "long",
            traits = {
                required = true,
            },
        },
        ApprovedVersionNumber = {
            type = "long",
        },
        LatestDeniedVersionNumber = {
            type = "long",
        },
        AdditionalAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "DeleteRegistrationAttachmentInput",
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
    id = "DeleteRegistrationAttachmentOutput",
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
    id = "DeleteRegistrationFieldValueInput",
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
    id = "DeleteRegistrationFieldValueOutput",
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
            type = "long",
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
            member = { type = "string" },
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
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
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
    id = "DeleteTextMessageSpendLimitOverrideInput",
}

M.DeleteTextMessageSpendLimitOverrideOutput = {
    type = "structure",
    id = "DeleteTextMessageSpendLimitOverrideOutput",
    members = {
        MonthlyLimit = {
            type = "long",
        },
    },
}

M.DeleteVerifiedDestinationNumberInput = {
    type = "structure",
    id = "DeleteVerifiedDestinationNumberInput",
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
    id = "DeleteVerifiedDestinationNumberOutput",
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
    id = "DeleteVoiceMessageSpendLimitOverrideInput",
}

M.DeleteVoiceMessageSpendLimitOverrideOutput = {
    type = "structure",
    id = "DeleteVoiceMessageSpendLimitOverrideOutput",
    members = {
        MonthlyLimit = {
            type = "long",
        },
    },
}

M.DescribeAccountAttributesInput = {
    type = "structure",
    id = "DescribeAccountAttributesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeAccountAttributesOutput = {
    type = "structure",
    id = "DescribeAccountAttributesOutput",
    members = {
        AccountAttributes = {
            type = "list",
            member = M.AccountAttribute,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAccountLimitsInput = {
    type = "structure",
    id = "DescribeAccountLimitsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeAccountLimitsOutput = {
    type = "structure",
    id = "DescribeAccountLimitsOutput",
    members = {
        AccountLimits = {
            type = "list",
            member = M.AccountLimit,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConfigurationSetsInput = {
    type = "structure",
    id = "DescribeConfigurationSetsInput",
    members = {
        ConfigurationSetNames = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.ConfigurationSetFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DescribeConfigurationSetsOutput = {
    type = "structure",
    id = "DescribeConfigurationSetsOutput",
    members = {
        ConfigurationSets = {
            type = "list",
            member = M.ConfigurationSetInformation,
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
    id = "KeywordFilter",
    members = {
        Name = {
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

M.DescribeKeywordsInput = {
    type = "structure",
    id = "DescribeKeywordsInput",
    members = {
        OriginationIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Keywords = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.KeywordFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.KeywordInformation = {
    type = "structure",
    id = "KeywordInformation",
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
    id = "DescribeKeywordsOutput",
    members = {
        OriginationIdentityArn = {
            type = "string",
        },
        OriginationIdentity = {
            type = "string",
        },
        Keywords = {
            type = "list",
            member = M.KeywordInformation,
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
    id = "NotifyConfigurationFilter",
    members = {
        Name = {
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

M.DescribeNotifyConfigurationsInput = {
    type = "structure",
    id = "DescribeNotifyConfigurationsInput",
    members = {
        NotifyConfigurationIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.NotifyConfigurationFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.NotifyConfigurationInformation = {
    type = "structure",
    id = "NotifyConfigurationInformation",
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
            member = { type = "string" },
        },
        EnabledChannels = {
            type = "list",
            member = { type = "string" },
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
                default = false,
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
    id = "DescribeNotifyConfigurationsOutput",
    members = {
        NotifyConfigurations = {
            type = "list",
            member = M.NotifyConfigurationInformation,
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
    id = "NotifyTemplateFilter",
    members = {
        Name = {
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

M.DescribeNotifyTemplatesInput = {
    type = "structure",
    id = "DescribeNotifyTemplatesInput",
    members = {
        TemplateIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.NotifyTemplateFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
    id = "TemplateVariableMetadata",
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
                default = false,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        MaxLength = {
            type = "integer",
        },
        MinValue = {
            type = "integer",
        },
        MaxValue = {
            type = "integer",
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
    id = "NotifyTemplateInformation",
    members = {
        TemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "integer",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TierAccess = {
            type = "list",
            member = { type = "string" },
        },
        Status = {
            type = "string",
        },
        SupportedCountries = {
            type = "list",
            member = { type = "string" },
        },
        LanguageCode = {
            type = "string",
        },
        Content = {
            type = "string",
        },
        Variables = {
            type = "map",
            key = { type = "string" },
            value = M.TemplateVariableMetadata,
        },
        SupportedVoiceIds = {
            type = "list",
            member = { type = "string" },
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
    id = "DescribeNotifyTemplatesOutput",
    members = {
        NotifyTemplates = {
            type = "list",
            member = M.NotifyTemplateInformation,
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
    id = "OptedOutFilter",
    members = {
        Name = {
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

M.DescribeOptedOutNumbersInput = {
    type = "structure",
    id = "DescribeOptedOutNumbersInput",
    members = {
        OptOutListName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptedOutNumbers = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.OptedOutFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.OptedOutNumberInformation = {
    type = "structure",
    id = "OptedOutNumberInformation",
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
                default = false,
                required = true,
            },
        },
    },
}

M.DescribeOptedOutNumbersOutput = {
    type = "structure",
    id = "DescribeOptedOutNumbersOutput",
    members = {
        OptOutListArn = {
            type = "string",
        },
        OptOutListName = {
            type = "string",
        },
        OptedOutNumbers = {
            type = "list",
            member = M.OptedOutNumberInformation,
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
    id = "DescribeOptOutListsInput",
    members = {
        OptOutListNames = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Owner = {
            type = "string",
        },
    },
}

M.OptOutListInformation = {
    type = "structure",
    id = "OptOutListInformation",
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
    id = "DescribeOptOutListsOutput",
    members = {
        OptOutLists = {
            type = "list",
            member = M.OptOutListInformation,
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
    id = "PhoneNumberFilter",
    members = {
        Name = {
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

M.DescribePhoneNumbersInput = {
    type = "structure",
    id = "DescribePhoneNumbersInput",
    members = {
        PhoneNumberIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.PhoneNumberFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
    id = "PhoneNumberInformation",
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
            member = { type = "string" },
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
                default = false,
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
                default = false,
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
            traits = {
                default = false,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
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
    id = "DescribePhoneNumbersOutput",
    members = {
        PhoneNumbers = {
            type = "list",
            member = M.PhoneNumberInformation,
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
    id = "PoolFilter",
    members = {
        Name = {
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

M.DescribePoolsInput = {
    type = "structure",
    id = "DescribePoolsInput",
    members = {
        PoolIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.PoolFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Owner = {
            type = "string",
        },
    },
}

M.PoolInformation = {
    type = "structure",
    id = "PoolInformation",
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
                default = false,
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
                default = false,
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
                default = false,
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
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
    id = "DescribePoolsOutput",
    members = {
        Pools = {
            type = "list",
            member = M.PoolInformation,
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
    id = "ProtectConfigurationFilter",
    members = {
        Name = {
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

M.DescribeProtectConfigurationsInput = {
    type = "structure",
    id = "DescribeProtectConfigurationsInput",
    members = {
        ProtectConfigurationIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.ProtectConfigurationFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ProtectConfigurationInformation = {
    type = "structure",
    id = "ProtectConfigurationInformation",
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
                default = false,
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.DescribeProtectConfigurationsOutput = {
    type = "structure",
    id = "DescribeProtectConfigurationsOutput",
    members = {
        ProtectConfigurations = {
            type = "list",
            member = M.ProtectConfigurationInformation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRcsAgentCountryLaunchStatusInput = {
    type = "structure",
    id = "DescribeRcsAgentCountryLaunchStatusInput",
    members = {
        RcsAgentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsoCountryCodes = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.CountryLaunchStatusFilter,
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRcsAgentCountryLaunchStatusOutput = {
    type = "structure",
    id = "DescribeRcsAgentCountryLaunchStatusOutput",
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
            member = M.CountryLaunchStatusInformation,
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
    id = "RcsAgentFilter",
    members = {
        Name = {
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

M.DescribeRcsAgentsInput = {
    type = "structure",
    id = "DescribeRcsAgentsInput",
    members = {
        RcsAgentIds = {
            type = "list",
            member = { type = "string" },
        },
        Owner = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.RcsAgentFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
    id = "TestingAgentInformation",
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
    id = "RcsAgentInformation",
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
                default = false,
                required = true,
            },
        },
        OptOutListName = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
            traits = {
                default = false,
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
                default = false,
                required = true,
            },
        },
        PoolId = {
            type = "string",
        },
        TestingAgent = M.TestingAgentInformation,
    },
}

M.DescribeRcsAgentsOutput = {
    type = "structure",
    id = "DescribeRcsAgentsOutput",
    members = {
        RcsAgents = {
            type = "list",
            member = M.RcsAgentInformation,
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
    id = "RegistrationAttachmentFilter",
    members = {
        Name = {
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

M.DescribeRegistrationAttachmentsInput = {
    type = "structure",
    id = "DescribeRegistrationAttachmentsInput",
    members = {
        RegistrationAttachmentIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.RegistrationAttachmentFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.RegistrationAttachmentsInformation = {
    type = "structure",
    id = "RegistrationAttachmentsInformation",
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
    id = "DescribeRegistrationAttachmentsOutput",
    members = {
        RegistrationAttachments = {
            type = "list",
            member = M.RegistrationAttachmentsInformation,
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
    id = "DescribeRegistrationFieldDefinitionsInput",
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
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.SelectOptionDescription = {
    type = "structure",
    id = "SelectOptionDescription",
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
    id = "RegistrationFieldDisplayHints",
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
            member = M.SelectOptionDescription,
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
    id = "SelectValidation",
    members = {
        MinChoices = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxChoices = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Options = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TextValidation = {
    type = "structure",
    id = "TextValidation",
    members = {
        MinLength = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxLength = {
            type = "integer",
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
    id = "RegistrationFieldDefinition",
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
        SelectValidation = M.SelectValidation,
        TextValidation = M.TextValidation,
        DisplayHints = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistrationFieldDisplayHints }),
    },
}

M.DescribeRegistrationFieldDefinitionsOutput = {
    type = "structure",
    id = "DescribeRegistrationFieldDefinitionsOutput",
    members = {
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationFieldDefinitions = {
            type = "list",
            member = M.RegistrationFieldDefinition,
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
    id = "DescribeRegistrationFieldValuesInput",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNumber = {
            type = "long",
        },
        SectionPath = {
            type = "string",
        },
        FieldPaths = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.RegistrationFieldValueInformation = {
    type = "structure",
    id = "RegistrationFieldValueInformation",
    members = {
        FieldPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectChoices = {
            type = "list",
            member = { type = "string" },
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
    id = "DescribeRegistrationFieldValuesOutput",
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
            type = "long",
            traits = {
                required = true,
            },
        },
        RegistrationFieldValues = {
            type = "list",
            member = M.RegistrationFieldValueInformation,
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
    id = "RegistrationFilter",
    members = {
        Name = {
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

M.DescribeRegistrationsInput = {
    type = "structure",
    id = "DescribeRegistrationsInput",
    members = {
        RegistrationIds = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.RegistrationFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.RegistrationInformation = {
    type = "structure",
    id = "RegistrationInformation",
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
            type = "long",
            traits = {
                required = true,
            },
        },
        ApprovedVersionNumber = {
            type = "long",
        },
        LatestDeniedVersionNumber = {
            type = "long",
        },
        AdditionalAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "DescribeRegistrationsOutput",
    members = {
        Registrations = {
            type = "list",
            member = M.RegistrationInformation,
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
    id = "DescribeRegistrationSectionDefinitionsInput",
    members = {
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SectionPaths = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.RegistrationSectionDisplayHints = {
    type = "structure",
    id = "RegistrationSectionDisplayHints",
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
    id = "RegistrationSectionDefinition",
    members = {
        SectionPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DisplayHints = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistrationSectionDisplayHints }),
    },
}

M.DescribeRegistrationSectionDefinitionsOutput = {
    type = "structure",
    id = "DescribeRegistrationSectionDefinitionsOutput",
    members = {
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegistrationSectionDefinitions = {
            type = "list",
            member = M.RegistrationSectionDefinition,
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
    id = "RegistrationTypeFilter",
    members = {
        Name = {
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

M.DescribeRegistrationTypeDefinitionsInput = {
    type = "structure",
    id = "DescribeRegistrationTypeDefinitionsInput",
    members = {
        RegistrationTypes = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.RegistrationTypeFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.RegistrationTypeDisplayHints = {
    type = "structure",
    id = "RegistrationTypeDisplayHints",
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
    id = "SupportedAssociation",
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
    id = "RegistrationTypeDefinition",
    members = {
        RegistrationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SupportedAssociations = {
            type = "list",
            member = M.SupportedAssociation,
        },
        DisplayHints = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistrationTypeDisplayHints }),
    },
}

M.DescribeRegistrationTypeDefinitionsOutput = {
    type = "structure",
    id = "DescribeRegistrationTypeDefinitionsOutput",
    members = {
        RegistrationTypeDefinitions = {
            type = "list",
            member = M.RegistrationTypeDefinition,
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
    id = "RegistrationVersionFilter",
    members = {
        Name = {
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

M.DescribeRegistrationVersionsInput = {
    type = "structure",
    id = "DescribeRegistrationVersionsInput",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionNumbers = {
            type = "list",
            member = { type = "long" },
        },
        Filters = {
            type = "list",
            member = M.RegistrationVersionFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.RegistrationDeniedReasonInformation = {
    type = "structure",
    id = "RegistrationDeniedReasonInformation",
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
    id = "RegistrationVersionInformation",
    members = {
        VersionNumber = {
            type = "long",
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
        RegistrationVersionStatusHistory = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistrationVersionStatusHistory }),
        DeniedReasons = {
            type = "list",
            member = M.RegistrationDeniedReasonInformation,
        },
        Feedback = {
            type = "string",
        },
    },
}

M.DescribeRegistrationVersionsOutput = {
    type = "structure",
    id = "DescribeRegistrationVersionsOutput",
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
            member = M.RegistrationVersionInformation,
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
    id = "SenderIdFilter",
    members = {
        Name = {
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

M.SenderIdAndCountry = {
    type = "structure",
    id = "SenderIdAndCountry",
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
    id = "DescribeSenderIdsInput",
    members = {
        SenderIds = {
            type = "list",
            member = M.SenderIdAndCountry,
        },
        Filters = {
            type = "list",
            member = M.SenderIdFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Owner = {
            type = "string",
        },
    },
}

M.SenderIdInformation = {
    type = "structure",
    id = "SenderIdInformation",
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
            member = { type = "string" },
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
                default = false,
                required = true,
            },
        },
        Registered = {
            type = "boolean",
            traits = {
                default = false,
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
    id = "DescribeSenderIdsOutput",
    members = {
        SenderIds = {
            type = "list",
            member = M.SenderIdInformation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSpendLimitsInput = {
    type = "structure",
    id = "DescribeSpendLimitsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
    id = "SpendLimit",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnforcedLimit = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        MaxLimit = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        Overridden = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.DescribeSpendLimitsOutput = {
    type = "structure",
    id = "DescribeSpendLimitsOutput",
    members = {
        SpendLimits = {
            type = "list",
            member = M.SpendLimit,
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
    id = "VerifiedDestinationNumberFilter",
    members = {
        Name = {
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

M.DescribeVerifiedDestinationNumbersInput = {
    type = "structure",
    id = "DescribeVerifiedDestinationNumbersInput",
    members = {
        VerifiedDestinationNumberIds = {
            type = "list",
            member = { type = "string" },
        },
        DestinationPhoneNumbers = {
            type = "list",
            member = { type = "string" },
        },
        Filters = {
            type = "list",
            member = M.VerifiedDestinationNumberFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.VerifiedDestinationNumberInformation = {
    type = "structure",
    id = "VerifiedDestinationNumberInformation",
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
    id = "DescribeVerifiedDestinationNumbersOutput",
    members = {
        VerifiedDestinationNumbers = {
            type = "list",
            member = M.VerifiedDestinationNumberInformation,
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
    id = "DisassociateOriginationIdentityInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DisassociateOriginationIdentityOutput = {
    type = "structure",
    id = "DisassociateOriginationIdentityOutput",
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
    id = "DisassociateProtectConfigurationInput",
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
    id = "DisassociateProtectConfigurationOutput",
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
    id = "DiscardRegistrationVersionInput",
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
    id = "DiscardRegistrationVersionOutput",
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
            type = "long",
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
        RegistrationVersionStatusHistory = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistrationVersionStatusHistory }),
    },
}

M.GetProtectConfigurationCountryRuleSetInput = {
    type = "structure",
    id = "GetProtectConfigurationCountryRuleSetInput",
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
    id = "ProtectConfigurationCountryRuleSetInformation",
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
    id = "GetProtectConfigurationCountryRuleSetOutput",
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
            key = { type = "string" },
            value = M.ProtectConfigurationCountryRuleSetInformation,
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
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
    id = "GetResourcePolicyOutput",
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
    id = "ListNotifyCountriesInput",
    members = {
        Channels = {
            type = "list",
            member = { type = "string" },
        },
        UseCases = {
            type = "list",
            member = { type = "string" },
        },
        Tier = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.NotifyCountryInformation = {
    type = "structure",
    id = "NotifyCountryInformation",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SupportedUseCases = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SupportedTiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        CustomerOwnedIdentityRequired = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.ListNotifyCountriesOutput = {
    type = "structure",
    id = "ListNotifyCountriesOutput",
    members = {
        NotifyCountries = {
            type = "list",
            member = M.NotifyCountryInformation,
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
    id = "PoolOriginationIdentitiesFilter",
    members = {
        Name = {
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

M.ListPoolOriginationIdentitiesInput = {
    type = "structure",
    id = "ListPoolOriginationIdentitiesInput",
    members = {
        PoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.PoolOriginationIdentitiesFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.OriginationIdentityMetadata = {
    type = "structure",
    id = "OriginationIdentityMetadata",
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
            member = { type = "string" },
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
    id = "ListPoolOriginationIdentitiesOutput",
    members = {
        PoolArn = {
            type = "string",
        },
        PoolId = {
            type = "string",
        },
        OriginationIdentities = {
            type = "list",
            member = M.OriginationIdentityMetadata,
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
    id = "ProtectConfigurationRuleSetNumberOverrideFilterItem",
    members = {
        Name = {
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

M.ListProtectConfigurationRuleSetNumberOverridesInput = {
    type = "structure",
    id = "ListProtectConfigurationRuleSetNumberOverridesInput",
    members = {
        ProtectConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.ProtectConfigurationRuleSetNumberOverrideFilterItem,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ProtectConfigurationRuleSetNumberOverride = {
    type = "structure",
    id = "ProtectConfigurationRuleSetNumberOverride",
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
    id = "ListProtectConfigurationRuleSetNumberOverridesOutput",
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
            member = M.ProtectConfigurationRuleSetNumberOverride,
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
    id = "RegistrationAssociationFilter",
    members = {
        Name = {
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

M.ListRegistrationAssociationsInput = {
    type = "structure",
    id = "ListRegistrationAssociationsInput",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "list",
            member = M.RegistrationAssociationFilter,
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.RegistrationAssociationMetadata = {
    type = "structure",
    id = "RegistrationAssociationMetadata",
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
    id = "ListRegistrationAssociationsOutput",
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
            member = M.RegistrationAssociationMetadata,
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
        ResourceArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.MessageFeedbackStatus = {
    RECEIVED = "RECEIVED",
    FAILED = "FAILED",
}

M.PutKeywordInput = {
    type = "structure",
    id = "PutKeywordInput",
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
    id = "PutKeywordOutput",
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
    id = "PutMessageFeedbackInput",
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
    id = "PutMessageFeedbackOutput",
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
    id = "PutOptedOutNumberInput",
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
    id = "PutOptedOutNumberOutput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.PutProtectConfigurationRuleSetNumberOverrideInput = {
    type = "structure",
    id = "PutProtectConfigurationRuleSetNumberOverrideInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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
    id = "PutProtectConfigurationRuleSetNumberOverrideOutput",
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
    id = "PutRegistrationFieldValueInput",
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
            member = { type = "string" },
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
    id = "PutRegistrationFieldValueOutput",
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
            type = "long",
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
            member = { type = "string" },
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
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
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
    id = "ReleasePhoneNumberInput",
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
    id = "ReleasePhoneNumberOutput",
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
            member = { type = "string" },
        },
        NumberType = {
            type = "string",
        },
        MonthlyLeasingPrice = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
            traits = {
                default = false,
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
                default = false,
            },
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
    id = "ReleaseSenderIdInput",
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
    id = "ReleaseSenderIdOutput",
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
            member = { type = "string" },
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
                default = false,
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
    id = "RequestPhoneNumberInput",
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
            member = { type = "string" },
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
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.RequestPhoneNumberOutput = {
    type = "structure",
    id = "RequestPhoneNumberOutput",
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
            member = { type = "string" },
        },
        NumberType = {
            type = "string",
        },
        MonthlyLeasingPrice = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
            traits = {
                default = false,
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
                default = false,
            },
        },
        OptOutListName = {
            type = "string",
        },
        InternationalSendingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PoolId = {
            type = "string",
        },
        RegistrationId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.RequestSenderIdInput = {
    type = "structure",
    id = "RequestSenderIdInput",
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
            member = { type = "string" },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.RequestSenderIdOutput = {
    type = "structure",
    id = "RequestSenderIdOutput",
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
            member = { type = "string" },
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
                default = false,
                required = true,
            },
        },
        Registered = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.VerificationChannel = {
    TEXT = "TEXT",
    VOICE = "VOICE",
}

M.SendDestinationNumberVerificationCodeInput = {
    type = "structure",
    id = "SendDestinationNumberVerificationCodeInput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        DestinationCountryParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SendDestinationNumberVerificationCodeOutput = {
    type = "structure",
    id = "SendDestinationNumberVerificationCodeOutput",
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
    id = "SendMediaMessageInput",
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
            member = { type = "string" },
        },
        ConfigurationSetName = {
            type = "string",
        },
        MaxPrice = {
            type = "string",
        },
        TimeToLive = {
            type = "integer",
        },
        Context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "SendMediaMessageOutput",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.SendNotifyTextMessageInput = {
    type = "structure",
    id = "SendNotifyTextMessageInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        TimeToLive = {
            type = "integer",
        },
        Context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ConfigurationSetName = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        MessageFeedbackEnabled = {
            type = "boolean",
        },
    },
}

M.SendNotifyTextMessageOutput = {
    type = "structure",
    id = "SendNotifyTextMessageOutput",
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
    id = "SendNotifyVoiceMessageInput",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        VoiceId = {
            type = "string",
        },
        TimeToLive = {
            type = "integer",
        },
        Context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ConfigurationSetName = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        MessageFeedbackEnabled = {
            type = "boolean",
        },
    },
}

M.SendNotifyVoiceMessageOutput = {
    type = "structure",
    id = "SendNotifyVoiceMessageOutput",
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
    id = "SendTextMessageInput",
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
            type = "integer",
        },
        Context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DestinationCountryParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "SendTextMessageOutput",
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
    id = "SendVoiceMessageInput",
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
            type = "integer",
        },
        Context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "SendVoiceMessageOutput",
    members = {
        MessageId = {
            type = "string",
        },
    },
}

M.SetAccountDefaultProtectConfigurationInput = {
    type = "structure",
    id = "SetAccountDefaultProtectConfigurationInput",
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
    id = "SetAccountDefaultProtectConfigurationOutput",
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
    id = "SetDefaultMessageFeedbackEnabledInput",
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
    id = "SetDefaultMessageFeedbackEnabledOutput",
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
    id = "SetDefaultMessageTypeInput",
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
    id = "SetDefaultMessageTypeOutput",
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
    id = "SetDefaultSenderIdInput",
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
    id = "SetDefaultSenderIdOutput",
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
    id = "SetMediaMessageSpendLimitOverrideInput",
    members = {
        MonthlyLimit = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.SetMediaMessageSpendLimitOverrideOutput = {
    type = "structure",
    id = "SetMediaMessageSpendLimitOverrideOutput",
    members = {
        MonthlyLimit = {
            type = "long",
        },
    },
}

M.SetNotifyMessageSpendLimitOverrideInput = {
    type = "structure",
    id = "SetNotifyMessageSpendLimitOverrideInput",
    members = {
        MonthlyLimit = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.SetNotifyMessageSpendLimitOverrideOutput = {
    type = "structure",
    id = "SetNotifyMessageSpendLimitOverrideOutput",
    members = {
        MonthlyLimit = {
            type = "long",
        },
    },
}

M.SetTextMessageSpendLimitOverrideInput = {
    type = "structure",
    id = "SetTextMessageSpendLimitOverrideInput",
    members = {
        MonthlyLimit = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.SetTextMessageSpendLimitOverrideOutput = {
    type = "structure",
    id = "SetTextMessageSpendLimitOverrideOutput",
    members = {
        MonthlyLimit = {
            type = "long",
        },
    },
}

M.SetVoiceMessageSpendLimitOverrideInput = {
    type = "structure",
    id = "SetVoiceMessageSpendLimitOverrideInput",
    members = {
        MonthlyLimit = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.SetVoiceMessageSpendLimitOverrideOutput = {
    type = "structure",
    id = "SetVoiceMessageSpendLimitOverrideOutput",
    members = {
        MonthlyLimit = {
            type = "long",
        },
    },
}

M.SubmitRegistrationVersionInput = {
    type = "structure",
    id = "SubmitRegistrationVersionInput",
    members = {
        RegistrationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsReview = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.SubmitRegistrationVersionOutput = {
    type = "structure",
    id = "SubmitRegistrationVersionOutput",
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
            type = "long",
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
        RegistrationVersionStatusHistory = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegistrationVersionStatusHistory }),
        AwsReview = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
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

M.UpdateEventDestinationInput = {
    type = "structure",
    id = "UpdateEventDestinationInput",
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
            member = { type = "string" },
        },
        CloudWatchLogsDestination = M.CloudWatchLogsDestination,
        KinesisFirehoseDestination = M.KinesisFirehoseDestination,
        SnsDestination = M.SnsDestination,
    },
}

M.UpdateEventDestinationOutput = {
    type = "structure",
    id = "UpdateEventDestinationOutput",
    members = {
        ConfigurationSetArn = {
            type = "string",
        },
        ConfigurationSetName = {
            type = "string",
        },
        EventDestination = M.EventDestination,
    },
}

M.UpdateNotifyConfigurationInput = {
    type = "structure",
    id = "UpdateNotifyConfigurationInput",
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
            member = { type = "string" },
        },
        EnabledChannels = {
            type = "list",
            member = { type = "string" },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateNotifyConfigurationOutput = {
    type = "structure",
    id = "UpdateNotifyConfigurationOutput",
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
            member = { type = "string" },
        },
        EnabledChannels = {
            type = "list",
            member = { type = "string" },
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
                default = false,
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
    id = "UpdatePhoneNumberInput",
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
    id = "UpdatePhoneNumberOutput",
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
            member = { type = "string" },
        },
        NumberType = {
            type = "string",
        },
        MonthlyLeasingPrice = {
            type = "string",
        },
        TwoWayEnabled = {
            type = "boolean",
            traits = {
                default = false,
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
                default = false,
            },
        },
        OptOutListName = {
            type = "string",
        },
        InternationalSendingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "UpdatePoolInput",
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
    id = "UpdatePoolOutput",
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
            traits = {
                default = false,
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
                default = false,
            },
        },
        OptOutListName = {
            type = "string",
        },
        SharedRoutesEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CreatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.UpdateProtectConfigurationInput = {
    type = "structure",
    id = "UpdateProtectConfigurationInput",
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
    id = "UpdateProtectConfigurationOutput",
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
                default = false,
                required = true,
            },
        },
        DeletionProtectionEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.UpdateProtectConfigurationCountryRuleSetInput = {
    type = "structure",
    id = "UpdateProtectConfigurationCountryRuleSetInput",
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
            key = { type = "string" },
            value = M.ProtectConfigurationCountryRuleSetInformation,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProtectConfigurationCountryRuleSetOutput = {
    type = "structure",
    id = "UpdateProtectConfigurationCountryRuleSetOutput",
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
            key = { type = "string" },
            value = M.ProtectConfigurationCountryRuleSetInformation,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRcsAgentInput = {
    type = "structure",
    id = "UpdateRcsAgentInput",
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
    id = "UpdateRcsAgentOutput",
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
                default = false,
                required = true,
            },
        },
        OptOutListName = {
            type = "string",
        },
        SelfManagedOptOutsEnabled = {
            type = "boolean",
            traits = {
                default = false,
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
                default = false,
                required = true,
            },
        },
    },
}

M.UpdateSenderIdInput = {
    type = "structure",
    id = "UpdateSenderIdInput",
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
    id = "UpdateSenderIdOutput",
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
            member = { type = "string" },
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
                default = false,
                required = true,
            },
        },
        Registered = {
            type = "boolean",
            traits = {
                default = false,
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
    id = "VerifyDestinationNumberInput",
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
    id = "VerifyDestinationNumberOutput",
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
