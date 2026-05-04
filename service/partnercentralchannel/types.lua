local M = {}

M.AcceptChannelHandshakeInput = {
    type = "structure",
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
    members = {
        channelHandshakeDetail = {
            type = "structure",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        channelHandshakeDetail = {
            type = "structure",
        },
    },
}

M.RevokeServicePeriodPayload = {
    type = "structure",
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
        },
    },
}

M.ChannelHandshakePayload = {
    type = "union",
    members = {
        startServicePeriodPayload = {
            type = "structure",
        },
        revokeServicePeriodPayload = {
            type = "structure",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
        payload = {
            type = "union",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateChannelHandshakeDetail = {
    type = "structure",
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
    members = {
        channelHandshakeDetail = {
            type = "structure",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
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
    members = {
        programs = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RevokeServicePeriodTypeFilters = {
    type = "structure",
    members = {
        servicePeriodTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.StartServicePeriodTypeFilters = {
    type = "structure",
    members = {
        servicePeriodTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListChannelHandshakesTypeFilters = {
    type = "union",
    members = {
        startServicePeriodTypeFilters = {
            type = "structure",
        },
        revokeServicePeriodTypeFilters = {
            type = "structure",
        },
        programManagementAccountTypeFilters = {
            type = "structure",
        },
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
    members = {
        startServicePeriodTypeSort = {
            type = "structure",
        },
        revokeServicePeriodTypeSort = {
            type = "structure",
        },
        programManagementAccountTypeSort = {
            type = "structure",
        },
    },
}

M.ParticipantType = {
    SENDER = "SENDER",
    RECEIVER = "RECEIVER",
}

M.ListChannelHandshakesInput = {
    type = "structure",
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
            type = "number",
        },
        statuses = {
            type = "list",
            member_type = "string",
        },
        associatedResourceIdentifiers = {
            type = "list",
            member_type = "string",
        },
        handshakeTypeFilters = {
            type = "union",
        },
        handshakeTypeSort = {
            type = "union",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ProgramManagementAccountHandshakeDetail = {
    type = "structure",
    members = {
        program = {
            type = "string",
        },
    },
}

M.RevokeServicePeriodHandshakeDetail = {
    type = "structure",
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
        },
        endDate = {
            type = "timestamp",
        },
    },
}

M.StartServicePeriodHandshakeDetail = {
    type = "structure",
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
        },
        endDate = {
            type = "timestamp",
        },
    },
}

M.HandshakeDetail = {
    type = "union",
    members = {
        startServicePeriodHandshakeDetail = {
            type = "structure",
        },
        revokeServicePeriodHandshakeDetail = {
            type = "structure",
        },
        programManagementAccountHandshakeDetail = {
            type = "structure",
        },
    },
}

M.ChannelHandshakeSummary = {
    type = "structure",
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
        detail = {
            type = "union",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.ListChannelHandshakesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RejectChannelHandshakeInput = {
    type = "structure",
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
    members = {
        channelHandshakeDetail = {
            type = "structure",
        },
    },
}

M.Coverage = {
    ENTIRE_ORGANIZATION = "ENTIRE_ORGANIZATION",
    MANAGEMENT_ACCOUNT_ONLY = "MANAGEMENT_ACCOUNT_ONLY",
}

M.CreateProgramManagementAccountInput = {
    type = "structure",
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
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateProgramManagementAccountDetail = {
    type = "structure",
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
    members = {
        programManagementAccountDetail = {
            type = "structure",
        },
    },
}

M.Provider = {
    DISTRIBUTOR = "DISTRIBUTOR",
    DISTRIBUTION_SELLER = "DISTRIBUTION_SELLER",
}

M.PartnerLedSupport = {
    type = "structure",
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
    members = {
        resoldEnterprise = {
            type = "structure",
        },
        partnerLedSupport = {
            type = "structure",
        },
        resoldUnifiedOperations = {
            type = "structure",
        },
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
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        requestedSupportPlan = {
            type = "union",
        },
    },
}

M.CreateRelationshipDetail = {
    type = "structure",
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
    members = {
        relationshipDetail = {
            type = "structure",
        },
    },
}

M.DeleteProgramManagementAccountInput = {
    type = "structure",
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
        },
    },
}

M.DeleteProgramManagementAccountOutput = {
    type = "structure",
}

M.DeleteRelationshipInput = {
    type = "structure",
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
        },
    },
}

M.DeleteRelationshipOutput = {
    type = "structure",
}

M.GetRelationshipInput = {
    type = "structure",
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
        },
        updatedAt = {
            type = "timestamp",
        },
        startDate = {
            type = "timestamp",
        },
    },
}

M.GetRelationshipOutput = {
    type = "structure",
    members = {
        relationshipDetail = {
            type = "structure",
        },
    },
}

M.ListProgramManagementAccountsSortName = {
    UPDATED_AT = "UpdatedAt",
}

M.ListProgramManagementAccountsSortBase = {
    type = "structure",
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
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        displayNames = {
            type = "list",
            member_type = "string",
        },
        programs = {
            type = "list",
            member_type = "string",
        },
        accountIds = {
            type = "list",
            member_type = "string",
        },
        statuses = {
            type = "list",
            member_type = "string",
        },
        sort = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ProgramManagementAccountSummary = {
    type = "structure",
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
        },
        updatedAt = {
            type = "timestamp",
        },
        startDate = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.ListProgramManagementAccountsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
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
    members = {
        catalog = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        associatedAccountIds = {
            type = "list",
            member_type = "string",
        },
        associationTypes = {
            type = "list",
            member_type = "string",
        },
        displayNames = {
            type = "list",
            member_type = "string",
        },
        programManagementAccountIdentifiers = {
            type = "list",
            member_type = "string",
        },
        sort = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RelationshipSummary = {
    type = "structure",
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
        },
        updatedAt = {
            type = "timestamp",
        },
        startDate = {
            type = "timestamp",
        },
    },
}

M.ListRelationshipsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateProgramManagementAccountInput = {
    type = "structure",
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
    members = {
        programManagementAccountDetail = {
            type = "structure",
        },
    },
}

M.UpdateRelationshipInput = {
    type = "structure",
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
        requestedSupportPlan = {
            type = "union",
        },
    },
}

M.UpdateRelationshipDetail = {
    type = "structure",
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
    members = {
        relationshipDetail = {
            type = "structure",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
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
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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

return M
