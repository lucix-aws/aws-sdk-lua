local M = {}

M.AcceptHandshakeInput = {
    type = "structure",
    members = {
        HandshakeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionType = {
    INVITE_ACCOUNT_TO_ORGANIZATION = "INVITE",
    ENABLE_ALL_FEATURES = "ENABLE_ALL_FEATURES",
    APPROVE_ALL_FEATURES = "APPROVE_ALL_FEATURES",
    ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE = "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE",
    TRANSFER_RESPONSIBILITY = "TRANSFER_RESPONSIBILITY",
}

M.HandshakePartyType = {
    ACCOUNT = "ACCOUNT",
    ORGANIZATION = "ORGANIZATION",
    EMAIL = "EMAIL",
}

M.HandshakeParty = {
    type = "structure",
    members = {
        Id = {
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
    },
}

M.HandshakeResourceType = {
    ACCOUNT = "ACCOUNT",
    ORGANIZATION = "ORGANIZATION",
    ORGANIZATION_FEATURE_SET = "ORGANIZATION_FEATURE_SET",
    EMAIL = "EMAIL",
    MASTER_EMAIL = "MASTER_EMAIL",
    MASTER_NAME = "MASTER_NAME",
    NOTES = "NOTES",
    PARENT_HANDSHAKE = "PARENT_HANDSHAKE",
    RESPONSIBILITY_TRANSFER = "RESPONSIBILITY_TRANSFER",
    TRANSFER_START_TIMESTAMP = "TRANSFER_START_TIMESTAMP",
    TRANSFER_TYPE = "TRANSFER_TYPE",
    MANAGEMENT_ACCOUNT = "MANAGEMENT_ACCOUNT",
    MANAGEMENT_EMAIL = "MANAGEMENT_EMAIL",
    MANAGEMENT_NAME = "MANAGEMENT_NAME",
}

M.HandshakeState = {
    REQUESTED = "REQUESTED",
    OPEN = "OPEN",
    CANCELED = "CANCELED",
    ACCEPTED = "ACCEPTED",
    DECLINED = "DECLINED",
    EXPIRED = "EXPIRED",
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

M.AccessDeniedForDependencyExceptionReason = {
    ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE = "ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE",
}

M.AccessDeniedForDependencyException = {
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

M.AWSOrganizationsNotInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConstraintViolationExceptionReason = {
    ACCOUNT_NUMBER_LIMIT_EXCEEDED = "ACCOUNT_NUMBER_LIMIT_EXCEEDED",
    HANDSHAKE_RATE_LIMIT_EXCEEDED = "HANDSHAKE_RATE_LIMIT_EXCEEDED",
    OU_NUMBER_LIMIT_EXCEEDED = "OU_NUMBER_LIMIT_EXCEEDED",
    OU_DEPTH_LIMIT_EXCEEDED = "OU_DEPTH_LIMIT_EXCEEDED",
    POLICY_NUMBER_LIMIT_EXCEEDED = "POLICY_NUMBER_LIMIT_EXCEEDED",
    POLICY_CONTENT_LIMIT_EXCEEDED = "POLICY_CONTENT_LIMIT_EXCEEDED",
    MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED = "MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED",
    MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED = "MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED",
    ACCOUNT_CANNOT_LEAVE_ORGANIZATION = "ACCOUNT_CANNOT_LEAVE_ORGANIZATION",
    ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA = "ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA",
    ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION = "ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION",
    MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED = "MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED",
    MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED = "MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED",
    ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED = "ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED",
    MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE = "MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE",
    MASTER_ACCOUNT_MISSING_CONTACT_INFO = "MASTER_ACCOUNT_MISSING_CONTACT_INFO",
    MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED = "MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED",
    ORGANIZATION_NOT_IN_ALL_FEATURES_MODE = "ORGANIZATION_NOT_IN_ALL_FEATURES_MODE",
    CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION = "CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION",
    EMAIL_VERIFICATION_CODE_EXPIRED = "EMAIL_VERIFICATION_CODE_EXPIRED",
    WAIT_PERIOD_ACTIVE = "WAIT_PERIOD_ACTIVE",
    MAX_TAG_LIMIT_EXCEEDED = "MAX_TAG_LIMIT_EXCEEDED",
    TAG_POLICY_VIOLATION = "TAG_POLICY_VIOLATION",
    MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED = "MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED",
    CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR = "CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR",
    CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG = "CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG",
    DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE = "DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE",
    POLICY_TYPE_ENABLED_FOR_THIS_SERVICE = "POLICY_TYPE_ENABLED_FOR_THIS_SERVICE",
    MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE = "MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE",
    CANNOT_CLOSE_MANAGEMENT_ACCOUNT = "CANNOT_CLOSE_MANAGEMENT_ACCOUNT",
    CLOSE_ACCOUNT_QUOTA_EXCEEDED = "CLOSE_ACCOUNT_QUOTA_EXCEEDED",
    CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED = "CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED",
    SERVICE_ACCESS_NOT_ENABLED = "SERVICE_ACCESS_NOT_ENABLED",
    INVALID_PAYMENT_INSTRUMENT = "INVALID_PAYMENT_INSTRUMENT",
    ACCOUNT_CREATION_NOT_COMPLETE = "ACCOUNT_CREATION_NOT_COMPLETE",
    CANNOT_REGISTER_SUSPENDED_ACCOUNT_AS_DELEGATED_ADMINISTRATOR = "CANNOT_REGISTER_SUSPENDED_ACCOUNT_AS_DELEGATED_ADMINISTRATOR",
    ALL_FEATURES_MIGRATION_ORGANIZATION_SIZE_LIMIT_EXCEEDED = "ALL_FEATURES_MIGRATION_ORGANIZATION_SIZE_LIMIT_EXCEEDED",
    RESPONSIBILITY_TRANSFER_MAX_LEVEL_VIOLATION = "RESPONSIBILITY_TRANSFER_MAX_LEVEL_VIOLATION",
    RESPONSIBILITY_TRANSFER_MAX_INBOUND_QUOTA_VIOLATION = "RESPONSIBILITY_TRANSFER_MAX_INBOUND_QUOTA_VIOLATION",
    RESPONSIBILITY_TRANSFER_MAX_OUTBOUND_QUOTA_VIOLATION = "RESPONSIBILITY_TRANSFER_MAX_OUTBOUND_QUOTA_VIOLATION",
    RESPONSIBILITY_TRANSFER_MAX_TRANSFERS_QUOTA_VIOLATION = "RESPONSIBILITY_TRANSFER_MAX_TRANSFERS_QUOTA_VIOLATION",
    ACTIVE_RESPONSIBILITY_TRANSFER_PROCESS = "ACTIVE_RESPONSIBILITY_TRANSFER_PROCESS",
    TRANSFER_RESPONSIBILITY_TARGET_DELETION_IN_PROGRESS = "TRANSFER_RESPONSIBILITY_TARGET_DELETION_IN_PROGRESS",
    TRANSFER_RESPONSIBILITY_SOURCE_DELETION_IN_PROGRESS = "TRANSFER_RESPONSIBILITY_SOURCE_DELETION_IN_PROGRESS",
    UNSUPPORTED_PRICING = "UNSUPPORTED_PRICING",
}

M.ConstraintViolationException = {
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

M.HandshakeAlreadyInStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HandshakeConstraintViolationExceptionReason = {
    ACCOUNT_NUMBER_LIMIT_EXCEEDED = "ACCOUNT_NUMBER_LIMIT_EXCEEDED",
    HANDSHAKE_RATE_LIMIT_EXCEEDED = "HANDSHAKE_RATE_LIMIT_EXCEEDED",
    ALREADY_IN_AN_ORGANIZATION = "ALREADY_IN_AN_ORGANIZATION",
    ORGANIZATION_ALREADY_HAS_ALL_FEATURES = "ORGANIZATION_ALREADY_HAS_ALL_FEATURES",
    ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION = "ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION",
    INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES = "INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES",
    PAYMENT_INSTRUMENT_REQUIRED = "PAYMENT_INSTRUMENT_REQUIRED",
    ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD = "ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD",
    ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED = "ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED",
    MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED = "MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED",
    RESPONSIBILITY_TRANSFER_ALREADY_EXISTS = "RESPONSIBILITY_TRANSFER_ALREADY_EXISTS",
    SOURCE_AND_TARGET_CANNOT_MATCH = "SOURCE_AND_TARGET_CANNOT_MATCH",
    UNUSED_PREPAYMENT_BALANCE = "UNUSED_PREPAYMENT_BALANCE",
    LEGACY_PERMISSIONS_STILL_IN_USE = "LEGACY_PERMISSIONS_STILL_IN_USE",
}

M.HandshakeConstraintViolationException = {
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

M.HandshakeNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidHandshakeTransitionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidInputExceptionReason = {
    INVALID_PARTY_TYPE_TARGET = "INVALID_PARTY_TYPE_TARGET",
    INVALID_SYNTAX_ORGANIZATION = "INVALID_SYNTAX_ORGANIZATION_ARN",
    INVALID_SYNTAX_POLICY = "INVALID_SYNTAX_POLICY_ID",
    INVALID_ENUM = "INVALID_ENUM",
    INVALID_ENUM_POLICY_TYPE = "INVALID_ENUM_POLICY_TYPE",
    INVALID_LIST_MEMBER = "INVALID_LIST_MEMBER",
    MAX_LENGTH_EXCEEDED = "MAX_LENGTH_EXCEEDED",
    MAX_VALUE_EXCEEDED = "MAX_VALUE_EXCEEDED",
    MIN_LENGTH_EXCEEDED = "MIN_LENGTH_EXCEEDED",
    MIN_VALUE_EXCEEDED = "MIN_VALUE_EXCEEDED",
    IMMUTABLE_POLICY = "IMMUTABLE_POLICY",
    INVALID_PATTERN = "INVALID_PATTERN",
    INVALID_PATTERN_TARGET_ID = "INVALID_PATTERN_TARGET_ID",
    INPUT_REQUIRED = "INPUT_REQUIRED",
    INVALID_PAGINATION_TOKEN = "INVALID_NEXT_TOKEN",
    MAX_FILTER_LIMIT_EXCEEDED = "MAX_LIMIT_EXCEEDED_FILTER",
    MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS = "MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS",
    INVALID_FULL_NAME_TARGET = "INVALID_FULL_NAME_TARGET",
    UNRECOGNIZED_SERVICE_PRINCIPAL = "UNRECOGNIZED_SERVICE_PRINCIPAL",
    INVALID_ROLE_NAME = "INVALID_ROLE_NAME",
    INVALID_SYSTEM_TAGS_PARAMETER = "INVALID_SYSTEM_TAGS_PARAMETER",
    DUPLICATE_TAG_KEY = "DUPLICATE_TAG_KEY",
    TARGET_NOT_SUPPORTED = "TARGET_NOT_SUPPORTED",
    INVALID_EMAIL_ADDRESS_TARGET = "INVALID_EMAIL_ADDRESS_TARGET",
    INVALID_RESOURCE_POLICY_JSON = "INVALID_RESOURCE_POLICY_JSON",
    INVALID_PRINCIPAL = "INVALID_PRINCIPAL",
    UNSUPPORTED_ACTION_IN_RESOURCE_POLICY = "UNSUPPORTED_ACTION_IN_RESOURCE_POLICY",
    UNSUPPORTED_POLICY_TYPE_IN_RESOURCE_POLICY = "UNSUPPORTED_POLICY_TYPE_IN_RESOURCE_POLICY",
    UNSUPPORTED_RESOURCE_IN_RESOURCE_POLICY = "UNSUPPORTED_RESOURCE_IN_RESOURCE_POLICY",
    NON_DETACHABLE_POLICY = "NON_DETACHABLE_POLICY",
    CALLER_REQUIRED_FIELD_MISSING = "CALLER_REQUIRED_FIELD_MISSING",
    UNSUPPORTED_ACTION_IN_RESPONSIBILITY_TRANSFER = "UNSUPPORTED_ACTION_IN_RESPONSIBILITY_TRANSFER",
    START_DATE_NOT_BEGINNING_OF_MONTH = "START_DATE_NOT_BEGINNING_OF_MONTH",
    START_DATE_NOT_BEGINNING_OF_DAY = "START_DATE_NOT_BEGINNING_OF_DAY",
    START_DATE_TOO_EARLY = "START_DATE_TOO_EARLY",
    START_DATE_TOO_LATE = "START_DATE_TOO_LATE",
    INVALID_START_DATE = "INVALID_START_DATE",
    END_DATE_NOT_END_OF_MONTH = "END_DATE_NOT_END_OF_MONTH",
    END_DATE_TOO_EARLY = "END_DATE_TOO_EARLY",
    INVALID_END_DATE = "INVALID_END_DATE",
}

M.InvalidInputException = {
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

M.MasterCannotLeaveOrganizationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        Type = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.AccountJoinedMethod = {
    INVITED = "INVITED",
    CREATED = "CREATED",
}

M.AccountState = {
    PENDING_ACTIVATION = "PENDING_ACTIVATION",
    ACTIVE = "ACTIVE",
    SUSPENDED = "SUSPENDED",
    PENDING_CLOSURE = "PENDING_CLOSURE",
    CLOSED = "CLOSED",
}

M.AccountStatus = {
    ACTIVE = "ACTIVE",
    SUSPENDED = "SUSPENDED",
    PENDING_CLOSURE = "PENDING_CLOSURE",
}

M.Account = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Paths = {
            type = "list",
            member = { type = "string" },
        },
        JoinedMethod = {
            type = "string",
        },
        JoinedTimestamp = {
            type = "timestamp",
        },
    },
}

M.AccountAlreadyClosedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountAlreadyRegisteredException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountNotRegisteredException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountOwnerNotVerifiedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AlreadyInOrganizationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttachPolicyInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachPolicyOutput = {
    type = "structure",
}

M.DuplicatePolicyAttachmentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicyChangesInProgressException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicyNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicyTypeNotEnabledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TargetNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedAPIEndpointException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelHandshakeInput = {
    type = "structure",
    members = {
        HandshakeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloseAccountInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloseAccountOutput = {
    type = "structure",
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

M.IAMUserAccessToBilling = {
    ALLOW = "ALLOW",
    DENY = "DENY",
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

M.CreateAccountInput = {
    type = "structure",
    members = {
        Email = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleName = {
            type = "string",
        },
        IamUserAccessToBilling = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAccountFailureReason = {
    ACCOUNT_LIMIT_EXCEEDED = "ACCOUNT_LIMIT_EXCEEDED",
    EMAIL_ALREADY_EXISTS = "EMAIL_ALREADY_EXISTS",
    INVALID_ADDRESS = "INVALID_ADDRESS",
    INVALID_EMAIL = "INVALID_EMAIL",
    CONCURRENT_ACCOUNT_MODIFICATION = "CONCURRENT_ACCOUNT_MODIFICATION",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
    GOVCLOUD_ACCOUNT_ALREADY_EXISTS = "GOVCLOUD_ACCOUNT_ALREADY_EXISTS",
    MISSING_BUSINESS_VALIDATION = "MISSING_BUSINESS_VALIDATION",
    FAILED_BUSINESS_VALIDATION = "FAILED_BUSINESS_VALIDATION",
    PENDING_BUSINESS_VALIDATIONv = "PENDING_BUSINESS_VALIDATION",
    INVALID_IDENTITY_FOR_BUSINESS_VALIDATION = "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION",
    UNKNOWN_BUSINESS_VALIDATION = "UNKNOWN_BUSINESS_VALIDATION",
    MISSING_PAYMENT_INSTRUMENT = "MISSING_PAYMENT_INSTRUMENT",
    INVALID_PAYMENT_INSTRUMENT = "INVALID_PAYMENT_INSTRUMENT",
    UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED = "UPDATE_EXISTING_RESOURCE_POLICY_WITH_TAGS_NOT_SUPPORTED",
}

M.CreateAccountState = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.CreateAccountStatus = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        AccountName = {
            type = "string",
        },
        State = {
            type = "string",
        },
        RequestedTimestamp = {
            type = "timestamp",
        },
        CompletedTimestamp = {
            type = "timestamp",
        },
        AccountId = {
            type = "string",
        },
        GovCloudAccountId = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.CreateAccountOutput = {
    type = "structure",
    members = {
        CreateAccountStatus = M.CreateAccountStatus,
    },
}

M.FinalizingOrganizationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateGovCloudAccountInput = {
    type = "structure",
    members = {
        Email = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleName = {
            type = "string",
        },
        IamUserAccessToBilling = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateGovCloudAccountOutput = {
    type = "structure",
    members = {
        CreateAccountStatus = M.CreateAccountStatus,
    },
}

M.OrganizationFeatureSet = {
    ALL = "ALL",
    CONSOLIDATED_BILLING = "CONSOLIDATED_BILLING",
}

M.CreateOrganizationInput = {
    type = "structure",
    members = {
        FeatureSet = {
            type = "string",
        },
    },
}

M.PolicyTypeStatus = {
    ENABLED = "ENABLED",
    PENDING_ENABLE = "PENDING_ENABLE",
    PENDING_DISABLE = "PENDING_DISABLE",
}

M.PolicyType = {
    SERVICE_CONTROL_POLICY = "SERVICE_CONTROL_POLICY",
    RESOURCE_CONTROL_POLICY = "RESOURCE_CONTROL_POLICY",
    TAG_POLICY = "TAG_POLICY",
    BACKUP_POLICY = "BACKUP_POLICY",
    AISERVICES_OPT_OUT_POLICY = "AISERVICES_OPT_OUT_POLICY",
    CHATBOT_POLICY = "CHATBOT_POLICY",
    DECLARATIVE_POLICY_EC2 = "DECLARATIVE_POLICY_EC2",
    SECURITYHUB_POLICY = "SECURITYHUB_POLICY",
    INSPECTOR_POLICY = "INSPECTOR_POLICY",
    UPGRADE_ROLLOUT_POLICY = "UPGRADE_ROLLOUT_POLICY",
    BEDROCK_POLICY = "BEDROCK_POLICY",
    S3_POLICY = "S3_POLICY",
    NETWORK_SECURITY_DIRECTOR_POLICY = "NETWORK_SECURITY_DIRECTOR_POLICY",
}

M.PolicyTypeSummary = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.Organization = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        FeatureSet = {
            type = "string",
        },
        MasterAccountArn = {
            type = "string",
        },
        MasterAccountId = {
            type = "string",
        },
        MasterAccountEmail = {
            type = "string",
        },
        AvailablePolicyTypes = {
            type = "list",
            member = M.PolicyTypeSummary,
        },
    },
}

M.CreateOrganizationOutput = {
    type = "structure",
    members = {
        Organization = M.Organization,
    },
}

M.CreateOrganizationalUnitInput = {
    type = "structure",
    members = {
        ParentId = {
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
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.OrganizationalUnit = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Path = {
            type = "string",
        },
    },
}

M.CreateOrganizationalUnitOutput = {
    type = "structure",
    members = {
        OrganizationalUnit = M.OrganizationalUnit,
    },
}

M.DuplicateOrganizationalUnitException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ParentNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreatePolicyInput = {
    type = "structure",
    members = {
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
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
        Type = {
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

M.PolicySummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        AwsManaged = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.Policy = {
    type = "structure",
    members = {
        PolicySummary = M.PolicySummary,
        Content = {
            type = "string",
        },
    },
}

M.CreatePolicyOutput = {
    type = "structure",
    members = {
        Policy = M.Policy,
    },
}

M.DuplicatePolicyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MalformedPolicyDocumentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicyTypeNotAvailableForOrganizationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeclineHandshakeInput = {
    type = "structure",
    members = {
        HandshakeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOrganizationInput = {
    type = "structure",
}

M.DeleteOrganizationOutput = {
    type = "structure",
}

M.OrganizationNotEmptyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteOrganizationalUnitInput = {
    type = "structure",
    members = {
        OrganizationalUnitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOrganizationalUnitOutput = {
    type = "structure",
}

M.OrganizationalUnitNotEmptyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OrganizationalUnitNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeletePolicyInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePolicyOutput = {
    type = "structure",
}

M.PolicyInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.ResourcePolicyNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeregisterDelegatedAdministratorInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServicePrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterDelegatedAdministratorOutput = {
    type = "structure",
}

M.DescribeAccountInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAccountOutput = {
    type = "structure",
    members = {
        Account = M.Account,
    },
}

M.CreateAccountStatusNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeCreateAccountStatusInput = {
    type = "structure",
    members = {
        CreateAccountRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCreateAccountStatusOutput = {
    type = "structure",
    members = {
        CreateAccountStatus = M.CreateAccountStatus,
    },
}

M.EffectivePolicyType = {
    TAG_POLICY = "TAG_POLICY",
    BACKUP_POLICY = "BACKUP_POLICY",
    AISERVICES_OPT_OUT_POLICY = "AISERVICES_OPT_OUT_POLICY",
    CHATBOT_POLICY = "CHATBOT_POLICY",
    DECLARATIVE_POLICY_EC2 = "DECLARATIVE_POLICY_EC2",
    SECURITYHUB_POLICY = "SECURITYHUB_POLICY",
    INSPECTOR_POLICY = "INSPECTOR_POLICY",
    UPGRADE_ROLLOUT_POLICY = "UPGRADE_ROLLOUT_POLICY",
    BEDROCK_POLICY = "BEDROCK_POLICY",
    S3_POLICY = "S3_POLICY",
    NETWORK_SECURITY_DIRECTOR_POLICY = "NETWORK_SECURITY_DIRECTOR_POLICY",
}

M.DescribeEffectivePolicyInput = {
    type = "structure",
    members = {
        PolicyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetId = {
            type = "string",
        },
    },
}

M.EffectivePolicy = {
    type = "structure",
    members = {
        PolicyContent = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        TargetId = {
            type = "string",
        },
        PolicyType = {
            type = "string",
        },
    },
}

M.DescribeEffectivePolicyOutput = {
    type = "structure",
    members = {
        EffectivePolicy = M.EffectivePolicy,
    },
}

M.EffectivePolicyNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeHandshakeInput = {
    type = "structure",
    members = {
        HandshakeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeOrganizationInput = {
    type = "structure",
}

M.DescribeOrganizationOutput = {
    type = "structure",
    members = {
        Organization = M.Organization,
    },
}

M.DescribeOrganizationalUnitInput = {
    type = "structure",
    members = {
        OrganizationalUnitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeOrganizationalUnitOutput = {
    type = "structure",
    members = {
        OrganizationalUnit = M.OrganizationalUnit,
    },
}

M.DescribePolicyInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePolicyOutput = {
    type = "structure",
    members = {
        Policy = M.Policy,
    },
}

M.DescribeResourcePolicyInput = {
    type = "structure",
}

M.ResourcePolicySummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ResourcePolicy = {
    type = "structure",
    members = {
        ResourcePolicySummary = M.ResourcePolicySummary,
        Content = {
            type = "string",
        },
    },
}

M.DescribeResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourcePolicy = M.ResourcePolicy,
    },
}

M.DescribeResponsibilityTransferInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransferParticipant = {
    type = "structure",
    members = {
        ManagementAccountId = {
            type = "string",
        },
        ManagementAccountEmail = {
            type = "string",
        },
    },
}

M.ResponsibilityTransferStatus = {
    REQUESTED = "REQUESTED",
    DECLINED = "DECLINED",
    CANCELED = "CANCELED",
    EXPIRED = "EXPIRED",
    ACCEPTED = "ACCEPTED",
    WITHDRAWN = "WITHDRAWN",
}

M.ResponsibilityTransferType = {
    BILLING = "BILLING",
}

M.ResponsibilityTransfer = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Source = M.TransferParticipant,
        Target = M.TransferParticipant,
        StartTimestamp = {
            type = "timestamp",
        },
        EndTimestamp = {
            type = "timestamp",
        },
        ActiveHandshakeId = {
            type = "string",
        },
    },
}

M.DescribeResponsibilityTransferOutput = {
    type = "structure",
    members = {
        ResponsibilityTransfer = M.ResponsibilityTransfer,
    },
}

M.ResponsibilityTransferNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DetachPolicyInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachPolicyOutput = {
    type = "structure",
}

M.PolicyNotAttachedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DisableAWSServiceAccessInput = {
    type = "structure",
    members = {
        ServicePrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableAWSServiceAccessOutput = {
    type = "structure",
}

M.DisablePolicyTypeInput = {
    type = "structure",
    members = {
        RootId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Root = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        PolicyTypes = {
            type = "list",
            member = M.PolicyTypeSummary,
        },
    },
}

M.DisablePolicyTypeOutput = {
    type = "structure",
    members = {
        Root = M.Root,
    },
}

M.RootNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EnableAllFeaturesInput = {
    type = "structure",
}

M.EnableAWSServiceAccessInput = {
    type = "structure",
    members = {
        ServicePrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableAWSServiceAccessOutput = {
    type = "structure",
}

M.EnablePolicyTypeInput = {
    type = "structure",
    members = {
        RootId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnablePolicyTypeOutput = {
    type = "structure",
    members = {
        Root = M.Root,
    },
}

M.PolicyTypeAlreadyEnabledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DuplicateHandshakeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InviteAccountToOrganizationInput = {
    type = "structure",
    members = {
        Target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HandshakeParty }),
        Notes = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.InviteOrganizationToTransferResponsibilityInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HandshakeParty }),
        Notes = {
            type = "string",
        },
        StartTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        SourceName = {
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

M.LeaveOrganizationInput = {
    type = "structure",
}

M.LeaveOrganizationOutput = {
    type = "structure",
}

M.ListAccountsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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

M.ListAccountsForParentInput = {
    type = "structure",
    members = {
        ParentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListAccountsForParentOutput = {
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

M.ListAccountsWithInvalidEffectivePolicyInput = {
    type = "structure",
    members = {
        PolicyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListAccountsWithInvalidEffectivePolicyOutput = {
    type = "structure",
    members = {
        Accounts = {
            type = "list",
            member = M.Account,
        },
        PolicyType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAWSServiceAccessForOrganizationInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.EnabledServicePrincipal = {
    type = "structure",
    members = {
        ServicePrincipal = {
            type = "string",
        },
        DateEnabled = {
            type = "timestamp",
        },
    },
}

M.ListAWSServiceAccessForOrganizationOutput = {
    type = "structure",
    members = {
        EnabledServicePrincipals = {
            type = "list",
            member = M.EnabledServicePrincipal,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ChildType = {
    ACCOUNT = "ACCOUNT",
    ORGANIZATIONAL_UNIT = "ORGANIZATIONAL_UNIT",
}

M.ListChildrenInput = {
    type = "structure",
    members = {
        ParentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChildType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.Child = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ListChildrenOutput = {
    type = "structure",
    members = {
        Children = {
            type = "list",
            member = M.Child,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCreateAccountStatusInput = {
    type = "structure",
    members = {
        States = {
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

M.ListCreateAccountStatusOutput = {
    type = "structure",
    members = {
        CreateAccountStatuses = {
            type = "list",
            member = M.CreateAccountStatus,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDelegatedAdministratorsInput = {
    type = "structure",
    members = {
        ServicePrincipal = {
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

M.DelegatedAdministrator = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        State = {
            type = "string",
        },
        JoinedMethod = {
            type = "string",
        },
        JoinedTimestamp = {
            type = "timestamp",
        },
        DelegationEnabledDate = {
            type = "timestamp",
        },
    },
}

M.ListDelegatedAdministratorsOutput = {
    type = "structure",
    members = {
        DelegatedAdministrators = {
            type = "list",
            member = M.DelegatedAdministrator,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDelegatedServicesForAccountInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.DelegatedService = {
    type = "structure",
    members = {
        ServicePrincipal = {
            type = "string",
        },
        DelegationEnabledDate = {
            type = "timestamp",
        },
    },
}

M.ListDelegatedServicesForAccountOutput = {
    type = "structure",
    members = {
        DelegatedServices = {
            type = "list",
            member = M.DelegatedService,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEffectivePolicyValidationErrorsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.EffectivePolicyValidationError = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        PathToError = {
            type = "string",
        },
        ContributingPolicies = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListEffectivePolicyValidationErrorsOutput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        PolicyType = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        EvaluationTimestamp = {
            type = "timestamp",
        },
        NextToken = {
            type = "string",
        },
        EffectivePolicyValidationErrors = {
            type = "list",
            member = M.EffectivePolicyValidationError,
        },
    },
}

M.HandshakeFilter = {
    type = "structure",
    members = {
        ActionType = {
            type = "string",
        },
        ParentHandshakeId = {
            type = "string",
        },
    },
}

M.ListHandshakesForAccountInput = {
    type = "structure",
    members = {
        Filter = M.HandshakeFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListHandshakesForOrganizationInput = {
    type = "structure",
    members = {
        Filter = M.HandshakeFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListInboundResponsibilityTransfersInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
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

M.ListInboundResponsibilityTransfersOutput = {
    type = "structure",
    members = {
        ResponsibilityTransfers = {
            type = "list",
            member = M.ResponsibilityTransfer,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOrganizationalUnitsForParentInput = {
    type = "structure",
    members = {
        ParentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListOrganizationalUnitsForParentOutput = {
    type = "structure",
    members = {
        OrganizationalUnits = {
            type = "list",
            member = M.OrganizationalUnit,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOutboundResponsibilityTransfersInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListOutboundResponsibilityTransfersOutput = {
    type = "structure",
    members = {
        ResponsibilityTransfers = {
            type = "list",
            member = M.ResponsibilityTransfer,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ChildNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListParentsInput = {
    type = "structure",
    members = {
        ChildId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ParentType = {
    ROOT = "ROOT",
    ORGANIZATIONAL_UNIT = "ORGANIZATIONAL_UNIT",
}

M.Parent = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ListParentsOutput = {
    type = "structure",
    members = {
        Parents = {
            type = "list",
            member = M.Parent,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPoliciesInput = {
    type = "structure",
    members = {
        Filter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListPoliciesOutput = {
    type = "structure",
    members = {
        Policies = {
            type = "list",
            member = M.PolicySummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPoliciesForTargetInput = {
    type = "structure",
    members = {
        TargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListPoliciesForTargetOutput = {
    type = "structure",
    members = {
        Policies = {
            type = "list",
            member = M.PolicySummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRootsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListRootsOutput = {
    type = "structure",
    members = {
        Roots = {
            type = "list",
            member = M.Root,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceId = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTargetsForPolicyInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.TargetType = {
    ACCOUNT = "ACCOUNT",
    ORGANIZATIONAL_UNIT = "ORGANIZATIONAL_UNIT",
    ROOT = "ROOT",
}

M.PolicyTargetSummary = {
    type = "structure",
    members = {
        TargetId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ListTargetsForPolicyOutput = {
    type = "structure",
    members = {
        Targets = {
            type = "list",
            member = M.PolicyTargetSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DestinationParentNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DuplicateAccountException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MoveAccountInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceParentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationParentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MoveAccountOutput = {
    type = "structure",
}

M.SourceParentNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        Content = {
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

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourcePolicy = M.ResourcePolicy,
    },
}

M.RegisterDelegatedAdministratorInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServicePrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterDelegatedAdministratorOutput = {
    type = "structure",
}

M.RemoveAccountFromOrganizationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveAccountFromOrganizationOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceId = {
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

M.InvalidResponsibilityTransferTransitionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResponsibilityTransferAlreadyInStatusException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TerminateResponsibilityTransferInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndTimestamp = {
            type = "timestamp",
        },
    },
}

M.TerminateResponsibilityTransferOutput = {
    type = "structure",
    members = {
        ResponsibilityTransfer = M.ResponsibilityTransfer,
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceId = {
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

M.UpdateOrganizationalUnitInput = {
    type = "structure",
    members = {
        OrganizationalUnitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdateOrganizationalUnitOutput = {
    type = "structure",
    members = {
        OrganizationalUnit = M.OrganizationalUnit,
    },
}

M.UpdatePolicyInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Content = {
            type = "string",
        },
    },
}

M.UpdatePolicyOutput = {
    type = "structure",
    members = {
        Policy = M.Policy,
    },
}

M.UpdateResponsibilityTransferInput = {
    type = "structure",
    members = {
        Id = {
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
    },
}

M.UpdateResponsibilityTransferOutput = {
    type = "structure",
    members = {
        ResponsibilityTransfer = M.ResponsibilityTransfer,
    },
}

M.HandshakeResource = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Resources = {
            type = "list",
            member = M.HandshakeResource,
        },
    },
}

M.Handshake = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Parties = {
            type = "list",
            member = M.HandshakeParty,
        },
        State = {
            type = "string",
        },
        RequestedTimestamp = {
            type = "timestamp",
        },
        ExpirationTimestamp = {
            type = "timestamp",
        },
        Action = {
            type = "string",
        },
        Resources = {
            type = "list",
            member = M.HandshakeResource,
        },
    },
}

M.AcceptHandshakeOutput = {
    type = "structure",
    members = {
        Handshake = M.Handshake,
    },
}

M.CancelHandshakeOutput = {
    type = "structure",
    members = {
        Handshake = M.Handshake,
    },
}

M.DeclineHandshakeOutput = {
    type = "structure",
    members = {
        Handshake = M.Handshake,
    },
}

M.DescribeHandshakeOutput = {
    type = "structure",
    members = {
        Handshake = M.Handshake,
    },
}

M.EnableAllFeaturesOutput = {
    type = "structure",
    members = {
        Handshake = M.Handshake,
    },
}

M.InviteAccountToOrganizationOutput = {
    type = "structure",
    members = {
        Handshake = M.Handshake,
    },
}

M.InviteOrganizationToTransferResponsibilityOutput = {
    type = "structure",
    members = {
        Handshake = M.Handshake,
    },
}

M.ListHandshakesForAccountOutput = {
    type = "structure",
    members = {
        Handshakes = {
            type = "list",
            member = M.Handshake,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHandshakesForOrganizationOutput = {
    type = "structure",
    members = {
        Handshakes = {
            type = "list",
            member = M.Handshake,
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
