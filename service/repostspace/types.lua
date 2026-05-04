local M = {}

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
    },
}

M.ChannelRole = {
    ASKER = "ASKER",
    EXPERT = "EXPERT",
    MODERATOR = "MODERATOR",
    SUPPORTREQUESTOR = "SUPPORTREQUESTOR",
}

M.BatchAddChannelRoleToAccessorsInput = {
    type = "structure",
    id = "BatchAddChannelRoleToAccessorsInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        channelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accessorIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        channelRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchError = {
    type = "structure",
    id = "BatchError",
    members = {
        accessorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "integer",
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

M.BatchAddChannelRoleToAccessorsOutput = {
    type = "structure",
    id = "BatchAddChannelRoleToAccessorsOutput",
    members = {
        addedAccessorIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchError,
            traits = {
                required = true,
            },
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
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
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
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
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

M.Role = {
    EXPERT = "EXPERT",
    MODERATOR = "MODERATOR",
    ADMINISTRATOR = "ADMINISTRATOR",
    SUPPORTREQUESTOR = "SUPPORTREQUESTOR",
}

M.BatchAddRoleInput = {
    type = "structure",
    id = "BatchAddRoleInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accessorIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchAddRoleOutput = {
    type = "structure",
    id = "BatchAddRoleOutput",
    members = {
        addedAccessorIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchRemoveChannelRoleFromAccessorsInput = {
    type = "structure",
    id = "BatchRemoveChannelRoleFromAccessorsInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        channelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accessorIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        channelRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchRemoveChannelRoleFromAccessorsOutput = {
    type = "structure",
    id = "BatchRemoveChannelRoleFromAccessorsOutput",
    members = {
        removedAccessorIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchError,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchRemoveRoleInput = {
    type = "structure",
    id = "BatchRemoveRoleInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accessorIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchRemoveRoleOutput = {
    type = "structure",
    id = "BatchRemoveRoleOutput",
    members = {
        removedAccessorIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchError,
            traits = {
                required = true,
            },
        },
    },
}

M.ChannelStatus = {
    CREATED = "CREATED",
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    DELETED = "DELETED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.ChannelData = {
    type = "structure",
    id = "ChannelData",
    members = {
        spaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelDescription = {
            type = "string",
        },
        createDateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        deleteDateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        channelStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        groupCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurationStatus = {
    CONFIGURED = "CONFIGURED",
    UNCONFIGURED = "UNCONFIGURED",
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

M.CreateChannelInput = {
    type = "structure",
    id = "CreateChannelInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        channelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelDescription = {
            type = "string",
        },
    },
}

M.CreateChannelOutput = {
    type = "structure",
    id = "CreateChannelOutput",
    members = {
        channelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
        serviceCode = {
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

M.FeatureEnableParameter = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SupportedEmailDomainsParameters = {
    type = "structure",
    id = "SupportedEmailDomainsParameters",
    members = {
        enabled = {
            type = "string",
        },
        allowedDomains = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TierLevel = {
    BASIC = "BASIC",
    STANDARD = "STANDARD",
}

M.CreateSpaceInput = {
    type = "structure",
    id = "CreateSpaceInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subdomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        userKMSKey = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        roleArn = {
            type = "string",
        },
        supportedEmailDomains = M.SupportedEmailDomainsParameters,
    },
}

M.CreateSpaceOutput = {
    type = "structure",
    id = "CreateSpaceOutput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSpaceInput = {
    type = "structure",
    id = "DeleteSpaceInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSpaceOutput = {
    type = "structure",
    id = "DeleteSpaceOutput",
}

M.DeregisterAdminInput = {
    type = "structure",
    id = "DeregisterAdminInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        adminId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeregisterAdminOutput = {
    type = "structure",
    id = "DeregisterAdminOutput",
}

M.FeatureEnableStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    NOT_ALLOWED = "NOT_ALLOWED",
}

M.GetChannelInput = {
    type = "structure",
    id = "GetChannelInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        channelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetChannelOutput = {
    type = "structure",
    id = "GetChannelOutput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelDescription = {
            type = "string",
        },
        createDateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        deleteDateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        channelRoles = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        channelStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSpaceInput = {
    type = "structure",
    id = "GetSpaceInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SupportedEmailDomainsStatus = {
    type = "structure",
    id = "SupportedEmailDomainsStatus",
    members = {
        enabled = {
            type = "string",
        },
        allowedDomains = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.VanityDomainStatus = {
    PENDING = "PENDING",
    APPROVED = "APPROVED",
    UNAPPROVED = "UNAPPROVED",
}

M.GetSpaceOutput = {
    type = "structure",
    id = "GetSpaceOutput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityStoreId = {
            type = "string",
        },
        applicationArn = {
            type = "string",
        },
        description = {
            type = "string",
        },
        vanityDomainStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vanityDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        randomDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customerRoleArn = {
            type = "string",
        },
        createDateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        deleteDateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storageLimit = {
            type = "long",
            traits = {
                required = true,
            },
        },
        userAdmins = {
            type = "list",
            member = { type = "string" },
        },
        groupAdmins = {
            type = "list",
            member = { type = "string" },
        },
        roles = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        userKMSKey = {
            type = "string",
        },
        userCount = {
            type = "integer",
        },
        contentSize = {
            type = "long",
        },
        supportedEmailDomains = M.SupportedEmailDomainsStatus,
    },
}

M.ListChannelsInput = {
    type = "structure",
    id = "ListChannelsInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
                http_query = "maxResults",
            },
        },
    },
}

M.ListChannelsOutput = {
    type = "structure",
    id = "ListChannelsOutput",
    members = {
        channels = {
            type = "list",
            member = M.ChannelData,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSpacesInput = {
    type = "structure",
    id = "ListSpacesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
                http_query = "maxResults",
            },
        },
    },
}

M.SpaceData = {
    type = "structure",
    id = "SpaceData",
    members = {
        spaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vanityDomainStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vanityDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        randomDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storageLimit = {
            type = "long",
            traits = {
                required = true,
            },
        },
        createDateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        deleteDateTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        userKMSKey = {
            type = "string",
        },
        userCount = {
            type = "integer",
        },
        contentSize = {
            type = "long",
        },
        supportedEmailDomains = M.SupportedEmailDomainsStatus,
    },
}

M.ListSpacesOutput = {
    type = "structure",
    id = "ListSpacesOutput",
    members = {
        spaces = {
            type = "list",
            member = M.SpaceData,
            traits = {
                required = true,
            },
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
                http_label = true,
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RegisterAdminInput = {
    type = "structure",
    id = "RegisterAdminInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        adminId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RegisterAdminOutput = {
    type = "structure",
    id = "RegisterAdminOutput",
}

M.SendInvitesInput = {
    type = "structure",
    id = "SendInvitesInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        accessorIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        body = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendInvitesOutput = {
    type = "structure",
    id = "SendInvitesOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateChannelInput = {
    type = "structure",
    id = "UpdateChannelInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        channelId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        channelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelDescription = {
            type = "string",
        },
    },
}

M.UpdateChannelOutput = {
    type = "structure",
    id = "UpdateChannelOutput",
}

M.UpdateSpaceInput = {
    type = "structure",
    id = "UpdateSpaceInput",
    members = {
        spaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        tier = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        supportedEmailDomains = M.SupportedEmailDomainsParameters,
    },
}

M.UpdateSpaceOutput = {
    type = "structure",
    id = "UpdateSpaceOutput",
}

return M
