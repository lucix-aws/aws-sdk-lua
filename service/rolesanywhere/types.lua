local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        certificateField = {
            type = "string",
        },
        mappingRules = {
            type = "list",
            member_type = "structure",
        },
    },
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

M.CreateProfileInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        managedPolicyArns = {
            type = "list",
            member_type = "string",
        },
        durationSeconds = {
            type = "number",
        },
        enabled = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        acceptRoleSessionName = {
            type = "boolean",
        },
    },
}

M.ProfileDetail = {
    type = "structure",
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
            member_type = "string",
        },
        managedPolicyArns = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        acceptRoleSessionName = {
            type = "boolean",
        },
        attributeMappings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateProfileOutput = {
    type = "structure",
    members = {
        profile = {
            type = "structure",
        },
    },
}

M.ValidationException = {
    type = "structure",
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
            type = "number",
        },
        channel = {
            type = "string",
        },
    },
}

M.SourceData = {
    type = "union",
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
    members = {
        sourceType = {
            type = "string",
        },
        sourceData = {
            type = "union",
        },
    },
}

M.CreateTrustAnchorInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        source = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        enabled = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        notificationSettings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NotificationSettingDetail = {
    type = "structure",
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
            type = "number",
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
        source = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.CreateTrustAnchorOutput = {
    type = "structure",
    members = {
        trustAnchor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CredentialSummary = {
    type = "structure",
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
    members = {
        crl = {
            type = "structure",
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
        },
    },
}

M.DisableCrlInput = {
    type = "structure",
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
    members = {
        crl = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableCrlInput = {
    type = "structure",
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
    members = {
        crl = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCrlInput = {
    type = "structure",
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
    members = {
        crl = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportCrlInput = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        crl = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCrlsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        pageSize = {
            type = "number",
            traits = {
                http_query = "pageSize",
            },
        },
    },
}

M.ListCrlsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        crls = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateCrlInput = {
    type = "structure",
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
    members = {
        crl = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAttributeMappingInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                http_query = "specifiers",
            },
        },
    },
}

M.DeleteAttributeMappingOutput = {
    type = "structure",
    members = {
        profile = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProfileInput = {
    type = "structure",
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
    members = {
        profile = {
            type = "structure",
        },
    },
}

M.DeleteTrustAnchorInput = {
    type = "structure",
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
    members = {
        trustAnchor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableProfileInput = {
    type = "structure",
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
    members = {
        profile = {
            type = "structure",
        },
    },
}

M.DisableTrustAnchorInput = {
    type = "structure",
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
    members = {
        trustAnchor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableProfileInput = {
    type = "structure",
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
    members = {
        profile = {
            type = "structure",
        },
    },
}

M.EnableTrustAnchorInput = {
    type = "structure",
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
    members = {
        trustAnchor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetProfileInput = {
    type = "structure",
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
    members = {
        profile = {
            type = "structure",
        },
    },
}

M.GetSubjectInput = {
    type = "structure",
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
    members = {
        seenAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        properties = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        failed = {
            type = "boolean",
        },
    },
}

M.SubjectDetail = {
    type = "structure",
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
            member_type = "structure",
        },
        instanceProperties = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetSubjectOutput = {
    type = "structure",
    members = {
        subject = {
            type = "structure",
        },
    },
}

M.GetTrustAnchorInput = {
    type = "structure",
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
    members = {
        trustAnchor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListProfilesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        pageSize = {
            type = "number",
            traits = {
                http_query = "pageSize",
            },
        },
    },
}

M.ListProfilesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        profiles = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListSubjectsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        pageSize = {
            type = "number",
            traits = {
                http_query = "pageSize",
            },
        },
    },
}

M.SubjectSummary = {
    type = "structure",
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
    members = {
        subjects = {
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
                http_query = "resourceArn",
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

M.ListTrustAnchorsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        pageSize = {
            type = "number",
            traits = {
                http_query = "pageSize",
            },
        },
    },
}

M.ListTrustAnchorsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        trustAnchors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.NotificationSettingKey = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutAttributeMappingOutput = {
    type = "structure",
    members = {
        profile = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProfileInput = {
    type = "structure",
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
            member_type = "string",
        },
        managedPolicyArns = {
            type = "list",
            member_type = "string",
        },
        durationSeconds = {
            type = "number",
        },
        acceptRoleSessionName = {
            type = "boolean",
        },
    },
}

M.UpdateProfileOutput = {
    type = "structure",
    members = {
        profile = {
            type = "structure",
        },
    },
}

M.PutNotificationSettingsInput = {
    type = "structure",
    members = {
        trustAnchorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationSettings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutNotificationSettingsOutput = {
    type = "structure",
    members = {
        trustAnchor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ResetNotificationSettingsInput = {
    type = "structure",
    members = {
        trustAnchorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        notificationSettingKeys = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ResetNotificationSettingsOutput = {
    type = "structure",
    members = {
        trustAnchor = {
            type = "structure",
            traits = {
                required = true,
            },
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

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateTrustAnchorInput = {
    type = "structure",
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
        source = {
            type = "structure",
        },
    },
}

M.UpdateTrustAnchorOutput = {
    type = "structure",
    members = {
        trustAnchor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
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
