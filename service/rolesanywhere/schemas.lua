local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.rolesanywhere"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.NotificationSettings = schema.new({ type = "list", list_member = M.NotificationSetting })

M.NotificationSettingKeys = schema.new({ type = "list", list_member = M.NotificationSettingKey })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.CrlDetails = schema.new({ type = "list", list_member = M.CrlDetail })

M.ProfileDetails = schema.new({ type = "list", list_member = M.ProfileDetail })

M.RoleArnList = schema.new({ type = "list", list_member = prelude.String })

M.ManagedPolicyList = schema.new({ type = "list", list_member = prelude.String })

M.SpecifierList = schema.new({ type = "list", list_member = prelude.String })

M.MappingRules = schema.new({ type = "list", list_member = M.MappingRule })

M.SubjectSummaries = schema.new({ type = "list", list_member = M.SubjectSummary })

M.TrustAnchorDetails = schema.new({ type = "list", list_member = M.TrustAnchorDetail })

M.NotificationSettingDetails = schema.new({ type = "list", list_member = M.NotificationSettingDetail })

M.AttributeMappings = schema.new({ type = "list", list_member = M.AttributeMapping })

M.CredentialSummaries = schema.new({ type = "list", list_member = M.CredentialSummary })

M.InstanceProperties = schema.new({ type = "list", list_member = M.InstanceProperty })

M.InstancePropertyMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MappingRule = schema.new({
    id = id.from(_N, "MappingRule"),
    type = "structure",
    members = {
        specifier = schema.new({
            id = id.from(_N, "MappingRule", "specifier"),
            type = "string",
            name = "specifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttributeMapping = schema.new({
    id = id.from(_N, "AttributeMapping"),
    type = "structure",
    members = {
        certificateField = schema.new({
            id = id.from(_N, "AttributeMapping", "certificateField"),
            type = "string",
            name = "certificateField",
            target_id = prelude.String.id,
        }),
        mappingRules = schema.new({
            id = id.from(_N, "AttributeMapping", "mappingRules"),
            type = "list",
            name = "mappingRules",
            target_id = prelude.Document.id,
            list_member = M.MappingRule,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Tag", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "Tag", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateProfileInput = schema.new({
    id = id.from(_N, "CreateProfileRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateProfileInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        requireInstanceProperties = schema.new({
            id = id.from(_N, "CreateProfileInput", "requireInstanceProperties"),
            type = "boolean",
            name = "requireInstanceProperties",
            target_id = prelude.Boolean.id,
        }),
        sessionPolicy = schema.new({
            id = id.from(_N, "CreateProfileInput", "sessionPolicy"),
            type = "string",
            name = "sessionPolicy",
            target_id = prelude.String.id,
        }),
        roleArns = schema.new({
            id = id.from(_N, "CreateProfileInput", "roleArns"),
            type = "list",
            name = "roleArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        managedPolicyArns = schema.new({
            id = id.from(_N, "CreateProfileInput", "managedPolicyArns"),
            type = "list",
            name = "managedPolicyArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        durationSeconds = schema.new({
            id = id.from(_N, "CreateProfileInput", "durationSeconds"),
            type = "integer",
            name = "durationSeconds",
            target_id = prelude.Integer.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "CreateProfileInput", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateProfileInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        acceptRoleSessionName = schema.new({
            id = id.from(_N, "CreateProfileInput", "acceptRoleSessionName"),
            type = "boolean",
            name = "acceptRoleSessionName",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ProfileDetail = schema.new({
    id = id.from(_N, "ProfileDetail"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "ProfileDetail", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
        }),
        profileArn = schema.new({
            id = id.from(_N, "ProfileDetail", "profileArn"),
            type = "string",
            name = "profileArn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ProfileDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        requireInstanceProperties = schema.new({
            id = id.from(_N, "ProfileDetail", "requireInstanceProperties"),
            type = "boolean",
            name = "requireInstanceProperties",
            target_id = prelude.Boolean.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "ProfileDetail", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        createdBy = schema.new({
            id = id.from(_N, "ProfileDetail", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
        }),
        sessionPolicy = schema.new({
            id = id.from(_N, "ProfileDetail", "sessionPolicy"),
            type = "string",
            name = "sessionPolicy",
            target_id = prelude.String.id,
        }),
        roleArns = schema.new({
            id = id.from(_N, "ProfileDetail", "roleArns"),
            type = "list",
            name = "roleArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        managedPolicyArns = schema.new({
            id = id.from(_N, "ProfileDetail", "managedPolicyArns"),
            type = "list",
            name = "managedPolicyArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ProfileDetail", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "ProfileDetail", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        durationSeconds = schema.new({
            id = id.from(_N, "ProfileDetail", "durationSeconds"),
            type = "integer",
            name = "durationSeconds",
            target_id = prelude.Integer.id,
        }),
        acceptRoleSessionName = schema.new({
            id = id.from(_N, "ProfileDetail", "acceptRoleSessionName"),
            type = "boolean",
            name = "acceptRoleSessionName",
            target_id = prelude.Boolean.id,
        }),
        attributeMappings = schema.new({
            id = id.from(_N, "ProfileDetail", "attributeMappings"),
            type = "list",
            name = "attributeMappings",
            target_id = prelude.Document.id,
            list_member = M.AttributeMapping,
        }),
    },
})

M.CreateProfileOutput = schema.new({
    id = id.from(_N, "ProfileDetailResponse"),
    type = "structure",
    members = {
        profile = schema.new({
            id = id.from(_N, "CreateProfileOutput", "profile"),
            type = "structure",
            name = "profile",
            target_id = id.from(_N, "ProfileDetail"),
            target = M.ProfileDetail,
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NotificationSetting = schema.new({
    id = id.from(_N, "NotificationSetting"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "NotificationSetting", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        event = schema.new({
            id = id.from(_N, "NotificationSetting", "event"),
            type = "string",
            name = "event",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        threshold = schema.new({
            id = id.from(_N, "NotificationSetting", "threshold"),
            type = "integer",
            name = "threshold",
            target_id = prelude.Integer.id,
        }),
        channel = schema.new({
            id = id.from(_N, "NotificationSetting", "channel"),
            type = "string",
            name = "channel",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceData = schema.new({
    id = id.from(_N, "SourceData"),
    type = "union",
    members = {
        x509CertificateData = schema.new({
            id = id.from(_N, "SourceData", "x509CertificateData"),
            type = "string",
            name = "x509CertificateData",
            target_id = prelude.String.id,
        }),
        acmPcaArn = schema.new({
            id = id.from(_N, "SourceData", "acmPcaArn"),
            type = "string",
            name = "acmPcaArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Source = schema.new({
    id = id.from(_N, "Source"),
    type = "structure",
    members = {
        sourceType = schema.new({
            id = id.from(_N, "Source", "sourceType"),
            type = "string",
            name = "sourceType",
            target_id = prelude.String.id,
        }),
        sourceData = schema.new({
            id = id.from(_N, "Source", "sourceData"),
            type = "union",
            name = "sourceData",
            target_id = id.from(_N, "SourceData"),
            target = M.SourceData,
        }),
    },
})

M.CreateTrustAnchorInput = schema.new({
    id = id.from(_N, "CreateTrustAnchorRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateTrustAnchorInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        source = schema.new({
            id = id.from(_N, "CreateTrustAnchorInput", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "Source"),
            target = M.Source,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        enabled = schema.new({
            id = id.from(_N, "CreateTrustAnchorInput", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateTrustAnchorInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        notificationSettings = schema.new({
            id = id.from(_N, "CreateTrustAnchorInput", "notificationSettings"),
            type = "list",
            name = "notificationSettings",
            target_id = prelude.Document.id,
            list_member = M.NotificationSetting,
        }),
    },
})

M.NotificationSettingDetail = schema.new({
    id = id.from(_N, "NotificationSettingDetail"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "NotificationSettingDetail", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        event = schema.new({
            id = id.from(_N, "NotificationSettingDetail", "event"),
            type = "string",
            name = "event",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        threshold = schema.new({
            id = id.from(_N, "NotificationSettingDetail", "threshold"),
            type = "integer",
            name = "threshold",
            target_id = prelude.Integer.id,
        }),
        channel = schema.new({
            id = id.from(_N, "NotificationSettingDetail", "channel"),
            type = "string",
            name = "channel",
            target_id = prelude.String.id,
        }),
        configuredBy = schema.new({
            id = id.from(_N, "NotificationSettingDetail", "configuredBy"),
            type = "string",
            name = "configuredBy",
            target_id = prelude.String.id,
        }),
    },
})

M.TrustAnchorDetail = schema.new({
    id = id.from(_N, "TrustAnchorDetail"),
    type = "structure",
    members = {
        trustAnchorId = schema.new({
            id = id.from(_N, "TrustAnchorDetail", "trustAnchorId"),
            type = "string",
            name = "trustAnchorId",
            target_id = prelude.String.id,
        }),
        trustAnchorArn = schema.new({
            id = id.from(_N, "TrustAnchorDetail", "trustAnchorArn"),
            type = "string",
            name = "trustAnchorArn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "TrustAnchorDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        source = schema.new({
            id = id.from(_N, "TrustAnchorDetail", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "Source"),
            target = M.Source,
        }),
        enabled = schema.new({
            id = id.from(_N, "TrustAnchorDetail", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "TrustAnchorDetail", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "TrustAnchorDetail", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        notificationSettings = schema.new({
            id = id.from(_N, "TrustAnchorDetail", "notificationSettings"),
            type = "list",
            name = "notificationSettings",
            target_id = prelude.Document.id,
            list_member = M.NotificationSettingDetail,
        }),
    },
})

M.CreateTrustAnchorOutput = schema.new({
    id = id.from(_N, "TrustAnchorDetailResponse"),
    type = "structure",
    members = {
        trustAnchor = schema.new({
            id = id.from(_N, "CreateTrustAnchorOutput", "trustAnchor"),
            type = "structure",
            name = "trustAnchor",
            target_id = id.from(_N, "TrustAnchorDetail"),
            target = M.TrustAnchorDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CredentialSummary = schema.new({
    id = id.from(_N, "CredentialSummary"),
    type = "structure",
    members = {
        seenAt = schema.new({
            id = id.from(_N, "CredentialSummary", "seenAt"),
            type = "timestamp",
            name = "seenAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        serialNumber = schema.new({
            id = id.from(_N, "CredentialSummary", "serialNumber"),
            type = "string",
            name = "serialNumber",
            target_id = prelude.String.id,
        }),
        issuer = schema.new({
            id = id.from(_N, "CredentialSummary", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "CredentialSummary", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        x509CertificateData = schema.new({
            id = id.from(_N, "CredentialSummary", "x509CertificateData"),
            type = "string",
            name = "x509CertificateData",
            target_id = prelude.String.id,
        }),
        failed = schema.new({
            id = id.from(_N, "CredentialSummary", "failed"),
            type = "boolean",
            name = "failed",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DeleteCrlInput = schema.new({
    id = id.from(_N, "ScalarCrlRequest"),
    type = "structure",
    members = {
        crlId = schema.new({
            id = id.from(_N, "DeleteCrlInput", "crlId"),
            type = "string",
            name = "crlId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CrlDetail = schema.new({
    id = id.from(_N, "CrlDetail"),
    type = "structure",
    members = {
        crlId = schema.new({
            id = id.from(_N, "CrlDetail", "crlId"),
            type = "string",
            name = "crlId",
            target_id = prelude.String.id,
        }),
        crlArn = schema.new({
            id = id.from(_N, "CrlDetail", "crlArn"),
            type = "string",
            name = "crlArn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CrlDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "CrlDetail", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        crlData = schema.new({
            id = id.from(_N, "CrlDetail", "crlData"),
            type = "blob",
            name = "crlData",
            target_id = prelude.Blob.id,
        }),
        trustAnchorArn = schema.new({
            id = id.from(_N, "CrlDetail", "trustAnchorArn"),
            type = "string",
            name = "trustAnchorArn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CrlDetail", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CrlDetail", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.DeleteCrlOutput = schema.new({
    id = id.from(_N, "CrlDetailResponse"),
    type = "structure",
    members = {
        crl = schema.new({
            id = id.from(_N, "DeleteCrlOutput", "crl"),
            type = "structure",
            name = "crl",
            target_id = id.from(_N, "CrlDetail"),
            target = M.CrlDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableCrlInput = schema.new({
    id = id.from(_N, "ScalarCrlRequest"),
    type = "structure",
    members = {
        crlId = schema.new({
            id = id.from(_N, "DisableCrlInput", "crlId"),
            type = "string",
            name = "crlId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisableCrlOutput = schema.new({
    id = id.from(_N, "CrlDetailResponse"),
    type = "structure",
    members = {
        crl = schema.new({
            id = id.from(_N, "DisableCrlOutput", "crl"),
            type = "structure",
            name = "crl",
            target_id = id.from(_N, "CrlDetail"),
            target = M.CrlDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableCrlInput = schema.new({
    id = id.from(_N, "ScalarCrlRequest"),
    type = "structure",
    members = {
        crlId = schema.new({
            id = id.from(_N, "EnableCrlInput", "crlId"),
            type = "string",
            name = "crlId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.EnableCrlOutput = schema.new({
    id = id.from(_N, "CrlDetailResponse"),
    type = "structure",
    members = {
        crl = schema.new({
            id = id.from(_N, "EnableCrlOutput", "crl"),
            type = "structure",
            name = "crl",
            target_id = id.from(_N, "CrlDetail"),
            target = M.CrlDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetCrlInput = schema.new({
    id = id.from(_N, "ScalarCrlRequest"),
    type = "structure",
    members = {
        crlId = schema.new({
            id = id.from(_N, "GetCrlInput", "crlId"),
            type = "string",
            name = "crlId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCrlOutput = schema.new({
    id = id.from(_N, "CrlDetailResponse"),
    type = "structure",
    members = {
        crl = schema.new({
            id = id.from(_N, "GetCrlOutput", "crl"),
            type = "structure",
            name = "crl",
            target_id = id.from(_N, "CrlDetail"),
            target = M.CrlDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ImportCrlInput = schema.new({
    id = id.from(_N, "ImportCrlRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ImportCrlInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        crlData = schema.new({
            id = id.from(_N, "ImportCrlInput", "crlData"),
            type = "blob",
            name = "crlData",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        enabled = schema.new({
            id = id.from(_N, "ImportCrlInput", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ImportCrlInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        trustAnchorArn = schema.new({
            id = id.from(_N, "ImportCrlInput", "trustAnchorArn"),
            type = "string",
            name = "trustAnchorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ImportCrlOutput = schema.new({
    id = id.from(_N, "CrlDetailResponse"),
    type = "structure",
    members = {
        crl = schema.new({
            id = id.from(_N, "ImportCrlOutput", "crl"),
            type = "structure",
            name = "crl",
            target_id = id.from(_N, "CrlDetail"),
            target = M.CrlDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListCrlsInput = schema.new({
    id = id.from(_N, "ListRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListCrlsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        pageSize = schema.new({
            id = id.from(_N, "ListCrlsInput", "pageSize"),
            type = "integer",
            name = "pageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "pageSize" },
            },
        }),
    },
})

M.ListCrlsOutput = schema.new({
    id = id.from(_N, "ListCrlsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListCrlsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        crls = schema.new({
            id = id.from(_N, "ListCrlsOutput", "crls"),
            type = "list",
            name = "crls",
            target_id = prelude.Document.id,
            list_member = M.CrlDetail,
        }),
    },
})

M.UpdateCrlInput = schema.new({
    id = id.from(_N, "UpdateCrlRequest"),
    type = "structure",
    members = {
        crlId = schema.new({
            id = id.from(_N, "UpdateCrlInput", "crlId"),
            type = "string",
            name = "crlId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateCrlInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        crlData = schema.new({
            id = id.from(_N, "UpdateCrlInput", "crlData"),
            type = "blob",
            name = "crlData",
            target_id = prelude.Blob.id,
        }),
    },
})

M.UpdateCrlOutput = schema.new({
    id = id.from(_N, "CrlDetailResponse"),
    type = "structure",
    members = {
        crl = schema.new({
            id = id.from(_N, "UpdateCrlOutput", "crl"),
            type = "structure",
            name = "crl",
            target_id = id.from(_N, "CrlDetail"),
            target = M.CrlDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAttributeMappingInput = schema.new({
    id = id.from(_N, "DeleteAttributeMappingRequest"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "DeleteAttributeMappingInput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        certificateField = schema.new({
            id = id.from(_N, "DeleteAttributeMappingInput", "certificateField"),
            type = "string",
            name = "certificateField",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "certificateField" },
            },
        }),
        specifiers = schema.new({
            id = id.from(_N, "DeleteAttributeMappingInput", "specifiers"),
            type = "list",
            name = "specifiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "specifiers" },
            },
        }),
    },
})

M.DeleteAttributeMappingOutput = schema.new({
    id = id.from(_N, "DeleteAttributeMappingResponse"),
    type = "structure",
    members = {
        profile = schema.new({
            id = id.from(_N, "DeleteAttributeMappingOutput", "profile"),
            type = "structure",
            name = "profile",
            target_id = id.from(_N, "ProfileDetail"),
            target = M.ProfileDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProfileInput = schema.new({
    id = id.from(_N, "ScalarProfileRequest"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "DeleteProfileInput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteProfileOutput = schema.new({
    id = id.from(_N, "ProfileDetailResponse"),
    type = "structure",
    members = {
        profile = schema.new({
            id = id.from(_N, "DeleteProfileOutput", "profile"),
            type = "structure",
            name = "profile",
            target_id = id.from(_N, "ProfileDetail"),
            target = M.ProfileDetail,
        }),
    },
})

M.DeleteTrustAnchorInput = schema.new({
    id = id.from(_N, "ScalarTrustAnchorRequest"),
    type = "structure",
    members = {
        trustAnchorId = schema.new({
            id = id.from(_N, "DeleteTrustAnchorInput", "trustAnchorId"),
            type = "string",
            name = "trustAnchorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteTrustAnchorOutput = schema.new({
    id = id.from(_N, "TrustAnchorDetailResponse"),
    type = "structure",
    members = {
        trustAnchor = schema.new({
            id = id.from(_N, "DeleteTrustAnchorOutput", "trustAnchor"),
            type = "structure",
            name = "trustAnchor",
            target_id = id.from(_N, "TrustAnchorDetail"),
            target = M.TrustAnchorDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisableProfileInput = schema.new({
    id = id.from(_N, "ScalarProfileRequest"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "DisableProfileInput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisableProfileOutput = schema.new({
    id = id.from(_N, "ProfileDetailResponse"),
    type = "structure",
    members = {
        profile = schema.new({
            id = id.from(_N, "DisableProfileOutput", "profile"),
            type = "structure",
            name = "profile",
            target_id = id.from(_N, "ProfileDetail"),
            target = M.ProfileDetail,
        }),
    },
})

M.DisableTrustAnchorInput = schema.new({
    id = id.from(_N, "ScalarTrustAnchorRequest"),
    type = "structure",
    members = {
        trustAnchorId = schema.new({
            id = id.from(_N, "DisableTrustAnchorInput", "trustAnchorId"),
            type = "string",
            name = "trustAnchorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisableTrustAnchorOutput = schema.new({
    id = id.from(_N, "TrustAnchorDetailResponse"),
    type = "structure",
    members = {
        trustAnchor = schema.new({
            id = id.from(_N, "DisableTrustAnchorOutput", "trustAnchor"),
            type = "structure",
            name = "trustAnchor",
            target_id = id.from(_N, "TrustAnchorDetail"),
            target = M.TrustAnchorDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableProfileInput = schema.new({
    id = id.from(_N, "ScalarProfileRequest"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "EnableProfileInput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.EnableProfileOutput = schema.new({
    id = id.from(_N, "ProfileDetailResponse"),
    type = "structure",
    members = {
        profile = schema.new({
            id = id.from(_N, "EnableProfileOutput", "profile"),
            type = "structure",
            name = "profile",
            target_id = id.from(_N, "ProfileDetail"),
            target = M.ProfileDetail,
        }),
    },
})

M.EnableTrustAnchorInput = schema.new({
    id = id.from(_N, "ScalarTrustAnchorRequest"),
    type = "structure",
    members = {
        trustAnchorId = schema.new({
            id = id.from(_N, "EnableTrustAnchorInput", "trustAnchorId"),
            type = "string",
            name = "trustAnchorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.EnableTrustAnchorOutput = schema.new({
    id = id.from(_N, "TrustAnchorDetailResponse"),
    type = "structure",
    members = {
        trustAnchor = schema.new({
            id = id.from(_N, "EnableTrustAnchorOutput", "trustAnchor"),
            type = "structure",
            name = "trustAnchor",
            target_id = id.from(_N, "TrustAnchorDetail"),
            target = M.TrustAnchorDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetProfileInput = schema.new({
    id = id.from(_N, "ScalarProfileRequest"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "GetProfileInput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetProfileOutput = schema.new({
    id = id.from(_N, "ProfileDetailResponse"),
    type = "structure",
    members = {
        profile = schema.new({
            id = id.from(_N, "GetProfileOutput", "profile"),
            type = "structure",
            name = "profile",
            target_id = id.from(_N, "ProfileDetail"),
            target = M.ProfileDetail,
        }),
    },
})

M.GetSubjectInput = schema.new({
    id = id.from(_N, "ScalarSubjectRequest"),
    type = "structure",
    members = {
        subjectId = schema.new({
            id = id.from(_N, "GetSubjectInput", "subjectId"),
            type = "string",
            name = "subjectId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.InstanceProperty = schema.new({
    id = id.from(_N, "InstanceProperty"),
    type = "structure",
    members = {
        seenAt = schema.new({
            id = id.from(_N, "InstanceProperty", "seenAt"),
            type = "timestamp",
            name = "seenAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        properties = schema.new({
            id = id.from(_N, "InstanceProperty", "properties"),
            type = "map",
            name = "properties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        failed = schema.new({
            id = id.from(_N, "InstanceProperty", "failed"),
            type = "boolean",
            name = "failed",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.SubjectDetail = schema.new({
    id = id.from(_N, "SubjectDetail"),
    type = "structure",
    members = {
        subjectArn = schema.new({
            id = id.from(_N, "SubjectDetail", "subjectArn"),
            type = "string",
            name = "subjectArn",
            target_id = prelude.String.id,
        }),
        subjectId = schema.new({
            id = id.from(_N, "SubjectDetail", "subjectId"),
            type = "string",
            name = "subjectId",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "SubjectDetail", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        x509Subject = schema.new({
            id = id.from(_N, "SubjectDetail", "x509Subject"),
            type = "string",
            name = "x509Subject",
            target_id = prelude.String.id,
        }),
        lastSeenAt = schema.new({
            id = id.from(_N, "SubjectDetail", "lastSeenAt"),
            type = "timestamp",
            name = "lastSeenAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "SubjectDetail", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "SubjectDetail", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        credentials = schema.new({
            id = id.from(_N, "SubjectDetail", "credentials"),
            type = "list",
            name = "credentials",
            target_id = prelude.Document.id,
            list_member = M.CredentialSummary,
        }),
        instanceProperties = schema.new({
            id = id.from(_N, "SubjectDetail", "instanceProperties"),
            type = "list",
            name = "instanceProperties",
            target_id = prelude.Document.id,
            list_member = M.InstanceProperty,
        }),
    },
})

M.GetSubjectOutput = schema.new({
    id = id.from(_N, "SubjectDetailResponse"),
    type = "structure",
    members = {
        subject = schema.new({
            id = id.from(_N, "GetSubjectOutput", "subject"),
            type = "structure",
            name = "subject",
            target_id = id.from(_N, "SubjectDetail"),
            target = M.SubjectDetail,
        }),
    },
})

M.GetTrustAnchorInput = schema.new({
    id = id.from(_N, "ScalarTrustAnchorRequest"),
    type = "structure",
    members = {
        trustAnchorId = schema.new({
            id = id.from(_N, "GetTrustAnchorInput", "trustAnchorId"),
            type = "string",
            name = "trustAnchorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetTrustAnchorOutput = schema.new({
    id = id.from(_N, "TrustAnchorDetailResponse"),
    type = "structure",
    members = {
        trustAnchor = schema.new({
            id = id.from(_N, "GetTrustAnchorOutput", "trustAnchor"),
            type = "structure",
            name = "trustAnchor",
            target_id = id.from(_N, "TrustAnchorDetail"),
            target = M.TrustAnchorDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListProfilesInput = schema.new({
    id = id.from(_N, "ListRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListProfilesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        pageSize = schema.new({
            id = id.from(_N, "ListProfilesInput", "pageSize"),
            type = "integer",
            name = "pageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "pageSize" },
            },
        }),
    },
})

M.ListProfilesOutput = schema.new({
    id = id.from(_N, "ListProfilesResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListProfilesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        profiles = schema.new({
            id = id.from(_N, "ListProfilesOutput", "profiles"),
            type = "list",
            name = "profiles",
            target_id = prelude.Document.id,
            list_member = M.ProfileDetail,
        }),
    },
})

M.ListSubjectsInput = schema.new({
    id = id.from(_N, "ListRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSubjectsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        pageSize = schema.new({
            id = id.from(_N, "ListSubjectsInput", "pageSize"),
            type = "integer",
            name = "pageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "pageSize" },
            },
        }),
    },
})

M.SubjectSummary = schema.new({
    id = id.from(_N, "SubjectSummary"),
    type = "structure",
    members = {
        subjectArn = schema.new({
            id = id.from(_N, "SubjectSummary", "subjectArn"),
            type = "string",
            name = "subjectArn",
            target_id = prelude.String.id,
        }),
        subjectId = schema.new({
            id = id.from(_N, "SubjectSummary", "subjectId"),
            type = "string",
            name = "subjectId",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "SubjectSummary", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
        }),
        x509Subject = schema.new({
            id = id.from(_N, "SubjectSummary", "x509Subject"),
            type = "string",
            name = "x509Subject",
            target_id = prelude.String.id,
        }),
        lastSeenAt = schema.new({
            id = id.from(_N, "SubjectSummary", "lastSeenAt"),
            type = "timestamp",
            name = "lastSeenAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "SubjectSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "SubjectSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListSubjectsOutput = schema.new({
    id = id.from(_N, "ListSubjectsResponse"),
    type = "structure",
    members = {
        subjects = schema.new({
            id = id.from(_N, "ListSubjectsOutput", "subjects"),
            type = "list",
            name = "subjects",
            target_id = prelude.Document.id,
            list_member = M.SubjectSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSubjectsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "resourceArn" },
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ListTrustAnchorsInput = schema.new({
    id = id.from(_N, "ListRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTrustAnchorsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        pageSize = schema.new({
            id = id.from(_N, "ListTrustAnchorsInput", "pageSize"),
            type = "integer",
            name = "pageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "pageSize" },
            },
        }),
    },
})

M.ListTrustAnchorsOutput = schema.new({
    id = id.from(_N, "ListTrustAnchorsResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTrustAnchorsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        trustAnchors = schema.new({
            id = id.from(_N, "ListTrustAnchorsOutput", "trustAnchors"),
            type = "list",
            name = "trustAnchors",
            target_id = prelude.Document.id,
            list_member = M.TrustAnchorDetail,
        }),
    },
})

M.NotificationSettingKey = schema.new({
    id = id.from(_N, "NotificationSettingKey"),
    type = "structure",
    members = {
        event = schema.new({
            id = id.from(_N, "NotificationSettingKey", "event"),
            type = "string",
            name = "event",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channel = schema.new({
            id = id.from(_N, "NotificationSettingKey", "channel"),
            type = "string",
            name = "channel",
            target_id = prelude.String.id,
        }),
    },
})

M.PutAttributeMappingInput = schema.new({
    id = id.from(_N, "PutAttributeMappingRequest"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "PutAttributeMappingInput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        certificateField = schema.new({
            id = id.from(_N, "PutAttributeMappingInput", "certificateField"),
            type = "string",
            name = "certificateField",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mappingRules = schema.new({
            id = id.from(_N, "PutAttributeMappingInput", "mappingRules"),
            type = "list",
            name = "mappingRules",
            target_id = prelude.Document.id,
            list_member = M.MappingRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutAttributeMappingOutput = schema.new({
    id = id.from(_N, "PutAttributeMappingResponse"),
    type = "structure",
    members = {
        profile = schema.new({
            id = id.from(_N, "PutAttributeMappingOutput", "profile"),
            type = "structure",
            name = "profile",
            target_id = id.from(_N, "ProfileDetail"),
            target = M.ProfileDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateProfileInput = schema.new({
    id = id.from(_N, "UpdateProfileRequest"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "UpdateProfileInput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateProfileInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        sessionPolicy = schema.new({
            id = id.from(_N, "UpdateProfileInput", "sessionPolicy"),
            type = "string",
            name = "sessionPolicy",
            target_id = prelude.String.id,
        }),
        roleArns = schema.new({
            id = id.from(_N, "UpdateProfileInput", "roleArns"),
            type = "list",
            name = "roleArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        managedPolicyArns = schema.new({
            id = id.from(_N, "UpdateProfileInput", "managedPolicyArns"),
            type = "list",
            name = "managedPolicyArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        durationSeconds = schema.new({
            id = id.from(_N, "UpdateProfileInput", "durationSeconds"),
            type = "integer",
            name = "durationSeconds",
            target_id = prelude.Integer.id,
        }),
        acceptRoleSessionName = schema.new({
            id = id.from(_N, "UpdateProfileInput", "acceptRoleSessionName"),
            type = "boolean",
            name = "acceptRoleSessionName",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateProfileOutput = schema.new({
    id = id.from(_N, "ProfileDetailResponse"),
    type = "structure",
    members = {
        profile = schema.new({
            id = id.from(_N, "UpdateProfileOutput", "profile"),
            type = "structure",
            name = "profile",
            target_id = id.from(_N, "ProfileDetail"),
            target = M.ProfileDetail,
        }),
    },
})

M.PutNotificationSettingsInput = schema.new({
    id = id.from(_N, "PutNotificationSettingsRequest"),
    type = "structure",
    members = {
        trustAnchorId = schema.new({
            id = id.from(_N, "PutNotificationSettingsInput", "trustAnchorId"),
            type = "string",
            name = "trustAnchorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        notificationSettings = schema.new({
            id = id.from(_N, "PutNotificationSettingsInput", "notificationSettings"),
            type = "list",
            name = "notificationSettings",
            target_id = prelude.Document.id,
            list_member = M.NotificationSetting,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutNotificationSettingsOutput = schema.new({
    id = id.from(_N, "PutNotificationSettingsResponse"),
    type = "structure",
    members = {
        trustAnchor = schema.new({
            id = id.from(_N, "PutNotificationSettingsOutput", "trustAnchor"),
            type = "structure",
            name = "trustAnchor",
            target_id = id.from(_N, "TrustAnchorDetail"),
            target = M.TrustAnchorDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResetNotificationSettingsInput = schema.new({
    id = id.from(_N, "ResetNotificationSettingsRequest"),
    type = "structure",
    members = {
        trustAnchorId = schema.new({
            id = id.from(_N, "ResetNotificationSettingsInput", "trustAnchorId"),
            type = "string",
            name = "trustAnchorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        notificationSettingKeys = schema.new({
            id = id.from(_N, "ResetNotificationSettingsInput", "notificationSettingKeys"),
            type = "list",
            name = "notificationSettingKeys",
            target_id = prelude.Document.id,
            list_member = M.NotificationSettingKey,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResetNotificationSettingsOutput = schema.new({
    id = id.from(_N, "ResetNotificationSettingsResponse"),
    type = "structure",
    members = {
        trustAnchor = schema.new({
            id = id.from(_N, "ResetNotificationSettingsOutput", "trustAnchor"),
            type = "structure",
            name = "trustAnchor",
            target_id = id.from(_N, "TrustAnchorDetail"),
            target = M.TrustAnchorDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyTagsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateTrustAnchorInput = schema.new({
    id = id.from(_N, "UpdateTrustAnchorRequest"),
    type = "structure",
    members = {
        trustAnchorId = schema.new({
            id = id.from(_N, "UpdateTrustAnchorInput", "trustAnchorId"),
            type = "string",
            name = "trustAnchorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateTrustAnchorInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        source = schema.new({
            id = id.from(_N, "UpdateTrustAnchorInput", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "Source"),
            target = M.Source,
        }),
    },
})

M.UpdateTrustAnchorOutput = schema.new({
    id = id.from(_N, "TrustAnchorDetailResponse"),
    type = "structure",
    members = {
        trustAnchor = schema.new({
            id = id.from(_N, "UpdateTrustAnchorOutput", "trustAnchor"),
            type = "structure",
            name = "trustAnchor",
            target_id = id.from(_N, "TrustAnchorDetail"),
            target = M.TrustAnchorDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
