local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.qbusiness"

local M = {}

M.PrincipalGroup = schema.new({
    id = id.from(_N, "PrincipalGroup"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "PrincipalGroup", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        access = schema.new({
            id = id.from(_N, "PrincipalGroup", "access"),
            type = "string",
            name = "access",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        membershipType = schema.new({
            id = id.from(_N, "PrincipalGroup", "membershipType"),
            type = "string",
            name = "membershipType",
            target_id = prelude.String.id,
        }),
    },
})

M.PrincipalUser = schema.new({
    id = id.from(_N, "PrincipalUser"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "PrincipalUser", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        access = schema.new({
            id = id.from(_N, "PrincipalUser", "access"),
            type = "string",
            name = "access",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        membershipType = schema.new({
            id = id.from(_N, "PrincipalUser", "membershipType"),
            type = "string",
            name = "membershipType",
            target_id = prelude.String.id,
        }),
    },
})

M.Principal = schema.new({
    id = id.from(_N, "Principal"),
    type = "union",
    members = {
        user = schema.new({
            id = id.from(_N, "Principal", "user"),
            type = "structure",
            name = "user",
            target_id = id.from(_N, "PrincipalUser"),
            target = M.PrincipalUser,
        }),
        group = schema.new({
            id = id.from(_N, "Principal", "group"),
            type = "structure",
            name = "group",
            target_id = id.from(_N, "PrincipalGroup"),
            target = M.PrincipalGroup,
        }),
    },
})

M.AccessControl = schema.new({
    id = id.from(_N, "AccessControl"),
    type = "structure",
    members = {
        principals = schema.new({
            id = id.from(_N, "AccessControl", "principals"),
            type = "list",
            name = "principals",
            target_id = prelude.Document.id,
            list_member = M.Principal,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        memberRelation = schema.new({
            id = id.from(_N, "AccessControl", "memberRelation"),
            type = "string",
            name = "memberRelation",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessConfiguration = schema.new({
    id = id.from(_N, "AccessConfiguration"),
    type = "structure",
    members = {
        accessControls = schema.new({
            id = id.from(_N, "AccessConfiguration", "accessControls"),
            type = "list",
            name = "accessControls",
            target_id = prelude.Document.id,
            list_member = M.AccessControl,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        memberRelation = schema.new({
            id = id.from(_N, "AccessConfiguration", "memberRelation"),
            type = "string",
            name = "memberRelation",
            target_id = prelude.String.id,
        }),
    },
})

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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DocumentAttributeValue = schema.new({
    id = id.from(_N, "DocumentAttributeValue"),
    type = "union",
    members = {
        stringValue = schema.new({
            id = id.from(_N, "DocumentAttributeValue", "stringValue"),
            type = "string",
            name = "stringValue",
            target_id = prelude.String.id,
        }),
        stringListValue = schema.new({
            id = id.from(_N, "DocumentAttributeValue", "stringListValue"),
            type = "list",
            name = "stringListValue",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        longValue = schema.new({
            id = id.from(_N, "DocumentAttributeValue", "longValue"),
            type = "long",
            name = "longValue",
            target_id = prelude.Long.id,
        }),
        dateValue = schema.new({
            id = id.from(_N, "DocumentAttributeValue", "dateValue"),
            type = "timestamp",
            name = "dateValue",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DocumentAttribute = schema.new({
    id = id.from(_N, "DocumentAttribute"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DocumentAttribute", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "DocumentAttribute", "value"),
            type = "union",
            name = "value",
            target_id = id.from(_N, "DocumentAttributeValue"),
            target = M.DocumentAttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActionExecutionPayloadField = schema.new({
    id = id.from(_N, "ActionExecutionPayloadField"),
    type = "structure",
    members = {
        value = schema.new({
            id = id.from(_N, "ActionExecutionPayloadField", "value"),
            type = "document",
            name = "value",
            target_id = prelude.Document.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActionExecution = schema.new({
    id = id.from(_N, "ActionExecution"),
    type = "structure",
    members = {
        pluginId = schema.new({
            id = id.from(_N, "ActionExecution", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        payload = schema.new({
            id = id.from(_N, "ActionExecution", "payload"),
            type = "map",
            name = "payload",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ActionExecutionPayloadField,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        payloadFieldNameSeparator = schema.new({
            id = id.from(_N, "ActionExecution", "payloadFieldNameSeparator"),
            type = "string",
            name = "payloadFieldNameSeparator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActionExecutionEvent = schema.new({
    id = id.from(_N, "ActionExecutionEvent"),
    type = "structure",
    members = {
        pluginId = schema.new({
            id = id.from(_N, "ActionExecutionEvent", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        payload = schema.new({
            id = id.from(_N, "ActionExecutionEvent", "payload"),
            type = "map",
            name = "payload",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ActionExecutionPayloadField,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        payloadFieldNameSeparator = schema.new({
            id = id.from(_N, "ActionExecutionEvent", "payloadFieldNameSeparator"),
            type = "string",
            name = "payloadFieldNameSeparator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActionReviewPayloadFieldAllowedValue = schema.new({
    id = id.from(_N, "ActionReviewPayloadFieldAllowedValue"),
    type = "structure",
    members = {
        value = schema.new({
            id = id.from(_N, "ActionReviewPayloadFieldAllowedValue", "value"),
            type = "document",
            name = "value",
            target_id = prelude.Document.id,
        }),
        displayValue = schema.new({
            id = id.from(_N, "ActionReviewPayloadFieldAllowedValue", "displayValue"),
            type = "document",
            name = "displayValue",
            target_id = prelude.Document.id,
        }),
    },
})

M.ActionReviewPayloadField = schema.new({
    id = id.from(_N, "ActionReviewPayloadField"),
    type = "structure",
    members = {
        displayName = schema.new({
            id = id.from(_N, "ActionReviewPayloadField", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        displayOrder = schema.new({
            id = id.from(_N, "ActionReviewPayloadField", "displayOrder"),
            type = "integer",
            name = "displayOrder",
            target_id = prelude.Integer.id,
        }),
        displayDescription = schema.new({
            id = id.from(_N, "ActionReviewPayloadField", "displayDescription"),
            type = "string",
            name = "displayDescription",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "ActionReviewPayloadField", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "ActionReviewPayloadField", "value"),
            type = "document",
            name = "value",
            target_id = prelude.Document.id,
        }),
        allowedValues = schema.new({
            id = id.from(_N, "ActionReviewPayloadField", "allowedValues"),
            type = "list",
            name = "allowedValues",
            target_id = prelude.Document.id,
            list_member = M.ActionReviewPayloadFieldAllowedValue,
        }),
        allowedFormat = schema.new({
            id = id.from(_N, "ActionReviewPayloadField", "allowedFormat"),
            type = "string",
            name = "allowedFormat",
            target_id = prelude.String.id,
        }),
        arrayItemJsonSchema = schema.new({
            id = id.from(_N, "ActionReviewPayloadField", "arrayItemJsonSchema"),
            type = "document",
            name = "arrayItemJsonSchema",
            target_id = prelude.Document.id,
        }),
        required = schema.new({
            id = id.from(_N, "ActionReviewPayloadField", "required"),
            type = "boolean",
            name = "required",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ActionReview = schema.new({
    id = id.from(_N, "ActionReview"),
    type = "structure",
    members = {
        pluginId = schema.new({
            id = id.from(_N, "ActionReview", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
        }),
        pluginType = schema.new({
            id = id.from(_N, "ActionReview", "pluginType"),
            type = "string",
            name = "pluginType",
            target_id = prelude.String.id,
        }),
        payload = schema.new({
            id = id.from(_N, "ActionReview", "payload"),
            type = "map",
            name = "payload",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ActionReviewPayloadField,
        }),
        payloadFieldNameSeparator = schema.new({
            id = id.from(_N, "ActionReview", "payloadFieldNameSeparator"),
            type = "string",
            name = "payloadFieldNameSeparator",
            target_id = prelude.String.id,
        }),
    },
})

M.ActionReviewEvent = schema.new({
    id = id.from(_N, "ActionReviewEvent"),
    type = "structure",
    members = {
        conversationId = schema.new({
            id = id.from(_N, "ActionReviewEvent", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
        }),
        userMessageId = schema.new({
            id = id.from(_N, "ActionReviewEvent", "userMessageId"),
            type = "string",
            name = "userMessageId",
            target_id = prelude.String.id,
        }),
        systemMessageId = schema.new({
            id = id.from(_N, "ActionReviewEvent", "systemMessageId"),
            type = "string",
            name = "systemMessageId",
            target_id = prelude.String.id,
        }),
        pluginId = schema.new({
            id = id.from(_N, "ActionReviewEvent", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
        }),
        pluginType = schema.new({
            id = id.from(_N, "ActionReviewEvent", "pluginType"),
            type = "string",
            name = "pluginType",
            target_id = prelude.String.id,
        }),
        payload = schema.new({
            id = id.from(_N, "ActionReviewEvent", "payload"),
            type = "map",
            name = "payload",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ActionReviewPayloadField,
        }),
        payloadFieldNameSeparator = schema.new({
            id = id.from(_N, "ActionReviewEvent", "payloadFieldNameSeparator"),
            type = "string",
            name = "payloadFieldNameSeparator",
            target_id = prelude.String.id,
        }),
    },
})

M.ActionSummary = schema.new({
    id = id.from(_N, "ActionSummary"),
    type = "structure",
    members = {
        actionIdentifier = schema.new({
            id = id.from(_N, "ActionSummary", "actionIdentifier"),
            type = "string",
            name = "actionIdentifier",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "ActionSummary", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        instructionExample = schema.new({
            id = id.from(_N, "ActionSummary", "instructionExample"),
            type = "string",
            name = "instructionExample",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ActionSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.S3 = schema.new({
    id = id.from(_N, "S3"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "S3", "bucket"),
            type = "string",
            name = "bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        key = schema.new({
            id = id.from(_N, "S3", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.APISchema = schema.new({
    id = id.from(_N, "APISchema"),
    type = "union",
    members = {
        payload = schema.new({
            id = id.from(_N, "APISchema", "payload"),
            type = "string",
            name = "payload",
            target_id = prelude.String.id,
        }),
        s3 = schema.new({
            id = id.from(_N, "APISchema", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3"),
            target = M.S3,
        }),
    },
})

M.QuickSightConfiguration = schema.new({
    id = id.from(_N, "QuickSightConfiguration"),
    type = "structure",
    members = {
        clientNamespace = schema.new({
            id = id.from(_N, "QuickSightConfiguration", "clientNamespace"),
            type = "string",
            name = "clientNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Application = schema.new({
    id = id.from(_N, "Application"),
    type = "structure",
    members = {
        displayName = schema.new({
            id = id.from(_N, "Application", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        applicationId = schema.new({
            id = id.from(_N, "Application", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Application", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Application", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "Application", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        identityType = schema.new({
            id = id.from(_N, "Application", "identityType"),
            type = "string",
            name = "identityType",
            target_id = prelude.String.id,
        }),
        quickSightConfiguration = schema.new({
            id = id.from(_N, "Application", "quickSightConfiguration"),
            type = "structure",
            name = "quickSightConfiguration",
            target_id = id.from(_N, "QuickSightConfiguration"),
            target = M.QuickSightConfiguration,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ConflictException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ConflictException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachmentsConfiguration = schema.new({
    id = id.from(_N, "AttachmentsConfiguration"),
    type = "structure",
    members = {
        attachmentsControlMode = schema.new({
            id = id.from(_N, "AttachmentsConfiguration", "attachmentsControlMode"),
            type = "string",
            name = "attachmentsControlMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EncryptionConfiguration = schema.new({
    id = id.from(_N, "EncryptionConfiguration"),
    type = "structure",
    members = {
        kmsKeyId = schema.new({
            id = id.from(_N, "EncryptionConfiguration", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.PersonalizationConfiguration = schema.new({
    id = id.from(_N, "PersonalizationConfiguration"),
    type = "structure",
    members = {
        personalizationControlMode = schema.new({
            id = id.from(_N, "PersonalizationConfiguration", "personalizationControlMode"),
            type = "string",
            name = "personalizationControlMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.QAppsConfiguration = schema.new({
    id = id.from(_N, "QAppsConfiguration"),
    type = "structure",
    members = {
        qAppsControlMode = schema.new({
            id = id.from(_N, "QAppsConfiguration", "qAppsControlMode"),
            type = "string",
            name = "qAppsControlMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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

M.CreateApplicationInput = schema.new({
    id = id.from(_N, "CreateApplicationInput"),
    type = "structure",
    members = {
        displayName = schema.new({
            id = id.from(_N, "CreateApplicationInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateApplicationInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        identityType = schema.new({
            id = id.from(_N, "CreateApplicationInput", "identityType"),
            type = "string",
            name = "identityType",
            target_id = prelude.String.id,
        }),
        iamIdentityProviderArn = schema.new({
            id = id.from(_N, "CreateApplicationInput", "iamIdentityProviderArn"),
            type = "string",
            name = "iamIdentityProviderArn",
            target_id = prelude.String.id,
        }),
        identityCenterInstanceArn = schema.new({
            id = id.from(_N, "CreateApplicationInput", "identityCenterInstanceArn"),
            type = "string",
            name = "identityCenterInstanceArn",
            target_id = prelude.String.id,
        }),
        clientIdsForOIDC = schema.new({
            id = id.from(_N, "CreateApplicationInput", "clientIdsForOIDC"),
            type = "list",
            name = "clientIdsForOIDC",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        description = schema.new({
            id = id.from(_N, "CreateApplicationInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        encryptionConfiguration = schema.new({
            id = id.from(_N, "CreateApplicationInput", "encryptionConfiguration"),
            type = "structure",
            name = "encryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateApplicationInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateApplicationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        attachmentsConfiguration = schema.new({
            id = id.from(_N, "CreateApplicationInput", "attachmentsConfiguration"),
            type = "structure",
            name = "attachmentsConfiguration",
            target_id = id.from(_N, "AttachmentsConfiguration"),
            target = M.AttachmentsConfiguration,
        }),
        qAppsConfiguration = schema.new({
            id = id.from(_N, "CreateApplicationInput", "qAppsConfiguration"),
            type = "structure",
            name = "qAppsConfiguration",
            target_id = id.from(_N, "QAppsConfiguration"),
            target = M.QAppsConfiguration,
        }),
        personalizationConfiguration = schema.new({
            id = id.from(_N, "CreateApplicationInput", "personalizationConfiguration"),
            type = "structure",
            name = "personalizationConfiguration",
            target_id = id.from(_N, "PersonalizationConfiguration"),
            target = M.PersonalizationConfiguration,
        }),
        quickSightConfiguration = schema.new({
            id = id.from(_N, "CreateApplicationInput", "quickSightConfiguration"),
            type = "structure",
            name = "quickSightConfiguration",
            target_id = id.from(_N, "QuickSightConfiguration"),
            target = M.QuickSightConfiguration,
        }),
    },
})

M.CreateApplicationOutput = schema.new({
    id = id.from(_N, "CreateApplicationOutput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
        }),
        applicationArn = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "applicationArn"),
            type = "string",
            name = "applicationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "ValidationException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fields = schema.new({
            id = id.from(_N, "ValidationException", "fields"),
            type = "list",
            name = "fields",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.DataAccessorIdcTrustedTokenIssuerConfiguration = schema.new({
    id = id.from(_N, "DataAccessorIdcTrustedTokenIssuerConfiguration"),
    type = "structure",
    members = {
        idcTrustedTokenIssuerArn = schema.new({
            id = id.from(_N, "DataAccessorIdcTrustedTokenIssuerConfiguration", "idcTrustedTokenIssuerArn"),
            type = "string",
            name = "idcTrustedTokenIssuerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DataAccessorAuthenticationConfiguration = schema.new({
    id = id.from(_N, "DataAccessorAuthenticationConfiguration"),
    type = "union",
    members = {
        idcTrustedTokenIssuerConfiguration = schema.new({
            id = id.from(_N, "DataAccessorAuthenticationConfiguration", "idcTrustedTokenIssuerConfiguration"),
            type = "structure",
            name = "idcTrustedTokenIssuerConfiguration",
            target_id = id.from(_N, "DataAccessorIdcTrustedTokenIssuerConfiguration"),
            target = M.DataAccessorIdcTrustedTokenIssuerConfiguration,
        }),
    },
})

M.DataAccessorAuthenticationDetail = schema.new({
    id = id.from(_N, "DataAccessorAuthenticationDetail"),
    type = "structure",
    members = {
        authenticationType = schema.new({
            id = id.from(_N, "DataAccessorAuthenticationDetail", "authenticationType"),
            type = "string",
            name = "authenticationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authenticationConfiguration = schema.new({
            id = id.from(_N, "DataAccessorAuthenticationDetail", "authenticationConfiguration"),
            type = "union",
            name = "authenticationConfiguration",
            target_id = id.from(_N, "DataAccessorAuthenticationConfiguration"),
            target = M.DataAccessorAuthenticationConfiguration,
        }),
        externalIds = schema.new({
            id = id.from(_N, "DataAccessorAuthenticationDetail", "externalIds"),
            type = "list",
            name = "externalIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateDataAccessorOutput = schema.new({
    id = id.from(_N, "CreateDataAccessorOutput"),
    type = "structure",
    members = {
        dataAccessorId = schema.new({
            id = id.from(_N, "CreateDataAccessorOutput", "dataAccessorId"),
            type = "string",
            name = "dataAccessorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        idcApplicationArn = schema.new({
            id = id.from(_N, "CreateDataAccessorOutput", "idcApplicationArn"),
            type = "string",
            name = "idcApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataAccessorArn = schema.new({
            id = id.from(_N, "CreateDataAccessorOutput", "dataAccessorArn"),
            type = "string",
            name = "dataAccessorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDataAccessorInput = schema.new({
    id = id.from(_N, "DeleteDataAccessorInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteDataAccessorInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataAccessorId = schema.new({
            id = id.from(_N, "DeleteDataAccessorInput", "dataAccessorId"),
            type = "string",
            name = "dataAccessorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDataAccessorOutput = schema.new({
    id = id.from(_N, "DeleteDataAccessorOutput"),
    type = "structure",
})

M.GetDataAccessorInput = schema.new({
    id = id.from(_N, "GetDataAccessorInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetDataAccessorInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataAccessorId = schema.new({
            id = id.from(_N, "GetDataAccessorInput", "dataAccessorId"),
            type = "string",
            name = "dataAccessorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListDataAccessorsInput = schema.new({
    id = id.from(_N, "ListDataAccessorsInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListDataAccessorsInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDataAccessorsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDataAccessorsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.DataAccessor = schema.new({
    id = id.from(_N, "DataAccessor"),
    type = "structure",
    members = {
        displayName = schema.new({
            id = id.from(_N, "DataAccessor", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        dataAccessorId = schema.new({
            id = id.from(_N, "DataAccessor", "dataAccessorId"),
            type = "string",
            name = "dataAccessorId",
            target_id = prelude.String.id,
        }),
        dataAccessorArn = schema.new({
            id = id.from(_N, "DataAccessor", "dataAccessorArn"),
            type = "string",
            name = "dataAccessorArn",
            target_id = prelude.String.id,
        }),
        idcApplicationArn = schema.new({
            id = id.from(_N, "DataAccessor", "idcApplicationArn"),
            type = "string",
            name = "idcApplicationArn",
            target_id = prelude.String.id,
        }),
        principal = schema.new({
            id = id.from(_N, "DataAccessor", "principal"),
            type = "string",
            name = "principal",
            target_id = prelude.String.id,
        }),
        authenticationDetail = schema.new({
            id = id.from(_N, "DataAccessor", "authenticationDetail"),
            type = "structure",
            name = "authenticationDetail",
            target_id = id.from(_N, "DataAccessorAuthenticationDetail"),
            target = M.DataAccessorAuthenticationDetail,
        }),
        createdAt = schema.new({
            id = id.from(_N, "DataAccessor", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "DataAccessor", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListDataAccessorsOutput = schema.new({
    id = id.from(_N, "ListDataAccessorsOutput"),
    type = "structure",
    members = {
        dataAccessors = schema.new({
            id = id.from(_N, "ListDataAccessorsOutput", "dataAccessors"),
            type = "list",
            name = "dataAccessors",
            target_id = prelude.Document.id,
            list_member = M.DataAccessor,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDataAccessorsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDataAccessorOutput = schema.new({
    id = id.from(_N, "UpdateDataAccessorOutput"),
    type = "structure",
})

M.DeleteApplicationInput = schema.new({
    id = id.from(_N, "DeleteApplicationInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteApplicationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteApplicationOutput = schema.new({
    id = id.from(_N, "DeleteApplicationOutput"),
    type = "structure",
})

M.GetApplicationInput = schema.new({
    id = id.from(_N, "GetApplicationInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetApplicationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.AppliedAttachmentsConfiguration = schema.new({
    id = id.from(_N, "AppliedAttachmentsConfiguration"),
    type = "structure",
    members = {
        attachmentsControlMode = schema.new({
            id = id.from(_N, "AppliedAttachmentsConfiguration", "attachmentsControlMode"),
            type = "string",
            name = "attachmentsControlMode",
            target_id = prelude.String.id,
        }),
    },
})

M.AutoSubscriptionConfiguration = schema.new({
    id = id.from(_N, "AutoSubscriptionConfiguration"),
    type = "structure",
    members = {
        autoSubscribe = schema.new({
            id = id.from(_N, "AutoSubscriptionConfiguration", "autoSubscribe"),
            type = "string",
            name = "autoSubscribe",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        defaultSubscriptionType = schema.new({
            id = id.from(_N, "AutoSubscriptionConfiguration", "defaultSubscriptionType"),
            type = "string",
            name = "defaultSubscriptionType",
            target_id = prelude.String.id,
        }),
    },
})

M.ErrorDetail = schema.new({
    id = id.from(_N, "ErrorDetail"),
    type = "structure",
    members = {
        errorMessage = schema.new({
            id = id.from(_N, "ErrorDetail", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "ErrorDetail", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.GetApplicationOutput = schema.new({
    id = id.from(_N, "GetApplicationOutput"),
    type = "structure",
    members = {
        displayName = schema.new({
            id = id.from(_N, "GetApplicationOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        applicationId = schema.new({
            id = id.from(_N, "GetApplicationOutput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
        }),
        applicationArn = schema.new({
            id = id.from(_N, "GetApplicationOutput", "applicationArn"),
            type = "string",
            name = "applicationArn",
            target_id = prelude.String.id,
        }),
        identityType = schema.new({
            id = id.from(_N, "GetApplicationOutput", "identityType"),
            type = "string",
            name = "identityType",
            target_id = prelude.String.id,
        }),
        iamIdentityProviderArn = schema.new({
            id = id.from(_N, "GetApplicationOutput", "iamIdentityProviderArn"),
            type = "string",
            name = "iamIdentityProviderArn",
            target_id = prelude.String.id,
        }),
        identityCenterApplicationArn = schema.new({
            id = id.from(_N, "GetApplicationOutput", "identityCenterApplicationArn"),
            type = "string",
            name = "identityCenterApplicationArn",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetApplicationOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetApplicationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetApplicationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        encryptionConfiguration = schema.new({
            id = id.from(_N, "GetApplicationOutput", "encryptionConfiguration"),
            type = "structure",
            name = "encryptionConfiguration",
            target_id = id.from(_N, "EncryptionConfiguration"),
            target = M.EncryptionConfiguration,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetApplicationOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetApplicationOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        error = schema.new({
            id = id.from(_N, "GetApplicationOutput", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetail"),
            target = M.ErrorDetail,
        }),
        attachmentsConfiguration = schema.new({
            id = id.from(_N, "GetApplicationOutput", "attachmentsConfiguration"),
            type = "structure",
            name = "attachmentsConfiguration",
            target_id = id.from(_N, "AppliedAttachmentsConfiguration"),
            target = M.AppliedAttachmentsConfiguration,
        }),
        qAppsConfiguration = schema.new({
            id = id.from(_N, "GetApplicationOutput", "qAppsConfiguration"),
            type = "structure",
            name = "qAppsConfiguration",
            target_id = id.from(_N, "QAppsConfiguration"),
            target = M.QAppsConfiguration,
        }),
        personalizationConfiguration = schema.new({
            id = id.from(_N, "GetApplicationOutput", "personalizationConfiguration"),
            type = "structure",
            name = "personalizationConfiguration",
            target_id = id.from(_N, "PersonalizationConfiguration"),
            target = M.PersonalizationConfiguration,
        }),
        autoSubscriptionConfiguration = schema.new({
            id = id.from(_N, "GetApplicationOutput", "autoSubscriptionConfiguration"),
            type = "structure",
            name = "autoSubscriptionConfiguration",
            target_id = id.from(_N, "AutoSubscriptionConfiguration"),
            target = M.AutoSubscriptionConfiguration,
        }),
        clientIdsForOIDC = schema.new({
            id = id.from(_N, "GetApplicationOutput", "clientIdsForOIDC"),
            type = "list",
            name = "clientIdsForOIDC",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        quickSightConfiguration = schema.new({
            id = id.from(_N, "GetApplicationOutput", "quickSightConfiguration"),
            type = "structure",
            name = "quickSightConfiguration",
            target_id = id.from(_N, "QuickSightConfiguration"),
            target = M.QuickSightConfiguration,
        }),
    },
})

M.IndexCapacityConfiguration = schema.new({
    id = id.from(_N, "IndexCapacityConfiguration"),
    type = "structure",
    members = {
        units = schema.new({
            id = id.from(_N, "IndexCapacityConfiguration", "units"),
            type = "integer",
            name = "units",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateIndexInput = schema.new({
    id = id.from(_N, "CreateIndexInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreateIndexInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "CreateIndexInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateIndexInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "CreateIndexInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateIndexInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        capacityConfiguration = schema.new({
            id = id.from(_N, "CreateIndexInput", "capacityConfiguration"),
            type = "structure",
            name = "capacityConfiguration",
            target_id = id.from(_N, "IndexCapacityConfiguration"),
            target = M.IndexCapacityConfiguration,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateIndexInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateIndexOutput = schema.new({
    id = id.from(_N, "CreateIndexOutput"),
    type = "structure",
    members = {
        indexId = schema.new({
            id = id.from(_N, "CreateIndexOutput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
        }),
        indexArn = schema.new({
            id = id.from(_N, "CreateIndexOutput", "indexArn"),
            type = "string",
            name = "indexArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentAttributeCondition = schema.new({
    id = id.from(_N, "DocumentAttributeCondition"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "DocumentAttributeCondition", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operator = schema.new({
            id = id.from(_N, "DocumentAttributeCondition", "operator"),
            type = "string",
            name = "operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "DocumentAttributeCondition", "value"),
            type = "union",
            name = "value",
            target_id = id.from(_N, "DocumentAttributeValue"),
            target = M.DocumentAttributeValue,
        }),
    },
})

M.DocumentAttributeTarget = schema.new({
    id = id.from(_N, "DocumentAttributeTarget"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "DocumentAttributeTarget", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "DocumentAttributeTarget", "value"),
            type = "union",
            name = "value",
            target_id = id.from(_N, "DocumentAttributeValue"),
            target = M.DocumentAttributeValue,
        }),
        attributeValueOperator = schema.new({
            id = id.from(_N, "DocumentAttributeTarget", "attributeValueOperator"),
            type = "string",
            name = "attributeValueOperator",
            target_id = prelude.String.id,
        }),
    },
})

M.InlineDocumentEnrichmentConfiguration = schema.new({
    id = id.from(_N, "InlineDocumentEnrichmentConfiguration"),
    type = "structure",
    members = {
        condition = schema.new({
            id = id.from(_N, "InlineDocumentEnrichmentConfiguration", "condition"),
            type = "structure",
            name = "condition",
            target_id = id.from(_N, "DocumentAttributeCondition"),
            target = M.DocumentAttributeCondition,
        }),
        target = schema.new({
            id = id.from(_N, "InlineDocumentEnrichmentConfiguration", "target"),
            type = "structure",
            name = "target",
            target_id = id.from(_N, "DocumentAttributeTarget"),
            target = M.DocumentAttributeTarget,
        }),
        documentContentOperator = schema.new({
            id = id.from(_N, "InlineDocumentEnrichmentConfiguration", "documentContentOperator"),
            type = "string",
            name = "documentContentOperator",
            target_id = prelude.String.id,
        }),
    },
})

M.HookConfiguration = schema.new({
    id = id.from(_N, "HookConfiguration"),
    type = "structure",
    members = {
        invocationCondition = schema.new({
            id = id.from(_N, "HookConfiguration", "invocationCondition"),
            type = "structure",
            name = "invocationCondition",
            target_id = id.from(_N, "DocumentAttributeCondition"),
            target = M.DocumentAttributeCondition,
        }),
        lambdaArn = schema.new({
            id = id.from(_N, "HookConfiguration", "lambdaArn"),
            type = "string",
            name = "lambdaArn",
            target_id = prelude.String.id,
        }),
        s3BucketName = schema.new({
            id = id.from(_N, "HookConfiguration", "s3BucketName"),
            type = "string",
            name = "s3BucketName",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "HookConfiguration", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentEnrichmentConfiguration = schema.new({
    id = id.from(_N, "DocumentEnrichmentConfiguration"),
    type = "structure",
    members = {
        inlineConfigurations = schema.new({
            id = id.from(_N, "DocumentEnrichmentConfiguration", "inlineConfigurations"),
            type = "list",
            name = "inlineConfigurations",
            target_id = prelude.Document.id,
            list_member = M.InlineDocumentEnrichmentConfiguration,
        }),
        preExtractionHookConfiguration = schema.new({
            id = id.from(_N, "DocumentEnrichmentConfiguration", "preExtractionHookConfiguration"),
            type = "structure",
            name = "preExtractionHookConfiguration",
            target_id = id.from(_N, "HookConfiguration"),
            target = M.HookConfiguration,
        }),
        postExtractionHookConfiguration = schema.new({
            id = id.from(_N, "DocumentEnrichmentConfiguration", "postExtractionHookConfiguration"),
            type = "structure",
            name = "postExtractionHookConfiguration",
            target_id = id.from(_N, "HookConfiguration"),
            target = M.HookConfiguration,
        }),
    },
})

M.AudioExtractionConfiguration = schema.new({
    id = id.from(_N, "AudioExtractionConfiguration"),
    type = "structure",
    members = {
        audioExtractionStatus = schema.new({
            id = id.from(_N, "AudioExtractionConfiguration", "audioExtractionStatus"),
            type = "string",
            name = "audioExtractionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ImageExtractionConfiguration = schema.new({
    id = id.from(_N, "ImageExtractionConfiguration"),
    type = "structure",
    members = {
        imageExtractionStatus = schema.new({
            id = id.from(_N, "ImageExtractionConfiguration", "imageExtractionStatus"),
            type = "string",
            name = "imageExtractionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VideoExtractionConfiguration = schema.new({
    id = id.from(_N, "VideoExtractionConfiguration"),
    type = "structure",
    members = {
        videoExtractionStatus = schema.new({
            id = id.from(_N, "VideoExtractionConfiguration", "videoExtractionStatus"),
            type = "string",
            name = "videoExtractionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MediaExtractionConfiguration = schema.new({
    id = id.from(_N, "MediaExtractionConfiguration"),
    type = "structure",
    members = {
        imageExtractionConfiguration = schema.new({
            id = id.from(_N, "MediaExtractionConfiguration", "imageExtractionConfiguration"),
            type = "structure",
            name = "imageExtractionConfiguration",
            target_id = id.from(_N, "ImageExtractionConfiguration"),
            target = M.ImageExtractionConfiguration,
        }),
        audioExtractionConfiguration = schema.new({
            id = id.from(_N, "MediaExtractionConfiguration", "audioExtractionConfiguration"),
            type = "structure",
            name = "audioExtractionConfiguration",
            target_id = id.from(_N, "AudioExtractionConfiguration"),
            target = M.AudioExtractionConfiguration,
        }),
        videoExtractionConfiguration = schema.new({
            id = id.from(_N, "MediaExtractionConfiguration", "videoExtractionConfiguration"),
            type = "structure",
            name = "videoExtractionConfiguration",
            target_id = id.from(_N, "VideoExtractionConfiguration"),
            target = M.VideoExtractionConfiguration,
        }),
    },
})

M.DataSourceVpcConfiguration = schema.new({
    id = id.from(_N, "DataSourceVpcConfiguration"),
    type = "structure",
    members = {
        subnetIds = schema.new({
            id = id.from(_N, "DataSourceVpcConfiguration", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "DataSourceVpcConfiguration", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateDataSourceInput = schema.new({
    id = id.from(_N, "CreateDataSourceInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "configuration"),
            type = "document",
            name = "configuration",
            target_id = prelude.Document.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcConfiguration = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "vpcConfiguration"),
            type = "structure",
            name = "vpcConfiguration",
            target_id = id.from(_N, "DataSourceVpcConfiguration"),
            target = M.DataSourceVpcConfiguration,
        }),
        description = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        syncSchedule = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "syncSchedule"),
            type = "string",
            name = "syncSchedule",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        documentEnrichmentConfiguration = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "documentEnrichmentConfiguration"),
            type = "structure",
            name = "documentEnrichmentConfiguration",
            target_id = id.from(_N, "DocumentEnrichmentConfiguration"),
            target = M.DocumentEnrichmentConfiguration,
        }),
        mediaExtractionConfiguration = schema.new({
            id = id.from(_N, "CreateDataSourceInput", "mediaExtractionConfiguration"),
            type = "structure",
            name = "mediaExtractionConfiguration",
            target_id = id.from(_N, "MediaExtractionConfiguration"),
            target = M.MediaExtractionConfiguration,
        }),
    },
})

M.CreateDataSourceOutput = schema.new({
    id = id.from(_N, "CreateDataSourceOutput"),
    type = "structure",
    members = {
        dataSourceId = schema.new({
            id = id.from(_N, "CreateDataSourceOutput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
        }),
        dataSourceArn = schema.new({
            id = id.from(_N, "CreateDataSourceOutput", "dataSourceArn"),
            type = "string",
            name = "dataSourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDataSourceInput = schema.new({
    id = id.from(_N, "DeleteDataSourceInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteDataSourceInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "DeleteDataSourceInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "DeleteDataSourceInput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDataSourceOutput = schema.new({
    id = id.from(_N, "DeleteDataSourceOutput"),
    type = "structure",
})

M.GetDataSourceInput = schema.new({
    id = id.from(_N, "GetDataSourceInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetDataSourceInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "GetDataSourceInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "GetDataSourceInput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDataSourceOutput = schema.new({
    id = id.from(_N, "GetDataSourceOutput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
        }),
        indexId = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
        }),
        dataSourceArn = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "dataSourceArn"),
            type = "string",
            name = "dataSourceArn",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        configuration = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "configuration"),
            type = "document",
            name = "configuration",
            target_id = prelude.Document.id,
        }),
        vpcConfiguration = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "vpcConfiguration"),
            type = "structure",
            name = "vpcConfiguration",
            target_id = id.from(_N, "DataSourceVpcConfiguration"),
            target = M.DataSourceVpcConfiguration,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        syncSchedule = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "syncSchedule"),
            type = "string",
            name = "syncSchedule",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetail"),
            target = M.ErrorDetail,
        }),
        documentEnrichmentConfiguration = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "documentEnrichmentConfiguration"),
            type = "structure",
            name = "documentEnrichmentConfiguration",
            target_id = id.from(_N, "DocumentEnrichmentConfiguration"),
            target = M.DocumentEnrichmentConfiguration,
        }),
        mediaExtractionConfiguration = schema.new({
            id = id.from(_N, "GetDataSourceOutput", "mediaExtractionConfiguration"),
            type = "structure",
            name = "mediaExtractionConfiguration",
            target_id = id.from(_N, "MediaExtractionConfiguration"),
            target = M.MediaExtractionConfiguration,
        }),
    },
})

M.ListDataSourcesInput = schema.new({
    id = id.from(_N, "ListDataSourcesInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListDataSourcesInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "ListDataSourcesInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDataSourcesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDataSourcesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.DataSource = schema.new({
    id = id.from(_N, "DataSource"),
    type = "structure",
    members = {
        displayName = schema.new({
            id = id.from(_N, "DataSource", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "DataSource", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "DataSource", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "DataSource", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "DataSource", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "DataSource", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDataSourcesOutput = schema.new({
    id = id.from(_N, "ListDataSourcesOutput"),
    type = "structure",
    members = {
        dataSources = schema.new({
            id = id.from(_N, "ListDataSourcesOutput", "dataSources"),
            type = "list",
            name = "dataSources",
            target_id = prelude.Document.id,
            list_member = M.DataSource,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDataSourcesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDataSourceInput = schema.new({
    id = id.from(_N, "UpdateDataSourceInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        configuration = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "configuration"),
            type = "document",
            name = "configuration",
            target_id = prelude.Document.id,
        }),
        vpcConfiguration = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "vpcConfiguration"),
            type = "structure",
            name = "vpcConfiguration",
            target_id = id.from(_N, "DataSourceVpcConfiguration"),
            target = M.DataSourceVpcConfiguration,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        syncSchedule = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "syncSchedule"),
            type = "string",
            name = "syncSchedule",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        documentEnrichmentConfiguration = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "documentEnrichmentConfiguration"),
            type = "structure",
            name = "documentEnrichmentConfiguration",
            target_id = id.from(_N, "DocumentEnrichmentConfiguration"),
            target = M.DocumentEnrichmentConfiguration,
        }),
        mediaExtractionConfiguration = schema.new({
            id = id.from(_N, "UpdateDataSourceInput", "mediaExtractionConfiguration"),
            type = "structure",
            name = "mediaExtractionConfiguration",
            target_id = id.from(_N, "MediaExtractionConfiguration"),
            target = M.MediaExtractionConfiguration,
        }),
    },
})

M.UpdateDataSourceOutput = schema.new({
    id = id.from(_N, "UpdateDataSourceOutput"),
    type = "structure",
})

M.DeleteIndexInput = schema.new({
    id = id.from(_N, "DeleteIndexInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteIndexInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "DeleteIndexInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteIndexOutput = schema.new({
    id = id.from(_N, "DeleteIndexOutput"),
    type = "structure",
})

M.GetIndexInput = schema.new({
    id = id.from(_N, "GetIndexInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetIndexInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "GetIndexInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DocumentAttributeConfiguration = schema.new({
    id = id.from(_N, "DocumentAttributeConfiguration"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DocumentAttributeConfiguration", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "DocumentAttributeConfiguration", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        search = schema.new({
            id = id.from(_N, "DocumentAttributeConfiguration", "search"),
            type = "string",
            name = "search",
            target_id = prelude.String.id,
        }),
    },
})

M.TextDocumentStatistics = schema.new({
    id = id.from(_N, "TextDocumentStatistics"),
    type = "structure",
    members = {
        indexedTextBytes = schema.new({
            id = id.from(_N, "TextDocumentStatistics", "indexedTextBytes"),
            type = "long",
            name = "indexedTextBytes",
            target_id = prelude.Long.id,
        }),
        indexedTextDocumentCount = schema.new({
            id = id.from(_N, "TextDocumentStatistics", "indexedTextDocumentCount"),
            type = "integer",
            name = "indexedTextDocumentCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.IndexStatistics = schema.new({
    id = id.from(_N, "IndexStatistics"),
    type = "structure",
    members = {
        textDocumentStatistics = schema.new({
            id = id.from(_N, "IndexStatistics", "textDocumentStatistics"),
            type = "structure",
            name = "textDocumentStatistics",
            target_id = id.from(_N, "TextDocumentStatistics"),
            target = M.TextDocumentStatistics,
        }),
    },
})

M.GetIndexOutput = schema.new({
    id = id.from(_N, "GetIndexOutput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetIndexOutput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
        }),
        indexId = schema.new({
            id = id.from(_N, "GetIndexOutput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "GetIndexOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        indexArn = schema.new({
            id = id.from(_N, "GetIndexOutput", "indexArn"),
            type = "string",
            name = "indexArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetIndexOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "GetIndexOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetIndexOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetIndexOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetIndexOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        capacityConfiguration = schema.new({
            id = id.from(_N, "GetIndexOutput", "capacityConfiguration"),
            type = "structure",
            name = "capacityConfiguration",
            target_id = id.from(_N, "IndexCapacityConfiguration"),
            target = M.IndexCapacityConfiguration,
        }),
        documentAttributeConfigurations = schema.new({
            id = id.from(_N, "GetIndexOutput", "documentAttributeConfigurations"),
            type = "list",
            name = "documentAttributeConfigurations",
            target_id = prelude.Document.id,
            list_member = M.DocumentAttributeConfiguration,
        }),
        error = schema.new({
            id = id.from(_N, "GetIndexOutput", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetail"),
            target = M.ErrorDetail,
        }),
        indexStatistics = schema.new({
            id = id.from(_N, "GetIndexOutput", "indexStatistics"),
            type = "structure",
            name = "indexStatistics",
            target_id = id.from(_N, "IndexStatistics"),
            target = M.IndexStatistics,
        }),
    },
})

M.ListIndicesInput = schema.new({
    id = id.from(_N, "ListIndicesInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListIndicesInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIndicesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListIndicesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.Index = schema.new({
    id = id.from(_N, "Index"),
    type = "structure",
    members = {
        displayName = schema.new({
            id = id.from(_N, "Index", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        indexId = schema.new({
            id = id.from(_N, "Index", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Index", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Index", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "Index", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListIndicesOutput = schema.new({
    id = id.from(_N, "ListIndicesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListIndicesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        indices = schema.new({
            id = id.from(_N, "ListIndicesOutput", "indices"),
            type = "list",
            name = "indices",
            target_id = prelude.Document.id,
            list_member = M.Index,
        }),
    },
})

M.UpdateIndexInput = schema.new({
    id = id.from(_N, "UpdateIndexInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdateIndexInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "UpdateIndexInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdateIndexInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateIndexInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        capacityConfiguration = schema.new({
            id = id.from(_N, "UpdateIndexInput", "capacityConfiguration"),
            type = "structure",
            name = "capacityConfiguration",
            target_id = id.from(_N, "IndexCapacityConfiguration"),
            target = M.IndexCapacityConfiguration,
        }),
        documentAttributeConfigurations = schema.new({
            id = id.from(_N, "UpdateIndexInput", "documentAttributeConfigurations"),
            type = "list",
            name = "documentAttributeConfigurations",
            target_id = prelude.Document.id,
            list_member = M.DocumentAttributeConfiguration,
        }),
    },
})

M.UpdateIndexOutput = schema.new({
    id = id.from(_N, "UpdateIndexOutput"),
    type = "structure",
})

M.ListApplicationsInput = schema.new({
    id = id.from(_N, "ListApplicationsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListApplicationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListApplicationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListApplicationsOutput = schema.new({
    id = id.from(_N, "ListApplicationsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        applications = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "applications"),
            type = "list",
            name = "applications",
            target_id = prelude.Document.id,
            list_member = M.Application,
        }),
    },
})

M.BasicAuthConfiguration = schema.new({
    id = id.from(_N, "BasicAuthConfiguration"),
    type = "structure",
    members = {
        secretArn = schema.new({
            id = id.from(_N, "BasicAuthConfiguration", "secretArn"),
            type = "string",
            name = "secretArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "BasicAuthConfiguration", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IdcAuthConfiguration = schema.new({
    id = id.from(_N, "IdcAuthConfiguration"),
    type = "structure",
    members = {
        idcApplicationArn = schema.new({
            id = id.from(_N, "IdcAuthConfiguration", "idcApplicationArn"),
            type = "string",
            name = "idcApplicationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "IdcAuthConfiguration", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NoAuthConfiguration = schema.new({
    id = id.from(_N, "NoAuthConfiguration"),
    type = "structure",
})

M.OAuth2ClientCredentialConfiguration = schema.new({
    id = id.from(_N, "OAuth2ClientCredentialConfiguration"),
    type = "structure",
    members = {
        secretArn = schema.new({
            id = id.from(_N, "OAuth2ClientCredentialConfiguration", "secretArn"),
            type = "string",
            name = "secretArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "OAuth2ClientCredentialConfiguration", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizationUrl = schema.new({
            id = id.from(_N, "OAuth2ClientCredentialConfiguration", "authorizationUrl"),
            type = "string",
            name = "authorizationUrl",
            target_id = prelude.String.id,
        }),
        tokenUrl = schema.new({
            id = id.from(_N, "OAuth2ClientCredentialConfiguration", "tokenUrl"),
            type = "string",
            name = "tokenUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.PluginAuthConfiguration = schema.new({
    id = id.from(_N, "PluginAuthConfiguration"),
    type = "union",
    members = {
        basicAuthConfiguration = schema.new({
            id = id.from(_N, "PluginAuthConfiguration", "basicAuthConfiguration"),
            type = "structure",
            name = "basicAuthConfiguration",
            target_id = id.from(_N, "BasicAuthConfiguration"),
            target = M.BasicAuthConfiguration,
        }),
        oAuth2ClientCredentialConfiguration = schema.new({
            id = id.from(_N, "PluginAuthConfiguration", "oAuth2ClientCredentialConfiguration"),
            type = "structure",
            name = "oAuth2ClientCredentialConfiguration",
            target_id = id.from(_N, "OAuth2ClientCredentialConfiguration"),
            target = M.OAuth2ClientCredentialConfiguration,
        }),
        noAuthConfiguration = schema.new({
            id = id.from(_N, "PluginAuthConfiguration", "noAuthConfiguration"),
            type = "structure",
            name = "noAuthConfiguration",
            target_id = id.from(_N, "NoAuthConfiguration"),
            target = M.NoAuthConfiguration,
        }),
        idcAuthConfiguration = schema.new({
            id = id.from(_N, "PluginAuthConfiguration", "idcAuthConfiguration"),
            type = "structure",
            name = "idcAuthConfiguration",
            target_id = id.from(_N, "IdcAuthConfiguration"),
            target = M.IdcAuthConfiguration,
        }),
    },
})

M.CustomPluginConfiguration = schema.new({
    id = id.from(_N, "CustomPluginConfiguration"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "CustomPluginConfiguration", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        apiSchemaType = schema.new({
            id = id.from(_N, "CustomPluginConfiguration", "apiSchemaType"),
            type = "string",
            name = "apiSchemaType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        apiSchema = schema.new({
            id = id.from(_N, "CustomPluginConfiguration", "apiSchema"),
            type = "union",
            name = "apiSchema",
            target_id = id.from(_N, "APISchema"),
            target = M.APISchema,
        }),
    },
})

M.CreatePluginInput = schema.new({
    id = id.from(_N, "CreatePluginInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreatePluginInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "CreatePluginInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreatePluginInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authConfiguration = schema.new({
            id = id.from(_N, "CreatePluginInput", "authConfiguration"),
            type = "union",
            name = "authConfiguration",
            target_id = id.from(_N, "PluginAuthConfiguration"),
            target = M.PluginAuthConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serverUrl = schema.new({
            id = id.from(_N, "CreatePluginInput", "serverUrl"),
            type = "string",
            name = "serverUrl",
            target_id = prelude.String.id,
        }),
        customPluginConfiguration = schema.new({
            id = id.from(_N, "CreatePluginInput", "customPluginConfiguration"),
            type = "structure",
            name = "customPluginConfiguration",
            target_id = id.from(_N, "CustomPluginConfiguration"),
            target = M.CustomPluginConfiguration,
        }),
        tags = schema.new({
            id = id.from(_N, "CreatePluginInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreatePluginInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreatePluginOutput = schema.new({
    id = id.from(_N, "CreatePluginOutput"),
    type = "structure",
    members = {
        pluginId = schema.new({
            id = id.from(_N, "CreatePluginOutput", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
        }),
        pluginArn = schema.new({
            id = id.from(_N, "CreatePluginOutput", "pluginArn"),
            type = "string",
            name = "pluginArn",
            target_id = prelude.String.id,
        }),
        buildStatus = schema.new({
            id = id.from(_N, "CreatePluginOutput", "buildStatus"),
            type = "string",
            name = "buildStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.DeletePluginInput = schema.new({
    id = id.from(_N, "DeletePluginInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeletePluginInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        pluginId = schema.new({
            id = id.from(_N, "DeletePluginInput", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeletePluginOutput = schema.new({
    id = id.from(_N, "DeletePluginOutput"),
    type = "structure",
})

M.GetPluginInput = schema.new({
    id = id.from(_N, "GetPluginInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetPluginInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        pluginId = schema.new({
            id = id.from(_N, "GetPluginInput", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetPluginOutput = schema.new({
    id = id.from(_N, "GetPluginOutput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetPluginOutput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
        }),
        pluginId = schema.new({
            id = id.from(_N, "GetPluginOutput", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "GetPluginOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "GetPluginOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        serverUrl = schema.new({
            id = id.from(_N, "GetPluginOutput", "serverUrl"),
            type = "string",
            name = "serverUrl",
            target_id = prelude.String.id,
        }),
        authConfiguration = schema.new({
            id = id.from(_N, "GetPluginOutput", "authConfiguration"),
            type = "union",
            name = "authConfiguration",
            target_id = id.from(_N, "PluginAuthConfiguration"),
            target = M.PluginAuthConfiguration,
        }),
        customPluginConfiguration = schema.new({
            id = id.from(_N, "GetPluginOutput", "customPluginConfiguration"),
            type = "structure",
            name = "customPluginConfiguration",
            target_id = id.from(_N, "CustomPluginConfiguration"),
            target = M.CustomPluginConfiguration,
        }),
        buildStatus = schema.new({
            id = id.from(_N, "GetPluginOutput", "buildStatus"),
            type = "string",
            name = "buildStatus",
            target_id = prelude.String.id,
        }),
        pluginArn = schema.new({
            id = id.from(_N, "GetPluginOutput", "pluginArn"),
            type = "string",
            name = "pluginArn",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "GetPluginOutput", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetPluginOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetPluginOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListPluginsInput = schema.new({
    id = id.from(_N, "ListPluginsInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListPluginsInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPluginsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPluginsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.Plugin = schema.new({
    id = id.from(_N, "Plugin"),
    type = "structure",
    members = {
        pluginId = schema.new({
            id = id.from(_N, "Plugin", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "Plugin", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Plugin", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        serverUrl = schema.new({
            id = id.from(_N, "Plugin", "serverUrl"),
            type = "string",
            name = "serverUrl",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "Plugin", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        buildStatus = schema.new({
            id = id.from(_N, "Plugin", "buildStatus"),
            type = "string",
            name = "buildStatus",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Plugin", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Plugin", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListPluginsOutput = schema.new({
    id = id.from(_N, "ListPluginsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPluginsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        plugins = schema.new({
            id = id.from(_N, "ListPluginsOutput", "plugins"),
            type = "list",
            name = "plugins",
            target_id = prelude.Document.id,
            list_member = M.Plugin,
        }),
    },
})

M.UpdatePluginInput = schema.new({
    id = id.from(_N, "UpdatePluginInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdatePluginInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        pluginId = schema.new({
            id = id.from(_N, "UpdatePluginInput", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdatePluginInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "UpdatePluginInput", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        serverUrl = schema.new({
            id = id.from(_N, "UpdatePluginInput", "serverUrl"),
            type = "string",
            name = "serverUrl",
            target_id = prelude.String.id,
        }),
        customPluginConfiguration = schema.new({
            id = id.from(_N, "UpdatePluginInput", "customPluginConfiguration"),
            type = "structure",
            name = "customPluginConfiguration",
            target_id = id.from(_N, "CustomPluginConfiguration"),
            target = M.CustomPluginConfiguration,
        }),
        authConfiguration = schema.new({
            id = id.from(_N, "UpdatePluginInput", "authConfiguration"),
            type = "union",
            name = "authConfiguration",
            target_id = id.from(_N, "PluginAuthConfiguration"),
            target = M.PluginAuthConfiguration,
        }),
    },
})

M.UpdatePluginOutput = schema.new({
    id = id.from(_N, "UpdatePluginOutput"),
    type = "structure",
})

M.KendraIndexConfiguration = schema.new({
    id = id.from(_N, "KendraIndexConfiguration"),
    type = "structure",
    members = {
        indexId = schema.new({
            id = id.from(_N, "KendraIndexConfiguration", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DateAttributeBoostingConfiguration = schema.new({
    id = id.from(_N, "DateAttributeBoostingConfiguration"),
    type = "structure",
    members = {
        boostingLevel = schema.new({
            id = id.from(_N, "DateAttributeBoostingConfiguration", "boostingLevel"),
            type = "string",
            name = "boostingLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        boostingDurationInSeconds = schema.new({
            id = id.from(_N, "DateAttributeBoostingConfiguration", "boostingDurationInSeconds"),
            type = "long",
            name = "boostingDurationInSeconds",
            target_id = prelude.Long.id,
        }),
    },
})

M.NumberAttributeBoostingConfiguration = schema.new({
    id = id.from(_N, "NumberAttributeBoostingConfiguration"),
    type = "structure",
    members = {
        boostingLevel = schema.new({
            id = id.from(_N, "NumberAttributeBoostingConfiguration", "boostingLevel"),
            type = "string",
            name = "boostingLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        boostingType = schema.new({
            id = id.from(_N, "NumberAttributeBoostingConfiguration", "boostingType"),
            type = "string",
            name = "boostingType",
            target_id = prelude.String.id,
        }),
    },
})

M.StringAttributeBoostingConfiguration = schema.new({
    id = id.from(_N, "StringAttributeBoostingConfiguration"),
    type = "structure",
    members = {
        boostingLevel = schema.new({
            id = id.from(_N, "StringAttributeBoostingConfiguration", "boostingLevel"),
            type = "string",
            name = "boostingLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attributeValueBoosting = schema.new({
            id = id.from(_N, "StringAttributeBoostingConfiguration", "attributeValueBoosting"),
            type = "map",
            name = "attributeValueBoosting",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StringListAttributeBoostingConfiguration = schema.new({
    id = id.from(_N, "StringListAttributeBoostingConfiguration"),
    type = "structure",
    members = {
        boostingLevel = schema.new({
            id = id.from(_N, "StringListAttributeBoostingConfiguration", "boostingLevel"),
            type = "string",
            name = "boostingLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DocumentAttributeBoostingConfiguration = schema.new({
    id = id.from(_N, "DocumentAttributeBoostingConfiguration"),
    type = "union",
    members = {
        numberConfiguration = schema.new({
            id = id.from(_N, "DocumentAttributeBoostingConfiguration", "numberConfiguration"),
            type = "structure",
            name = "numberConfiguration",
            target_id = id.from(_N, "NumberAttributeBoostingConfiguration"),
            target = M.NumberAttributeBoostingConfiguration,
        }),
        stringConfiguration = schema.new({
            id = id.from(_N, "DocumentAttributeBoostingConfiguration", "stringConfiguration"),
            type = "structure",
            name = "stringConfiguration",
            target_id = id.from(_N, "StringAttributeBoostingConfiguration"),
            target = M.StringAttributeBoostingConfiguration,
        }),
        dateConfiguration = schema.new({
            id = id.from(_N, "DocumentAttributeBoostingConfiguration", "dateConfiguration"),
            type = "structure",
            name = "dateConfiguration",
            target_id = id.from(_N, "DateAttributeBoostingConfiguration"),
            target = M.DateAttributeBoostingConfiguration,
        }),
        stringListConfiguration = schema.new({
            id = id.from(_N, "DocumentAttributeBoostingConfiguration", "stringListConfiguration"),
            type = "structure",
            name = "stringListConfiguration",
            target_id = id.from(_N, "StringListAttributeBoostingConfiguration"),
            target = M.StringListAttributeBoostingConfiguration,
        }),
    },
})

M.NativeIndexConfiguration = schema.new({
    id = id.from(_N, "NativeIndexConfiguration"),
    type = "structure",
    members = {
        indexId = schema.new({
            id = id.from(_N, "NativeIndexConfiguration", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        version = schema.new({
            id = id.from(_N, "NativeIndexConfiguration", "version"),
            type = "long",
            name = "version",
            target_id = prelude.Long.id,
        }),
        boostingOverride = schema.new({
            id = id.from(_N, "NativeIndexConfiguration", "boostingOverride"),
            type = "map",
            name = "boostingOverride",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.DocumentAttributeBoostingConfiguration,
        }),
    },
})

M.RetrieverConfiguration = schema.new({
    id = id.from(_N, "RetrieverConfiguration"),
    type = "union",
    members = {
        nativeIndexConfiguration = schema.new({
            id = id.from(_N, "RetrieverConfiguration", "nativeIndexConfiguration"),
            type = "structure",
            name = "nativeIndexConfiguration",
            target_id = id.from(_N, "NativeIndexConfiguration"),
            target = M.NativeIndexConfiguration,
        }),
        kendraIndexConfiguration = schema.new({
            id = id.from(_N, "RetrieverConfiguration", "kendraIndexConfiguration"),
            type = "structure",
            name = "kendraIndexConfiguration",
            target_id = id.from(_N, "KendraIndexConfiguration"),
            target = M.KendraIndexConfiguration,
        }),
    },
})

M.CreateRetrieverInput = schema.new({
    id = id.from(_N, "CreateRetrieverInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreateRetrieverInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreateRetrieverInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "CreateRetrieverInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "CreateRetrieverInput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "RetrieverConfiguration"),
            target = M.RetrieverConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateRetrieverInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateRetrieverInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRetrieverInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateRetrieverOutput = schema.new({
    id = id.from(_N, "CreateRetrieverOutput"),
    type = "structure",
    members = {
        retrieverId = schema.new({
            id = id.from(_N, "CreateRetrieverOutput", "retrieverId"),
            type = "string",
            name = "retrieverId",
            target_id = prelude.String.id,
        }),
        retrieverArn = schema.new({
            id = id.from(_N, "CreateRetrieverOutput", "retrieverArn"),
            type = "string",
            name = "retrieverArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteRetrieverInput = schema.new({
    id = id.from(_N, "DeleteRetrieverInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteRetrieverInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        retrieverId = schema.new({
            id = id.from(_N, "DeleteRetrieverInput", "retrieverId"),
            type = "string",
            name = "retrieverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRetrieverOutput = schema.new({
    id = id.from(_N, "DeleteRetrieverOutput"),
    type = "structure",
})

M.GetRetrieverInput = schema.new({
    id = id.from(_N, "GetRetrieverInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetRetrieverInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        retrieverId = schema.new({
            id = id.from(_N, "GetRetrieverInput", "retrieverId"),
            type = "string",
            name = "retrieverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetRetrieverOutput = schema.new({
    id = id.from(_N, "GetRetrieverOutput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetRetrieverOutput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
        }),
        retrieverId = schema.new({
            id = id.from(_N, "GetRetrieverOutput", "retrieverId"),
            type = "string",
            name = "retrieverId",
            target_id = prelude.String.id,
        }),
        retrieverArn = schema.new({
            id = id.from(_N, "GetRetrieverOutput", "retrieverArn"),
            type = "string",
            name = "retrieverArn",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "GetRetrieverOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetRetrieverOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "GetRetrieverOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        configuration = schema.new({
            id = id.from(_N, "GetRetrieverOutput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "RetrieverConfiguration"),
            target = M.RetrieverConfiguration,
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetRetrieverOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetRetrieverOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetRetrieverOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListRetrieversInput = schema.new({
    id = id.from(_N, "ListRetrieversInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListRetrieversInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRetrieversInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListRetrieversInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.Retriever = schema.new({
    id = id.from(_N, "Retriever"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "Retriever", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
        }),
        retrieverId = schema.new({
            id = id.from(_N, "Retriever", "retrieverId"),
            type = "string",
            name = "retrieverId",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Retriever", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Retriever", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "Retriever", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRetrieversOutput = schema.new({
    id = id.from(_N, "ListRetrieversOutput"),
    type = "structure",
    members = {
        retrievers = schema.new({
            id = id.from(_N, "ListRetrieversOutput", "retrievers"),
            type = "list",
            name = "retrievers",
            target_id = prelude.Document.id,
            list_member = M.Retriever,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRetrieversOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRetrieverInput = schema.new({
    id = id.from(_N, "UpdateRetrieverInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdateRetrieverInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        retrieverId = schema.new({
            id = id.from(_N, "UpdateRetrieverInput", "retrieverId"),
            type = "string",
            name = "retrieverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "UpdateRetrieverInput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "RetrieverConfiguration"),
            target = M.RetrieverConfiguration,
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdateRetrieverInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateRetrieverInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRetrieverOutput = schema.new({
    id = id.from(_N, "UpdateRetrieverOutput"),
    type = "structure",
})

M.UpdateApplicationInput = schema.new({
    id = id.from(_N, "UpdateApplicationInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        identityCenterInstanceArn = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "identityCenterInstanceArn"),
            type = "string",
            name = "identityCenterInstanceArn",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        attachmentsConfiguration = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "attachmentsConfiguration"),
            type = "structure",
            name = "attachmentsConfiguration",
            target_id = id.from(_N, "AttachmentsConfiguration"),
            target = M.AttachmentsConfiguration,
        }),
        qAppsConfiguration = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "qAppsConfiguration"),
            type = "structure",
            name = "qAppsConfiguration",
            target_id = id.from(_N, "QAppsConfiguration"),
            target = M.QAppsConfiguration,
        }),
        personalizationConfiguration = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "personalizationConfiguration"),
            type = "structure",
            name = "personalizationConfiguration",
            target_id = id.from(_N, "PersonalizationConfiguration"),
            target = M.PersonalizationConfiguration,
        }),
        autoSubscriptionConfiguration = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "autoSubscriptionConfiguration"),
            type = "structure",
            name = "autoSubscriptionConfiguration",
            target_id = id.from(_N, "AutoSubscriptionConfiguration"),
            target = M.AutoSubscriptionConfiguration,
        }),
    },
})

M.UpdateApplicationOutput = schema.new({
    id = id.from(_N, "UpdateApplicationOutput"),
    type = "structure",
})

M.BrowserExtensionConfiguration = schema.new({
    id = id.from(_N, "BrowserExtensionConfiguration"),
    type = "structure",
    members = {
        enabledBrowserExtensions = schema.new({
            id = id.from(_N, "BrowserExtensionConfiguration", "enabledBrowserExtensions"),
            type = "list",
            name = "enabledBrowserExtensions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CustomizationConfiguration = schema.new({
    id = id.from(_N, "CustomizationConfiguration"),
    type = "structure",
    members = {
        customCSSUrl = schema.new({
            id = id.from(_N, "CustomizationConfiguration", "customCSSUrl"),
            type = "string",
            name = "customCSSUrl",
            target_id = prelude.String.id,
        }),
        logoUrl = schema.new({
            id = id.from(_N, "CustomizationConfiguration", "logoUrl"),
            type = "string",
            name = "logoUrl",
            target_id = prelude.String.id,
        }),
        fontUrl = schema.new({
            id = id.from(_N, "CustomizationConfiguration", "fontUrl"),
            type = "string",
            name = "fontUrl",
            target_id = prelude.String.id,
        }),
        faviconUrl = schema.new({
            id = id.from(_N, "CustomizationConfiguration", "faviconUrl"),
            type = "string",
            name = "faviconUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.OpenIDConnectProviderConfiguration = schema.new({
    id = id.from(_N, "OpenIDConnectProviderConfiguration"),
    type = "structure",
    members = {
        secretsArn = schema.new({
            id = id.from(_N, "OpenIDConnectProviderConfiguration", "secretsArn"),
            type = "string",
            name = "secretsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        secretsRole = schema.new({
            id = id.from(_N, "OpenIDConnectProviderConfiguration", "secretsRole"),
            type = "string",
            name = "secretsRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SamlProviderConfiguration = schema.new({
    id = id.from(_N, "SamlProviderConfiguration"),
    type = "structure",
    members = {
        authenticationUrl = schema.new({
            id = id.from(_N, "SamlProviderConfiguration", "authenticationUrl"),
            type = "string",
            name = "authenticationUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IdentityProviderConfiguration = schema.new({
    id = id.from(_N, "IdentityProviderConfiguration"),
    type = "union",
    members = {
        samlConfiguration = schema.new({
            id = id.from(_N, "IdentityProviderConfiguration", "samlConfiguration"),
            type = "structure",
            name = "samlConfiguration",
            target_id = id.from(_N, "SamlProviderConfiguration"),
            target = M.SamlProviderConfiguration,
        }),
        openIDConnectConfiguration = schema.new({
            id = id.from(_N, "IdentityProviderConfiguration", "openIDConnectConfiguration"),
            type = "structure",
            name = "openIDConnectConfiguration",
            target_id = id.from(_N, "OpenIDConnectProviderConfiguration"),
            target = M.OpenIDConnectProviderConfiguration,
        }),
    },
})

M.CreateWebExperienceInput = schema.new({
    id = id.from(_N, "CreateWebExperienceInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreateWebExperienceInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "CreateWebExperienceInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        subtitle = schema.new({
            id = id.from(_N, "CreateWebExperienceInput", "subtitle"),
            type = "string",
            name = "subtitle",
            target_id = prelude.String.id,
        }),
        welcomeMessage = schema.new({
            id = id.from(_N, "CreateWebExperienceInput", "welcomeMessage"),
            type = "string",
            name = "welcomeMessage",
            target_id = prelude.String.id,
        }),
        samplePromptsControlMode = schema.new({
            id = id.from(_N, "CreateWebExperienceInput", "samplePromptsControlMode"),
            type = "string",
            name = "samplePromptsControlMode",
            target_id = prelude.String.id,
        }),
        origins = schema.new({
            id = id.from(_N, "CreateWebExperienceInput", "origins"),
            type = "list",
            name = "origins",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateWebExperienceInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateWebExperienceInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateWebExperienceInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        identityProviderConfiguration = schema.new({
            id = id.from(_N, "CreateWebExperienceInput", "identityProviderConfiguration"),
            type = "union",
            name = "identityProviderConfiguration",
            target_id = id.from(_N, "IdentityProviderConfiguration"),
            target = M.IdentityProviderConfiguration,
        }),
        browserExtensionConfiguration = schema.new({
            id = id.from(_N, "CreateWebExperienceInput", "browserExtensionConfiguration"),
            type = "structure",
            name = "browserExtensionConfiguration",
            target_id = id.from(_N, "BrowserExtensionConfiguration"),
            target = M.BrowserExtensionConfiguration,
        }),
        customizationConfiguration = schema.new({
            id = id.from(_N, "CreateWebExperienceInput", "customizationConfiguration"),
            type = "structure",
            name = "customizationConfiguration",
            target_id = id.from(_N, "CustomizationConfiguration"),
            target = M.CustomizationConfiguration,
        }),
    },
})

M.CreateWebExperienceOutput = schema.new({
    id = id.from(_N, "CreateWebExperienceOutput"),
    type = "structure",
    members = {
        webExperienceId = schema.new({
            id = id.from(_N, "CreateWebExperienceOutput", "webExperienceId"),
            type = "string",
            name = "webExperienceId",
            target_id = prelude.String.id,
        }),
        webExperienceArn = schema.new({
            id = id.from(_N, "CreateWebExperienceOutput", "webExperienceArn"),
            type = "string",
            name = "webExperienceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteWebExperienceInput = schema.new({
    id = id.from(_N, "DeleteWebExperienceInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteWebExperienceInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        webExperienceId = schema.new({
            id = id.from(_N, "DeleteWebExperienceInput", "webExperienceId"),
            type = "string",
            name = "webExperienceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteWebExperienceOutput = schema.new({
    id = id.from(_N, "DeleteWebExperienceOutput"),
    type = "structure",
})

M.GetWebExperienceInput = schema.new({
    id = id.from(_N, "GetWebExperienceInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetWebExperienceInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        webExperienceId = schema.new({
            id = id.from(_N, "GetWebExperienceInput", "webExperienceId"),
            type = "string",
            name = "webExperienceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.SamlConfiguration = schema.new({
    id = id.from(_N, "SamlConfiguration"),
    type = "structure",
    members = {
        metadataXML = schema.new({
            id = id.from(_N, "SamlConfiguration", "metadataXML"),
            type = "string",
            name = "metadataXML",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "SamlConfiguration", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userIdAttribute = schema.new({
            id = id.from(_N, "SamlConfiguration", "userIdAttribute"),
            type = "string",
            name = "userIdAttribute",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userGroupAttribute = schema.new({
            id = id.from(_N, "SamlConfiguration", "userGroupAttribute"),
            type = "string",
            name = "userGroupAttribute",
            target_id = prelude.String.id,
        }),
    },
})

M.WebExperienceAuthConfiguration = schema.new({
    id = id.from(_N, "WebExperienceAuthConfiguration"),
    type = "union",
    members = {
        samlConfiguration = schema.new({
            id = id.from(_N, "WebExperienceAuthConfiguration", "samlConfiguration"),
            type = "structure",
            name = "samlConfiguration",
            target_id = id.from(_N, "SamlConfiguration"),
            target = M.SamlConfiguration,
        }),
    },
})

M.GetWebExperienceOutput = schema.new({
    id = id.from(_N, "GetWebExperienceOutput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
        }),
        webExperienceId = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "webExperienceId"),
            type = "string",
            name = "webExperienceId",
            target_id = prelude.String.id,
        }),
        webExperienceArn = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "webExperienceArn"),
            type = "string",
            name = "webExperienceArn",
            target_id = prelude.String.id,
        }),
        defaultEndpoint = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "defaultEndpoint"),
            type = "string",
            name = "defaultEndpoint",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        title = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        subtitle = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "subtitle"),
            type = "string",
            name = "subtitle",
            target_id = prelude.String.id,
        }),
        welcomeMessage = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "welcomeMessage"),
            type = "string",
            name = "welcomeMessage",
            target_id = prelude.String.id,
        }),
        samplePromptsControlMode = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "samplePromptsControlMode"),
            type = "string",
            name = "samplePromptsControlMode",
            target_id = prelude.String.id,
        }),
        origins = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "origins"),
            type = "list",
            name = "origins",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        identityProviderConfiguration = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "identityProviderConfiguration"),
            type = "union",
            name = "identityProviderConfiguration",
            target_id = id.from(_N, "IdentityProviderConfiguration"),
            target = M.IdentityProviderConfiguration,
        }),
        authenticationConfiguration = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "authenticationConfiguration"),
            type = "union",
            name = "authenticationConfiguration",
            target_id = id.from(_N, "WebExperienceAuthConfiguration"),
            target = M.WebExperienceAuthConfiguration,
        }),
        error = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetail"),
            target = M.ErrorDetail,
        }),
        browserExtensionConfiguration = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "browserExtensionConfiguration"),
            type = "structure",
            name = "browserExtensionConfiguration",
            target_id = id.from(_N, "BrowserExtensionConfiguration"),
            target = M.BrowserExtensionConfiguration,
        }),
        customizationConfiguration = schema.new({
            id = id.from(_N, "GetWebExperienceOutput", "customizationConfiguration"),
            type = "structure",
            name = "customizationConfiguration",
            target_id = id.from(_N, "CustomizationConfiguration"),
            target = M.CustomizationConfiguration,
        }),
    },
})

M.ListWebExperiencesInput = schema.new({
    id = id.from(_N, "ListWebExperiencesInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListWebExperiencesInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWebExperiencesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListWebExperiencesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.WebExperience = schema.new({
    id = id.from(_N, "WebExperience"),
    type = "structure",
    members = {
        webExperienceId = schema.new({
            id = id.from(_N, "WebExperience", "webExperienceId"),
            type = "string",
            name = "webExperienceId",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "WebExperience", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "WebExperience", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        defaultEndpoint = schema.new({
            id = id.from(_N, "WebExperience", "defaultEndpoint"),
            type = "string",
            name = "defaultEndpoint",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "WebExperience", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListWebExperiencesOutput = schema.new({
    id = id.from(_N, "ListWebExperiencesOutput"),
    type = "structure",
    members = {
        webExperiences = schema.new({
            id = id.from(_N, "ListWebExperiencesOutput", "webExperiences"),
            type = "list",
            name = "webExperiences",
            target_id = prelude.Document.id,
            list_member = M.WebExperience,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWebExperiencesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateWebExperienceInput = schema.new({
    id = id.from(_N, "UpdateWebExperienceInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdateWebExperienceInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        webExperienceId = schema.new({
            id = id.from(_N, "UpdateWebExperienceInput", "webExperienceId"),
            type = "string",
            name = "webExperienceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateWebExperienceInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        authenticationConfiguration = schema.new({
            id = id.from(_N, "UpdateWebExperienceInput", "authenticationConfiguration"),
            type = "union",
            name = "authenticationConfiguration",
            target_id = id.from(_N, "WebExperienceAuthConfiguration"),
            target = M.WebExperienceAuthConfiguration,
        }),
        title = schema.new({
            id = id.from(_N, "UpdateWebExperienceInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        subtitle = schema.new({
            id = id.from(_N, "UpdateWebExperienceInput", "subtitle"),
            type = "string",
            name = "subtitle",
            target_id = prelude.String.id,
        }),
        welcomeMessage = schema.new({
            id = id.from(_N, "UpdateWebExperienceInput", "welcomeMessage"),
            type = "string",
            name = "welcomeMessage",
            target_id = prelude.String.id,
        }),
        samplePromptsControlMode = schema.new({
            id = id.from(_N, "UpdateWebExperienceInput", "samplePromptsControlMode"),
            type = "string",
            name = "samplePromptsControlMode",
            target_id = prelude.String.id,
        }),
        identityProviderConfiguration = schema.new({
            id = id.from(_N, "UpdateWebExperienceInput", "identityProviderConfiguration"),
            type = "union",
            name = "identityProviderConfiguration",
            target_id = id.from(_N, "IdentityProviderConfiguration"),
            target = M.IdentityProviderConfiguration,
        }),
        origins = schema.new({
            id = id.from(_N, "UpdateWebExperienceInput", "origins"),
            type = "list",
            name = "origins",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        browserExtensionConfiguration = schema.new({
            id = id.from(_N, "UpdateWebExperienceInput", "browserExtensionConfiguration"),
            type = "structure",
            name = "browserExtensionConfiguration",
            target_id = id.from(_N, "BrowserExtensionConfiguration"),
            target = M.BrowserExtensionConfiguration,
        }),
        customizationConfiguration = schema.new({
            id = id.from(_N, "UpdateWebExperienceInput", "customizationConfiguration"),
            type = "structure",
            name = "customizationConfiguration",
            target_id = id.from(_N, "CustomizationConfiguration"),
            target = M.CustomizationConfiguration,
        }),
    },
})

M.UpdateWebExperienceOutput = schema.new({
    id = id.from(_N, "UpdateWebExperienceOutput"),
    type = "structure",
})

M.AppliedCreatorModeConfiguration = schema.new({
    id = id.from(_N, "AppliedCreatorModeConfiguration"),
    type = "structure",
    members = {
        creatorModeControl = schema.new({
            id = id.from(_N, "AppliedCreatorModeConfiguration", "creatorModeControl"),
            type = "string",
            name = "creatorModeControl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AppliedOrchestrationConfiguration = schema.new({
    id = id.from(_N, "AppliedOrchestrationConfiguration"),
    type = "structure",
    members = {
        control = schema.new({
            id = id.from(_N, "AppliedOrchestrationConfiguration", "control"),
            type = "string",
            name = "control",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociatedGroup = schema.new({
    id = id.from(_N, "AssociatedGroup"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AssociatedGroup", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "AssociatedGroup", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociatedUser = schema.new({
    id = id.from(_N, "AssociatedUser"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssociatedUser", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "AssociatedUser", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.PermissionCondition = schema.new({
    id = id.from(_N, "PermissionCondition"),
    type = "structure",
    members = {
        conditionOperator = schema.new({
            id = id.from(_N, "PermissionCondition", "conditionOperator"),
            type = "string",
            name = "conditionOperator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conditionKey = schema.new({
            id = id.from(_N, "PermissionCondition", "conditionKey"),
            type = "string",
            name = "conditionKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conditionValues = schema.new({
            id = id.from(_N, "PermissionCondition", "conditionValues"),
            type = "list",
            name = "conditionValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociatePermissionInput = schema.new({
    id = id.from(_N, "AssociatePermissionInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "AssociatePermissionInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        statementId = schema.new({
            id = id.from(_N, "AssociatePermissionInput", "statementId"),
            type = "string",
            name = "statementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actions = schema.new({
            id = id.from(_N, "AssociatePermissionInput", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conditions = schema.new({
            id = id.from(_N, "AssociatePermissionInput", "conditions"),
            type = "list",
            name = "conditions",
            target_id = prelude.Document.id,
            list_member = M.PermissionCondition,
        }),
        principal = schema.new({
            id = id.from(_N, "AssociatePermissionInput", "principal"),
            type = "string",
            name = "principal",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociatePermissionOutput = schema.new({
    id = id.from(_N, "AssociatePermissionOutput"),
    type = "structure",
    members = {
        statement = schema.new({
            id = id.from(_N, "AssociatePermissionOutput", "statement"),
            type = "string",
            name = "statement",
            target_id = prelude.String.id,
        }),
    },
})

M.ConversationSource = schema.new({
    id = id.from(_N, "ConversationSource"),
    type = "structure",
    members = {
        conversationId = schema.new({
            id = id.from(_N, "ConversationSource", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attachmentId = schema.new({
            id = id.from(_N, "ConversationSource", "attachmentId"),
            type = "string",
            name = "attachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CopyFromSource = schema.new({
    id = id.from(_N, "CopyFromSource"),
    type = "union",
    members = {
        conversation = schema.new({
            id = id.from(_N, "CopyFromSource", "conversation"),
            type = "structure",
            name = "conversation",
            target_id = id.from(_N, "ConversationSource"),
            target = M.ConversationSource,
        }),
    },
})

M.Attachment = schema.new({
    id = id.from(_N, "Attachment"),
    type = "structure",
    members = {
        attachmentId = schema.new({
            id = id.from(_N, "Attachment", "attachmentId"),
            type = "string",
            name = "attachmentId",
            target_id = prelude.String.id,
        }),
        conversationId = schema.new({
            id = id.from(_N, "Attachment", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Attachment", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        copyFrom = schema.new({
            id = id.from(_N, "Attachment", "copyFrom"),
            type = "union",
            name = "copyFrom",
            target_id = id.from(_N, "CopyFromSource"),
            target = M.CopyFromSource,
        }),
        fileType = schema.new({
            id = id.from(_N, "Attachment", "fileType"),
            type = "string",
            name = "fileType",
            target_id = prelude.String.id,
        }),
        fileSize = schema.new({
            id = id.from(_N, "Attachment", "fileSize"),
            type = "integer",
            name = "fileSize",
            target_id = prelude.Integer.id,
        }),
        md5chksum = schema.new({
            id = id.from(_N, "Attachment", "md5chksum"),
            type = "string",
            name = "md5chksum",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Attachment", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "Attachment", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "Attachment", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetail"),
            target = M.ErrorDetail,
        }),
    },
})

M.AttachmentInput = schema.new({
    id = id.from(_N, "AttachmentInput"),
    type = "structure",
    members = {
        data = schema.new({
            id = id.from(_N, "AttachmentInput", "data"),
            type = "blob",
            name = "data",
            target_id = prelude.Blob.id,
        }),
        name = schema.new({
            id = id.from(_N, "AttachmentInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        copyFrom = schema.new({
            id = id.from(_N, "AttachmentInput", "copyFrom"),
            type = "union",
            name = "copyFrom",
            target_id = id.from(_N, "CopyFromSource"),
            target = M.CopyFromSource,
        }),
    },
})

M.AttachmentInputEvent = schema.new({
    id = id.from(_N, "AttachmentInputEvent"),
    type = "structure",
    members = {
        attachment = schema.new({
            id = id.from(_N, "AttachmentInputEvent", "attachment"),
            type = "structure",
            name = "attachment",
            target_id = id.from(_N, "AttachmentInput"),
            target = M.AttachmentInput,
        }),
    },
})

M.AttachmentOutput = schema.new({
    id = id.from(_N, "AttachmentOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AttachmentOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "AttachmentOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "AttachmentOutput", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetail"),
            target = M.ErrorDetail,
        }),
        attachmentId = schema.new({
            id = id.from(_N, "AttachmentOutput", "attachmentId"),
            type = "string",
            name = "attachmentId",
            target_id = prelude.String.id,
        }),
        conversationId = schema.new({
            id = id.from(_N, "AttachmentOutput", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
        }),
    },
})

M.AudioSourceDetails = schema.new({
    id = id.from(_N, "AudioSourceDetails"),
    type = "structure",
    members = {
        mediaId = schema.new({
            id = id.from(_N, "AudioSourceDetails", "mediaId"),
            type = "string",
            name = "mediaId",
            target_id = prelude.String.id,
        }),
        mediaMimeType = schema.new({
            id = id.from(_N, "AudioSourceDetails", "mediaMimeType"),
            type = "string",
            name = "mediaMimeType",
            target_id = prelude.String.id,
        }),
        startTimeMilliseconds = schema.new({
            id = id.from(_N, "AudioSourceDetails", "startTimeMilliseconds"),
            type = "long",
            name = "startTimeMilliseconds",
            target_id = prelude.Long.id,
        }),
        endTimeMilliseconds = schema.new({
            id = id.from(_N, "AudioSourceDetails", "endTimeMilliseconds"),
            type = "long",
            name = "endTimeMilliseconds",
            target_id = prelude.Long.id,
        }),
        audioExtractionType = schema.new({
            id = id.from(_N, "AudioSourceDetails", "audioExtractionType"),
            type = "string",
            name = "audioExtractionType",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthChallengeRequest = schema.new({
    id = id.from(_N, "AuthChallengeRequest"),
    type = "structure",
    members = {
        authorizationUrl = schema.new({
            id = id.from(_N, "AuthChallengeRequest", "authorizationUrl"),
            type = "string",
            name = "authorizationUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AuthChallengeRequestEvent = schema.new({
    id = id.from(_N, "AuthChallengeRequestEvent"),
    type = "structure",
    members = {
        authorizationUrl = schema.new({
            id = id.from(_N, "AuthChallengeRequestEvent", "authorizationUrl"),
            type = "string",
            name = "authorizationUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AuthChallengeResponse = schema.new({
    id = id.from(_N, "AuthChallengeResponse"),
    type = "structure",
    members = {
        responseMap = schema.new({
            id = id.from(_N, "AuthChallengeResponse", "responseMap"),
            type = "map",
            name = "responseMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AuthChallengeResponseEvent = schema.new({
    id = id.from(_N, "AuthChallengeResponseEvent"),
    type = "structure",
    members = {
        responseMap = schema.new({
            id = id.from(_N, "AuthChallengeResponseEvent", "responseMap"),
            type = "map",
            name = "responseMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDocument = schema.new({
    id = id.from(_N, "DeleteDocument"),
    type = "structure",
    members = {
        documentId = schema.new({
            id = id.from(_N, "DeleteDocument", "documentId"),
            type = "string",
            name = "documentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteDocumentInput = schema.new({
    id = id.from(_N, "BatchDeleteDocumentInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "BatchDeleteDocumentInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "BatchDeleteDocumentInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        documents = schema.new({
            id = id.from(_N, "BatchDeleteDocumentInput", "documents"),
            type = "list",
            name = "documents",
            target_id = prelude.Document.id,
            list_member = M.DeleteDocument,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataSourceSyncId = schema.new({
            id = id.from(_N, "BatchDeleteDocumentInput", "dataSourceSyncId"),
            type = "string",
            name = "dataSourceSyncId",
            target_id = prelude.String.id,
        }),
    },
})

M.FailedDocument = schema.new({
    id = id.from(_N, "FailedDocument"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "FailedDocument", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "FailedDocument", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetail"),
            target = M.ErrorDetail,
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "FailedDocument", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeleteDocumentOutput = schema.new({
    id = id.from(_N, "BatchDeleteDocumentOutput"),
    type = "structure",
    members = {
        failedDocuments = schema.new({
            id = id.from(_N, "BatchDeleteDocumentOutput", "failedDocuments"),
            type = "list",
            name = "failedDocuments",
            target_id = prelude.Document.id,
            list_member = M.FailedDocument,
        }),
    },
})

M.DocumentContent = schema.new({
    id = id.from(_N, "DocumentContent"),
    type = "union",
    members = {
        blob = schema.new({
            id = id.from(_N, "DocumentContent", "blob"),
            type = "blob",
            name = "blob",
            target_id = prelude.Blob.id,
        }),
        s3 = schema.new({
            id = id.from(_N, "DocumentContent", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3"),
            target = M.S3,
        }),
    },
})

M.Document = schema.new({
    id = id.from(_N, "Document"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Document", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attributes = schema.new({
            id = id.from(_N, "Document", "attributes"),
            type = "list",
            name = "attributes",
            target_id = prelude.Document.id,
            list_member = M.DocumentAttribute,
        }),
        content = schema.new({
            id = id.from(_N, "Document", "content"),
            type = "union",
            name = "content",
            target_id = id.from(_N, "DocumentContent"),
            target = M.DocumentContent,
        }),
        contentType = schema.new({
            id = id.from(_N, "Document", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
        }),
        title = schema.new({
            id = id.from(_N, "Document", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        accessConfiguration = schema.new({
            id = id.from(_N, "Document", "accessConfiguration"),
            type = "structure",
            name = "accessConfiguration",
            target_id = id.from(_N, "AccessConfiguration"),
            target = M.AccessConfiguration,
        }),
        documentEnrichmentConfiguration = schema.new({
            id = id.from(_N, "Document", "documentEnrichmentConfiguration"),
            type = "structure",
            name = "documentEnrichmentConfiguration",
            target_id = id.from(_N, "DocumentEnrichmentConfiguration"),
            target = M.DocumentEnrichmentConfiguration,
        }),
        mediaExtractionConfiguration = schema.new({
            id = id.from(_N, "Document", "mediaExtractionConfiguration"),
            type = "structure",
            name = "mediaExtractionConfiguration",
            target_id = id.from(_N, "MediaExtractionConfiguration"),
            target = M.MediaExtractionConfiguration,
        }),
    },
})

M.BatchPutDocumentInput = schema.new({
    id = id.from(_N, "BatchPutDocumentInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "BatchPutDocumentInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "BatchPutDocumentInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        documents = schema.new({
            id = id.from(_N, "BatchPutDocumentInput", "documents"),
            type = "list",
            name = "documents",
            target_id = prelude.Document.id,
            list_member = M.Document,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "BatchPutDocumentInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        dataSourceSyncId = schema.new({
            id = id.from(_N, "BatchPutDocumentInput", "dataSourceSyncId"),
            type = "string",
            name = "dataSourceSyncId",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchPutDocumentOutput = schema.new({
    id = id.from(_N, "BatchPutDocumentOutput"),
    type = "structure",
    members = {
        failedDocuments = schema.new({
            id = id.from(_N, "BatchPutDocumentOutput", "failedDocuments"),
            type = "list",
            name = "failedDocuments",
            target_id = prelude.Document.id,
            list_member = M.FailedDocument,
        }),
    },
})

M.BlockedPhrasesConfiguration = schema.new({
    id = id.from(_N, "BlockedPhrasesConfiguration"),
    type = "structure",
    members = {
        blockedPhrases = schema.new({
            id = id.from(_N, "BlockedPhrasesConfiguration", "blockedPhrases"),
            type = "list",
            name = "blockedPhrases",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        systemMessageOverride = schema.new({
            id = id.from(_N, "BlockedPhrasesConfiguration", "systemMessageOverride"),
            type = "string",
            name = "systemMessageOverride",
            target_id = prelude.String.id,
        }),
    },
})

M.BlockedPhrasesConfigurationUpdate = schema.new({
    id = id.from(_N, "BlockedPhrasesConfigurationUpdate"),
    type = "structure",
    members = {
        blockedPhrasesToCreateOrUpdate = schema.new({
            id = id.from(_N, "BlockedPhrasesConfigurationUpdate", "blockedPhrasesToCreateOrUpdate"),
            type = "list",
            name = "blockedPhrasesToCreateOrUpdate",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        blockedPhrasesToDelete = schema.new({
            id = id.from(_N, "BlockedPhrasesConfigurationUpdate", "blockedPhrasesToDelete"),
            type = "list",
            name = "blockedPhrasesToDelete",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        systemMessageOverride = schema.new({
            id = id.from(_N, "BlockedPhrasesConfigurationUpdate", "systemMessageOverride"),
            type = "string",
            name = "systemMessageOverride",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelSubscriptionInput = schema.new({
    id = id.from(_N, "CancelSubscriptionInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CancelSubscriptionInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        subscriptionId = schema.new({
            id = id.from(_N, "CancelSubscriptionInput", "subscriptionId"),
            type = "string",
            name = "subscriptionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.SubscriptionDetails = schema.new({
    id = id.from(_N, "SubscriptionDetails"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "SubscriptionDetails", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelSubscriptionOutput = schema.new({
    id = id.from(_N, "CancelSubscriptionOutput"),
    type = "structure",
    members = {
        subscriptionArn = schema.new({
            id = id.from(_N, "CancelSubscriptionOutput", "subscriptionArn"),
            type = "string",
            name = "subscriptionArn",
            target_id = prelude.String.id,
        }),
        currentSubscription = schema.new({
            id = id.from(_N, "CancelSubscriptionOutput", "currentSubscription"),
            type = "structure",
            name = "currentSubscription",
            target_id = id.from(_N, "SubscriptionDetails"),
            target = M.SubscriptionDetails,
        }),
        nextSubscription = schema.new({
            id = id.from(_N, "CancelSubscriptionOutput", "nextSubscription"),
            type = "structure",
            name = "nextSubscription",
            target_id = id.from(_N, "SubscriptionDetails"),
            target = M.SubscriptionDetails,
        }),
    },
})

M.PluginConfiguration = schema.new({
    id = id.from(_N, "PluginConfiguration"),
    type = "structure",
    members = {
        pluginId = schema.new({
            id = id.from(_N, "PluginConfiguration", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChatModeConfiguration = schema.new({
    id = id.from(_N, "ChatModeConfiguration"),
    type = "union",
    members = {
        pluginConfiguration = schema.new({
            id = id.from(_N, "ChatModeConfiguration", "pluginConfiguration"),
            type = "structure",
            name = "pluginConfiguration",
            target_id = id.from(_N, "PluginConfiguration"),
            target = M.PluginConfiguration,
        }),
    },
})

M.EndOfInputEvent = schema.new({
    id = id.from(_N, "EndOfInputEvent"),
    type = "structure",
})

M.TextInputEvent = schema.new({
    id = id.from(_N, "TextInputEvent"),
    type = "structure",
    members = {
        userMessage = schema.new({
            id = id.from(_N, "TextInputEvent", "userMessage"),
            type = "string",
            name = "userMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FailedAttachmentEvent = schema.new({
    id = id.from(_N, "FailedAttachmentEvent"),
    type = "structure",
    members = {
        conversationId = schema.new({
            id = id.from(_N, "FailedAttachmentEvent", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
        }),
        userMessageId = schema.new({
            id = id.from(_N, "FailedAttachmentEvent", "userMessageId"),
            type = "string",
            name = "userMessageId",
            target_id = prelude.String.id,
        }),
        systemMessageId = schema.new({
            id = id.from(_N, "FailedAttachmentEvent", "systemMessageId"),
            type = "string",
            name = "systemMessageId",
            target_id = prelude.String.id,
        }),
        attachment = schema.new({
            id = id.from(_N, "FailedAttachmentEvent", "attachment"),
            type = "structure",
            name = "attachment",
            target_id = id.from(_N, "AttachmentOutput"),
            target = M.AttachmentOutput,
        }),
    },
})

M.SnippetExcerpt = schema.new({
    id = id.from(_N, "SnippetExcerpt"),
    type = "structure",
    members = {
        text = schema.new({
            id = id.from(_N, "SnippetExcerpt", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
    },
})

M.ImageSourceDetails = schema.new({
    id = id.from(_N, "ImageSourceDetails"),
    type = "structure",
    members = {
        mediaId = schema.new({
            id = id.from(_N, "ImageSourceDetails", "mediaId"),
            type = "string",
            name = "mediaId",
            target_id = prelude.String.id,
        }),
        mediaMimeType = schema.new({
            id = id.from(_N, "ImageSourceDetails", "mediaMimeType"),
            type = "string",
            name = "mediaMimeType",
            target_id = prelude.String.id,
        }),
    },
})

M.VideoSourceDetails = schema.new({
    id = id.from(_N, "VideoSourceDetails"),
    type = "structure",
    members = {
        mediaId = schema.new({
            id = id.from(_N, "VideoSourceDetails", "mediaId"),
            type = "string",
            name = "mediaId",
            target_id = prelude.String.id,
        }),
        mediaMimeType = schema.new({
            id = id.from(_N, "VideoSourceDetails", "mediaMimeType"),
            type = "string",
            name = "mediaMimeType",
            target_id = prelude.String.id,
        }),
        startTimeMilliseconds = schema.new({
            id = id.from(_N, "VideoSourceDetails", "startTimeMilliseconds"),
            type = "long",
            name = "startTimeMilliseconds",
            target_id = prelude.Long.id,
        }),
        endTimeMilliseconds = schema.new({
            id = id.from(_N, "VideoSourceDetails", "endTimeMilliseconds"),
            type = "long",
            name = "endTimeMilliseconds",
            target_id = prelude.Long.id,
        }),
        videoExtractionType = schema.new({
            id = id.from(_N, "VideoSourceDetails", "videoExtractionType"),
            type = "string",
            name = "videoExtractionType",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceDetails = schema.new({
    id = id.from(_N, "SourceDetails"),
    type = "union",
    members = {
        imageSourceDetails = schema.new({
            id = id.from(_N, "SourceDetails", "imageSourceDetails"),
            type = "structure",
            name = "imageSourceDetails",
            target_id = id.from(_N, "ImageSourceDetails"),
            target = M.ImageSourceDetails,
        }),
        audioSourceDetails = schema.new({
            id = id.from(_N, "SourceDetails", "audioSourceDetails"),
            type = "structure",
            name = "audioSourceDetails",
            target_id = id.from(_N, "AudioSourceDetails"),
            target = M.AudioSourceDetails,
        }),
        videoSourceDetails = schema.new({
            id = id.from(_N, "SourceDetails", "videoSourceDetails"),
            type = "structure",
            name = "videoSourceDetails",
            target_id = id.from(_N, "VideoSourceDetails"),
            target = M.VideoSourceDetails,
        }),
    },
})

M.TextSegment = schema.new({
    id = id.from(_N, "TextSegment"),
    type = "structure",
    members = {
        beginOffset = schema.new({
            id = id.from(_N, "TextSegment", "beginOffset"),
            type = "integer",
            name = "beginOffset",
            target_id = prelude.Integer.id,
        }),
        endOffset = schema.new({
            id = id.from(_N, "TextSegment", "endOffset"),
            type = "integer",
            name = "endOffset",
            target_id = prelude.Integer.id,
        }),
        snippetExcerpt = schema.new({
            id = id.from(_N, "TextSegment", "snippetExcerpt"),
            type = "structure",
            name = "snippetExcerpt",
            target_id = id.from(_N, "SnippetExcerpt"),
            target = M.SnippetExcerpt,
        }),
        mediaId = schema.new({
            id = id.from(_N, "TextSegment", "mediaId"),
            type = "string",
            name = "mediaId",
            target_id = prelude.String.id,
        }),
        mediaMimeType = schema.new({
            id = id.from(_N, "TextSegment", "mediaMimeType"),
            type = "string",
            name = "mediaMimeType",
            target_id = prelude.String.id,
        }),
        sourceDetails = schema.new({
            id = id.from(_N, "TextSegment", "sourceDetails"),
            type = "union",
            name = "sourceDetails",
            target_id = id.from(_N, "SourceDetails"),
            target = M.SourceDetails,
        }),
    },
})

M.SourceAttribution = schema.new({
    id = id.from(_N, "SourceAttribution"),
    type = "structure",
    members = {
        title = schema.new({
            id = id.from(_N, "SourceAttribution", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        snippet = schema.new({
            id = id.from(_N, "SourceAttribution", "snippet"),
            type = "string",
            name = "snippet",
            target_id = prelude.String.id,
        }),
        url = schema.new({
            id = id.from(_N, "SourceAttribution", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
        }),
        citationNumber = schema.new({
            id = id.from(_N, "SourceAttribution", "citationNumber"),
            type = "integer",
            name = "citationNumber",
            target_id = prelude.Integer.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "SourceAttribution", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        textMessageSegments = schema.new({
            id = id.from(_N, "SourceAttribution", "textMessageSegments"),
            type = "list",
            name = "textMessageSegments",
            target_id = prelude.Document.id,
            list_member = M.TextSegment,
        }),
        documentId = schema.new({
            id = id.from(_N, "SourceAttribution", "documentId"),
            type = "string",
            name = "documentId",
            target_id = prelude.String.id,
        }),
        indexId = schema.new({
            id = id.from(_N, "SourceAttribution", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
        }),
        datasourceId = schema.new({
            id = id.from(_N, "SourceAttribution", "datasourceId"),
            type = "string",
            name = "datasourceId",
            target_id = prelude.String.id,
        }),
    },
})

M.MetadataEvent = schema.new({
    id = id.from(_N, "MetadataEvent"),
    type = "structure",
    members = {
        conversationId = schema.new({
            id = id.from(_N, "MetadataEvent", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
        }),
        userMessageId = schema.new({
            id = id.from(_N, "MetadataEvent", "userMessageId"),
            type = "string",
            name = "userMessageId",
            target_id = prelude.String.id,
        }),
        systemMessageId = schema.new({
            id = id.from(_N, "MetadataEvent", "systemMessageId"),
            type = "string",
            name = "systemMessageId",
            target_id = prelude.String.id,
        }),
        sourceAttributions = schema.new({
            id = id.from(_N, "MetadataEvent", "sourceAttributions"),
            type = "list",
            name = "sourceAttributions",
            target_id = prelude.Document.id,
            list_member = M.SourceAttribution,
        }),
        finalTextMessage = schema.new({
            id = id.from(_N, "MetadataEvent", "finalTextMessage"),
            type = "string",
            name = "finalTextMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.TextOutputEvent = schema.new({
    id = id.from(_N, "TextOutputEvent"),
    type = "structure",
    members = {
        systemMessageType = schema.new({
            id = id.from(_N, "TextOutputEvent", "systemMessageType"),
            type = "string",
            name = "systemMessageType",
            target_id = prelude.String.id,
        }),
        conversationId = schema.new({
            id = id.from(_N, "TextOutputEvent", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
        }),
        userMessageId = schema.new({
            id = id.from(_N, "TextOutputEvent", "userMessageId"),
            type = "string",
            name = "userMessageId",
            target_id = prelude.String.id,
        }),
        systemMessageId = schema.new({
            id = id.from(_N, "TextOutputEvent", "systemMessageId"),
            type = "string",
            name = "systemMessageId",
            target_id = prelude.String.id,
        }),
        systemMessage = schema.new({
            id = id.from(_N, "TextOutputEvent", "systemMessage"),
            type = "string",
            name = "systemMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.ChatOutputStream = schema.new({
    id = id.from(_N, "ChatOutputStream"),
    type = "union",
    members = {
        textEvent = schema.new({
            id = id.from(_N, "ChatOutputStream", "textEvent"),
            type = "structure",
            name = "textEvent",
            target_id = id.from(_N, "TextOutputEvent"),
            target = M.TextOutputEvent,
        }),
        metadataEvent = schema.new({
            id = id.from(_N, "ChatOutputStream", "metadataEvent"),
            type = "structure",
            name = "metadataEvent",
            target_id = id.from(_N, "MetadataEvent"),
            target = M.MetadataEvent,
        }),
        actionReviewEvent = schema.new({
            id = id.from(_N, "ChatOutputStream", "actionReviewEvent"),
            type = "structure",
            name = "actionReviewEvent",
            target_id = id.from(_N, "ActionReviewEvent"),
            target = M.ActionReviewEvent,
        }),
        failedAttachmentEvent = schema.new({
            id = id.from(_N, "ChatOutputStream", "failedAttachmentEvent"),
            type = "structure",
            name = "failedAttachmentEvent",
            target_id = id.from(_N, "FailedAttachmentEvent"),
            target = M.FailedAttachmentEvent,
        }),
        authChallengeRequestEvent = schema.new({
            id = id.from(_N, "ChatOutputStream", "authChallengeRequestEvent"),
            type = "structure",
            name = "authChallengeRequestEvent",
            target_id = id.from(_N, "AuthChallengeRequestEvent"),
            target = M.AuthChallengeRequestEvent,
        }),
    },
})

M.ChatOutput = schema.new({
    id = id.from(_N, "ChatOutput"),
    type = "structure",
    members = {
        outputStream = schema.new({
            id = id.from(_N, "ChatOutput", "outputStream"),
            type = "union",
            name = "outputStream",
            target_id = id.from(_N, "ChatOutputStream"),
            target = M.ChatOutputStream,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ExternalResourceException = schema.new({
    id = id.from(_N, "ExternalResourceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ExternalResourceException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LicenseNotFoundException = schema.new({
    id = id.from(_N, "LicenseNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LicenseNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChatResponseConfiguration = schema.new({
    id = id.from(_N, "ChatResponseConfiguration"),
    type = "structure",
    members = {
        chatResponseConfigurationId = schema.new({
            id = id.from(_N, "ChatResponseConfiguration", "chatResponseConfigurationId"),
            type = "string",
            name = "chatResponseConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        chatResponseConfigurationArn = schema.new({
            id = id.from(_N, "ChatResponseConfiguration", "chatResponseConfigurationArn"),
            type = "string",
            name = "chatResponseConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "ChatResponseConfiguration", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        responseConfigurationSummary = schema.new({
            id = id.from(_N, "ChatResponseConfiguration", "responseConfigurationSummary"),
            type = "string",
            name = "responseConfigurationSummary",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ChatResponseConfiguration", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "ChatResponseConfiguration", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "ChatResponseConfiguration", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.InstructionCollection = schema.new({
    id = id.from(_N, "InstructionCollection"),
    type = "structure",
    members = {
        responseLength = schema.new({
            id = id.from(_N, "InstructionCollection", "responseLength"),
            type = "string",
            name = "responseLength",
            target_id = prelude.String.id,
        }),
        targetAudience = schema.new({
            id = id.from(_N, "InstructionCollection", "targetAudience"),
            type = "string",
            name = "targetAudience",
            target_id = prelude.String.id,
        }),
        perspective = schema.new({
            id = id.from(_N, "InstructionCollection", "perspective"),
            type = "string",
            name = "perspective",
            target_id = prelude.String.id,
        }),
        outputStyle = schema.new({
            id = id.from(_N, "InstructionCollection", "outputStyle"),
            type = "string",
            name = "outputStyle",
            target_id = prelude.String.id,
        }),
        identity = schema.new({
            id = id.from(_N, "InstructionCollection", "identity"),
            type = "string",
            name = "identity",
            target_id = prelude.String.id,
        }),
        tone = schema.new({
            id = id.from(_N, "InstructionCollection", "tone"),
            type = "string",
            name = "tone",
            target_id = prelude.String.id,
        }),
        customInstructions = schema.new({
            id = id.from(_N, "InstructionCollection", "customInstructions"),
            type = "string",
            name = "customInstructions",
            target_id = prelude.String.id,
        }),
        examples = schema.new({
            id = id.from(_N, "InstructionCollection", "examples"),
            type = "string",
            name = "examples",
            target_id = prelude.String.id,
        }),
    },
})

M.ResponseConfiguration = schema.new({
    id = id.from(_N, "ResponseConfiguration"),
    type = "structure",
    members = {
        instructionCollection = schema.new({
            id = id.from(_N, "ResponseConfiguration", "instructionCollection"),
            type = "structure",
            name = "instructionCollection",
            target_id = id.from(_N, "InstructionCollection"),
            target = M.InstructionCollection,
        }),
    },
})

M.ChatResponseConfigurationDetail = schema.new({
    id = id.from(_N, "ChatResponseConfigurationDetail"),
    type = "structure",
    members = {
        responseConfigurations = schema.new({
            id = id.from(_N, "ChatResponseConfigurationDetail", "responseConfigurations"),
            type = "map",
            name = "responseConfigurations",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ResponseConfiguration,
        }),
        responseConfigurationSummary = schema.new({
            id = id.from(_N, "ChatResponseConfigurationDetail", "responseConfigurationSummary"),
            type = "string",
            name = "responseConfigurationSummary",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ChatResponseConfigurationDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "ChatResponseConfigurationDetail", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetail"),
            target = M.ErrorDetail,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "ChatResponseConfigurationDetail", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ChatSyncOutput = schema.new({
    id = id.from(_N, "ChatSyncOutput"),
    type = "structure",
    members = {
        conversationId = schema.new({
            id = id.from(_N, "ChatSyncOutput", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
        }),
        systemMessage = schema.new({
            id = id.from(_N, "ChatSyncOutput", "systemMessage"),
            type = "string",
            name = "systemMessage",
            target_id = prelude.String.id,
        }),
        systemMessageId = schema.new({
            id = id.from(_N, "ChatSyncOutput", "systemMessageId"),
            type = "string",
            name = "systemMessageId",
            target_id = prelude.String.id,
        }),
        userMessageId = schema.new({
            id = id.from(_N, "ChatSyncOutput", "userMessageId"),
            type = "string",
            name = "userMessageId",
            target_id = prelude.String.id,
        }),
        actionReview = schema.new({
            id = id.from(_N, "ChatSyncOutput", "actionReview"),
            type = "structure",
            name = "actionReview",
            target_id = id.from(_N, "ActionReview"),
            target = M.ActionReview,
        }),
        authChallengeRequest = schema.new({
            id = id.from(_N, "ChatSyncOutput", "authChallengeRequest"),
            type = "structure",
            name = "authChallengeRequest",
            target_id = id.from(_N, "AuthChallengeRequest"),
            target = M.AuthChallengeRequest,
        }),
        sourceAttributions = schema.new({
            id = id.from(_N, "ChatSyncOutput", "sourceAttributions"),
            type = "list",
            name = "sourceAttributions",
            target_id = prelude.Document.id,
            list_member = M.SourceAttribution,
        }),
        failedAttachments = schema.new({
            id = id.from(_N, "ChatSyncOutput", "failedAttachments"),
            type = "list",
            name = "failedAttachments",
            target_id = prelude.Document.id,
            list_member = M.AttachmentOutput,
        }),
    },
})

M.CheckDocumentAccessInput = schema.new({
    id = id.from(_N, "CheckDocumentAccessInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CheckDocumentAccessInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "CheckDocumentAccessInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "CheckDocumentAccessInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        documentId = schema.new({
            id = id.from(_N, "CheckDocumentAccessInput", "documentId"),
            type = "string",
            name = "documentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "CheckDocumentAccessInput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "dataSourceId" },
            },
        }),
    },
})

M.DocumentAclGroup = schema.new({
    id = id.from(_N, "DocumentAclGroup"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DocumentAclGroup", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "DocumentAclGroup", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentAclUser = schema.new({
    id = id.from(_N, "DocumentAclUser"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DocumentAclUser", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "DocumentAclUser", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.DocumentAclCondition = schema.new({
    id = id.from(_N, "DocumentAclCondition"),
    type = "structure",
    members = {
        memberRelation = schema.new({
            id = id.from(_N, "DocumentAclCondition", "memberRelation"),
            type = "string",
            name = "memberRelation",
            target_id = prelude.String.id,
        }),
        users = schema.new({
            id = id.from(_N, "DocumentAclCondition", "users"),
            type = "list",
            name = "users",
            target_id = prelude.Document.id,
            list_member = M.DocumentAclUser,
        }),
        groups = schema.new({
            id = id.from(_N, "DocumentAclCondition", "groups"),
            type = "list",
            name = "groups",
            target_id = prelude.Document.id,
            list_member = M.DocumentAclGroup,
        }),
    },
})

M.DocumentAclMembership = schema.new({
    id = id.from(_N, "DocumentAclMembership"),
    type = "structure",
    members = {
        memberRelation = schema.new({
            id = id.from(_N, "DocumentAclMembership", "memberRelation"),
            type = "string",
            name = "memberRelation",
            target_id = prelude.String.id,
        }),
        conditions = schema.new({
            id = id.from(_N, "DocumentAclMembership", "conditions"),
            type = "list",
            name = "conditions",
            target_id = prelude.Document.id,
            list_member = M.DocumentAclCondition,
        }),
    },
})

M.DocumentAcl = schema.new({
    id = id.from(_N, "DocumentAcl"),
    type = "structure",
    members = {
        allowlist = schema.new({
            id = id.from(_N, "DocumentAcl", "allowlist"),
            type = "structure",
            name = "allowlist",
            target_id = id.from(_N, "DocumentAclMembership"),
            target = M.DocumentAclMembership,
        }),
        denyList = schema.new({
            id = id.from(_N, "DocumentAcl", "denyList"),
            type = "structure",
            name = "denyList",
            target_id = id.from(_N, "DocumentAclMembership"),
            target = M.DocumentAclMembership,
        }),
    },
})

M.CheckDocumentAccessOutput = schema.new({
    id = id.from(_N, "CheckDocumentAccessOutput"),
    type = "structure",
    members = {
        userGroups = schema.new({
            id = id.from(_N, "CheckDocumentAccessOutput", "userGroups"),
            type = "list",
            name = "userGroups",
            target_id = prelude.Document.id,
            list_member = M.AssociatedGroup,
        }),
        userAliases = schema.new({
            id = id.from(_N, "CheckDocumentAccessOutput", "userAliases"),
            type = "list",
            name = "userAliases",
            target_id = prelude.Document.id,
            list_member = M.AssociatedUser,
        }),
        hasAccess = schema.new({
            id = id.from(_N, "CheckDocumentAccessOutput", "hasAccess"),
            type = "boolean",
            name = "hasAccess",
            target_id = prelude.Boolean.id,
        }),
        documentAcl = schema.new({
            id = id.from(_N, "CheckDocumentAccessOutput", "documentAcl"),
            type = "structure",
            name = "documentAcl",
            target_id = id.from(_N, "DocumentAcl"),
            target = M.DocumentAcl,
        }),
    },
})

M.ContentBlockerRule = schema.new({
    id = id.from(_N, "ContentBlockerRule"),
    type = "structure",
    members = {
        systemMessageOverride = schema.new({
            id = id.from(_N, "ContentBlockerRule", "systemMessageOverride"),
            type = "string",
            name = "systemMessageOverride",
            target_id = prelude.String.id,
        }),
    },
})

M.EligibleDataSource = schema.new({
    id = id.from(_N, "EligibleDataSource"),
    type = "structure",
    members = {
        indexId = schema.new({
            id = id.from(_N, "EligibleDataSource", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "EligibleDataSource", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
        }),
    },
})

M.ContentRetrievalRule = schema.new({
    id = id.from(_N, "ContentRetrievalRule"),
    type = "structure",
    members = {
        eligibleDataSources = schema.new({
            id = id.from(_N, "ContentRetrievalRule", "eligibleDataSources"),
            type = "list",
            name = "eligibleDataSources",
            target_id = prelude.Document.id,
            list_member = M.EligibleDataSource,
        }),
    },
})

M.RetrieverContentSource = schema.new({
    id = id.from(_N, "RetrieverContentSource"),
    type = "structure",
    members = {
        retrieverId = schema.new({
            id = id.from(_N, "RetrieverContentSource", "retrieverId"),
            type = "string",
            name = "retrieverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ContentSource = schema.new({
    id = id.from(_N, "ContentSource"),
    type = "union",
    members = {
        retriever = schema.new({
            id = id.from(_N, "ContentSource", "retriever"),
            type = "structure",
            name = "retriever",
            target_id = id.from(_N, "RetrieverContentSource"),
            target = M.RetrieverContentSource,
        }),
    },
})

M.Conversation = schema.new({
    id = id.from(_N, "Conversation"),
    type = "structure",
    members = {
        conversationId = schema.new({
            id = id.from(_N, "Conversation", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
        }),
        title = schema.new({
            id = id.from(_N, "Conversation", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "Conversation", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateAnonymousWebExperienceUrlInput = schema.new({
    id = id.from(_N, "CreateAnonymousWebExperienceUrlInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreateAnonymousWebExperienceUrlInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        webExperienceId = schema.new({
            id = id.from(_N, "CreateAnonymousWebExperienceUrlInput", "webExperienceId"),
            type = "string",
            name = "webExperienceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionDurationInMinutes = schema.new({
            id = id.from(_N, "CreateAnonymousWebExperienceUrlInput", "sessionDurationInMinutes"),
            type = "integer",
            name = "sessionDurationInMinutes",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateAnonymousWebExperienceUrlOutput = schema.new({
    id = id.from(_N, "CreateAnonymousWebExperienceUrlOutput"),
    type = "structure",
    members = {
        anonymousUrl = schema.new({
            id = id.from(_N, "CreateAnonymousWebExperienceUrlOutput", "anonymousUrl"),
            type = "string",
            name = "anonymousUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateChatResponseConfigurationInput = schema.new({
    id = id.from(_N, "CreateChatResponseConfigurationInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreateChatResponseConfigurationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "CreateChatResponseConfigurationInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateChatResponseConfigurationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        responseConfigurations = schema.new({
            id = id.from(_N, "CreateChatResponseConfigurationInput", "responseConfigurations"),
            type = "map",
            name = "responseConfigurations",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ResponseConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateChatResponseConfigurationInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateChatResponseConfigurationOutput = schema.new({
    id = id.from(_N, "CreateChatResponseConfigurationOutput"),
    type = "structure",
    members = {
        chatResponseConfigurationId = schema.new({
            id = id.from(_N, "CreateChatResponseConfigurationOutput", "chatResponseConfigurationId"),
            type = "string",
            name = "chatResponseConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        chatResponseConfigurationArn = schema.new({
            id = id.from(_N, "CreateChatResponseConfigurationOutput", "chatResponseConfigurationArn"),
            type = "string",
            name = "chatResponseConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SubscriptionPrincipal = schema.new({
    id = id.from(_N, "SubscriptionPrincipal"),
    type = "union",
    members = {
        user = schema.new({
            id = id.from(_N, "SubscriptionPrincipal", "user"),
            type = "string",
            name = "user",
            target_id = prelude.String.id,
        }),
        group = schema.new({
            id = id.from(_N, "SubscriptionPrincipal", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSubscriptionInput = schema.new({
    id = id.from(_N, "CreateSubscriptionInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreateSubscriptionInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "CreateSubscriptionInput", "principal"),
            type = "union",
            name = "principal",
            target_id = id.from(_N, "SubscriptionPrincipal"),
            target = M.SubscriptionPrincipal,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreateSubscriptionInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateSubscriptionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateSubscriptionOutput = schema.new({
    id = id.from(_N, "CreateSubscriptionOutput"),
    type = "structure",
    members = {
        subscriptionId = schema.new({
            id = id.from(_N, "CreateSubscriptionOutput", "subscriptionId"),
            type = "string",
            name = "subscriptionId",
            target_id = prelude.String.id,
        }),
        subscriptionArn = schema.new({
            id = id.from(_N, "CreateSubscriptionOutput", "subscriptionArn"),
            type = "string",
            name = "subscriptionArn",
            target_id = prelude.String.id,
        }),
        currentSubscription = schema.new({
            id = id.from(_N, "CreateSubscriptionOutput", "currentSubscription"),
            type = "structure",
            name = "currentSubscription",
            target_id = id.from(_N, "SubscriptionDetails"),
            target = M.SubscriptionDetails,
        }),
        nextSubscription = schema.new({
            id = id.from(_N, "CreateSubscriptionOutput", "nextSubscription"),
            type = "structure",
            name = "nextSubscription",
            target_id = id.from(_N, "SubscriptionDetails"),
            target = M.SubscriptionDetails,
        }),
    },
})

M.UserAlias = schema.new({
    id = id.from(_N, "UserAlias"),
    type = "structure",
    members = {
        indexId = schema.new({
            id = id.from(_N, "UserAlias", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "UserAlias", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
        }),
        userId = schema.new({
            id = id.from(_N, "UserAlias", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateUserInput = schema.new({
    id = id.from(_N, "CreateUserInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreateUserInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "CreateUserInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userAliases = schema.new({
            id = id.from(_N, "CreateUserInput", "userAliases"),
            type = "list",
            name = "userAliases",
            target_id = prelude.Document.id,
            list_member = M.UserAlias,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateUserInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateUserOutput = schema.new({
    id = id.from(_N, "CreateUserOutput"),
    type = "structure",
})

M.CreatorModeConfiguration = schema.new({
    id = id.from(_N, "CreatorModeConfiguration"),
    type = "structure",
    members = {
        creatorModeControl = schema.new({
            id = id.from(_N, "CreatorModeConfiguration", "creatorModeControl"),
            type = "string",
            name = "creatorModeControl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DataSourceSyncJobMetrics = schema.new({
    id = id.from(_N, "DataSourceSyncJobMetrics"),
    type = "structure",
    members = {
        documentsAdded = schema.new({
            id = id.from(_N, "DataSourceSyncJobMetrics", "documentsAdded"),
            type = "string",
            name = "documentsAdded",
            target_id = prelude.String.id,
        }),
        documentsModified = schema.new({
            id = id.from(_N, "DataSourceSyncJobMetrics", "documentsModified"),
            type = "string",
            name = "documentsModified",
            target_id = prelude.String.id,
        }),
        documentsDeleted = schema.new({
            id = id.from(_N, "DataSourceSyncJobMetrics", "documentsDeleted"),
            type = "string",
            name = "documentsDeleted",
            target_id = prelude.String.id,
        }),
        documentsFailed = schema.new({
            id = id.from(_N, "DataSourceSyncJobMetrics", "documentsFailed"),
            type = "string",
            name = "documentsFailed",
            target_id = prelude.String.id,
        }),
        documentsScanned = schema.new({
            id = id.from(_N, "DataSourceSyncJobMetrics", "documentsScanned"),
            type = "string",
            name = "documentsScanned",
            target_id = prelude.String.id,
        }),
    },
})

M.DataSourceSyncJob = schema.new({
    id = id.from(_N, "DataSourceSyncJob"),
    type = "structure",
    members = {
        executionId = schema.new({
            id = id.from(_N, "DataSourceSyncJob", "executionId"),
            type = "string",
            name = "executionId",
            target_id = prelude.String.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "DataSourceSyncJob", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "DataSourceSyncJob", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "DataSourceSyncJob", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "DataSourceSyncJob", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetail"),
            target = M.ErrorDetail,
        }),
        dataSourceErrorCode = schema.new({
            id = id.from(_N, "DataSourceSyncJob", "dataSourceErrorCode"),
            type = "string",
            name = "dataSourceErrorCode",
            target_id = prelude.String.id,
        }),
        metrics = schema.new({
            id = id.from(_N, "DataSourceSyncJob", "metrics"),
            type = "structure",
            name = "metrics",
            target_id = id.from(_N, "DataSourceSyncJobMetrics"),
            target = M.DataSourceSyncJobMetrics,
        }),
    },
})

M.DeleteAttachmentInput = schema.new({
    id = id.from(_N, "DeleteAttachmentInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteAttachmentInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        conversationId = schema.new({
            id = id.from(_N, "DeleteAttachmentInput", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        attachmentId = schema.new({
            id = id.from(_N, "DeleteAttachmentInput", "attachmentId"),
            type = "string",
            name = "attachmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "DeleteAttachmentInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "userId" },
            },
        }),
    },
})

M.DeleteAttachmentOutput = schema.new({
    id = id.from(_N, "DeleteAttachmentOutput"),
    type = "structure",
})

M.DeleteChatControlsConfigurationInput = schema.new({
    id = id.from(_N, "DeleteChatControlsConfigurationInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteChatControlsConfigurationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteChatControlsConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteChatControlsConfigurationOutput"),
    type = "structure",
})

M.DeleteChatResponseConfigurationInput = schema.new({
    id = id.from(_N, "DeleteChatResponseConfigurationInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteChatResponseConfigurationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        chatResponseConfigurationId = schema.new({
            id = id.from(_N, "DeleteChatResponseConfigurationInput", "chatResponseConfigurationId"),
            type = "string",
            name = "chatResponseConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteChatResponseConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteChatResponseConfigurationOutput"),
    type = "structure",
})

M.DeleteConversationInput = schema.new({
    id = id.from(_N, "DeleteConversationInput"),
    type = "structure",
    members = {
        conversationId = schema.new({
            id = id.from(_N, "DeleteConversationInput", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        applicationId = schema.new({
            id = id.from(_N, "DeleteConversationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "DeleteConversationInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "userId" },
            },
        }),
    },
})

M.DeleteConversationOutput = schema.new({
    id = id.from(_N, "DeleteConversationOutput"),
    type = "structure",
})

M.DeleteGroupInput = schema.new({
    id = id.from(_N, "DeleteGroupInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteGroupInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "DeleteGroupInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        groupName = schema.new({
            id = id.from(_N, "DeleteGroupInput", "groupName"),
            type = "string",
            name = "groupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "DeleteGroupInput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "dataSourceId" },
            },
        }),
    },
})

M.DeleteGroupOutput = schema.new({
    id = id.from(_N, "DeleteGroupOutput"),
    type = "structure",
})

M.DeleteUserInput = schema.new({
    id = id.from(_N, "DeleteUserInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteUserInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "DeleteUserInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteUserOutput = schema.new({
    id = id.from(_N, "DeleteUserOutput"),
    type = "structure",
})

M.DisassociatePermissionInput = schema.new({
    id = id.from(_N, "DisassociatePermissionInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DisassociatePermissionInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        statementId = schema.new({
            id = id.from(_N, "DisassociatePermissionInput", "statementId"),
            type = "string",
            name = "statementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociatePermissionOutput = schema.new({
    id = id.from(_N, "DisassociatePermissionOutput"),
    type = "structure",
})

M.DocumentDetails = schema.new({
    id = id.from(_N, "DocumentDetails"),
    type = "structure",
    members = {
        documentId = schema.new({
            id = id.from(_N, "DocumentDetails", "documentId"),
            type = "string",
            name = "documentId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DocumentDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        error = schema.new({
            id = id.from(_N, "DocumentDetails", "error"),
            type = "structure",
            name = "error",
            target_id = id.from(_N, "ErrorDetail"),
            target = M.ErrorDetail,
        }),
        createdAt = schema.new({
            id = id.from(_N, "DocumentDetails", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "DocumentDetails", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetChatControlsConfigurationInput = schema.new({
    id = id.from(_N, "GetChatControlsConfigurationInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetChatControlsConfigurationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "GetChatControlsConfigurationInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetChatControlsConfigurationInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.HallucinationReductionConfiguration = schema.new({
    id = id.from(_N, "HallucinationReductionConfiguration"),
    type = "structure",
    members = {
        hallucinationReductionControl = schema.new({
            id = id.from(_N, "HallucinationReductionConfiguration", "hallucinationReductionControl"),
            type = "string",
            name = "hallucinationReductionControl",
            target_id = prelude.String.id,
        }),
    },
})

M.UsersAndGroups = schema.new({
    id = id.from(_N, "UsersAndGroups"),
    type = "structure",
    members = {
        userIds = schema.new({
            id = id.from(_N, "UsersAndGroups", "userIds"),
            type = "list",
            name = "userIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        userGroups = schema.new({
            id = id.from(_N, "UsersAndGroups", "userGroups"),
            type = "list",
            name = "userGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RuleConfiguration = schema.new({
    id = id.from(_N, "RuleConfiguration"),
    type = "union",
    members = {
        contentBlockerRule = schema.new({
            id = id.from(_N, "RuleConfiguration", "contentBlockerRule"),
            type = "structure",
            name = "contentBlockerRule",
            target_id = id.from(_N, "ContentBlockerRule"),
            target = M.ContentBlockerRule,
        }),
        contentRetrievalRule = schema.new({
            id = id.from(_N, "RuleConfiguration", "contentRetrievalRule"),
            type = "structure",
            name = "contentRetrievalRule",
            target_id = id.from(_N, "ContentRetrievalRule"),
            target = M.ContentRetrievalRule,
        }),
    },
})

M.Rule = schema.new({
    id = id.from(_N, "Rule"),
    type = "structure",
    members = {
        includedUsersAndGroups = schema.new({
            id = id.from(_N, "Rule", "includedUsersAndGroups"),
            type = "structure",
            name = "includedUsersAndGroups",
            target_id = id.from(_N, "UsersAndGroups"),
            target = M.UsersAndGroups,
        }),
        excludedUsersAndGroups = schema.new({
            id = id.from(_N, "Rule", "excludedUsersAndGroups"),
            type = "structure",
            name = "excludedUsersAndGroups",
            target_id = id.from(_N, "UsersAndGroups"),
            target = M.UsersAndGroups,
        }),
        ruleType = schema.new({
            id = id.from(_N, "Rule", "ruleType"),
            type = "string",
            name = "ruleType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ruleConfiguration = schema.new({
            id = id.from(_N, "Rule", "ruleConfiguration"),
            type = "union",
            name = "ruleConfiguration",
            target_id = id.from(_N, "RuleConfiguration"),
            target = M.RuleConfiguration,
        }),
    },
})

M.TopicConfiguration = schema.new({
    id = id.from(_N, "TopicConfiguration"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "TopicConfiguration", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "TopicConfiguration", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        exampleChatMessages = schema.new({
            id = id.from(_N, "TopicConfiguration", "exampleChatMessages"),
            type = "list",
            name = "exampleChatMessages",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        rules = schema.new({
            id = id.from(_N, "TopicConfiguration", "rules"),
            type = "list",
            name = "rules",
            target_id = prelude.Document.id,
            list_member = M.Rule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetChatControlsConfigurationOutput = schema.new({
    id = id.from(_N, "GetChatControlsConfigurationOutput"),
    type = "structure",
    members = {
        responseScope = schema.new({
            id = id.from(_N, "GetChatControlsConfigurationOutput", "responseScope"),
            type = "string",
            name = "responseScope",
            target_id = prelude.String.id,
        }),
        orchestrationConfiguration = schema.new({
            id = id.from(_N, "GetChatControlsConfigurationOutput", "orchestrationConfiguration"),
            type = "structure",
            name = "orchestrationConfiguration",
            target_id = id.from(_N, "AppliedOrchestrationConfiguration"),
            target = M.AppliedOrchestrationConfiguration,
        }),
        blockedPhrases = schema.new({
            id = id.from(_N, "GetChatControlsConfigurationOutput", "blockedPhrases"),
            type = "structure",
            name = "blockedPhrases",
            target_id = id.from(_N, "BlockedPhrasesConfiguration"),
            target = M.BlockedPhrasesConfiguration,
        }),
        topicConfigurations = schema.new({
            id = id.from(_N, "GetChatControlsConfigurationOutput", "topicConfigurations"),
            type = "list",
            name = "topicConfigurations",
            target_id = prelude.Document.id,
            list_member = M.TopicConfiguration,
        }),
        creatorModeConfiguration = schema.new({
            id = id.from(_N, "GetChatControlsConfigurationOutput", "creatorModeConfiguration"),
            type = "structure",
            name = "creatorModeConfiguration",
            target_id = id.from(_N, "AppliedCreatorModeConfiguration"),
            target = M.AppliedCreatorModeConfiguration,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetChatControlsConfigurationOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        hallucinationReductionConfiguration = schema.new({
            id = id.from(_N, "GetChatControlsConfigurationOutput", "hallucinationReductionConfiguration"),
            type = "structure",
            name = "hallucinationReductionConfiguration",
            target_id = id.from(_N, "HallucinationReductionConfiguration"),
            target = M.HallucinationReductionConfiguration,
        }),
    },
})

M.GetChatResponseConfigurationInput = schema.new({
    id = id.from(_N, "GetChatResponseConfigurationInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetChatResponseConfigurationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        chatResponseConfigurationId = schema.new({
            id = id.from(_N, "GetChatResponseConfigurationInput", "chatResponseConfigurationId"),
            type = "string",
            name = "chatResponseConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetChatResponseConfigurationOutput = schema.new({
    id = id.from(_N, "GetChatResponseConfigurationOutput"),
    type = "structure",
    members = {
        chatResponseConfigurationId = schema.new({
            id = id.from(_N, "GetChatResponseConfigurationOutput", "chatResponseConfigurationId"),
            type = "string",
            name = "chatResponseConfigurationId",
            target_id = prelude.String.id,
        }),
        chatResponseConfigurationArn = schema.new({
            id = id.from(_N, "GetChatResponseConfigurationOutput", "chatResponseConfigurationArn"),
            type = "string",
            name = "chatResponseConfigurationArn",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "GetChatResponseConfigurationOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetChatResponseConfigurationOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        inUseConfiguration = schema.new({
            id = id.from(_N, "GetChatResponseConfigurationOutput", "inUseConfiguration"),
            type = "structure",
            name = "inUseConfiguration",
            target_id = id.from(_N, "ChatResponseConfigurationDetail"),
            target = M.ChatResponseConfigurationDetail,
        }),
        lastUpdateConfiguration = schema.new({
            id = id.from(_N, "GetChatResponseConfigurationOutput", "lastUpdateConfiguration"),
            type = "structure",
            name = "lastUpdateConfiguration",
            target_id = id.from(_N, "ChatResponseConfigurationDetail"),
            target = M.ChatResponseConfigurationDetail,
        }),
    },
})

M.GetDocumentContentInput = schema.new({
    id = id.from(_N, "GetDocumentContentInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetDocumentContentInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "GetDocumentContentInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "GetDocumentContentInput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "dataSourceId" },
            },
        }),
        documentId = schema.new({
            id = id.from(_N, "GetDocumentContentInput", "documentId"),
            type = "string",
            name = "documentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        outputFormat = schema.new({
            id = id.from(_N, "GetDocumentContentInput", "outputFormat"),
            type = "string",
            name = "outputFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "outputFormat" },
            },
        }),
    },
})

M.GetDocumentContentOutput = schema.new({
    id = id.from(_N, "GetDocumentContentOutput"),
    type = "structure",
    members = {
        presignedUrl = schema.new({
            id = id.from(_N, "GetDocumentContentOutput", "presignedUrl"),
            type = "string",
            name = "presignedUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mimeType = schema.new({
            id = id.from(_N, "GetDocumentContentOutput", "mimeType"),
            type = "string",
            name = "mimeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetGroupInput = schema.new({
    id = id.from(_N, "GetGroupInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetGroupInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "GetGroupInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        groupName = schema.new({
            id = id.from(_N, "GetGroupInput", "groupName"),
            type = "string",
            name = "groupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "GetGroupInput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "dataSourceId" },
            },
        }),
    },
})

M.GroupStatusDetail = schema.new({
    id = id.from(_N, "GroupStatusDetail"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "GroupStatusDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "GroupStatusDetail", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
        errorDetail = schema.new({
            id = id.from(_N, "GroupStatusDetail", "errorDetail"),
            type = "structure",
            name = "errorDetail",
            target_id = id.from(_N, "ErrorDetail"),
            target = M.ErrorDetail,
        }),
    },
})

M.GetGroupOutput = schema.new({
    id = id.from(_N, "GetGroupOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "GetGroupOutput", "status"),
            type = "structure",
            name = "status",
            target_id = id.from(_N, "GroupStatusDetail"),
            target = M.GroupStatusDetail,
        }),
        statusHistory = schema.new({
            id = id.from(_N, "GetGroupOutput", "statusHistory"),
            type = "list",
            name = "statusHistory",
            target_id = prelude.Document.id,
            list_member = M.GroupStatusDetail,
        }),
    },
})

M.GetMediaInput = schema.new({
    id = id.from(_N, "GetMediaInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetMediaInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        conversationId = schema.new({
            id = id.from(_N, "GetMediaInput", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        messageId = schema.new({
            id = id.from(_N, "GetMediaInput", "messageId"),
            type = "string",
            name = "messageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        mediaId = schema.new({
            id = id.from(_N, "GetMediaInput", "mediaId"),
            type = "string",
            name = "mediaId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetMediaOutput = schema.new({
    id = id.from(_N, "GetMediaOutput"),
    type = "structure",
    members = {
        mediaBytes = schema.new({
            id = id.from(_N, "GetMediaOutput", "mediaBytes"),
            type = "blob",
            name = "mediaBytes",
            target_id = prelude.Blob.id,
        }),
        mediaMimeType = schema.new({
            id = id.from(_N, "GetMediaOutput", "mediaMimeType"),
            type = "string",
            name = "mediaMimeType",
            target_id = prelude.String.id,
        }),
    },
})

M.MediaTooLargeException = schema.new({
    id = id.from(_N, "MediaTooLargeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MediaTooLargeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPolicyInput = schema.new({
    id = id.from(_N, "GetPolicyInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetPolicyInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetPolicyOutput = schema.new({
    id = id.from(_N, "GetPolicyOutput"),
    type = "structure",
    members = {
        policy = schema.new({
            id = id.from(_N, "GetPolicyOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetUserInput = schema.new({
    id = id.from(_N, "GetUserInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetUserInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "GetUserInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetUserOutput = schema.new({
    id = id.from(_N, "GetUserOutput"),
    type = "structure",
    members = {
        userAliases = schema.new({
            id = id.from(_N, "GetUserOutput", "userAliases"),
            type = "list",
            name = "userAliases",
            target_id = prelude.Document.id,
            list_member = M.UserAlias,
        }),
    },
})

M.ListAttachmentsInput = schema.new({
    id = id.from(_N, "ListAttachmentsInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListAttachmentsInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        conversationId = schema.new({
            id = id.from(_N, "ListAttachmentsInput", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "conversationId" },
            },
        }),
        userId = schema.new({
            id = id.from(_N, "ListAttachmentsInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "userId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAttachmentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAttachmentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListAttachmentsOutput = schema.new({
    id = id.from(_N, "ListAttachmentsOutput"),
    type = "structure",
    members = {
        attachments = schema.new({
            id = id.from(_N, "ListAttachmentsOutput", "attachments"),
            type = "list",
            name = "attachments",
            target_id = prelude.Document.id,
            list_member = M.Attachment,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAttachmentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListChatResponseConfigurationsInput = schema.new({
    id = id.from(_N, "ListChatResponseConfigurationsInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListChatResponseConfigurationsInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListChatResponseConfigurationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListChatResponseConfigurationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListChatResponseConfigurationsOutput = schema.new({
    id = id.from(_N, "ListChatResponseConfigurationsOutput"),
    type = "structure",
    members = {
        chatResponseConfigurations = schema.new({
            id = id.from(_N, "ListChatResponseConfigurationsOutput", "chatResponseConfigurations"),
            type = "list",
            name = "chatResponseConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ChatResponseConfiguration,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListChatResponseConfigurationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConversationsInput = schema.new({
    id = id.from(_N, "ListConversationsInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListConversationsInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "ListConversationsInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "userId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConversationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListConversationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListConversationsOutput = schema.new({
    id = id.from(_N, "ListConversationsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListConversationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        conversations = schema.new({
            id = id.from(_N, "ListConversationsOutput", "conversations"),
            type = "list",
            name = "conversations",
            target_id = prelude.Document.id,
            list_member = M.Conversation,
        }),
    },
})

M.ListDataSourceSyncJobsInput = schema.new({
    id = id.from(_N, "ListDataSourceSyncJobsInput"),
    type = "structure",
    members = {
        dataSourceId = schema.new({
            id = id.from(_N, "ListDataSourceSyncJobsInput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        applicationId = schema.new({
            id = id.from(_N, "ListDataSourceSyncJobsInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "ListDataSourceSyncJobsInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDataSourceSyncJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDataSourceSyncJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "ListDataSourceSyncJobsInput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startTime" },
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "ListDataSourceSyncJobsInput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "endTime" },
            },
        }),
        statusFilter = schema.new({
            id = id.from(_N, "ListDataSourceSyncJobsInput", "statusFilter"),
            type = "string",
            name = "statusFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "syncStatus" },
            },
        }),
    },
})

M.ListDataSourceSyncJobsOutput = schema.new({
    id = id.from(_N, "ListDataSourceSyncJobsOutput"),
    type = "structure",
    members = {
        history = schema.new({
            id = id.from(_N, "ListDataSourceSyncJobsOutput", "history"),
            type = "list",
            name = "history",
            target_id = prelude.Document.id,
            list_member = M.DataSourceSyncJob,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDataSourceSyncJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDocumentsInput = schema.new({
    id = id.from(_N, "ListDocumentsInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListDocumentsInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "ListDocumentsInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataSourceIds = schema.new({
            id = id.from(_N, "ListDocumentsInput", "dataSourceIds"),
            type = "list",
            name = "dataSourceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "dataSourceIds" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDocumentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDocumentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListDocumentsOutput = schema.new({
    id = id.from(_N, "ListDocumentsOutput"),
    type = "structure",
    members = {
        documentDetailList = schema.new({
            id = id.from(_N, "ListDocumentsOutput", "documentDetailList"),
            type = "list",
            name = "documentDetailList",
            target_id = prelude.Document.id,
            list_member = M.DocumentDetails,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDocumentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupsInput = schema.new({
    id = id.from(_N, "ListGroupsInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListGroupsInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "ListGroupsInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        updatedEarlierThan = schema.new({
            id = id.from(_N, "ListGroupsInput", "updatedEarlierThan"),
            type = "timestamp",
            name = "updatedEarlierThan",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "updatedEarlierThan" },
            },
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "ListGroupsInput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "dataSourceId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListGroupsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListGroupsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.GroupSummary = schema.new({
    id = id.from(_N, "GroupSummary"),
    type = "structure",
    members = {
        groupName = schema.new({
            id = id.from(_N, "GroupSummary", "groupName"),
            type = "string",
            name = "groupName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGroupsOutput = schema.new({
    id = id.from(_N, "ListGroupsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListGroupsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListGroupsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.GroupSummary,
        }),
    },
})

M.ListMessagesInput = schema.new({
    id = id.from(_N, "ListMessagesInput"),
    type = "structure",
    members = {
        conversationId = schema.new({
            id = id.from(_N, "ListMessagesInput", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        applicationId = schema.new({
            id = id.from(_N, "ListMessagesInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "ListMessagesInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "userId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMessagesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListMessagesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.Message = schema.new({
    id = id.from(_N, "Message"),
    type = "structure",
    members = {
        messageId = schema.new({
            id = id.from(_N, "Message", "messageId"),
            type = "string",
            name = "messageId",
            target_id = prelude.String.id,
        }),
        body = schema.new({
            id = id.from(_N, "Message", "body"),
            type = "string",
            name = "body",
            target_id = prelude.String.id,
        }),
        time = schema.new({
            id = id.from(_N, "Message", "time"),
            type = "timestamp",
            name = "time",
            target_id = prelude.Timestamp.id,
        }),
        type = schema.new({
            id = id.from(_N, "Message", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        attachments = schema.new({
            id = id.from(_N, "Message", "attachments"),
            type = "list",
            name = "attachments",
            target_id = prelude.Document.id,
            list_member = M.AttachmentOutput,
        }),
        sourceAttribution = schema.new({
            id = id.from(_N, "Message", "sourceAttribution"),
            type = "list",
            name = "sourceAttribution",
            target_id = prelude.Document.id,
            list_member = M.SourceAttribution,
        }),
        actionReview = schema.new({
            id = id.from(_N, "Message", "actionReview"),
            type = "structure",
            name = "actionReview",
            target_id = id.from(_N, "ActionReview"),
            target = M.ActionReview,
        }),
        actionExecution = schema.new({
            id = id.from(_N, "Message", "actionExecution"),
            type = "structure",
            name = "actionExecution",
            target_id = id.from(_N, "ActionExecution"),
            target = M.ActionExecution,
        }),
    },
})

M.ListMessagesOutput = schema.new({
    id = id.from(_N, "ListMessagesOutput"),
    type = "structure",
    members = {
        messages = schema.new({
            id = id.from(_N, "ListMessagesOutput", "messages"),
            type = "list",
            name = "messages",
            target_id = prelude.Document.id,
            list_member = M.Message,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMessagesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPluginActionsInput = schema.new({
    id = id.from(_N, "ListPluginActionsInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListPluginActionsInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        pluginId = schema.new({
            id = id.from(_N, "ListPluginActionsInput", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPluginActionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPluginActionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListPluginActionsOutput = schema.new({
    id = id.from(_N, "ListPluginActionsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPluginActionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListPluginActionsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ActionSummary,
        }),
    },
})

M.ListPluginTypeActionsInput = schema.new({
    id = id.from(_N, "ListPluginTypeActionsInput"),
    type = "structure",
    members = {
        pluginType = schema.new({
            id = id.from(_N, "ListPluginTypeActionsInput", "pluginType"),
            type = "string",
            name = "pluginType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPluginTypeActionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPluginTypeActionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListPluginTypeActionsOutput = schema.new({
    id = id.from(_N, "ListPluginTypeActionsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPluginTypeActionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListPluginTypeActionsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ActionSummary,
        }),
    },
})

M.ListPluginTypeMetadataInput = schema.new({
    id = id.from(_N, "ListPluginTypeMetadataInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPluginTypeMetadataInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPluginTypeMetadataInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.PluginTypeMetadataSummary = schema.new({
    id = id.from(_N, "PluginTypeMetadataSummary"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "PluginTypeMetadataSummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "PluginTypeMetadataSummary", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "PluginTypeMetadataSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPluginTypeMetadataOutput = schema.new({
    id = id.from(_N, "ListPluginTypeMetadataOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPluginTypeMetadataOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "ListPluginTypeMetadataOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.PluginTypeMetadataSummary,
        }),
    },
})

M.ListSubscriptionsInput = schema.new({
    id = id.from(_N, "ListSubscriptionsInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListSubscriptionsInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSubscriptionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSubscriptionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.Subscription = schema.new({
    id = id.from(_N, "Subscription"),
    type = "structure",
    members = {
        subscriptionId = schema.new({
            id = id.from(_N, "Subscription", "subscriptionId"),
            type = "string",
            name = "subscriptionId",
            target_id = prelude.String.id,
        }),
        subscriptionArn = schema.new({
            id = id.from(_N, "Subscription", "subscriptionArn"),
            type = "string",
            name = "subscriptionArn",
            target_id = prelude.String.id,
        }),
        principal = schema.new({
            id = id.from(_N, "Subscription", "principal"),
            type = "union",
            name = "principal",
            target_id = id.from(_N, "SubscriptionPrincipal"),
            target = M.SubscriptionPrincipal,
        }),
        currentSubscription = schema.new({
            id = id.from(_N, "Subscription", "currentSubscription"),
            type = "structure",
            name = "currentSubscription",
            target_id = id.from(_N, "SubscriptionDetails"),
            target = M.SubscriptionDetails,
        }),
        nextSubscription = schema.new({
            id = id.from(_N, "Subscription", "nextSubscription"),
            type = "structure",
            name = "nextSubscription",
            target_id = id.from(_N, "SubscriptionDetails"),
            target = M.SubscriptionDetails,
        }),
    },
})

M.ListSubscriptionsOutput = schema.new({
    id = id.from(_N, "ListSubscriptionsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSubscriptionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        subscriptions = schema.new({
            id = id.from(_N, "ListSubscriptionsOutput", "subscriptions"),
            type = "list",
            name = "subscriptions",
            target_id = prelude.Document.id,
            list_member = M.Subscription,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        resourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceARN"),
            type = "string",
            name = "resourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
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

M.MessageUsefulnessFeedback = schema.new({
    id = id.from(_N, "MessageUsefulnessFeedback"),
    type = "structure",
    members = {
        usefulness = schema.new({
            id = id.from(_N, "MessageUsefulnessFeedback", "usefulness"),
            type = "string",
            name = "usefulness",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "MessageUsefulnessFeedback", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        comment = schema.new({
            id = id.from(_N, "MessageUsefulnessFeedback", "comment"),
            type = "string",
            name = "comment",
            target_id = prelude.String.id,
        }),
        submittedAt = schema.new({
            id = id.from(_N, "MessageUsefulnessFeedback", "submittedAt"),
            type = "timestamp",
            name = "submittedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutFeedbackInput = schema.new({
    id = id.from(_N, "PutFeedbackInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "PutFeedbackInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "PutFeedbackInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "userId" },
            },
        }),
        conversationId = schema.new({
            id = id.from(_N, "PutFeedbackInput", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        messageId = schema.new({
            id = id.from(_N, "PutFeedbackInput", "messageId"),
            type = "string",
            name = "messageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        messageCopiedAt = schema.new({
            id = id.from(_N, "PutFeedbackInput", "messageCopiedAt"),
            type = "timestamp",
            name = "messageCopiedAt",
            target_id = prelude.Timestamp.id,
        }),
        messageUsefulness = schema.new({
            id = id.from(_N, "PutFeedbackInput", "messageUsefulness"),
            type = "structure",
            name = "messageUsefulness",
            target_id = id.from(_N, "MessageUsefulnessFeedback"),
            target = M.MessageUsefulnessFeedback,
        }),
    },
})

M.PutFeedbackOutput = schema.new({
    id = id.from(_N, "PutFeedbackOutput"),
    type = "structure",
})

M.MemberGroup = schema.new({
    id = id.from(_N, "MemberGroup"),
    type = "structure",
    members = {
        groupName = schema.new({
            id = id.from(_N, "MemberGroup", "groupName"),
            type = "string",
            name = "groupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "MemberGroup", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.MemberUser = schema.new({
    id = id.from(_N, "MemberUser"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "MemberUser", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "MemberUser", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.GroupMembers = schema.new({
    id = id.from(_N, "GroupMembers"),
    type = "structure",
    members = {
        memberGroups = schema.new({
            id = id.from(_N, "GroupMembers", "memberGroups"),
            type = "list",
            name = "memberGroups",
            target_id = prelude.Document.id,
            list_member = M.MemberGroup,
        }),
        memberUsers = schema.new({
            id = id.from(_N, "GroupMembers", "memberUsers"),
            type = "list",
            name = "memberUsers",
            target_id = prelude.Document.id,
            list_member = M.MemberUser,
        }),
        s3PathForGroupMembers = schema.new({
            id = id.from(_N, "GroupMembers", "s3PathForGroupMembers"),
            type = "structure",
            name = "s3PathForGroupMembers",
            target_id = id.from(_N, "S3"),
            target = M.S3,
        }),
    },
})

M.PutGroupInput = schema.new({
    id = id.from(_N, "PutGroupInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "PutGroupInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "PutGroupInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        groupName = schema.new({
            id = id.from(_N, "PutGroupInput", "groupName"),
            type = "string",
            name = "groupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataSourceId = schema.new({
            id = id.from(_N, "PutGroupInput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "PutGroupInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        groupMembers = schema.new({
            id = id.from(_N, "PutGroupInput", "groupMembers"),
            type = "structure",
            name = "groupMembers",
            target_id = id.from(_N, "GroupMembers"),
            target = M.GroupMembers,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "PutGroupInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.PutGroupOutput = schema.new({
    id = id.from(_N, "PutGroupOutput"),
    type = "structure",
})

M.ScoreAttributes = schema.new({
    id = id.from(_N, "ScoreAttributes"),
    type = "structure",
    members = {
        scoreConfidence = schema.new({
            id = id.from(_N, "ScoreAttributes", "scoreConfidence"),
            type = "string",
            name = "scoreConfidence",
            target_id = prelude.String.id,
        }),
    },
})

M.RelevantContent = schema.new({
    id = id.from(_N, "RelevantContent"),
    type = "structure",
    members = {
        content = schema.new({
            id = id.from(_N, "RelevantContent", "content"),
            type = "string",
            name = "content",
            target_id = prelude.String.id,
        }),
        documentId = schema.new({
            id = id.from(_N, "RelevantContent", "documentId"),
            type = "string",
            name = "documentId",
            target_id = prelude.String.id,
        }),
        documentTitle = schema.new({
            id = id.from(_N, "RelevantContent", "documentTitle"),
            type = "string",
            name = "documentTitle",
            target_id = prelude.String.id,
        }),
        documentUri = schema.new({
            id = id.from(_N, "RelevantContent", "documentUri"),
            type = "string",
            name = "documentUri",
            target_id = prelude.String.id,
        }),
        documentAttributes = schema.new({
            id = id.from(_N, "RelevantContent", "documentAttributes"),
            type = "list",
            name = "documentAttributes",
            target_id = prelude.Document.id,
            list_member = M.DocumentAttribute,
        }),
        scoreAttributes = schema.new({
            id = id.from(_N, "RelevantContent", "scoreAttributes"),
            type = "structure",
            name = "scoreAttributes",
            target_id = id.from(_N, "ScoreAttributes"),
            target = M.ScoreAttributes,
        }),
    },
})

M.SearchRelevantContentOutput = schema.new({
    id = id.from(_N, "SearchRelevantContentOutput"),
    type = "structure",
    members = {
        relevantContent = schema.new({
            id = id.from(_N, "SearchRelevantContentOutput", "relevantContent"),
            type = "list",
            name = "relevantContent",
            target_id = prelude.Document.id,
            list_member = M.RelevantContent,
        }),
        nextToken = schema.new({
            id = id.from(_N, "SearchRelevantContentOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartDataSourceSyncJobInput = schema.new({
    id = id.from(_N, "StartDataSourceSyncJobInput"),
    type = "structure",
    members = {
        dataSourceId = schema.new({
            id = id.from(_N, "StartDataSourceSyncJobInput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        applicationId = schema.new({
            id = id.from(_N, "StartDataSourceSyncJobInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "StartDataSourceSyncJobInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StartDataSourceSyncJobOutput = schema.new({
    id = id.from(_N, "StartDataSourceSyncJobOutput"),
    type = "structure",
    members = {
        executionId = schema.new({
            id = id.from(_N, "StartDataSourceSyncJobOutput", "executionId"),
            type = "string",
            name = "executionId",
            target_id = prelude.String.id,
        }),
    },
})

M.StopDataSourceSyncJobInput = schema.new({
    id = id.from(_N, "StopDataSourceSyncJobInput"),
    type = "structure",
    members = {
        dataSourceId = schema.new({
            id = id.from(_N, "StopDataSourceSyncJobInput", "dataSourceId"),
            type = "string",
            name = "dataSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        applicationId = schema.new({
            id = id.from(_N, "StopDataSourceSyncJobInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        indexId = schema.new({
            id = id.from(_N, "StopDataSourceSyncJobInput", "indexId"),
            type = "string",
            name = "indexId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopDataSourceSyncJobOutput = schema.new({
    id = id.from(_N, "StopDataSourceSyncJobOutput"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        resourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceARN"),
            type = "string",
            name = "resourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
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
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        resourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceARN"),
            type = "string",
            name = "resourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
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
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.OrchestrationConfiguration = schema.new({
    id = id.from(_N, "OrchestrationConfiguration"),
    type = "structure",
    members = {
        control = schema.new({
            id = id.from(_N, "OrchestrationConfiguration", "control"),
            type = "string",
            name = "control",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateChatControlsConfigurationInput = schema.new({
    id = id.from(_N, "UpdateChatControlsConfigurationInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdateChatControlsConfigurationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateChatControlsConfigurationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        responseScope = schema.new({
            id = id.from(_N, "UpdateChatControlsConfigurationInput", "responseScope"),
            type = "string",
            name = "responseScope",
            target_id = prelude.String.id,
        }),
        orchestrationConfiguration = schema.new({
            id = id.from(_N, "UpdateChatControlsConfigurationInput", "orchestrationConfiguration"),
            type = "structure",
            name = "orchestrationConfiguration",
            target_id = id.from(_N, "OrchestrationConfiguration"),
            target = M.OrchestrationConfiguration,
        }),
        blockedPhrasesConfigurationUpdate = schema.new({
            id = id.from(_N, "UpdateChatControlsConfigurationInput", "blockedPhrasesConfigurationUpdate"),
            type = "structure",
            name = "blockedPhrasesConfigurationUpdate",
            target_id = id.from(_N, "BlockedPhrasesConfigurationUpdate"),
            target = M.BlockedPhrasesConfigurationUpdate,
        }),
        topicConfigurationsToCreateOrUpdate = schema.new({
            id = id.from(_N, "UpdateChatControlsConfigurationInput", "topicConfigurationsToCreateOrUpdate"),
            type = "list",
            name = "topicConfigurationsToCreateOrUpdate",
            target_id = prelude.Document.id,
            list_member = M.TopicConfiguration,
        }),
        topicConfigurationsToDelete = schema.new({
            id = id.from(_N, "UpdateChatControlsConfigurationInput", "topicConfigurationsToDelete"),
            type = "list",
            name = "topicConfigurationsToDelete",
            target_id = prelude.Document.id,
            list_member = M.TopicConfiguration,
        }),
        creatorModeConfiguration = schema.new({
            id = id.from(_N, "UpdateChatControlsConfigurationInput", "creatorModeConfiguration"),
            type = "structure",
            name = "creatorModeConfiguration",
            target_id = id.from(_N, "CreatorModeConfiguration"),
            target = M.CreatorModeConfiguration,
        }),
        hallucinationReductionConfiguration = schema.new({
            id = id.from(_N, "UpdateChatControlsConfigurationInput", "hallucinationReductionConfiguration"),
            type = "structure",
            name = "hallucinationReductionConfiguration",
            target_id = id.from(_N, "HallucinationReductionConfiguration"),
            target = M.HallucinationReductionConfiguration,
        }),
    },
})

M.UpdateChatControlsConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateChatControlsConfigurationOutput"),
    type = "structure",
})

M.UpdateChatResponseConfigurationInput = schema.new({
    id = id.from(_N, "UpdateChatResponseConfigurationInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdateChatResponseConfigurationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        chatResponseConfigurationId = schema.new({
            id = id.from(_N, "UpdateChatResponseConfigurationInput", "chatResponseConfigurationId"),
            type = "string",
            name = "chatResponseConfigurationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdateChatResponseConfigurationInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        responseConfigurations = schema.new({
            id = id.from(_N, "UpdateChatResponseConfigurationInput", "responseConfigurations"),
            type = "map",
            name = "responseConfigurations",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ResponseConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateChatResponseConfigurationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateChatResponseConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateChatResponseConfigurationOutput"),
    type = "structure",
})

M.UpdateSubscriptionInput = schema.new({
    id = id.from(_N, "UpdateSubscriptionInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdateSubscriptionInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        subscriptionId = schema.new({
            id = id.from(_N, "UpdateSubscriptionInput", "subscriptionId"),
            type = "string",
            name = "subscriptionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "UpdateSubscriptionInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSubscriptionOutput = schema.new({
    id = id.from(_N, "UpdateSubscriptionOutput"),
    type = "structure",
    members = {
        subscriptionArn = schema.new({
            id = id.from(_N, "UpdateSubscriptionOutput", "subscriptionArn"),
            type = "string",
            name = "subscriptionArn",
            target_id = prelude.String.id,
        }),
        currentSubscription = schema.new({
            id = id.from(_N, "UpdateSubscriptionOutput", "currentSubscription"),
            type = "structure",
            name = "currentSubscription",
            target_id = id.from(_N, "SubscriptionDetails"),
            target = M.SubscriptionDetails,
        }),
        nextSubscription = schema.new({
            id = id.from(_N, "UpdateSubscriptionOutput", "nextSubscription"),
            type = "structure",
            name = "nextSubscription",
            target_id = id.from(_N, "SubscriptionDetails"),
            target = M.SubscriptionDetails,
        }),
    },
})

M.UpdateUserInput = schema.new({
    id = id.from(_N, "UpdateUserInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdateUserInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "UpdateUserInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userAliasesToUpdate = schema.new({
            id = id.from(_N, "UpdateUserInput", "userAliasesToUpdate"),
            type = "list",
            name = "userAliasesToUpdate",
            target_id = prelude.Document.id,
            list_member = M.UserAlias,
        }),
        userAliasesToDelete = schema.new({
            id = id.from(_N, "UpdateUserInput", "userAliasesToDelete"),
            type = "list",
            name = "userAliasesToDelete",
            target_id = prelude.Document.id,
            list_member = M.UserAlias,
        }),
    },
})

M.UpdateUserOutput = schema.new({
    id = id.from(_N, "UpdateUserOutput"),
    type = "structure",
    members = {
        userAliasesAdded = schema.new({
            id = id.from(_N, "UpdateUserOutput", "userAliasesAdded"),
            type = "list",
            name = "userAliasesAdded",
            target_id = prelude.Document.id,
            list_member = M.UserAlias,
        }),
        userAliasesUpdated = schema.new({
            id = id.from(_N, "UpdateUserOutput", "userAliasesUpdated"),
            type = "list",
            name = "userAliasesUpdated",
            target_id = prelude.Document.id,
            list_member = M.UserAlias,
        }),
        userAliasesDeleted = schema.new({
            id = id.from(_N, "UpdateUserOutput", "userAliasesDeleted"),
            type = "list",
            name = "userAliasesDeleted",
            target_id = prelude.Document.id,
            list_member = M.UserAlias,
        }),
    },
})

M.AttributeFilter = schema.new({
    id = id.from(_N, "AttributeFilter"),
    type = "structure",
    members = {
        andAllFilters = schema.new({
            id = id.from(_N, "AttributeFilter", "andAllFilters"),
            type = "list",
            name = "andAllFilters",
            target_id = prelude.Document.id,
            list_member = M.AttributeFilter,
        }),
        orAllFilters = schema.new({
            id = id.from(_N, "AttributeFilter", "orAllFilters"),
            type = "list",
            name = "orAllFilters",
            target_id = prelude.Document.id,
            list_member = M.AttributeFilter,
        }),
        notFilter = schema.new({
            id = id.from(_N, "AttributeFilter", "notFilter"),
            type = "structure",
            name = "notFilter",
            target_id = id.from(_N, "AttributeFilter"),
            target = M.AttributeFilter,
        }),
        equalsTo = schema.new({
            id = id.from(_N, "AttributeFilter", "equalsTo"),
            type = "structure",
            name = "equalsTo",
            target_id = id.from(_N, "DocumentAttribute"),
            target = M.DocumentAttribute,
        }),
        containsAll = schema.new({
            id = id.from(_N, "AttributeFilter", "containsAll"),
            type = "structure",
            name = "containsAll",
            target_id = id.from(_N, "DocumentAttribute"),
            target = M.DocumentAttribute,
        }),
        containsAny = schema.new({
            id = id.from(_N, "AttributeFilter", "containsAny"),
            type = "structure",
            name = "containsAny",
            target_id = id.from(_N, "DocumentAttribute"),
            target = M.DocumentAttribute,
        }),
        greaterThan = schema.new({
            id = id.from(_N, "AttributeFilter", "greaterThan"),
            type = "structure",
            name = "greaterThan",
            target_id = id.from(_N, "DocumentAttribute"),
            target = M.DocumentAttribute,
        }),
        greaterThanOrEquals = schema.new({
            id = id.from(_N, "AttributeFilter", "greaterThanOrEquals"),
            type = "structure",
            name = "greaterThanOrEquals",
            target_id = id.from(_N, "DocumentAttribute"),
            target = M.DocumentAttribute,
        }),
        lessThan = schema.new({
            id = id.from(_N, "AttributeFilter", "lessThan"),
            type = "structure",
            name = "lessThan",
            target_id = id.from(_N, "DocumentAttribute"),
            target = M.DocumentAttribute,
        }),
        lessThanOrEquals = schema.new({
            id = id.from(_N, "AttributeFilter", "lessThanOrEquals"),
            type = "structure",
            name = "lessThanOrEquals",
            target_id = id.from(_N, "DocumentAttribute"),
            target = M.DocumentAttribute,
        }),
    },
})

M.ActionFilterConfiguration = schema.new({
    id = id.from(_N, "ActionFilterConfiguration"),
    type = "structure",
    members = {
        documentAttributeFilter = schema.new({
            id = id.from(_N, "ActionFilterConfiguration", "documentAttributeFilter"),
            type = "structure",
            name = "documentAttributeFilter",
            target_id = id.from(_N, "AttributeFilter"),
            target = M.AttributeFilter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChatSyncInput = schema.new({
    id = id.from(_N, "ChatSyncInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ChatSyncInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "ChatSyncInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "userId" },
            },
        }),
        userGroups = schema.new({
            id = id.from(_N, "ChatSyncInput", "userGroups"),
            type = "list",
            name = "userGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "userGroups" },
            },
        }),
        userMessage = schema.new({
            id = id.from(_N, "ChatSyncInput", "userMessage"),
            type = "string",
            name = "userMessage",
            target_id = prelude.String.id,
        }),
        attachments = schema.new({
            id = id.from(_N, "ChatSyncInput", "attachments"),
            type = "list",
            name = "attachments",
            target_id = prelude.Document.id,
            list_member = M.AttachmentInput,
        }),
        actionExecution = schema.new({
            id = id.from(_N, "ChatSyncInput", "actionExecution"),
            type = "structure",
            name = "actionExecution",
            target_id = id.from(_N, "ActionExecution"),
            target = M.ActionExecution,
        }),
        authChallengeResponse = schema.new({
            id = id.from(_N, "ChatSyncInput", "authChallengeResponse"),
            type = "structure",
            name = "authChallengeResponse",
            target_id = id.from(_N, "AuthChallengeResponse"),
            target = M.AuthChallengeResponse,
        }),
        conversationId = schema.new({
            id = id.from(_N, "ChatSyncInput", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
        }),
        parentMessageId = schema.new({
            id = id.from(_N, "ChatSyncInput", "parentMessageId"),
            type = "string",
            name = "parentMessageId",
            target_id = prelude.String.id,
        }),
        attributeFilter = schema.new({
            id = id.from(_N, "ChatSyncInput", "attributeFilter"),
            type = "structure",
            name = "attributeFilter",
            target_id = id.from(_N, "AttributeFilter"),
            target = M.AttributeFilter,
        }),
        chatMode = schema.new({
            id = id.from(_N, "ChatSyncInput", "chatMode"),
            type = "string",
            name = "chatMode",
            target_id = prelude.String.id,
        }),
        chatModeConfiguration = schema.new({
            id = id.from(_N, "ChatSyncInput", "chatModeConfiguration"),
            type = "union",
            name = "chatModeConfiguration",
            target_id = id.from(_N, "ChatModeConfiguration"),
            target = M.ChatModeConfiguration,
        }),
        clientToken = schema.new({
            id = id.from(_N, "ChatSyncInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.ConfigurationEvent = schema.new({
    id = id.from(_N, "ConfigurationEvent"),
    type = "structure",
    members = {
        chatMode = schema.new({
            id = id.from(_N, "ConfigurationEvent", "chatMode"),
            type = "string",
            name = "chatMode",
            target_id = prelude.String.id,
        }),
        chatModeConfiguration = schema.new({
            id = id.from(_N, "ConfigurationEvent", "chatModeConfiguration"),
            type = "union",
            name = "chatModeConfiguration",
            target_id = id.from(_N, "ChatModeConfiguration"),
            target = M.ChatModeConfiguration,
        }),
        attributeFilter = schema.new({
            id = id.from(_N, "ConfigurationEvent", "attributeFilter"),
            type = "structure",
            name = "attributeFilter",
            target_id = id.from(_N, "AttributeFilter"),
            target = M.AttributeFilter,
        }),
    },
})

M.SearchRelevantContentInput = schema.new({
    id = id.from(_N, "SearchRelevantContentInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "SearchRelevantContentInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        queryText = schema.new({
            id = id.from(_N, "SearchRelevantContentInput", "queryText"),
            type = "string",
            name = "queryText",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        contentSource = schema.new({
            id = id.from(_N, "SearchRelevantContentInput", "contentSource"),
            type = "union",
            name = "contentSource",
            target_id = id.from(_N, "ContentSource"),
            target = M.ContentSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attributeFilter = schema.new({
            id = id.from(_N, "SearchRelevantContentInput", "attributeFilter"),
            type = "structure",
            name = "attributeFilter",
            target_id = id.from(_N, "AttributeFilter"),
            target = M.AttributeFilter,
        }),
        maxResults = schema.new({
            id = id.from(_N, "SearchRelevantContentInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 10 },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "SearchRelevantContentInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ActionConfiguration = schema.new({
    id = id.from(_N, "ActionConfiguration"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "ActionConfiguration", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filterConfiguration = schema.new({
            id = id.from(_N, "ActionConfiguration", "filterConfiguration"),
            type = "structure",
            name = "filterConfiguration",
            target_id = id.from(_N, "ActionFilterConfiguration"),
            target = M.ActionFilterConfiguration,
        }),
    },
})

M.ChatInputStream = schema.new({
    id = id.from(_N, "ChatInputStream"),
    type = "union",
    members = {
        configurationEvent = schema.new({
            id = id.from(_N, "ChatInputStream", "configurationEvent"),
            type = "structure",
            name = "configurationEvent",
            target_id = id.from(_N, "ConfigurationEvent"),
            target = M.ConfigurationEvent,
        }),
        textEvent = schema.new({
            id = id.from(_N, "ChatInputStream", "textEvent"),
            type = "structure",
            name = "textEvent",
            target_id = id.from(_N, "TextInputEvent"),
            target = M.TextInputEvent,
        }),
        attachmentEvent = schema.new({
            id = id.from(_N, "ChatInputStream", "attachmentEvent"),
            type = "structure",
            name = "attachmentEvent",
            target_id = id.from(_N, "AttachmentInputEvent"),
            target = M.AttachmentInputEvent,
        }),
        actionExecutionEvent = schema.new({
            id = id.from(_N, "ChatInputStream", "actionExecutionEvent"),
            type = "structure",
            name = "actionExecutionEvent",
            target_id = id.from(_N, "ActionExecutionEvent"),
            target = M.ActionExecutionEvent,
        }),
        endOfInputEvent = schema.new({
            id = id.from(_N, "ChatInputStream", "endOfInputEvent"),
            type = "structure",
            name = "endOfInputEvent",
            target_id = id.from(_N, "EndOfInputEvent"),
            target = M.EndOfInputEvent,
        }),
        authChallengeResponseEvent = schema.new({
            id = id.from(_N, "ChatInputStream", "authChallengeResponseEvent"),
            type = "structure",
            name = "authChallengeResponseEvent",
            target_id = id.from(_N, "AuthChallengeResponseEvent"),
            target = M.AuthChallengeResponseEvent,
        }),
    },
})

M.ChatInput = schema.new({
    id = id.from(_N, "ChatInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ChatInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "ChatInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "userId" },
            },
        }),
        userGroups = schema.new({
            id = id.from(_N, "ChatInput", "userGroups"),
            type = "list",
            name = "userGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "userGroups" },
            },
        }),
        conversationId = schema.new({
            id = id.from(_N, "ChatInput", "conversationId"),
            type = "string",
            name = "conversationId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "conversationId" },
            },
        }),
        parentMessageId = schema.new({
            id = id.from(_N, "ChatInput", "parentMessageId"),
            type = "string",
            name = "parentMessageId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "parentMessageId" },
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "ChatInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        inputStream = schema.new({
            id = id.from(_N, "ChatInput", "inputStream"),
            type = "union",
            name = "inputStream",
            target_id = id.from(_N, "ChatInputStream"),
            target = M.ChatInputStream,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.CreateDataAccessorInput = schema.new({
    id = id.from(_N, "CreateDataAccessorInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreateDataAccessorInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "CreateDataAccessorInput", "principal"),
            type = "string",
            name = "principal",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionConfigurations = schema.new({
            id = id.from(_N, "CreateDataAccessorInput", "actionConfigurations"),
            type = "list",
            name = "actionConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ActionConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateDataAccessorInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "CreateDataAccessorInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authenticationDetail = schema.new({
            id = id.from(_N, "CreateDataAccessorInput", "authenticationDetail"),
            type = "structure",
            name = "authenticationDetail",
            target_id = id.from(_N, "DataAccessorAuthenticationDetail"),
            target = M.DataAccessorAuthenticationDetail,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDataAccessorInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.GetDataAccessorOutput = schema.new({
    id = id.from(_N, "GetDataAccessorOutput"),
    type = "structure",
    members = {
        displayName = schema.new({
            id = id.from(_N, "GetDataAccessorOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        dataAccessorId = schema.new({
            id = id.from(_N, "GetDataAccessorOutput", "dataAccessorId"),
            type = "string",
            name = "dataAccessorId",
            target_id = prelude.String.id,
        }),
        dataAccessorArn = schema.new({
            id = id.from(_N, "GetDataAccessorOutput", "dataAccessorArn"),
            type = "string",
            name = "dataAccessorArn",
            target_id = prelude.String.id,
        }),
        applicationId = schema.new({
            id = id.from(_N, "GetDataAccessorOutput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
        }),
        idcApplicationArn = schema.new({
            id = id.from(_N, "GetDataAccessorOutput", "idcApplicationArn"),
            type = "string",
            name = "idcApplicationArn",
            target_id = prelude.String.id,
        }),
        principal = schema.new({
            id = id.from(_N, "GetDataAccessorOutput", "principal"),
            type = "string",
            name = "principal",
            target_id = prelude.String.id,
        }),
        actionConfigurations = schema.new({
            id = id.from(_N, "GetDataAccessorOutput", "actionConfigurations"),
            type = "list",
            name = "actionConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ActionConfiguration,
        }),
        authenticationDetail = schema.new({
            id = id.from(_N, "GetDataAccessorOutput", "authenticationDetail"),
            type = "structure",
            name = "authenticationDetail",
            target_id = id.from(_N, "DataAccessorAuthenticationDetail"),
            target = M.DataAccessorAuthenticationDetail,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetDataAccessorOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetDataAccessorOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.UpdateDataAccessorInput = schema.new({
    id = id.from(_N, "UpdateDataAccessorInput"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdateDataAccessorInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataAccessorId = schema.new({
            id = id.from(_N, "UpdateDataAccessorInput", "dataAccessorId"),
            type = "string",
            name = "dataAccessorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        actionConfigurations = schema.new({
            id = id.from(_N, "UpdateDataAccessorInput", "actionConfigurations"),
            type = "list",
            name = "actionConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ActionConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authenticationDetail = schema.new({
            id = id.from(_N, "UpdateDataAccessorInput", "authenticationDetail"),
            type = "structure",
            name = "authenticationDetail",
            target_id = id.from(_N, "DataAccessorAuthenticationDetail"),
            target = M.DataAccessorAuthenticationDetail,
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdateDataAccessorInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
    },
})

return M
