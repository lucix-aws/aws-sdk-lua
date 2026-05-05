local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.b2bi"

local M = {}

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

M.X12SplitOptions = schema.new({
    id = id.from(_N, "X12SplitOptions"),
    type = "structure",
    members = {
        splitBy = schema.new({
            id = id.from(_N, "X12SplitOptions", "splitBy"),
            type = "string",
            name = "splitBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.X12CodeListValidationRule = schema.new({
    id = id.from(_N, "X12CodeListValidationRule"),
    type = "structure",
    members = {
        elementId = schema.new({
            id = id.from(_N, "X12CodeListValidationRule", "elementId"),
            type = "string",
            name = "elementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        codesToAdd = schema.new({
            id = id.from(_N, "X12CodeListValidationRule", "codesToAdd"),
            type = "list",
            name = "codesToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        codesToRemove = schema.new({
            id = id.from(_N, "X12CodeListValidationRule", "codesToRemove"),
            type = "list",
            name = "codesToRemove",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.X12ElementLengthValidationRule = schema.new({
    id = id.from(_N, "X12ElementLengthValidationRule"),
    type = "structure",
    members = {
        elementId = schema.new({
            id = id.from(_N, "X12ElementLengthValidationRule", "elementId"),
            type = "string",
            name = "elementId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxLength = schema.new({
            id = id.from(_N, "X12ElementLengthValidationRule", "maxLength"),
            type = "integer",
            name = "maxLength",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        minLength = schema.new({
            id = id.from(_N, "X12ElementLengthValidationRule", "minLength"),
            type = "integer",
            name = "minLength",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.X12ElementRequirementValidationRule = schema.new({
    id = id.from(_N, "X12ElementRequirementValidationRule"),
    type = "structure",
    members = {
        elementPosition = schema.new({
            id = id.from(_N, "X12ElementRequirementValidationRule", "elementPosition"),
            type = "string",
            name = "elementPosition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        requirement = schema.new({
            id = id.from(_N, "X12ElementRequirementValidationRule", "requirement"),
            type = "string",
            name = "requirement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.X12ValidationRule = schema.new({
    id = id.from(_N, "X12ValidationRule"),
    type = "union",
    members = {
        codeListValidationRule = schema.new({
            id = id.from(_N, "X12ValidationRule", "codeListValidationRule"),
            type = "structure",
            name = "codeListValidationRule",
            target_id = id.from(_N, "X12CodeListValidationRule"),
            target = M.X12CodeListValidationRule,
        }),
        elementLengthValidationRule = schema.new({
            id = id.from(_N, "X12ValidationRule", "elementLengthValidationRule"),
            type = "structure",
            name = "elementLengthValidationRule",
            target_id = id.from(_N, "X12ElementLengthValidationRule"),
            target = M.X12ElementLengthValidationRule,
        }),
        elementRequirementValidationRule = schema.new({
            id = id.from(_N, "X12ValidationRule", "elementRequirementValidationRule"),
            type = "structure",
            name = "elementRequirementValidationRule",
            target_id = id.from(_N, "X12ElementRequirementValidationRule"),
            target = M.X12ElementRequirementValidationRule,
        }),
    },
})

M.X12ValidationOptions = schema.new({
    id = id.from(_N, "X12ValidationOptions"),
    type = "structure",
    members = {
        validationRules = schema.new({
            id = id.from(_N, "X12ValidationOptions", "validationRules"),
            type = "list",
            name = "validationRules",
            target_id = prelude.Document.id,
            list_member = M.X12ValidationRule,
        }),
    },
})

M.X12AdvancedOptions = schema.new({
    id = id.from(_N, "X12AdvancedOptions"),
    type = "structure",
    members = {
        splitOptions = schema.new({
            id = id.from(_N, "X12AdvancedOptions", "splitOptions"),
            type = "structure",
            name = "splitOptions",
            target_id = id.from(_N, "X12SplitOptions"),
            target = M.X12SplitOptions,
        }),
        validationOptions = schema.new({
            id = id.from(_N, "X12AdvancedOptions", "validationOptions"),
            type = "structure",
            name = "validationOptions",
            target_id = id.from(_N, "X12ValidationOptions"),
            target = M.X12ValidationOptions,
        }),
    },
})

M.AdvancedOptions = schema.new({
    id = id.from(_N, "AdvancedOptions"),
    type = "structure",
    members = {
        x12 = schema.new({
            id = id.from(_N, "AdvancedOptions", "x12"),
            type = "structure",
            name = "x12",
            target_id = id.from(_N, "X12AdvancedOptions"),
            target = M.X12AdvancedOptions,
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
    },
})

M.S3Location = schema.new({
    id = id.from(_N, "S3Location"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "S3Location", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
        }),
        key = schema.new({
            id = id.from(_N, "S3Location", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
    },
})

M.X12Details = schema.new({
    id = id.from(_N, "X12Details"),
    type = "structure",
    members = {
        transactionSet = schema.new({
            id = id.from(_N, "X12Details", "transactionSet"),
            type = "string",
            name = "transactionSet",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "X12Details", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
    },
})

M.EdiType = schema.new({
    id = id.from(_N, "EdiType"),
    type = "union",
    members = {
        x12Details = schema.new({
            id = id.from(_N, "EdiType", "x12Details"),
            type = "structure",
            name = "x12Details",
            target_id = id.from(_N, "X12Details"),
            target = M.X12Details,
        }),
    },
})

M.EdiConfiguration = schema.new({
    id = id.from(_N, "EdiConfiguration"),
    type = "structure",
    members = {
        capabilityDirection = schema.new({
            id = id.from(_N, "EdiConfiguration", "capabilityDirection"),
            type = "string",
            name = "capabilityDirection",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "EdiConfiguration", "type"),
            type = "union",
            name = "type",
            target_id = id.from(_N, "EdiType"),
            target = M.EdiType,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inputLocation = schema.new({
            id = id.from(_N, "EdiConfiguration", "inputLocation"),
            type = "structure",
            name = "inputLocation",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputLocation = schema.new({
            id = id.from(_N, "EdiConfiguration", "outputLocation"),
            type = "structure",
            name = "outputLocation",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        transformerId = schema.new({
            id = id.from(_N, "EdiConfiguration", "transformerId"),
            type = "string",
            name = "transformerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CapabilityConfiguration = schema.new({
    id = id.from(_N, "CapabilityConfiguration"),
    type = "union",
    members = {
        edi = schema.new({
            id = id.from(_N, "CapabilityConfiguration", "edi"),
            type = "structure",
            name = "edi",
            target_id = id.from(_N, "EdiConfiguration"),
            target = M.EdiConfiguration,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateCapabilityInput = schema.new({
    id = id.from(_N, "CreateCapabilityInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "CapabilityConfiguration"),
            target = M.CapabilityConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instructionsDocuments = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "instructionsDocuments"),
            type = "list",
            name = "instructionsDocuments",
            target_id = prelude.Document.id,
            list_member = M.S3Location,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateCapabilityInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateCapabilityOutput = schema.new({
    id = id.from(_N, "CreateCapabilityOutput"),
    type = "structure",
    members = {
        capabilityId = schema.new({
            id = id.from(_N, "CreateCapabilityOutput", "capabilityId"),
            type = "string",
            name = "capabilityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilityArn = schema.new({
            id = id.from(_N, "CreateCapabilityOutput", "capabilityArn"),
            type = "string",
            name = "capabilityArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateCapabilityOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreateCapabilityOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "CreateCapabilityOutput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "CapabilityConfiguration"),
            target = M.CapabilityConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instructionsDocuments = schema.new({
            id = id.from(_N, "CreateCapabilityOutput", "instructionsDocuments"),
            type = "list",
            name = "instructionsDocuments",
            target_id = prelude.Document.id,
            list_member = M.S3Location,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateCapabilityOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
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
        retryAfterSeconds = schema.new({
            id = id.from(_N, "InternalServerException", "retryAfterSeconds"),
            type = "integer",
            name = "retryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
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
        serviceCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "quotaCode"),
            type = "string",
            name = "quotaCode",
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
        retryAfterSeconds = schema.new({
            id = id.from(_N, "ThrottlingException", "retryAfterSeconds"),
            type = "integer",
            name = "retryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
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
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteCapabilityInput = schema.new({
    id = id.from(_N, "DeleteCapabilityInput"),
    type = "structure",
    members = {
        capabilityId = schema.new({
            id = id.from(_N, "DeleteCapabilityInput", "capabilityId"),
            type = "string",
            name = "capabilityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteCapabilityOutput = schema.new({
    id = id.from(_N, "DeleteCapabilityOutput"),
    type = "structure",
})

M.GetCapabilityInput = schema.new({
    id = id.from(_N, "GetCapabilityInput"),
    type = "structure",
    members = {
        capabilityId = schema.new({
            id = id.from(_N, "GetCapabilityInput", "capabilityId"),
            type = "string",
            name = "capabilityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCapabilityOutput = schema.new({
    id = id.from(_N, "GetCapabilityOutput"),
    type = "structure",
    members = {
        capabilityId = schema.new({
            id = id.from(_N, "GetCapabilityOutput", "capabilityId"),
            type = "string",
            name = "capabilityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilityArn = schema.new({
            id = id.from(_N, "GetCapabilityOutput", "capabilityArn"),
            type = "string",
            name = "capabilityArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetCapabilityOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "GetCapabilityOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "GetCapabilityOutput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "CapabilityConfiguration"),
            target = M.CapabilityConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instructionsDocuments = schema.new({
            id = id.from(_N, "GetCapabilityOutput", "instructionsDocuments"),
            type = "list",
            name = "instructionsDocuments",
            target_id = prelude.Document.id,
            list_member = M.S3Location,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetCapabilityOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "GetCapabilityOutput", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListCapabilitiesInput = schema.new({
    id = id.from(_N, "ListCapabilitiesInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListCapabilitiesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListCapabilitiesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.CapabilitySummary = schema.new({
    id = id.from(_N, "CapabilitySummary"),
    type = "structure",
    members = {
        capabilityId = schema.new({
            id = id.from(_N, "CapabilitySummary", "capabilityId"),
            type = "string",
            name = "capabilityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CapabilitySummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CapabilitySummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CapabilitySummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "CapabilitySummary", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListCapabilitiesOutput = schema.new({
    id = id.from(_N, "ListCapabilitiesOutput"),
    type = "structure",
    members = {
        capabilities = schema.new({
            id = id.from(_N, "ListCapabilitiesOutput", "capabilities"),
            type = "list",
            name = "capabilities",
            target_id = prelude.Document.id,
            list_member = M.CapabilitySummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCapabilitiesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateCapabilityInput = schema.new({
    id = id.from(_N, "UpdateCapabilityInput"),
    type = "structure",
    members = {
        capabilityId = schema.new({
            id = id.from(_N, "UpdateCapabilityInput", "capabilityId"),
            type = "string",
            name = "capabilityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateCapabilityInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        configuration = schema.new({
            id = id.from(_N, "UpdateCapabilityInput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "CapabilityConfiguration"),
            target = M.CapabilityConfiguration,
        }),
        instructionsDocuments = schema.new({
            id = id.from(_N, "UpdateCapabilityInput", "instructionsDocuments"),
            type = "list",
            name = "instructionsDocuments",
            target_id = prelude.Document.id,
            list_member = M.S3Location,
        }),
    },
})

M.UpdateCapabilityOutput = schema.new({
    id = id.from(_N, "UpdateCapabilityOutput"),
    type = "structure",
    members = {
        capabilityId = schema.new({
            id = id.from(_N, "UpdateCapabilityOutput", "capabilityId"),
            type = "string",
            name = "capabilityId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilityArn = schema.new({
            id = id.from(_N, "UpdateCapabilityOutput", "capabilityArn"),
            type = "string",
            name = "capabilityArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateCapabilityOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "UpdateCapabilityOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "UpdateCapabilityOutput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "CapabilityConfiguration"),
            target = M.CapabilityConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instructionsDocuments = schema.new({
            id = id.from(_N, "UpdateCapabilityOutput", "instructionsDocuments"),
            type = "list",
            name = "instructionsDocuments",
            target_id = prelude.Document.id,
            list_member = M.S3Location,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateCapabilityOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "UpdateCapabilityOutput", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.TemplateDetails = schema.new({
    id = id.from(_N, "TemplateDetails"),
    type = "union",
    members = {
        x12 = schema.new({
            id = id.from(_N, "TemplateDetails", "x12"),
            type = "structure",
            name = "x12",
            target_id = id.from(_N, "X12Details"),
            target = M.X12Details,
        }),
    },
})

M.CreateStarterMappingTemplateInput = schema.new({
    id = id.from(_N, "CreateStarterMappingTemplateInput"),
    type = "structure",
    members = {
        outputSampleLocation = schema.new({
            id = id.from(_N, "CreateStarterMappingTemplateInput", "outputSampleLocation"),
            type = "structure",
            name = "outputSampleLocation",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
        }),
        mappingType = schema.new({
            id = id.from(_N, "CreateStarterMappingTemplateInput", "mappingType"),
            type = "string",
            name = "mappingType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        templateDetails = schema.new({
            id = id.from(_N, "CreateStarterMappingTemplateInput", "templateDetails"),
            type = "union",
            name = "templateDetails",
            target_id = id.from(_N, "TemplateDetails"),
            target = M.TemplateDetails,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateStarterMappingTemplateOutput = schema.new({
    id = id.from(_N, "CreateStarterMappingTemplateOutput"),
    type = "structure",
    members = {
        mappingTemplate = schema.new({
            id = id.from(_N, "CreateStarterMappingTemplateOutput", "mappingTemplate"),
            type = "string",
            name = "mappingTemplate",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GenerateMappingInput = schema.new({
    id = id.from(_N, "GenerateMappingInput"),
    type = "structure",
    members = {
        inputFileContent = schema.new({
            id = id.from(_N, "GenerateMappingInput", "inputFileContent"),
            type = "string",
            name = "inputFileContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputFileContent = schema.new({
            id = id.from(_N, "GenerateMappingInput", "outputFileContent"),
            type = "string",
            name = "outputFileContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mappingType = schema.new({
            id = id.from(_N, "GenerateMappingInput", "mappingType"),
            type = "string",
            name = "mappingType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GenerateMappingOutput = schema.new({
    id = id.from(_N, "GenerateMappingOutput"),
    type = "structure",
    members = {
        mappingTemplate = schema.new({
            id = id.from(_N, "GenerateMappingOutput", "mappingTemplate"),
            type = "string",
            name = "mappingTemplate",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mappingAccuracy = schema.new({
            id = id.from(_N, "GenerateMappingOutput", "mappingAccuracy"),
            type = "float",
            name = "mappingAccuracy",
            target_id = prelude.Float.id,
        }),
    },
})

M.GetTransformerJobInput = schema.new({
    id = id.from(_N, "GetTransformerJobInput"),
    type = "structure",
    members = {
        transformerJobId = schema.new({
            id = id.from(_N, "GetTransformerJobInput", "transformerJobId"),
            type = "string",
            name = "transformerJobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        transformerId = schema.new({
            id = id.from(_N, "GetTransformerJobInput", "transformerId"),
            type = "string",
            name = "transformerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "transformerId" },
            },
        }),
    },
})

M.GetTransformerJobOutput = schema.new({
    id = id.from(_N, "GetTransformerJobOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "GetTransformerJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputFiles = schema.new({
            id = id.from(_N, "GetTransformerJobOutput", "outputFiles"),
            type = "list",
            name = "outputFiles",
            target_id = prelude.Document.id,
            list_member = M.S3Location,
        }),
        message = schema.new({
            id = id.from(_N, "GetTransformerJobOutput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
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
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.X12AcknowledgmentOptions = schema.new({
    id = id.from(_N, "X12AcknowledgmentOptions"),
    type = "structure",
    members = {
        functionalAcknowledgment = schema.new({
            id = id.from(_N, "X12AcknowledgmentOptions", "functionalAcknowledgment"),
            type = "string",
            name = "functionalAcknowledgment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        technicalAcknowledgment = schema.new({
            id = id.from(_N, "X12AcknowledgmentOptions", "technicalAcknowledgment"),
            type = "string",
            name = "technicalAcknowledgment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.X12InboundEdiOptions = schema.new({
    id = id.from(_N, "X12InboundEdiOptions"),
    type = "structure",
    members = {
        acknowledgmentOptions = schema.new({
            id = id.from(_N, "X12InboundEdiOptions", "acknowledgmentOptions"),
            type = "structure",
            name = "acknowledgmentOptions",
            target_id = id.from(_N, "X12AcknowledgmentOptions"),
            target = M.X12AcknowledgmentOptions,
        }),
    },
})

M.InboundEdiOptions = schema.new({
    id = id.from(_N, "InboundEdiOptions"),
    type = "structure",
    members = {
        x12 = schema.new({
            id = id.from(_N, "InboundEdiOptions", "x12"),
            type = "structure",
            name = "x12",
            target_id = id.from(_N, "X12InboundEdiOptions"),
            target = M.X12InboundEdiOptions,
        }),
    },
})

M.X12ControlNumbers = schema.new({
    id = id.from(_N, "X12ControlNumbers"),
    type = "structure",
    members = {
        startingInterchangeControlNumber = schema.new({
            id = id.from(_N, "X12ControlNumbers", "startingInterchangeControlNumber"),
            type = "integer",
            name = "startingInterchangeControlNumber",
            target_id = prelude.Integer.id,
        }),
        startingFunctionalGroupControlNumber = schema.new({
            id = id.from(_N, "X12ControlNumbers", "startingFunctionalGroupControlNumber"),
            type = "integer",
            name = "startingFunctionalGroupControlNumber",
            target_id = prelude.Integer.id,
        }),
        startingTransactionSetControlNumber = schema.new({
            id = id.from(_N, "X12ControlNumbers", "startingTransactionSetControlNumber"),
            type = "integer",
            name = "startingTransactionSetControlNumber",
            target_id = prelude.Integer.id,
        }),
    },
})

M.X12Delimiters = schema.new({
    id = id.from(_N, "X12Delimiters"),
    type = "structure",
    members = {
        componentSeparator = schema.new({
            id = id.from(_N, "X12Delimiters", "componentSeparator"),
            type = "string",
            name = "componentSeparator",
            target_id = prelude.String.id,
        }),
        dataElementSeparator = schema.new({
            id = id.from(_N, "X12Delimiters", "dataElementSeparator"),
            type = "string",
            name = "dataElementSeparator",
            target_id = prelude.String.id,
        }),
        segmentTerminator = schema.new({
            id = id.from(_N, "X12Delimiters", "segmentTerminator"),
            type = "string",
            name = "segmentTerminator",
            target_id = prelude.String.id,
        }),
    },
})

M.X12FunctionalGroupHeaders = schema.new({
    id = id.from(_N, "X12FunctionalGroupHeaders"),
    type = "structure",
    members = {
        applicationSenderCode = schema.new({
            id = id.from(_N, "X12FunctionalGroupHeaders", "applicationSenderCode"),
            type = "string",
            name = "applicationSenderCode",
            target_id = prelude.String.id,
        }),
        applicationReceiverCode = schema.new({
            id = id.from(_N, "X12FunctionalGroupHeaders", "applicationReceiverCode"),
            type = "string",
            name = "applicationReceiverCode",
            target_id = prelude.String.id,
        }),
        responsibleAgencyCode = schema.new({
            id = id.from(_N, "X12FunctionalGroupHeaders", "responsibleAgencyCode"),
            type = "string",
            name = "responsibleAgencyCode",
            target_id = prelude.String.id,
        }),
    },
})

M.X12InterchangeControlHeaders = schema.new({
    id = id.from(_N, "X12InterchangeControlHeaders"),
    type = "structure",
    members = {
        senderIdQualifier = schema.new({
            id = id.from(_N, "X12InterchangeControlHeaders", "senderIdQualifier"),
            type = "string",
            name = "senderIdQualifier",
            target_id = prelude.String.id,
        }),
        senderId = schema.new({
            id = id.from(_N, "X12InterchangeControlHeaders", "senderId"),
            type = "string",
            name = "senderId",
            target_id = prelude.String.id,
        }),
        receiverIdQualifier = schema.new({
            id = id.from(_N, "X12InterchangeControlHeaders", "receiverIdQualifier"),
            type = "string",
            name = "receiverIdQualifier",
            target_id = prelude.String.id,
        }),
        receiverId = schema.new({
            id = id.from(_N, "X12InterchangeControlHeaders", "receiverId"),
            type = "string",
            name = "receiverId",
            target_id = prelude.String.id,
        }),
        repetitionSeparator = schema.new({
            id = id.from(_N, "X12InterchangeControlHeaders", "repetitionSeparator"),
            type = "string",
            name = "repetitionSeparator",
            target_id = prelude.String.id,
        }),
        acknowledgmentRequestedCode = schema.new({
            id = id.from(_N, "X12InterchangeControlHeaders", "acknowledgmentRequestedCode"),
            type = "string",
            name = "acknowledgmentRequestedCode",
            target_id = prelude.String.id,
        }),
        usageIndicatorCode = schema.new({
            id = id.from(_N, "X12InterchangeControlHeaders", "usageIndicatorCode"),
            type = "string",
            name = "usageIndicatorCode",
            target_id = prelude.String.id,
        }),
    },
})

M.X12OutboundEdiHeaders = schema.new({
    id = id.from(_N, "X12OutboundEdiHeaders"),
    type = "structure",
    members = {
        interchangeControlHeaders = schema.new({
            id = id.from(_N, "X12OutboundEdiHeaders", "interchangeControlHeaders"),
            type = "structure",
            name = "interchangeControlHeaders",
            target_id = id.from(_N, "X12InterchangeControlHeaders"),
            target = M.X12InterchangeControlHeaders,
        }),
        functionalGroupHeaders = schema.new({
            id = id.from(_N, "X12OutboundEdiHeaders", "functionalGroupHeaders"),
            type = "structure",
            name = "functionalGroupHeaders",
            target_id = id.from(_N, "X12FunctionalGroupHeaders"),
            target = M.X12FunctionalGroupHeaders,
        }),
        delimiters = schema.new({
            id = id.from(_N, "X12OutboundEdiHeaders", "delimiters"),
            type = "structure",
            name = "delimiters",
            target_id = id.from(_N, "X12Delimiters"),
            target = M.X12Delimiters,
        }),
        validateEdi = schema.new({
            id = id.from(_N, "X12OutboundEdiHeaders", "validateEdi"),
            type = "boolean",
            name = "validateEdi",
            target_id = prelude.Boolean.id,
        }),
        controlNumbers = schema.new({
            id = id.from(_N, "X12OutboundEdiHeaders", "controlNumbers"),
            type = "structure",
            name = "controlNumbers",
            target_id = id.from(_N, "X12ControlNumbers"),
            target = M.X12ControlNumbers,
        }),
        gs05TimeFormat = schema.new({
            id = id.from(_N, "X12OutboundEdiHeaders", "gs05TimeFormat"),
            type = "string",
            name = "gs05TimeFormat",
            target_id = prelude.String.id,
        }),
    },
})

M.WrapOptions = schema.new({
    id = id.from(_N, "WrapOptions"),
    type = "structure",
    members = {
        wrapBy = schema.new({
            id = id.from(_N, "WrapOptions", "wrapBy"),
            type = "string",
            name = "wrapBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lineTerminator = schema.new({
            id = id.from(_N, "WrapOptions", "lineTerminator"),
            type = "string",
            name = "lineTerminator",
            target_id = prelude.String.id,
        }),
        lineLength = schema.new({
            id = id.from(_N, "WrapOptions", "lineLength"),
            type = "integer",
            name = "lineLength",
            target_id = prelude.Integer.id,
        }),
    },
})

M.X12Envelope = schema.new({
    id = id.from(_N, "X12Envelope"),
    type = "structure",
    members = {
        common = schema.new({
            id = id.from(_N, "X12Envelope", "common"),
            type = "structure",
            name = "common",
            target_id = id.from(_N, "X12OutboundEdiHeaders"),
            target = M.X12OutboundEdiHeaders,
        }),
        wrapOptions = schema.new({
            id = id.from(_N, "X12Envelope", "wrapOptions"),
            type = "structure",
            name = "wrapOptions",
            target_id = id.from(_N, "WrapOptions"),
            target = M.WrapOptions,
        }),
    },
})

M.OutboundEdiOptions = schema.new({
    id = id.from(_N, "OutboundEdiOptions"),
    type = "union",
    members = {
        x12 = schema.new({
            id = id.from(_N, "OutboundEdiOptions", "x12"),
            type = "structure",
            name = "x12",
            target_id = id.from(_N, "X12Envelope"),
            target = M.X12Envelope,
        }),
    },
})

M.CapabilityOptions = schema.new({
    id = id.from(_N, "CapabilityOptions"),
    type = "structure",
    members = {
        outboundEdi = schema.new({
            id = id.from(_N, "CapabilityOptions", "outboundEdi"),
            type = "union",
            name = "outboundEdi",
            target_id = id.from(_N, "OutboundEdiOptions"),
            target = M.OutboundEdiOptions,
        }),
        inboundEdi = schema.new({
            id = id.from(_N, "CapabilityOptions", "inboundEdi"),
            type = "structure",
            name = "inboundEdi",
            target_id = id.from(_N, "InboundEdiOptions"),
            target = M.InboundEdiOptions,
        }),
    },
})

M.CreatePartnershipInput = schema.new({
    id = id.from(_N, "CreatePartnershipInput"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "CreatePartnershipInput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreatePartnershipInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        email = schema.new({
            id = id.from(_N, "CreatePartnershipInput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        phone = schema.new({
            id = id.from(_N, "CreatePartnershipInput", "phone"),
            type = "string",
            name = "phone",
            target_id = prelude.String.id,
        }),
        capabilities = schema.new({
            id = id.from(_N, "CreatePartnershipInput", "capabilities"),
            type = "list",
            name = "capabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilityOptions = schema.new({
            id = id.from(_N, "CreatePartnershipInput", "capabilityOptions"),
            type = "structure",
            name = "capabilityOptions",
            target_id = id.from(_N, "CapabilityOptions"),
            target = M.CapabilityOptions,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreatePartnershipInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreatePartnershipInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreatePartnershipOutput = schema.new({
    id = id.from(_N, "CreatePartnershipOutput"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "CreatePartnershipOutput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        partnershipId = schema.new({
            id = id.from(_N, "CreatePartnershipOutput", "partnershipId"),
            type = "string",
            name = "partnershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        partnershipArn = schema.new({
            id = id.from(_N, "CreatePartnershipOutput", "partnershipArn"),
            type = "string",
            name = "partnershipArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreatePartnershipOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "CreatePartnershipOutput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        phone = schema.new({
            id = id.from(_N, "CreatePartnershipOutput", "phone"),
            type = "string",
            name = "phone",
            target_id = prelude.String.id,
        }),
        capabilities = schema.new({
            id = id.from(_N, "CreatePartnershipOutput", "capabilities"),
            type = "list",
            name = "capabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        capabilityOptions = schema.new({
            id = id.from(_N, "CreatePartnershipOutput", "capabilityOptions"),
            type = "structure",
            name = "capabilityOptions",
            target_id = id.from(_N, "CapabilityOptions"),
            target = M.CapabilityOptions,
        }),
        tradingPartnerId = schema.new({
            id = id.from(_N, "CreatePartnershipOutput", "tradingPartnerId"),
            type = "string",
            name = "tradingPartnerId",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreatePartnershipOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePartnershipInput = schema.new({
    id = id.from(_N, "DeletePartnershipInput"),
    type = "structure",
    members = {
        partnershipId = schema.new({
            id = id.from(_N, "DeletePartnershipInput", "partnershipId"),
            type = "string",
            name = "partnershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeletePartnershipOutput = schema.new({
    id = id.from(_N, "DeletePartnershipOutput"),
    type = "structure",
})

M.GetPartnershipInput = schema.new({
    id = id.from(_N, "GetPartnershipInput"),
    type = "structure",
    members = {
        partnershipId = schema.new({
            id = id.from(_N, "GetPartnershipInput", "partnershipId"),
            type = "string",
            name = "partnershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetPartnershipOutput = schema.new({
    id = id.from(_N, "GetPartnershipOutput"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "GetPartnershipOutput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        partnershipId = schema.new({
            id = id.from(_N, "GetPartnershipOutput", "partnershipId"),
            type = "string",
            name = "partnershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        partnershipArn = schema.new({
            id = id.from(_N, "GetPartnershipOutput", "partnershipArn"),
            type = "string",
            name = "partnershipArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetPartnershipOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "GetPartnershipOutput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        phone = schema.new({
            id = id.from(_N, "GetPartnershipOutput", "phone"),
            type = "string",
            name = "phone",
            target_id = prelude.String.id,
        }),
        capabilities = schema.new({
            id = id.from(_N, "GetPartnershipOutput", "capabilities"),
            type = "list",
            name = "capabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        capabilityOptions = schema.new({
            id = id.from(_N, "GetPartnershipOutput", "capabilityOptions"),
            type = "structure",
            name = "capabilityOptions",
            target_id = id.from(_N, "CapabilityOptions"),
            target = M.CapabilityOptions,
        }),
        tradingPartnerId = schema.new({
            id = id.from(_N, "GetPartnershipOutput", "tradingPartnerId"),
            type = "string",
            name = "tradingPartnerId",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetPartnershipOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "GetPartnershipOutput", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListPartnershipsInput = schema.new({
    id = id.from(_N, "ListPartnershipsInput"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "ListPartnershipsInput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "profileId" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPartnershipsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPartnershipsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.PartnershipSummary = schema.new({
    id = id.from(_N, "PartnershipSummary"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "PartnershipSummary", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        partnershipId = schema.new({
            id = id.from(_N, "PartnershipSummary", "partnershipId"),
            type = "string",
            name = "partnershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "PartnershipSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        capabilities = schema.new({
            id = id.from(_N, "PartnershipSummary", "capabilities"),
            type = "list",
            name = "capabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        capabilityOptions = schema.new({
            id = id.from(_N, "PartnershipSummary", "capabilityOptions"),
            type = "structure",
            name = "capabilityOptions",
            target_id = id.from(_N, "CapabilityOptions"),
            target = M.CapabilityOptions,
        }),
        tradingPartnerId = schema.new({
            id = id.from(_N, "PartnershipSummary", "tradingPartnerId"),
            type = "string",
            name = "tradingPartnerId",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "PartnershipSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "PartnershipSummary", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListPartnershipsOutput = schema.new({
    id = id.from(_N, "ListPartnershipsOutput"),
    type = "structure",
    members = {
        partnerships = schema.new({
            id = id.from(_N, "ListPartnershipsOutput", "partnerships"),
            type = "list",
            name = "partnerships",
            target_id = prelude.Document.id,
            list_member = M.PartnershipSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPartnershipsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePartnershipInput = schema.new({
    id = id.from(_N, "UpdatePartnershipInput"),
    type = "structure",
    members = {
        partnershipId = schema.new({
            id = id.from(_N, "UpdatePartnershipInput", "partnershipId"),
            type = "string",
            name = "partnershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdatePartnershipInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        capabilities = schema.new({
            id = id.from(_N, "UpdatePartnershipInput", "capabilities"),
            type = "list",
            name = "capabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        capabilityOptions = schema.new({
            id = id.from(_N, "UpdatePartnershipInput", "capabilityOptions"),
            type = "structure",
            name = "capabilityOptions",
            target_id = id.from(_N, "CapabilityOptions"),
            target = M.CapabilityOptions,
        }),
    },
})

M.UpdatePartnershipOutput = schema.new({
    id = id.from(_N, "UpdatePartnershipOutput"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "UpdatePartnershipOutput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        partnershipId = schema.new({
            id = id.from(_N, "UpdatePartnershipOutput", "partnershipId"),
            type = "string",
            name = "partnershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        partnershipArn = schema.new({
            id = id.from(_N, "UpdatePartnershipOutput", "partnershipArn"),
            type = "string",
            name = "partnershipArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdatePartnershipOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "UpdatePartnershipOutput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        phone = schema.new({
            id = id.from(_N, "UpdatePartnershipOutput", "phone"),
            type = "string",
            name = "phone",
            target_id = prelude.String.id,
        }),
        capabilities = schema.new({
            id = id.from(_N, "UpdatePartnershipOutput", "capabilities"),
            type = "list",
            name = "capabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        capabilityOptions = schema.new({
            id = id.from(_N, "UpdatePartnershipOutput", "capabilityOptions"),
            type = "structure",
            name = "capabilityOptions",
            target_id = id.from(_N, "CapabilityOptions"),
            target = M.CapabilityOptions,
        }),
        tradingPartnerId = schema.new({
            id = id.from(_N, "UpdatePartnershipOutput", "tradingPartnerId"),
            type = "string",
            name = "tradingPartnerId",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdatePartnershipOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "UpdatePartnershipOutput", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.CreateProfileInput = schema.new({
    id = id.from(_N, "CreateProfileInput"),
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
        email = schema.new({
            id = id.from(_N, "CreateProfileInput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        phone = schema.new({
            id = id.from(_N, "CreateProfileInput", "phone"),
            type = "string",
            name = "phone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        businessName = schema.new({
            id = id.from(_N, "CreateProfileInput", "businessName"),
            type = "string",
            name = "businessName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logging = schema.new({
            id = id.from(_N, "CreateProfileInput", "logging"),
            type = "string",
            name = "logging",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateProfileInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateProfileInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateProfileOutput = schema.new({
    id = id.from(_N, "CreateProfileOutput"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "CreateProfileOutput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        profileArn = schema.new({
            id = id.from(_N, "CreateProfileOutput", "profileArn"),
            type = "string",
            name = "profileArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateProfileOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        businessName = schema.new({
            id = id.from(_N, "CreateProfileOutput", "businessName"),
            type = "string",
            name = "businessName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        phone = schema.new({
            id = id.from(_N, "CreateProfileOutput", "phone"),
            type = "string",
            name = "phone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        email = schema.new({
            id = id.from(_N, "CreateProfileOutput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        logging = schema.new({
            id = id.from(_N, "CreateProfileOutput", "logging"),
            type = "string",
            name = "logging",
            target_id = prelude.String.id,
        }),
        logGroupName = schema.new({
            id = id.from(_N, "CreateProfileOutput", "logGroupName"),
            type = "string",
            name = "logGroupName",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateProfileOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProfileInput = schema.new({
    id = id.from(_N, "DeleteProfileInput"),
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
    id = id.from(_N, "DeleteProfileOutput"),
    type = "structure",
})

M.GetProfileInput = schema.new({
    id = id.from(_N, "GetProfileInput"),
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
    id = id.from(_N, "GetProfileOutput"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "GetProfileOutput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        profileArn = schema.new({
            id = id.from(_N, "GetProfileOutput", "profileArn"),
            type = "string",
            name = "profileArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetProfileOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        email = schema.new({
            id = id.from(_N, "GetProfileOutput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        phone = schema.new({
            id = id.from(_N, "GetProfileOutput", "phone"),
            type = "string",
            name = "phone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        businessName = schema.new({
            id = id.from(_N, "GetProfileOutput", "businessName"),
            type = "string",
            name = "businessName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logging = schema.new({
            id = id.from(_N, "GetProfileOutput", "logging"),
            type = "string",
            name = "logging",
            target_id = prelude.String.id,
        }),
        logGroupName = schema.new({
            id = id.from(_N, "GetProfileOutput", "logGroupName"),
            type = "string",
            name = "logGroupName",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetProfileOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "GetProfileOutput", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListProfilesInput = schema.new({
    id = id.from(_N, "ListProfilesInput"),
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
        maxResults = schema.new({
            id = id.from(_N, "ListProfilesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ProfileSummary = schema.new({
    id = id.from(_N, "ProfileSummary"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "ProfileSummary", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "ProfileSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        businessName = schema.new({
            id = id.from(_N, "ProfileSummary", "businessName"),
            type = "string",
            name = "businessName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logging = schema.new({
            id = id.from(_N, "ProfileSummary", "logging"),
            type = "string",
            name = "logging",
            target_id = prelude.String.id,
        }),
        logGroupName = schema.new({
            id = id.from(_N, "ProfileSummary", "logGroupName"),
            type = "string",
            name = "logGroupName",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ProfileSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "ProfileSummary", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListProfilesOutput = schema.new({
    id = id.from(_N, "ListProfilesOutput"),
    type = "structure",
    members = {
        profiles = schema.new({
            id = id.from(_N, "ListProfilesOutput", "profiles"),
            type = "list",
            name = "profiles",
            target_id = prelude.Document.id,
            list_member = M.ProfileSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListProfilesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateProfileInput = schema.new({
    id = id.from(_N, "UpdateProfileInput"),
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
        email = schema.new({
            id = id.from(_N, "UpdateProfileInput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        phone = schema.new({
            id = id.from(_N, "UpdateProfileInput", "phone"),
            type = "string",
            name = "phone",
            target_id = prelude.String.id,
        }),
        businessName = schema.new({
            id = id.from(_N, "UpdateProfileInput", "businessName"),
            type = "string",
            name = "businessName",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateProfileOutput = schema.new({
    id = id.from(_N, "UpdateProfileOutput"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "UpdateProfileOutput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        profileArn = schema.new({
            id = id.from(_N, "UpdateProfileOutput", "profileArn"),
            type = "string",
            name = "profileArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateProfileOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        email = schema.new({
            id = id.from(_N, "UpdateProfileOutput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
        phone = schema.new({
            id = id.from(_N, "UpdateProfileOutput", "phone"),
            type = "string",
            name = "phone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        businessName = schema.new({
            id = id.from(_N, "UpdateProfileOutput", "businessName"),
            type = "string",
            name = "businessName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logging = schema.new({
            id = id.from(_N, "UpdateProfileOutput", "logging"),
            type = "string",
            name = "logging",
            target_id = prelude.String.id,
        }),
        logGroupName = schema.new({
            id = id.from(_N, "UpdateProfileOutput", "logGroupName"),
            type = "string",
            name = "logGroupName",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateProfileOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "UpdateProfileOutput", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.StartTransformerJobInput = schema.new({
    id = id.from(_N, "StartTransformerJobInput"),
    type = "structure",
    members = {
        inputFile = schema.new({
            id = id.from(_N, "StartTransformerJobInput", "inputFile"),
            type = "structure",
            name = "inputFile",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputLocation = schema.new({
            id = id.from(_N, "StartTransformerJobInput", "outputLocation"),
            type = "structure",
            name = "outputLocation",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        transformerId = schema.new({
            id = id.from(_N, "StartTransformerJobInput", "transformerId"),
            type = "string",
            name = "transformerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartTransformerJobInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartTransformerJobOutput = schema.new({
    id = id.from(_N, "StartTransformerJobOutput"),
    type = "structure",
    members = {
        transformerJobId = schema.new({
            id = id.from(_N, "StartTransformerJobOutput", "transformerJobId"),
            type = "string",
            name = "transformerJobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
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

M.InputFileSource = schema.new({
    id = id.from(_N, "InputFileSource"),
    type = "union",
    members = {
        fileContent = schema.new({
            id = id.from(_N, "InputFileSource", "fileContent"),
            type = "string",
            name = "fileContent",
            target_id = prelude.String.id,
        }),
    },
})

M.ConversionSource = schema.new({
    id = id.from(_N, "ConversionSource"),
    type = "structure",
    members = {
        fileFormat = schema.new({
            id = id.from(_N, "ConversionSource", "fileFormat"),
            type = "string",
            name = "fileFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inputFile = schema.new({
            id = id.from(_N, "ConversionSource", "inputFile"),
            type = "union",
            name = "inputFile",
            target_id = id.from(_N, "InputFileSource"),
            target = M.InputFileSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConversionTargetFormatDetails = schema.new({
    id = id.from(_N, "ConversionTargetFormatDetails"),
    type = "union",
    members = {
        x12 = schema.new({
            id = id.from(_N, "ConversionTargetFormatDetails", "x12"),
            type = "structure",
            name = "x12",
            target_id = id.from(_N, "X12Details"),
            target = M.X12Details,
        }),
    },
})

M.OutputSampleFileSource = schema.new({
    id = id.from(_N, "OutputSampleFileSource"),
    type = "union",
    members = {
        fileLocation = schema.new({
            id = id.from(_N, "OutputSampleFileSource", "fileLocation"),
            type = "structure",
            name = "fileLocation",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
        }),
    },
})

M.ConversionTarget = schema.new({
    id = id.from(_N, "ConversionTarget"),
    type = "structure",
    members = {
        fileFormat = schema.new({
            id = id.from(_N, "ConversionTarget", "fileFormat"),
            type = "string",
            name = "fileFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        formatDetails = schema.new({
            id = id.from(_N, "ConversionTarget", "formatDetails"),
            type = "union",
            name = "formatDetails",
            target_id = id.from(_N, "ConversionTargetFormatDetails"),
            target = M.ConversionTargetFormatDetails,
        }),
        outputSampleFile = schema.new({
            id = id.from(_N, "ConversionTarget", "outputSampleFile"),
            type = "union",
            name = "outputSampleFile",
            target_id = id.from(_N, "OutputSampleFileSource"),
            target = M.OutputSampleFileSource,
        }),
        advancedOptions = schema.new({
            id = id.from(_N, "ConversionTarget", "advancedOptions"),
            type = "structure",
            name = "advancedOptions",
            target_id = id.from(_N, "AdvancedOptions"),
            target = M.AdvancedOptions,
        }),
    },
})

M.TestConversionInput = schema.new({
    id = id.from(_N, "TestConversionInput"),
    type = "structure",
    members = {
        source = schema.new({
            id = id.from(_N, "TestConversionInput", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "ConversionSource"),
            target = M.ConversionSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        target = schema.new({
            id = id.from(_N, "TestConversionInput", "target"),
            type = "structure",
            name = "target",
            target_id = id.from(_N, "ConversionTarget"),
            target = M.ConversionTarget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TestConversionOutput = schema.new({
    id = id.from(_N, "TestConversionOutput"),
    type = "structure",
    members = {
        convertedFileContent = schema.new({
            id = id.from(_N, "TestConversionOutput", "convertedFileContent"),
            type = "string",
            name = "convertedFileContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        validationMessages = schema.new({
            id = id.from(_N, "TestConversionOutput", "validationMessages"),
            type = "list",
            name = "validationMessages",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.TestMappingInput = schema.new({
    id = id.from(_N, "TestMappingInput"),
    type = "structure",
    members = {
        inputFileContent = schema.new({
            id = id.from(_N, "TestMappingInput", "inputFileContent"),
            type = "string",
            name = "inputFileContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mappingTemplate = schema.new({
            id = id.from(_N, "TestMappingInput", "mappingTemplate"),
            type = "string",
            name = "mappingTemplate",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileFormat = schema.new({
            id = id.from(_N, "TestMappingInput", "fileFormat"),
            type = "string",
            name = "fileFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TestMappingOutput = schema.new({
    id = id.from(_N, "TestMappingOutput"),
    type = "structure",
    members = {
        mappedFileContent = schema.new({
            id = id.from(_N, "TestMappingOutput", "mappedFileContent"),
            type = "string",
            name = "mappedFileContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TestParsingInput = schema.new({
    id = id.from(_N, "TestParsingInput"),
    type = "structure",
    members = {
        inputFile = schema.new({
            id = id.from(_N, "TestParsingInput", "inputFile"),
            type = "structure",
            name = "inputFile",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileFormat = schema.new({
            id = id.from(_N, "TestParsingInput", "fileFormat"),
            type = "string",
            name = "fileFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ediType = schema.new({
            id = id.from(_N, "TestParsingInput", "ediType"),
            type = "union",
            name = "ediType",
            target_id = id.from(_N, "EdiType"),
            target = M.EdiType,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        advancedOptions = schema.new({
            id = id.from(_N, "TestParsingInput", "advancedOptions"),
            type = "structure",
            name = "advancedOptions",
            target_id = id.from(_N, "AdvancedOptions"),
            target = M.AdvancedOptions,
        }),
    },
})

M.TestParsingOutput = schema.new({
    id = id.from(_N, "TestParsingOutput"),
    type = "structure",
    members = {
        parsedFileContent = schema.new({
            id = id.from(_N, "TestParsingOutput", "parsedFileContent"),
            type = "string",
            name = "parsedFileContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parsedSplitFileContents = schema.new({
            id = id.from(_N, "TestParsingOutput", "parsedSplitFileContents"),
            type = "list",
            name = "parsedSplitFileContents",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        validationMessages = schema.new({
            id = id.from(_N, "TestParsingOutput", "validationMessages"),
            type = "list",
            name = "validationMessages",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.FormatOptions = schema.new({
    id = id.from(_N, "FormatOptions"),
    type = "union",
    members = {
        x12 = schema.new({
            id = id.from(_N, "FormatOptions", "x12"),
            type = "structure",
            name = "x12",
            target_id = id.from(_N, "X12Details"),
            target = M.X12Details,
        }),
    },
})

M.InputConversion = schema.new({
    id = id.from(_N, "InputConversion"),
    type = "structure",
    members = {
        fromFormat = schema.new({
            id = id.from(_N, "InputConversion", "fromFormat"),
            type = "string",
            name = "fromFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        formatOptions = schema.new({
            id = id.from(_N, "InputConversion", "formatOptions"),
            type = "union",
            name = "formatOptions",
            target_id = id.from(_N, "FormatOptions"),
            target = M.FormatOptions,
        }),
        advancedOptions = schema.new({
            id = id.from(_N, "InputConversion", "advancedOptions"),
            type = "structure",
            name = "advancedOptions",
            target_id = id.from(_N, "AdvancedOptions"),
            target = M.AdvancedOptions,
        }),
    },
})

M.Mapping = schema.new({
    id = id.from(_N, "Mapping"),
    type = "structure",
    members = {
        templateLanguage = schema.new({
            id = id.from(_N, "Mapping", "templateLanguage"),
            type = "string",
            name = "templateLanguage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        template = schema.new({
            id = id.from(_N, "Mapping", "template"),
            type = "string",
            name = "template",
            target_id = prelude.String.id,
        }),
    },
})

M.OutputConversion = schema.new({
    id = id.from(_N, "OutputConversion"),
    type = "structure",
    members = {
        toFormat = schema.new({
            id = id.from(_N, "OutputConversion", "toFormat"),
            type = "string",
            name = "toFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        formatOptions = schema.new({
            id = id.from(_N, "OutputConversion", "formatOptions"),
            type = "union",
            name = "formatOptions",
            target_id = id.from(_N, "FormatOptions"),
            target = M.FormatOptions,
        }),
        advancedOptions = schema.new({
            id = id.from(_N, "OutputConversion", "advancedOptions"),
            type = "structure",
            name = "advancedOptions",
            target_id = id.from(_N, "AdvancedOptions"),
            target = M.AdvancedOptions,
        }),
    },
})

M.SampleDocumentKeys = schema.new({
    id = id.from(_N, "SampleDocumentKeys"),
    type = "structure",
    members = {
        input = schema.new({
            id = id.from(_N, "SampleDocumentKeys", "input"),
            type = "string",
            name = "input",
            target_id = prelude.String.id,
        }),
        output = schema.new({
            id = id.from(_N, "SampleDocumentKeys", "output"),
            type = "string",
            name = "output",
            target_id = prelude.String.id,
        }),
    },
})

M.SampleDocuments = schema.new({
    id = id.from(_N, "SampleDocuments"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "SampleDocuments", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        keys = schema.new({
            id = id.from(_N, "SampleDocuments", "keys"),
            type = "list",
            name = "keys",
            target_id = prelude.Document.id,
            list_member = M.SampleDocumentKeys,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateTransformerInput = schema.new({
    id = id.from(_N, "CreateTransformerInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateTransformerInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateTransformerInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateTransformerInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        fileFormat = schema.new({
            id = id.from(_N, "CreateTransformerInput", "fileFormat"),
            type = "string",
            name = "fileFormat",
            target_id = prelude.String.id,
        }),
        mappingTemplate = schema.new({
            id = id.from(_N, "CreateTransformerInput", "mappingTemplate"),
            type = "string",
            name = "mappingTemplate",
            target_id = prelude.String.id,
        }),
        ediType = schema.new({
            id = id.from(_N, "CreateTransformerInput", "ediType"),
            type = "union",
            name = "ediType",
            target_id = id.from(_N, "EdiType"),
            target = M.EdiType,
        }),
        sampleDocument = schema.new({
            id = id.from(_N, "CreateTransformerInput", "sampleDocument"),
            type = "string",
            name = "sampleDocument",
            target_id = prelude.String.id,
        }),
        inputConversion = schema.new({
            id = id.from(_N, "CreateTransformerInput", "inputConversion"),
            type = "structure",
            name = "inputConversion",
            target_id = id.from(_N, "InputConversion"),
            target = M.InputConversion,
        }),
        mapping = schema.new({
            id = id.from(_N, "CreateTransformerInput", "mapping"),
            type = "structure",
            name = "mapping",
            target_id = id.from(_N, "Mapping"),
            target = M.Mapping,
        }),
        outputConversion = schema.new({
            id = id.from(_N, "CreateTransformerInput", "outputConversion"),
            type = "structure",
            name = "outputConversion",
            target_id = id.from(_N, "OutputConversion"),
            target = M.OutputConversion,
        }),
        sampleDocuments = schema.new({
            id = id.from(_N, "CreateTransformerInput", "sampleDocuments"),
            type = "structure",
            name = "sampleDocuments",
            target_id = id.from(_N, "SampleDocuments"),
            target = M.SampleDocuments,
        }),
    },
})

M.CreateTransformerOutput = schema.new({
    id = id.from(_N, "CreateTransformerOutput"),
    type = "structure",
    members = {
        transformerId = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "transformerId"),
            type = "string",
            name = "transformerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        transformerArn = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "transformerArn"),
            type = "string",
            name = "transformerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileFormat = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "fileFormat"),
            type = "string",
            name = "fileFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "NOT_USED" },
            },
        }),
        mappingTemplate = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "mappingTemplate"),
            type = "string",
            name = "mappingTemplate",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "NOT_USED" },
            },
        }),
        ediType = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "ediType"),
            type = "union",
            name = "ediType",
            target_id = id.from(_N, "EdiType"),
            target = M.EdiType,
        }),
        sampleDocument = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "sampleDocument"),
            type = "string",
            name = "sampleDocument",
            target_id = prelude.String.id,
        }),
        inputConversion = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "inputConversion"),
            type = "structure",
            name = "inputConversion",
            target_id = id.from(_N, "InputConversion"),
            target = M.InputConversion,
        }),
        mapping = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "mapping"),
            type = "structure",
            name = "mapping",
            target_id = id.from(_N, "Mapping"),
            target = M.Mapping,
        }),
        outputConversion = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "outputConversion"),
            type = "structure",
            name = "outputConversion",
            target_id = id.from(_N, "OutputConversion"),
            target = M.OutputConversion,
        }),
        sampleDocuments = schema.new({
            id = id.from(_N, "CreateTransformerOutput", "sampleDocuments"),
            type = "structure",
            name = "sampleDocuments",
            target_id = id.from(_N, "SampleDocuments"),
            target = M.SampleDocuments,
        }),
    },
})

M.DeleteTransformerInput = schema.new({
    id = id.from(_N, "DeleteTransformerInput"),
    type = "structure",
    members = {
        transformerId = schema.new({
            id = id.from(_N, "DeleteTransformerInput", "transformerId"),
            type = "string",
            name = "transformerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteTransformerOutput = schema.new({
    id = id.from(_N, "DeleteTransformerOutput"),
    type = "structure",
})

M.GetTransformerInput = schema.new({
    id = id.from(_N, "GetTransformerInput"),
    type = "structure",
    members = {
        transformerId = schema.new({
            id = id.from(_N, "GetTransformerInput", "transformerId"),
            type = "string",
            name = "transformerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetTransformerOutput = schema.new({
    id = id.from(_N, "GetTransformerOutput"),
    type = "structure",
    members = {
        transformerId = schema.new({
            id = id.from(_N, "GetTransformerOutput", "transformerId"),
            type = "string",
            name = "transformerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        transformerArn = schema.new({
            id = id.from(_N, "GetTransformerOutput", "transformerArn"),
            type = "string",
            name = "transformerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetTransformerOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetTransformerOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetTransformerOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "GetTransformerOutput", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        fileFormat = schema.new({
            id = id.from(_N, "GetTransformerOutput", "fileFormat"),
            type = "string",
            name = "fileFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "NOT_USED" },
            },
        }),
        mappingTemplate = schema.new({
            id = id.from(_N, "GetTransformerOutput", "mappingTemplate"),
            type = "string",
            name = "mappingTemplate",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "NOT_USED" },
            },
        }),
        ediType = schema.new({
            id = id.from(_N, "GetTransformerOutput", "ediType"),
            type = "union",
            name = "ediType",
            target_id = id.from(_N, "EdiType"),
            target = M.EdiType,
        }),
        sampleDocument = schema.new({
            id = id.from(_N, "GetTransformerOutput", "sampleDocument"),
            type = "string",
            name = "sampleDocument",
            target_id = prelude.String.id,
        }),
        inputConversion = schema.new({
            id = id.from(_N, "GetTransformerOutput", "inputConversion"),
            type = "structure",
            name = "inputConversion",
            target_id = id.from(_N, "InputConversion"),
            target = M.InputConversion,
        }),
        mapping = schema.new({
            id = id.from(_N, "GetTransformerOutput", "mapping"),
            type = "structure",
            name = "mapping",
            target_id = id.from(_N, "Mapping"),
            target = M.Mapping,
        }),
        outputConversion = schema.new({
            id = id.from(_N, "GetTransformerOutput", "outputConversion"),
            type = "structure",
            name = "outputConversion",
            target_id = id.from(_N, "OutputConversion"),
            target = M.OutputConversion,
        }),
        sampleDocuments = schema.new({
            id = id.from(_N, "GetTransformerOutput", "sampleDocuments"),
            type = "structure",
            name = "sampleDocuments",
            target_id = id.from(_N, "SampleDocuments"),
            target = M.SampleDocuments,
        }),
    },
})

M.ListTransformersInput = schema.new({
    id = id.from(_N, "ListTransformersInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTransformersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTransformersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.TransformerSummary = schema.new({
    id = id.from(_N, "TransformerSummary"),
    type = "structure",
    members = {
        transformerId = schema.new({
            id = id.from(_N, "TransformerSummary", "transformerId"),
            type = "string",
            name = "transformerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "TransformerSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "TransformerSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "TransformerSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "TransformerSummary", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        fileFormat = schema.new({
            id = id.from(_N, "TransformerSummary", "fileFormat"),
            type = "string",
            name = "fileFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "NOT_USED" },
            },
        }),
        mappingTemplate = schema.new({
            id = id.from(_N, "TransformerSummary", "mappingTemplate"),
            type = "string",
            name = "mappingTemplate",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "NOT_USED" },
            },
        }),
        ediType = schema.new({
            id = id.from(_N, "TransformerSummary", "ediType"),
            type = "union",
            name = "ediType",
            target_id = id.from(_N, "EdiType"),
            target = M.EdiType,
        }),
        sampleDocument = schema.new({
            id = id.from(_N, "TransformerSummary", "sampleDocument"),
            type = "string",
            name = "sampleDocument",
            target_id = prelude.String.id,
        }),
        inputConversion = schema.new({
            id = id.from(_N, "TransformerSummary", "inputConversion"),
            type = "structure",
            name = "inputConversion",
            target_id = id.from(_N, "InputConversion"),
            target = M.InputConversion,
        }),
        mapping = schema.new({
            id = id.from(_N, "TransformerSummary", "mapping"),
            type = "structure",
            name = "mapping",
            target_id = id.from(_N, "Mapping"),
            target = M.Mapping,
        }),
        outputConversion = schema.new({
            id = id.from(_N, "TransformerSummary", "outputConversion"),
            type = "structure",
            name = "outputConversion",
            target_id = id.from(_N, "OutputConversion"),
            target = M.OutputConversion,
        }),
        sampleDocuments = schema.new({
            id = id.from(_N, "TransformerSummary", "sampleDocuments"),
            type = "structure",
            name = "sampleDocuments",
            target_id = id.from(_N, "SampleDocuments"),
            target = M.SampleDocuments,
        }),
    },
})

M.ListTransformersOutput = schema.new({
    id = id.from(_N, "ListTransformersOutput"),
    type = "structure",
    members = {
        transformers = schema.new({
            id = id.from(_N, "ListTransformersOutput", "transformers"),
            type = "list",
            name = "transformers",
            target_id = prelude.Document.id,
            list_member = M.TransformerSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTransformersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateTransformerInput = schema.new({
    id = id.from(_N, "UpdateTransformerInput"),
    type = "structure",
    members = {
        transformerId = schema.new({
            id = id.from(_N, "UpdateTransformerInput", "transformerId"),
            type = "string",
            name = "transformerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateTransformerInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateTransformerInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        fileFormat = schema.new({
            id = id.from(_N, "UpdateTransformerInput", "fileFormat"),
            type = "string",
            name = "fileFormat",
            target_id = prelude.String.id,
        }),
        mappingTemplate = schema.new({
            id = id.from(_N, "UpdateTransformerInput", "mappingTemplate"),
            type = "string",
            name = "mappingTemplate",
            target_id = prelude.String.id,
        }),
        ediType = schema.new({
            id = id.from(_N, "UpdateTransformerInput", "ediType"),
            type = "union",
            name = "ediType",
            target_id = id.from(_N, "EdiType"),
            target = M.EdiType,
        }),
        sampleDocument = schema.new({
            id = id.from(_N, "UpdateTransformerInput", "sampleDocument"),
            type = "string",
            name = "sampleDocument",
            target_id = prelude.String.id,
        }),
        inputConversion = schema.new({
            id = id.from(_N, "UpdateTransformerInput", "inputConversion"),
            type = "structure",
            name = "inputConversion",
            target_id = id.from(_N, "InputConversion"),
            target = M.InputConversion,
        }),
        mapping = schema.new({
            id = id.from(_N, "UpdateTransformerInput", "mapping"),
            type = "structure",
            name = "mapping",
            target_id = id.from(_N, "Mapping"),
            target = M.Mapping,
        }),
        outputConversion = schema.new({
            id = id.from(_N, "UpdateTransformerInput", "outputConversion"),
            type = "structure",
            name = "outputConversion",
            target_id = id.from(_N, "OutputConversion"),
            target = M.OutputConversion,
        }),
        sampleDocuments = schema.new({
            id = id.from(_N, "UpdateTransformerInput", "sampleDocuments"),
            type = "structure",
            name = "sampleDocuments",
            target_id = id.from(_N, "SampleDocuments"),
            target = M.SampleDocuments,
        }),
    },
})

M.UpdateTransformerOutput = schema.new({
    id = id.from(_N, "UpdateTransformerOutput"),
    type = "structure",
    members = {
        transformerId = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "transformerId"),
            type = "string",
            name = "transformerId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        transformerArn = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "transformerArn"),
            type = "string",
            name = "transformerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modifiedAt = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "modifiedAt"),
            type = "timestamp",
            name = "modifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileFormat = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "fileFormat"),
            type = "string",
            name = "fileFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "NOT_USED" },
            },
        }),
        mappingTemplate = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "mappingTemplate"),
            type = "string",
            name = "mappingTemplate",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "NOT_USED" },
            },
        }),
        ediType = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "ediType"),
            type = "union",
            name = "ediType",
            target_id = id.from(_N, "EdiType"),
            target = M.EdiType,
        }),
        sampleDocument = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "sampleDocument"),
            type = "string",
            name = "sampleDocument",
            target_id = prelude.String.id,
        }),
        inputConversion = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "inputConversion"),
            type = "structure",
            name = "inputConversion",
            target_id = id.from(_N, "InputConversion"),
            target = M.InputConversion,
        }),
        mapping = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "mapping"),
            type = "structure",
            name = "mapping",
            target_id = id.from(_N, "Mapping"),
            target = M.Mapping,
        }),
        outputConversion = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "outputConversion"),
            type = "structure",
            name = "outputConversion",
            target_id = id.from(_N, "OutputConversion"),
            target = M.OutputConversion,
        }),
        sampleDocuments = schema.new({
            id = id.from(_N, "UpdateTransformerOutput", "sampleDocuments"),
            type = "structure",
            name = "sampleDocuments",
            target_id = id.from(_N, "SampleDocuments"),
            target = M.SampleDocuments,
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "TagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

return M
