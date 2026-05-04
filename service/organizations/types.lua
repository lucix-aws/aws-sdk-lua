local M = {}

M.AcceptHandshakeInput = {
    type = "structure",
    id = "AcceptHandshakeInput",
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
    id = "HandshakeParty",
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
    id = "AccessDeniedException",
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
    id = "AccessDeniedForDependencyException",
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
    id = "AWSOrganizationsNotInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
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
    id = "ConstraintViolationException",
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
    id = "HandshakeAlreadyInStateException",
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
    id = "HandshakeConstraintViolationException",
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
    id = "HandshakeNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidHandshakeTransitionException = {
    type = "structure",
    id = "InvalidHandshakeTransitionException",
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
    id = "InvalidInputException",
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
    id = "MasterCannotLeaveOrganizationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceException = {
    type = "structure",
    id = "ServiceException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
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
    id = "Account",
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
    id = "AccountAlreadyClosedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountAlreadyRegisteredException = {
    type = "structure",
    id = "AccountAlreadyRegisteredException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountNotFoundException = {
    type = "structure",
    id = "AccountNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountNotRegisteredException = {
    type = "structure",
    id = "AccountNotRegisteredException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountOwnerNotVerifiedException = {
    type = "structure",
    id = "AccountOwnerNotVerifiedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AlreadyInOrganizationException = {
    type = "structure",
    id = "AlreadyInOrganizationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AttachPolicyInput = {
    type = "structure",
    id = "AttachPolicyInput",
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
    id = "AttachPolicyOutput",
}

M.DuplicatePolicyAttachmentException = {
    type = "structure",
    id = "DuplicatePolicyAttachmentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicyChangesInProgressException = {
    type = "structure",
    id = "PolicyChangesInProgressException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicyNotFoundException = {
    type = "structure",
    id = "PolicyNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicyTypeNotEnabledException = {
    type = "structure",
    id = "PolicyTypeNotEnabledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TargetNotFoundException = {
    type = "structure",
    id = "TargetNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedAPIEndpointException = {
    type = "structure",
    id = "UnsupportedAPIEndpointException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelHandshakeInput = {
    type = "structure",
    id = "CancelHandshakeInput",
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
    id = "CloseAccountInput",
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
    id = "CloseAccountOutput",
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

M.IAMUserAccessToBilling = {
    ALLOW = "ALLOW",
    DENY = "DENY",
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

M.CreateAccountInput = {
    type = "structure",
    id = "CreateAccountInput",
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
    id = "CreateAccountStatus",
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
    id = "CreateAccountOutput",
    members = {
        CreateAccountStatus = M.CreateAccountStatus,
    },
}

M.FinalizingOrganizationException = {
    type = "structure",
    id = "FinalizingOrganizationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateGovCloudAccountInput = {
    type = "structure",
    id = "CreateGovCloudAccountInput",
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
    id = "CreateGovCloudAccountOutput",
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
    id = "CreateOrganizationInput",
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
    id = "PolicyTypeSummary",
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
    id = "Organization",
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
    id = "CreateOrganizationOutput",
    members = {
        Organization = M.Organization,
    },
}

M.CreateOrganizationalUnitInput = {
    type = "structure",
    id = "CreateOrganizationalUnitInput",
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
    id = "OrganizationalUnit",
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
    id = "CreateOrganizationalUnitOutput",
    members = {
        OrganizationalUnit = M.OrganizationalUnit,
    },
}

M.DuplicateOrganizationalUnitException = {
    type = "structure",
    id = "DuplicateOrganizationalUnitException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ParentNotFoundException = {
    type = "structure",
    id = "ParentNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreatePolicyInput = {
    type = "structure",
    id = "CreatePolicyInput",
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
    id = "PolicySummary",
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
    id = "Policy",
    members = {
        PolicySummary = M.PolicySummary,
        Content = {
            type = "string",
        },
    },
}

M.CreatePolicyOutput = {
    type = "structure",
    id = "CreatePolicyOutput",
    members = {
        Policy = M.Policy,
    },
}

M.DuplicatePolicyException = {
    type = "structure",
    id = "DuplicatePolicyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MalformedPolicyDocumentException = {
    type = "structure",
    id = "MalformedPolicyDocumentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicyTypeNotAvailableForOrganizationException = {
    type = "structure",
    id = "PolicyTypeNotAvailableForOrganizationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeclineHandshakeInput = {
    type = "structure",
    id = "DeclineHandshakeInput",
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
    id = "DeleteOrganizationInput",
}

M.DeleteOrganizationOutput = {
    type = "structure",
    id = "DeleteOrganizationOutput",
}

M.OrganizationNotEmptyException = {
    type = "structure",
    id = "OrganizationNotEmptyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteOrganizationalUnitInput = {
    type = "structure",
    id = "DeleteOrganizationalUnitInput",
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
    id = "DeleteOrganizationalUnitOutput",
}

M.OrganizationalUnitNotEmptyException = {
    type = "structure",
    id = "OrganizationalUnitNotEmptyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OrganizationalUnitNotFoundException = {
    type = "structure",
    id = "OrganizationalUnitNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeletePolicyInput = {
    type = "structure",
    id = "DeletePolicyInput",
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
    id = "DeletePolicyOutput",
}

M.PolicyInUseException = {
    type = "structure",
    id = "PolicyInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    id = "DeleteResourcePolicyOutput",
}

M.ResourcePolicyNotFoundException = {
    type = "structure",
    id = "ResourcePolicyNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeregisterDelegatedAdministratorInput = {
    type = "structure",
    id = "DeregisterDelegatedAdministratorInput",
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
    id = "DeregisterDelegatedAdministratorOutput",
}

M.DescribeAccountInput = {
    type = "structure",
    id = "DescribeAccountInput",
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
    id = "DescribeAccountOutput",
    members = {
        Account = M.Account,
    },
}

M.CreateAccountStatusNotFoundException = {
    type = "structure",
    id = "CreateAccountStatusNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeCreateAccountStatusInput = {
    type = "structure",
    id = "DescribeCreateAccountStatusInput",
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
    id = "DescribeCreateAccountStatusOutput",
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
    id = "DescribeEffectivePolicyInput",
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
    id = "EffectivePolicy",
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
    id = "DescribeEffectivePolicyOutput",
    members = {
        EffectivePolicy = M.EffectivePolicy,
    },
}

M.EffectivePolicyNotFoundException = {
    type = "structure",
    id = "EffectivePolicyNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeHandshakeInput = {
    type = "structure",
    id = "DescribeHandshakeInput",
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
    id = "DescribeOrganizationInput",
}

M.DescribeOrganizationOutput = {
    type = "structure",
    id = "DescribeOrganizationOutput",
    members = {
        Organization = M.Organization,
    },
}

M.DescribeOrganizationalUnitInput = {
    type = "structure",
    id = "DescribeOrganizationalUnitInput",
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
    id = "DescribeOrganizationalUnitOutput",
    members = {
        OrganizationalUnit = M.OrganizationalUnit,
    },
}

M.DescribePolicyInput = {
    type = "structure",
    id = "DescribePolicyInput",
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
    id = "DescribePolicyOutput",
    members = {
        Policy = M.Policy,
    },
}

M.DescribeResourcePolicyInput = {
    type = "structure",
    id = "DescribeResourcePolicyInput",
}

M.ResourcePolicySummary = {
    type = "structure",
    id = "ResourcePolicySummary",
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
    id = "ResourcePolicy",
    members = {
        ResourcePolicySummary = M.ResourcePolicySummary,
        Content = {
            type = "string",
        },
    },
}

M.DescribeResourcePolicyOutput = {
    type = "structure",
    id = "DescribeResourcePolicyOutput",
    members = {
        ResourcePolicy = M.ResourcePolicy,
    },
}

M.DescribeResponsibilityTransferInput = {
    type = "structure",
    id = "DescribeResponsibilityTransferInput",
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
    id = "TransferParticipant",
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
    id = "ResponsibilityTransfer",
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
    id = "DescribeResponsibilityTransferOutput",
    members = {
        ResponsibilityTransfer = M.ResponsibilityTransfer,
    },
}

M.ResponsibilityTransferNotFoundException = {
    type = "structure",
    id = "ResponsibilityTransferNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DetachPolicyInput = {
    type = "structure",
    id = "DetachPolicyInput",
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
    id = "DetachPolicyOutput",
}

M.PolicyNotAttachedException = {
    type = "structure",
    id = "PolicyNotAttachedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DisableAWSServiceAccessInput = {
    type = "structure",
    id = "DisableAWSServiceAccessInput",
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
    id = "DisableAWSServiceAccessOutput",
}

M.DisablePolicyTypeInput = {
    type = "structure",
    id = "DisablePolicyTypeInput",
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
    id = "Root",
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
    id = "DisablePolicyTypeOutput",
    members = {
        Root = M.Root,
    },
}

M.RootNotFoundException = {
    type = "structure",
    id = "RootNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EnableAllFeaturesInput = {
    type = "structure",
    id = "EnableAllFeaturesInput",
}

M.EnableAWSServiceAccessInput = {
    type = "structure",
    id = "EnableAWSServiceAccessInput",
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
    id = "EnableAWSServiceAccessOutput",
}

M.EnablePolicyTypeInput = {
    type = "structure",
    id = "EnablePolicyTypeInput",
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
    id = "EnablePolicyTypeOutput",
    members = {
        Root = M.Root,
    },
}

M.PolicyTypeAlreadyEnabledException = {
    type = "structure",
    id = "PolicyTypeAlreadyEnabledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DuplicateHandshakeException = {
    type = "structure",
    id = "DuplicateHandshakeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InviteAccountToOrganizationInput = {
    type = "structure",
    id = "InviteAccountToOrganizationInput",
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
    id = "InviteOrganizationToTransferResponsibilityInput",
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
    id = "LeaveOrganizationInput",
}

M.LeaveOrganizationOutput = {
    type = "structure",
    id = "LeaveOrganizationOutput",
}

M.ListAccountsInput = {
    type = "structure",
    id = "ListAccountsInput",
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

M.ListAccountsForParentInput = {
    type = "structure",
    id = "ListAccountsForParentInput",
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
    id = "ListAccountsForParentOutput",
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
    id = "ListAccountsWithInvalidEffectivePolicyInput",
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
    id = "ListAccountsWithInvalidEffectivePolicyOutput",
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
    id = "ListAWSServiceAccessForOrganizationInput",
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
    id = "EnabledServicePrincipal",
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
    id = "ListAWSServiceAccessForOrganizationOutput",
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
    id = "ListChildrenInput",
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
    id = "Child",
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
    id = "ListChildrenOutput",
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
    id = "ListCreateAccountStatusInput",
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
    id = "ListCreateAccountStatusOutput",
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
    id = "ListDelegatedAdministratorsInput",
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
    id = "DelegatedAdministrator",
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
    id = "ListDelegatedAdministratorsOutput",
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
    id = "ListDelegatedServicesForAccountInput",
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
    id = "DelegatedService",
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
    id = "ListDelegatedServicesForAccountOutput",
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
    id = "ListEffectivePolicyValidationErrorsInput",
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
    id = "EffectivePolicyValidationError",
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
    id = "ListEffectivePolicyValidationErrorsOutput",
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
    id = "HandshakeFilter",
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
    id = "ListHandshakesForAccountInput",
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
    id = "ListHandshakesForOrganizationInput",
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
    id = "ListInboundResponsibilityTransfersInput",
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
    id = "ListInboundResponsibilityTransfersOutput",
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
    id = "ListOrganizationalUnitsForParentInput",
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
    id = "ListOrganizationalUnitsForParentOutput",
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
    id = "ListOutboundResponsibilityTransfersInput",
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
    id = "ListOutboundResponsibilityTransfersOutput",
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
    id = "ChildNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListParentsInput = {
    type = "structure",
    id = "ListParentsInput",
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
    id = "Parent",
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
    id = "ListParentsOutput",
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
    id = "ListPoliciesInput",
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
    id = "ListPoliciesOutput",
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
    id = "ListPoliciesForTargetInput",
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
    id = "ListPoliciesForTargetOutput",
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
    id = "ListRootsInput",
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
    id = "ListRootsOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "ListTargetsForPolicyInput",
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
    id = "PolicyTargetSummary",
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
    id = "ListTargetsForPolicyOutput",
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
    id = "DestinationParentNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DuplicateAccountException = {
    type = "structure",
    id = "DuplicateAccountException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MoveAccountInput = {
    type = "structure",
    id = "MoveAccountInput",
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
    id = "MoveAccountOutput",
}

M.SourceParentNotFoundException = {
    type = "structure",
    id = "SourceParentNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
    members = {
        ResourcePolicy = M.ResourcePolicy,
    },
}

M.RegisterDelegatedAdministratorInput = {
    type = "structure",
    id = "RegisterDelegatedAdministratorInput",
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
    id = "RegisterDelegatedAdministratorOutput",
}

M.RemoveAccountFromOrganizationInput = {
    type = "structure",
    id = "RemoveAccountFromOrganizationInput",
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
    id = "RemoveAccountFromOrganizationOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.InvalidResponsibilityTransferTransitionException = {
    type = "structure",
    id = "InvalidResponsibilityTransferTransitionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResponsibilityTransferAlreadyInStatusException = {
    type = "structure",
    id = "ResponsibilityTransferAlreadyInStatusException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TerminateResponsibilityTransferInput = {
    type = "structure",
    id = "TerminateResponsibilityTransferInput",
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
    id = "TerminateResponsibilityTransferOutput",
    members = {
        ResponsibilityTransfer = M.ResponsibilityTransfer,
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateOrganizationalUnitInput = {
    type = "structure",
    id = "UpdateOrganizationalUnitInput",
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
    id = "UpdateOrganizationalUnitOutput",
    members = {
        OrganizationalUnit = M.OrganizationalUnit,
    },
}

M.UpdatePolicyInput = {
    type = "structure",
    id = "UpdatePolicyInput",
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
    id = "UpdatePolicyOutput",
    members = {
        Policy = M.Policy,
    },
}

M.UpdateResponsibilityTransferInput = {
    type = "structure",
    id = "UpdateResponsibilityTransferInput",
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
    id = "UpdateResponsibilityTransferOutput",
    members = {
        ResponsibilityTransfer = M.ResponsibilityTransfer,
    },
}

M.HandshakeResource = {
    type = "structure",
    id = "HandshakeResource",
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
    id = "Handshake",
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
    id = "AcceptHandshakeOutput",
    members = {
        Handshake = M.Handshake,
    },
}

M.CancelHandshakeOutput = {
    type = "structure",
    id = "CancelHandshakeOutput",
    members = {
        Handshake = M.Handshake,
    },
}

M.DeclineHandshakeOutput = {
    type = "structure",
    id = "DeclineHandshakeOutput",
    members = {
        Handshake = M.Handshake,
    },
}

M.DescribeHandshakeOutput = {
    type = "structure",
    id = "DescribeHandshakeOutput",
    members = {
        Handshake = M.Handshake,
    },
}

M.EnableAllFeaturesOutput = {
    type = "structure",
    id = "EnableAllFeaturesOutput",
    members = {
        Handshake = M.Handshake,
    },
}

M.InviteAccountToOrganizationOutput = {
    type = "structure",
    id = "InviteAccountToOrganizationOutput",
    members = {
        Handshake = M.Handshake,
    },
}

M.InviteOrganizationToTransferResponsibilityOutput = {
    type = "structure",
    id = "InviteOrganizationToTransferResponsibilityOutput",
    members = {
        Handshake = M.Handshake,
    },
}

M.ListHandshakesForAccountOutput = {
    type = "structure",
    id = "ListHandshakesForAccountOutput",
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
    id = "ListHandshakesForOrganizationOutput",
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
