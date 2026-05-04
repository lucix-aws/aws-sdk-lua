local M = {}

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
            member_type = "string",
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
    members = {
        accessorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "number",
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
    members = {
        addedAccessorIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
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
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
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
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
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

M.Role = {
    EXPERT = "EXPERT",
    MODERATOR = "MODERATOR",
    ADMINISTRATOR = "ADMINISTRATOR",
    SUPPORTREQUESTOR = "SUPPORTREQUESTOR",
}

M.BatchAddRoleInput = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        addedAccessorIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchRemoveChannelRoleFromAccessorsInput = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        removedAccessorIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchRemoveRoleInput = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        removedAccessorIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        groupCount = {
            type = "number",
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
    members = {
        enabled = {
            type = "string",
        },
        allowedDomains = {
            type = "list",
            member_type = "string",
        },
    },
}

M.TierLevel = {
    BASIC = "BASIC",
    STANDARD = "STANDARD",
}

M.CreateSpaceInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        roleArn = {
            type = "string",
        },
        supportedEmailDomains = {
            type = "structure",
        },
    },
}

M.CreateSpaceOutput = {
    type = "structure",
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
}

M.DeregisterAdminInput = {
    type = "structure",
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
}

M.FeatureEnableStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    NOT_ALLOWED = "NOT_ALLOWED",
}

M.GetChannelInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "list",
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
    members = {
        enabled = {
            type = "string",
        },
        allowedDomains = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        userAdmins = {
            type = "list",
            member_type = "string",
        },
        groupAdmins = {
            type = "list",
            member_type = "string",
        },
        roles = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        userKMSKey = {
            type = "string",
        },
        userCount = {
            type = "number",
        },
        contentSize = {
            type = "number",
        },
        supportedEmailDomains = {
            type = "structure",
        },
    },
}

M.ListChannelsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListChannelsOutput = {
    type = "structure",
    members = {
        channels = {
            type = "list",
            member_type = "structure",
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
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.SpaceData = {
    type = "structure",
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
            type = "number",
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
            type = "number",
        },
        contentSize = {
            type = "number",
        },
        supportedEmailDomains = {
            type = "structure",
        },
    },
}

M.ListSpacesOutput = {
    type = "structure",
    members = {
        spaces = {
            type = "list",
            member_type = "structure",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.RegisterAdminInput = {
    type = "structure",
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
}

M.SendInvitesInput = {
    type = "structure",
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
            member_type = "string",
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
}

M.TagResourceInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateChannelInput = {
    type = "structure",
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
}

M.UpdateSpaceInput = {
    type = "structure",
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
        supportedEmailDomains = {
            type = "structure",
        },
    },
}

M.UpdateSpaceOutput = {
    type = "structure",
}

return M
