local M = {}

M.AcceptChannelHandshakeInput = {
    type = "structure",
    id = "AcceptChannelHandshakeInput",
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HandshakeStatus = {
    PENDING = "PENDING",
    ACCEPTED = "ACCEPTED",
    REJECTED = "REJECTED",
    CANCELED = "CANCELED",
    EXPIRED = "EXPIRED",
}

M.AcceptChannelHandshakeDetail = {
    type = "structure",
    id = "AcceptChannelHandshakeDetail",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.AcceptChannelHandshakeOutput = {
    type = "structure",
    id = "AcceptChannelHandshakeOutput",
    members = {
        channelHandshakeDetail = M.AcceptChannelHandshakeDetail,
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    REQUEST_VALIDATION_FAILED = "REQUEST_VALIDATION_FAILED",
    BUSINESS_VALIDATION_FAILED = "BUSINESS_VALIDATION_FAILED",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.AssociationType = {
    DOWNSTREAM_SELLER = "DOWNSTREAM_SELLER",
    END_CUSTOMER = "END_CUSTOMER",
    INTERNAL = "INTERNAL",
}

M.CancelChannelHandshakeInput = {
    type = "structure",
    id = "CancelChannelHandshakeInput",
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelChannelHandshakeDetail = {
    type = "structure",
    id = "CancelChannelHandshakeDetail",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.CancelChannelHandshakeOutput = {
    type = "structure",
    id = "CancelChannelHandshakeOutput",
    members = {
        channelHandshakeDetail = M.CancelChannelHandshakeDetail,
    },
}

M.RevokeServicePeriodPayload = {
    type = "structure",
    id = "RevokeServicePeriodPayload",
    members = {
        programManagementAccountIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        note = {
            type = "string",
        },
    },
}

M.ServicePeriodType = {
    MINIMUM_NOTICE_PERIOD = "MINIMUM_NOTICE_PERIOD",
    FIXED_COMMITMENT_PERIOD = "FIXED_COMMITMENT_PERIOD",
}

M.StartServicePeriodPayload = {
    type = "structure",
    id = "StartServicePeriodPayload",
    members = {
        programManagementAccountIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        note = {
            type = "string",
        },
        servicePeriodType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minimumNoticeDays = {
            type = "string",
        },
        endDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ChannelHandshakePayload = {
    type = "union",
    id = "ChannelHandshakePayload",
    members = {
        startServicePeriodPayload = M.StartServicePeriodPayload,
        revokeServicePeriodPayload = M.RevokeServicePeriodPayload,
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HandshakeType = {
    START_SERVICE_PERIOD = "START_SERVICE_PERIOD",
    REVOKE_SERVICE_PERIOD = "REVOKE_SERVICE_PERIOD",
    PROGRAM_MANAGEMENT_ACCOUNT = "PROGRAM_MANAGEMENT_ACCOUNT",
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateChannelHandshakeInput = {
    type = "structure",
    id = "CreateChannelHandshakeInput",
    members = {
        handshakeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedResourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = M.ChannelHandshakePayload,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateChannelHandshakeDetail = {
    type = "structure",
    id = "CreateChannelHandshakeDetail",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.CreateChannelHandshakeOutput = {
    type = "structure",
    id = "CreateChannelHandshakeOutput",
    members = {
        channelHandshakeDetail = M.CreateChannelHandshakeDetail,
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Program = {
    SOLUTION_PROVIDER = "SOLUTION_PROVIDER",
    DISTRIBUTION = "DISTRIBUTION",
    DISTRIBUTION_SELLER = "DISTRIBUTION_SELLER",
}

M.ProgramManagementAccountTypeFilters = {
    type = "structure",
    id = "ProgramManagementAccountTypeFilters",
    members = {
        programs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RevokeServicePeriodTypeFilters = {
    type = "structure",
    id = "RevokeServicePeriodTypeFilters",
    members = {
        servicePeriodTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StartServicePeriodTypeFilters = {
    type = "structure",
    id = "StartServicePeriodTypeFilters",
    members = {
        servicePeriodTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListChannelHandshakesTypeFilters = {
    type = "union",
    id = "ListChannelHandshakesTypeFilters",
    members = {
        startServicePeriodTypeFilters = M.StartServicePeriodTypeFilters,
        revokeServicePeriodTypeFilters = M.RevokeServicePeriodTypeFilters,
        programManagementAccountTypeFilters = M.ProgramManagementAccountTypeFilters,
    },
}

M.ProgramManagementAccountTypeSortName = {
    UPDATED_AT = "UpdatedAt",
}

M.SortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ProgramManagementAccountTypeSort = {
    type = "structure",
    id = "ProgramManagementAccountTypeSort",
    members = {
        sortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RevokeServicePeriodTypeSortName = {
    UPDATED_AT = "UpdatedAt",
}

M.RevokeServicePeriodTypeSort = {
    type = "structure",
    id = "RevokeServicePeriodTypeSort",
    members = {
        sortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartServicePeriodTypeSortName = {
    UPDATED_AT = "UpdatedAt",
}

M.StartServicePeriodTypeSort = {
    type = "structure",
    id = "StartServicePeriodTypeSort",
    members = {
        sortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListChannelHandshakesTypeSort = {
    type = "union",
    id = "ListChannelHandshakesTypeSort",
    members = {
        startServicePeriodTypeSort = M.StartServicePeriodTypeSort,
        revokeServicePeriodTypeSort = M.RevokeServicePeriodTypeSort,
        programManagementAccountTypeSort = M.ProgramManagementAccountTypeSort,
    },
}

M.ParticipantType = {
    SENDER = "SENDER",
    RECEIVER = "RECEIVER",
}

M.ListChannelHandshakesInput = {
    type = "structure",
    id = "ListChannelHandshakesInput",
    members = {
        handshakeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        participantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 20,
            },
        },
        statuses = {
            type = "list",
            member = { type = "string" },
        },
        associatedResourceIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        handshakeTypeFilters = M.ListChannelHandshakesTypeFilters,
        handshakeTypeSort = M.ListChannelHandshakesTypeSort,
        nextToken = {
            type = "string",
        },
    },
}

M.ProgramManagementAccountHandshakeDetail = {
    type = "structure",
    id = "ProgramManagementAccountHandshakeDetail",
    members = {
        program = {
            type = "string",
        },
    },
}

M.RevokeServicePeriodHandshakeDetail = {
    type = "structure",
    id = "RevokeServicePeriodHandshakeDetail",
    members = {
        note = {
            type = "string",
        },
        servicePeriodType = {
            type = "string",
        },
        minimumNoticeDays = {
            type = "string",
        },
        startDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.StartServicePeriodHandshakeDetail = {
    type = "structure",
    id = "StartServicePeriodHandshakeDetail",
    members = {
        note = {
            type = "string",
        },
        servicePeriodType = {
            type = "string",
        },
        minimumNoticeDays = {
            type = "string",
        },
        startDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.HandshakeDetail = {
    type = "union",
    id = "HandshakeDetail",
    members = {
        startServicePeriodHandshakeDetail = M.StartServicePeriodHandshakeDetail,
        revokeServicePeriodHandshakeDetail = M.RevokeServicePeriodHandshakeDetail,
        programManagementAccountHandshakeDetail = M.ProgramManagementAccountHandshakeDetail,
    },
}

M.ChannelHandshakeSummary = {
    type = "structure",
    id = "ChannelHandshakeSummary",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        catalog = {
            type = "string",
        },
        handshakeType = {
            type = "string",
        },
        ownerAccountId = {
            type = "string",
        },
        senderAccountId = {
            type = "string",
        },
        senderDisplayName = {
            type = "string",
        },
        receiverAccountId = {
            type = "string",
        },
        associatedResourceId = {
            type = "string",
        },
        detail = M.HandshakeDetail,
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
        },
    },
}

M.ListChannelHandshakesOutput = {
    type = "structure",
    id = "ListChannelHandshakesOutput",
    members = {
        items = {
            type = "list",
            member = M.ChannelHandshakeSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RejectChannelHandshakeInput = {
    type = "structure",
    id = "RejectChannelHandshakeInput",
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RejectChannelHandshakeDetail = {
    type = "structure",
    id = "RejectChannelHandshakeDetail",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.RejectChannelHandshakeOutput = {
    type = "structure",
    id = "RejectChannelHandshakeOutput",
    members = {
        channelHandshakeDetail = M.RejectChannelHandshakeDetail,
    },
}

M.Coverage = {
    ENTIRE_ORGANIZATION = "ENTIRE_ORGANIZATION",
    MANAGEMENT_ACCOUNT_ONLY = "MANAGEMENT_ACCOUNT_ONLY",
}

M.CreateProgramManagementAccountInput = {
    type = "structure",
    id = "CreateProgramManagementAccountInput",
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        program = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateProgramManagementAccountDetail = {
    type = "structure",
    id = "CreateProgramManagementAccountDetail",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.CreateProgramManagementAccountOutput = {
    type = "structure",
    id = "CreateProgramManagementAccountOutput",
    members = {
        programManagementAccountDetail = M.CreateProgramManagementAccountDetail,
    },
}

M.Provider = {
    DISTRIBUTOR = "DISTRIBUTOR",
    DISTRIBUTION_SELLER = "DISTRIBUTION_SELLER",
}

M.PartnerLedSupport = {
    type = "structure",
    id = "PartnerLedSupport",
    members = {
        coverage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
            type = "string",
        },
        tamLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResoldEnterprise = {
    type = "structure",
    id = "ResoldEnterprise",
    members = {
        coverage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tamLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        chargeAccountId = {
            type = "string",
        },
    },
}

M.ResoldUnifiedOperations = {
    type = "structure",
    id = "ResoldUnifiedOperations",
    members = {
        coverage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tamLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        chargeAccountId = {
            type = "string",
        },
    },
}

M.SupportPlan = {
    type = "union",
    id = "SupportPlan",
    members = {
        resoldEnterprise = M.ResoldEnterprise,
        partnerLedSupport = M.PartnerLedSupport,
        resoldUnifiedOperations = M.ResoldUnifiedOperations,
    },
}

M.ResaleAccountModel = {
    DISTRIBUTOR = "DISTRIBUTOR",
    END_CUSTOMER = "END_CUSTOMER",
    SOLUTION_PROVIDER = "SOLUTION_PROVIDER",
}

M.Sector = {
    COMMERCIAL = "COMMERCIAL",
    GOVERNMENT = "GOVERNMENT",
    GOVERNMENT_EXCEPTION = "GOVERNMENT_EXCEPTION",
}

M.CreateRelationshipInput = {
    type = "structure",
    id = "CreateRelationshipInput",
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        programManagementAccountIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associatedAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resaleAccountModel = {
            type = "string",
        },
        sector = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        requestedSupportPlan = M.SupportPlan,
    },
}

M.CreateRelationshipDetail = {
    type = "structure",
    id = "CreateRelationshipDetail",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
    },
}

M.CreateRelationshipOutput = {
    type = "structure",
    id = "CreateRelationshipOutput",
    members = {
        relationshipDetail = M.CreateRelationshipDetail,
    },
}

M.DeleteProgramManagementAccountInput = {
    type = "structure",
    id = "DeleteProgramManagementAccountInput",
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteProgramManagementAccountOutput = {
    type = "structure",
    id = "DeleteProgramManagementAccountOutput",
}

M.DeleteRelationshipInput = {
    type = "structure",
    id = "DeleteRelationshipInput",
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        programManagementAccountIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.DeleteRelationshipOutput = {
    type = "structure",
    id = "DeleteRelationshipOutput",
}

M.GetRelationshipInput = {
    type = "structure",
    id = "GetRelationshipInput",
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        programManagementAccountIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RelationshipDetail = {
    type = "structure",
    id = "RelationshipDetail",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        revision = {
            type = "string",
        },
        catalog = {
            type = "string",
        },
        associationType = {
            type = "string",
        },
        programManagementAccountId = {
            type = "string",
        },
        associatedAccountId = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        resaleAccountModel = {
            type = "string",
        },
        sector = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        startDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetRelationshipOutput = {
    type = "structure",
    id = "GetRelationshipOutput",
    members = {
        relationshipDetail = M.RelationshipDetail,
    },
}

M.ListProgramManagementAccountsSortName = {
    UPDATED_AT = "UpdatedAt",
}

M.ListProgramManagementAccountsSortBase = {
    type = "structure",
    id = "ListProgramManagementAccountsSortBase",
    members = {
        sortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProgramManagementAccountStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.ListProgramManagementAccountsInput = {
    type = "structure",
    id = "ListProgramManagementAccountsInput",
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 20,
            },
        },
        displayNames = {
            type = "list",
            member = { type = "string" },
        },
        programs = {
            type = "list",
            member = { type = "string" },
        },
        accountIds = {
            type = "list",
            member = { type = "string" },
        },
        statuses = {
            type = "list",
            member = { type = "string" },
        },
        sort = M.ListProgramManagementAccountsSortBase,
        nextToken = {
            type = "string",
        },
    },
}

M.ProgramManagementAccountSummary = {
    type = "structure",
    id = "ProgramManagementAccountSummary",
    members = {
        id = {
            type = "string",
        },
        revision = {
            type = "string",
        },
        catalog = {
            type = "string",
        },
        program = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        startDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
        },
    },
}

M.ListProgramManagementAccountsOutput = {
    type = "structure",
    id = "ListProgramManagementAccountsOutput",
    members = {
        items = {
            type = "list",
            member = M.ProgramManagementAccountSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRelationshipsSortName = {
    UPDATED_AT = "UpdatedAt",
}

M.ListRelationshipsSortBase = {
    type = "structure",
    id = "ListRelationshipsSortBase",
    members = {
        sortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRelationshipsInput = {
    type = "structure",
    id = "ListRelationshipsInput",
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 20,
            },
        },
        associatedAccountIds = {
            type = "list",
            member = { type = "string" },
        },
        associationTypes = {
            type = "list",
            member = { type = "string" },
        },
        displayNames = {
            type = "list",
            member = { type = "string" },
        },
        programManagementAccountIdentifiers = {
            type = "list",
            member = { type = "string" },
        },
        sort = M.ListRelationshipsSortBase,
        nextToken = {
            type = "string",
        },
    },
}

M.RelationshipSummary = {
    type = "structure",
    id = "RelationshipSummary",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        revision = {
            type = "string",
        },
        catalog = {
            type = "string",
        },
        associationType = {
            type = "string",
        },
        programManagementAccountId = {
            type = "string",
        },
        associatedAccountId = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        sector = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        startDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListRelationshipsOutput = {
    type = "structure",
    id = "ListRelationshipsOutput",
    members = {
        items = {
            type = "list",
            member = M.RelationshipSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
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
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UpdateProgramManagementAccountInput = {
    type = "structure",
    id = "UpdateProgramManagementAccountInput",
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
    },
}

M.UpdateProgramManagementAccountDetail = {
    type = "structure",
    id = "UpdateProgramManagementAccountDetail",
    members = {
        id = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        revision = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
    },
}

M.UpdateProgramManagementAccountOutput = {
    type = "structure",
    id = "UpdateProgramManagementAccountOutput",
    members = {
        programManagementAccountDetail = M.UpdateProgramManagementAccountDetail,
    },
}

M.UpdateRelationshipInput = {
    type = "structure",
    id = "UpdateRelationshipInput",
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        programManagementAccountIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        requestedSupportPlan = M.SupportPlan,
    },
}

M.UpdateRelationshipDetail = {
    type = "structure",
    id = "UpdateRelationshipDetail",
    members = {
        arn = {
            type = "string",
        },
        id = {
            type = "string",
        },
        revision = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
    },
}

M.UpdateRelationshipOutput = {
    type = "structure",
    id = "UpdateRelationshipOutput",
    members = {
        relationshipDetail = M.UpdateRelationshipDetail,
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
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
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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

return M
