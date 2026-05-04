local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CertificateField = {
    x509Subject = "x509Subject",
    x509Issuer = "x509Issuer",
    x509SAN = "x509SAN",
}

M.MappingRule = {
    type = "structure",
    id = "MappingRule",
    members = {
        specifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttributeMapping = {
    type = "structure",
    id = "AttributeMapping",
    members = {
        certificateField = {
            type = "string",
        },
        mappingRules = {
            type = "list",
            member = M.MappingRule,
        },
    },
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

M.CreateProfileInput = {
    type = "structure",
    id = "CreateProfileInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        requireInstanceProperties = {
            type = "boolean",
        },
        sessionPolicy = {
            type = "string",
        },
        roleArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        managedPolicyArns = {
            type = "list",
            member = { type = "string" },
        },
        durationSeconds = {
            type = "integer",
        },
        enabled = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        acceptRoleSessionName = {
            type = "boolean",
        },
    },
}

M.ProfileDetail = {
    type = "structure",
    id = "ProfileDetail",
    members = {
        profileId = {
            type = "string",
        },
        profileArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        requireInstanceProperties = {
            type = "boolean",
        },
        enabled = {
            type = "boolean",
        },
        createdBy = {
            type = "string",
        },
        sessionPolicy = {
            type = "string",
        },
        roleArns = {
            type = "list",
            member = { type = "string" },
        },
        managedPolicyArns = {
            type = "list",
            member = { type = "string" },
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
        durationSeconds = {
            type = "integer",
        },
        acceptRoleSessionName = {
            type = "boolean",
        },
        attributeMappings = {
            type = "list",
            member = M.AttributeMapping,
        },
    },
}

M.CreateProfileOutput = {
    type = "structure",
    id = "CreateProfileOutput",
    members = {
        profile = M.ProfileDetail,
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotificationChannel = {
    ALL = "ALL",
}

M.NotificationEvent = {
    CA_CERTIFICATE_EXPIRY = "CA_CERTIFICATE_EXPIRY",
    END_ENTITY_CERTIFICATE_EXPIRY = "END_ENTITY_CERTIFICATE_EXPIRY",
}

M.NotificationSetting = {
    type = "structure",
    id = "NotificationSetting",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        threshold = {
            type = "integer",
        },
        channel = {
            type = "string",
        },
    },
}

M.SourceData = {
    type = "union",
    id = "SourceData",
    members = {
        x509CertificateData = {
            type = "string",
        },
        acmPcaArn = {
            type = "string",
        },
    },
}

M.TrustAnchorType = {
    AWS_ACM_PCA = "AWS_ACM_PCA",
    CERTIFICATE_BUNDLE = "CERTIFICATE_BUNDLE",
    SELF_SIGNED_REPOSITORY = "SELF_SIGNED_REPOSITORY",
}

M.Source = {
    type = "structure",
    id = "Source",
    members = {
        sourceType = {
            type = "string",
        },
        sourceData = M.SourceData,
    },
}

M.CreateTrustAnchorInput = {
    type = "structure",
    id = "CreateTrustAnchorInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Source }),
        enabled = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        notificationSettings = {
            type = "list",
            member = M.NotificationSetting,
        },
    },
}

M.NotificationSettingDetail = {
    type = "structure",
    id = "NotificationSettingDetail",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        threshold = {
            type = "integer",
        },
        channel = {
            type = "string",
        },
        configuredBy = {
            type = "string",
        },
    },
}

M.TrustAnchorDetail = {
    type = "structure",
    id = "TrustAnchorDetail",
    members = {
        trustAnchorId = {
            type = "string",
        },
        trustAnchorArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        source = M.Source,
        enabled = {
            type = "boolean",
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
        notificationSettings = {
            type = "list",
            member = M.NotificationSettingDetail,
        },
    },
}

M.CreateTrustAnchorOutput = {
    type = "structure",
    id = "CreateTrustAnchorOutput",
    members = {
        trustAnchor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustAnchorDetail }),
    },
}

M.CredentialSummary = {
    type = "structure",
    id = "CredentialSummary",
    members = {
        seenAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        serialNumber = {
            type = "string",
        },
        issuer = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
        x509CertificateData = {
            type = "string",
        },
        failed = {
            type = "boolean",
        },
    },
}

M.DeleteCrlInput = {
    type = "structure",
    id = "DeleteCrlInput",
    members = {
        crlId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CrlDetail = {
    type = "structure",
    id = "CrlDetail",
    members = {
        crlId = {
            type = "string",
        },
        crlArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
        crlData = {
            type = "blob",
        },
        trustAnchorArn = {
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
    },
}

M.DeleteCrlOutput = {
    type = "structure",
    id = "DeleteCrlOutput",
    members = {
        crl = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CrlDetail }),
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DisableCrlInput = {
    type = "structure",
    id = "DisableCrlInput",
    members = {
        crlId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisableCrlOutput = {
    type = "structure",
    id = "DisableCrlOutput",
    members = {
        crl = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CrlDetail }),
    },
}

M.EnableCrlInput = {
    type = "structure",
    id = "EnableCrlInput",
    members = {
        crlId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EnableCrlOutput = {
    type = "structure",
    id = "EnableCrlOutput",
    members = {
        crl = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CrlDetail }),
    },
}

M.GetCrlInput = {
    type = "structure",
    id = "GetCrlInput",
    members = {
        crlId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCrlOutput = {
    type = "structure",
    id = "GetCrlOutput",
    members = {
        crl = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CrlDetail }),
    },
}

M.ImportCrlInput = {
    type = "structure",
    id = "ImportCrlInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        crlData = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        enabled = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        trustAnchorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportCrlOutput = {
    type = "structure",
    id = "ImportCrlOutput",
    members = {
        crl = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CrlDetail }),
    },
}

M.ListCrlsInput = {
    type = "structure",
    id = "ListCrlsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
    },
}

M.ListCrlsOutput = {
    type = "structure",
    id = "ListCrlsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        crls = {
            type = "list",
            member = M.CrlDetail,
        },
    },
}

M.UpdateCrlInput = {
    type = "structure",
    id = "UpdateCrlInput",
    members = {
        crlId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        crlData = {
            type = "blob",
        },
    },
}

M.UpdateCrlOutput = {
    type = "structure",
    id = "UpdateCrlOutput",
    members = {
        crl = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CrlDetail }),
    },
}

M.DeleteAttributeMappingInput = {
    type = "structure",
    id = "DeleteAttributeMappingInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        certificateField = {
            type = "string",
            traits = {
                http_query = "certificateField",
                required = true,
            },
        },
        specifiers = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "specifiers",
            },
        },
    },
}

M.DeleteAttributeMappingOutput = {
    type = "structure",
    id = "DeleteAttributeMappingOutput",
    members = {
        profile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProfileDetail }),
    },
}

M.DeleteProfileInput = {
    type = "structure",
    id = "DeleteProfileInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProfileOutput = {
    type = "structure",
    id = "DeleteProfileOutput",
    members = {
        profile = M.ProfileDetail,
    },
}

M.DeleteTrustAnchorInput = {
    type = "structure",
    id = "DeleteTrustAnchorInput",
    members = {
        trustAnchorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTrustAnchorOutput = {
    type = "structure",
    id = "DeleteTrustAnchorOutput",
    members = {
        trustAnchor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustAnchorDetail }),
    },
}

M.DisableProfileInput = {
    type = "structure",
    id = "DisableProfileInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisableProfileOutput = {
    type = "structure",
    id = "DisableProfileOutput",
    members = {
        profile = M.ProfileDetail,
    },
}

M.DisableTrustAnchorInput = {
    type = "structure",
    id = "DisableTrustAnchorInput",
    members = {
        trustAnchorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisableTrustAnchorOutput = {
    type = "structure",
    id = "DisableTrustAnchorOutput",
    members = {
        trustAnchor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustAnchorDetail }),
    },
}

M.EnableProfileInput = {
    type = "structure",
    id = "EnableProfileInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EnableProfileOutput = {
    type = "structure",
    id = "EnableProfileOutput",
    members = {
        profile = M.ProfileDetail,
    },
}

M.EnableTrustAnchorInput = {
    type = "structure",
    id = "EnableTrustAnchorInput",
    members = {
        trustAnchorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EnableTrustAnchorOutput = {
    type = "structure",
    id = "EnableTrustAnchorOutput",
    members = {
        trustAnchor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustAnchorDetail }),
    },
}

M.GetProfileInput = {
    type = "structure",
    id = "GetProfileInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetProfileOutput = {
    type = "structure",
    id = "GetProfileOutput",
    members = {
        profile = M.ProfileDetail,
    },
}

M.GetSubjectInput = {
    type = "structure",
    id = "GetSubjectInput",
    members = {
        subjectId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.InstanceProperty = {
    type = "structure",
    id = "InstanceProperty",
    members = {
        seenAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        failed = {
            type = "boolean",
        },
    },
}

M.SubjectDetail = {
    type = "structure",
    id = "SubjectDetail",
    members = {
        subjectArn = {
            type = "string",
        },
        subjectId = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
        x509Subject = {
            type = "string",
        },
        lastSeenAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
        credentials = {
            type = "list",
            member = M.CredentialSummary,
        },
        instanceProperties = {
            type = "list",
            member = M.InstanceProperty,
        },
    },
}

M.GetSubjectOutput = {
    type = "structure",
    id = "GetSubjectOutput",
    members = {
        subject = M.SubjectDetail,
    },
}

M.GetTrustAnchorInput = {
    type = "structure",
    id = "GetTrustAnchorInput",
    members = {
        trustAnchorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTrustAnchorOutput = {
    type = "structure",
    id = "GetTrustAnchorOutput",
    members = {
        trustAnchor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustAnchorDetail }),
    },
}

M.ListProfilesInput = {
    type = "structure",
    id = "ListProfilesInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
    },
}

M.ListProfilesOutput = {
    type = "structure",
    id = "ListProfilesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        profiles = {
            type = "list",
            member = M.ProfileDetail,
        },
    },
}

M.ListSubjectsInput = {
    type = "structure",
    id = "ListSubjectsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
    },
}

M.SubjectSummary = {
    type = "structure",
    id = "SubjectSummary",
    members = {
        subjectArn = {
            type = "string",
        },
        subjectId = {
            type = "string",
        },
        enabled = {
            type = "boolean",
        },
        x509Subject = {
            type = "string",
        },
        lastSeenAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    },
}

M.ListSubjectsOutput = {
    type = "structure",
    id = "ListSubjectsOutput",
    members = {
        subjects = {
            type = "list",
            member = M.SubjectSummary,
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
                http_query = "resourceArn",
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

M.ListTrustAnchorsInput = {
    type = "structure",
    id = "ListTrustAnchorsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                http_query = "pageSize",
            },
        },
    },
}

M.ListTrustAnchorsOutput = {
    type = "structure",
    id = "ListTrustAnchorsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        trustAnchors = {
            type = "list",
            member = M.TrustAnchorDetail,
        },
    },
}

M.NotificationSettingKey = {
    type = "structure",
    id = "NotificationSettingKey",
    members = {
        event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channel = {
            type = "string",
        },
    },
}

M.PutAttributeMappingInput = {
    type = "structure",
    id = "PutAttributeMappingInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        certificateField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mappingRules = {
            type = "list",
            member = M.MappingRule,
            traits = {
                required = true,
            },
        },
    },
}

M.PutAttributeMappingOutput = {
    type = "structure",
    id = "PutAttributeMappingOutput",
    members = {
        profile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProfileDetail }),
    },
}

M.UpdateProfileInput = {
    type = "structure",
    id = "UpdateProfileInput",
    members = {
        profileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        sessionPolicy = {
            type = "string",
        },
        roleArns = {
            type = "list",
            member = { type = "string" },
        },
        managedPolicyArns = {
            type = "list",
            member = { type = "string" },
        },
        durationSeconds = {
            type = "integer",
        },
        acceptRoleSessionName = {
            type = "boolean",
        },
    },
}

M.UpdateProfileOutput = {
    type = "structure",
    id = "UpdateProfileOutput",
    members = {
        profile = M.ProfileDetail,
    },
}

M.PutNotificationSettingsInput = {
    type = "structure",
    id = "PutNotificationSettingsInput",
    members = {
        trustAnchorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationSettings = {
            type = "list",
            member = M.NotificationSetting,
            traits = {
                required = true,
            },
        },
    },
}

M.PutNotificationSettingsOutput = {
    type = "structure",
    id = "PutNotificationSettingsOutput",
    members = {
        trustAnchor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustAnchorDetail }),
    },
}

M.ResetNotificationSettingsInput = {
    type = "structure",
    id = "ResetNotificationSettingsInput",
    members = {
        trustAnchorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationSettingKeys = {
            type = "list",
            member = M.NotificationSettingKey,
            traits = {
                required = true,
            },
        },
    },
}

M.ResetNotificationSettingsOutput = {
    type = "structure",
    id = "ResetNotificationSettingsOutput",
    members = {
        trustAnchor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustAnchorDetail }),
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

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateTrustAnchorInput = {
    type = "structure",
    id = "UpdateTrustAnchorInput",
    members = {
        trustAnchorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        source = M.Source,
    },
}

M.UpdateTrustAnchorOutput = {
    type = "structure",
    id = "UpdateTrustAnchorOutput",
    members = {
        trustAnchor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustAnchorDetail }),
    },
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
