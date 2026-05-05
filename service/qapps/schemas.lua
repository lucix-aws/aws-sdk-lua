local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.qapps"

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

M.FileUploadCard = schema.new({
    id = id.from(_N, "FileUploadCard"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "FileUploadCard", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "FileUploadCard", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dependencies = schema.new({
            id = id.from(_N, "FileUploadCard", "dependencies"),
            type = "list",
            name = "dependencies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "FileUploadCard", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filename = schema.new({
            id = id.from(_N, "FileUploadCard", "filename"),
            type = "string",
            name = "filename",
            target_id = prelude.String.id,
        }),
        fileId = schema.new({
            id = id.from(_N, "FileUploadCard", "fileId"),
            type = "string",
            name = "fileId",
            target_id = prelude.String.id,
        }),
        allowOverride = schema.new({
            id = id.from(_N, "FileUploadCard", "allowOverride"),
            type = "boolean",
            name = "allowOverride",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.FormInputCardMetadata = schema.new({
    id = id.from(_N, "FormInputCardMetadata"),
    type = "structure",
    members = {
        schema = schema.new({
            id = id.from(_N, "FormInputCardMetadata", "schema"),
            type = "document",
            name = "schema",
            target_id = prelude.Document.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FormInputCard = schema.new({
    id = id.from(_N, "FormInputCard"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "FormInputCard", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "FormInputCard", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dependencies = schema.new({
            id = id.from(_N, "FormInputCard", "dependencies"),
            type = "list",
            name = "dependencies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "FormInputCard", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metadata = schema.new({
            id = id.from(_N, "FormInputCard", "metadata"),
            type = "structure",
            name = "metadata",
            target_id = id.from(_N, "FormInputCardMetadata"),
            target = M.FormInputCardMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computeMode = schema.new({
            id = id.from(_N, "FormInputCard", "computeMode"),
            type = "string",
            name = "computeMode",
            target_id = prelude.String.id,
        }),
    },
})

M.QPluginCard = schema.new({
    id = id.from(_N, "QPluginCard"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "QPluginCard", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "QPluginCard", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dependencies = schema.new({
            id = id.from(_N, "QPluginCard", "dependencies"),
            type = "list",
            name = "dependencies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "QPluginCard", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        prompt = schema.new({
            id = id.from(_N, "QPluginCard", "prompt"),
            type = "string",
            name = "prompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pluginType = schema.new({
            id = id.from(_N, "QPluginCard", "pluginType"),
            type = "string",
            name = "pluginType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pluginId = schema.new({
            id = id.from(_N, "QPluginCard", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionIdentifier = schema.new({
            id = id.from(_N, "QPluginCard", "actionIdentifier"),
            type = "string",
            name = "actionIdentifier",
            target_id = prelude.String.id,
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

M.TextInputCard = schema.new({
    id = id.from(_N, "TextInputCard"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "TextInputCard", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "TextInputCard", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dependencies = schema.new({
            id = id.from(_N, "TextInputCard", "dependencies"),
            type = "list",
            name = "dependencies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "TextInputCard", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        placeholder = schema.new({
            id = id.from(_N, "TextInputCard", "placeholder"),
            type = "string",
            name = "placeholder",
            target_id = prelude.String.id,
        }),
        defaultValue = schema.new({
            id = id.from(_N, "TextInputCard", "defaultValue"),
            type = "string",
            name = "defaultValue",
            target_id = prelude.String.id,
        }),
    },
})

M.FileUploadCardInput = schema.new({
    id = id.from(_N, "FileUploadCardInput"),
    type = "structure",
    members = {
        title = schema.new({
            id = id.from(_N, "FileUploadCardInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "FileUploadCardInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "FileUploadCardInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = "file-upload" },
            },
        }),
        filename = schema.new({
            id = id.from(_N, "FileUploadCardInput", "filename"),
            type = "string",
            name = "filename",
            target_id = prelude.String.id,
        }),
        fileId = schema.new({
            id = id.from(_N, "FileUploadCardInput", "fileId"),
            type = "string",
            name = "fileId",
            target_id = prelude.String.id,
        }),
        allowOverride = schema.new({
            id = id.from(_N, "FileUploadCardInput", "allowOverride"),
            type = "boolean",
            name = "allowOverride",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.FormInputCardInput = schema.new({
    id = id.from(_N, "FormInputCardInput"),
    type = "structure",
    members = {
        title = schema.new({
            id = id.from(_N, "FormInputCardInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "FormInputCardInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "FormInputCardInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = "form-input" },
            },
        }),
        metadata = schema.new({
            id = id.from(_N, "FormInputCardInput", "metadata"),
            type = "structure",
            name = "metadata",
            target_id = id.from(_N, "FormInputCardMetadata"),
            target = M.FormInputCardMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        computeMode = schema.new({
            id = id.from(_N, "FormInputCardInput", "computeMode"),
            type = "string",
            name = "computeMode",
            target_id = prelude.String.id,
        }),
    },
})

M.QPluginCardInput = schema.new({
    id = id.from(_N, "QPluginCardInput"),
    type = "structure",
    members = {
        title = schema.new({
            id = id.from(_N, "QPluginCardInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "QPluginCardInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "QPluginCardInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = "q-plugin" },
            },
        }),
        prompt = schema.new({
            id = id.from(_N, "QPluginCardInput", "prompt"),
            type = "string",
            name = "prompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pluginId = schema.new({
            id = id.from(_N, "QPluginCardInput", "pluginId"),
            type = "string",
            name = "pluginId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionIdentifier = schema.new({
            id = id.from(_N, "QPluginCardInput", "actionIdentifier"),
            type = "string",
            name = "actionIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.TextInputCardInput = schema.new({
    id = id.from(_N, "TextInputCardInput"),
    type = "structure",
    members = {
        title = schema.new({
            id = id.from(_N, "TextInputCardInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "TextInputCardInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "TextInputCardInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = "text-input" },
            },
        }),
        placeholder = schema.new({
            id = id.from(_N, "TextInputCardInput", "placeholder"),
            type = "string",
            name = "placeholder",
            target_id = prelude.String.id,
        }),
        defaultValue = schema.new({
            id = id.from(_N, "TextInputCardInput", "defaultValue"),
            type = "string",
            name = "defaultValue",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateLibraryItemReviewInput = schema.new({
    id = id.from(_N, "AssociateLibraryItemReviewInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "AssociateLibraryItemReviewInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        libraryItemId = schema.new({
            id = id.from(_N, "AssociateLibraryItemReviewInput", "libraryItemId"),
            type = "string",
            name = "libraryItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateLibraryItemReviewOutput = schema.new({
    id = id.from(_N, "AssociateLibraryItemReviewOutput"),
    type = "structure",
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
        serviceCode = schema.new({
            id = id.from(_N, "ThrottlingException", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ThrottlingException", "quotaCode"),
            type = "string",
            name = "quotaCode",
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

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnauthorizedException", "message"),
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
    },
})

M.AssociateQAppWithUserInput = schema.new({
    id = id.from(_N, "AssociateQAppWithUserInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "AssociateQAppWithUserInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        appId = schema.new({
            id = id.from(_N, "AssociateQAppWithUserInput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateQAppWithUserOutput = schema.new({
    id = id.from(_N, "AssociateQAppWithUserOutput"),
    type = "structure",
})

M.BatchCreateCategoryInputCategory = schema.new({
    id = id.from(_N, "BatchCreateCategoryInputCategory"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BatchCreateCategoryInputCategory", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        title = schema.new({
            id = id.from(_N, "BatchCreateCategoryInputCategory", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        color = schema.new({
            id = id.from(_N, "BatchCreateCategoryInputCategory", "color"),
            type = "string",
            name = "color",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateCategoryInput = schema.new({
    id = id.from(_N, "BatchCreateCategoryInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "BatchCreateCategoryInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        categories = schema.new({
            id = id.from(_N, "BatchCreateCategoryInput", "categories"),
            type = "list",
            name = "categories",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateCategoryInputCategory,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchCreateCategoryOutput = schema.new({
    id = id.from(_N, "BatchCreateCategoryOutput"),
    type = "structure",
})

M.BatchDeleteCategoryInput = schema.new({
    id = id.from(_N, "BatchDeleteCategoryInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "BatchDeleteCategoryInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        categories = schema.new({
            id = id.from(_N, "BatchDeleteCategoryInput", "categories"),
            type = "list",
            name = "categories",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteCategoryOutput = schema.new({
    id = id.from(_N, "BatchDeleteCategoryOutput"),
    type = "structure",
})

M.CategoryInput = schema.new({
    id = id.from(_N, "CategoryInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CategoryInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "CategoryInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        color = schema.new({
            id = id.from(_N, "CategoryInput", "color"),
            type = "string",
            name = "color",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchUpdateCategoryInput = schema.new({
    id = id.from(_N, "BatchUpdateCategoryInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "BatchUpdateCategoryInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        categories = schema.new({
            id = id.from(_N, "BatchUpdateCategoryInput", "categories"),
            type = "list",
            name = "categories",
            target_id = prelude.Document.id,
            list_member = M.CategoryInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchUpdateCategoryOutput = schema.new({
    id = id.from(_N, "BatchUpdateCategoryOutput"),
    type = "structure",
})

M.Submission = schema.new({
    id = id.from(_N, "Submission"),
    type = "structure",
    members = {
        value = schema.new({
            id = id.from(_N, "Submission", "value"),
            type = "document",
            name = "value",
            target_id = prelude.Document.id,
        }),
        submissionId = schema.new({
            id = id.from(_N, "Submission", "submissionId"),
            type = "string",
            name = "submissionId",
            target_id = prelude.String.id,
        }),
        timestamp = schema.new({
            id = id.from(_N, "Submission", "timestamp"),
            type = "timestamp",
            name = "timestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.CardStatus = schema.new({
    id = id.from(_N, "CardStatus"),
    type = "structure",
    members = {
        currentState = schema.new({
            id = id.from(_N, "CardStatus", "currentState"),
            type = "string",
            name = "currentState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        currentValue = schema.new({
            id = id.from(_N, "CardStatus", "currentValue"),
            type = "string",
            name = "currentValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        submissions = schema.new({
            id = id.from(_N, "CardStatus", "submissions"),
            type = "list",
            name = "submissions",
            target_id = prelude.Document.id,
            list_member = M.Submission,
        }),
    },
})

M.SubmissionMutation = schema.new({
    id = id.from(_N, "SubmissionMutation"),
    type = "structure",
    members = {
        submissionId = schema.new({
            id = id.from(_N, "SubmissionMutation", "submissionId"),
            type = "string",
            name = "submissionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mutationType = schema.new({
            id = id.from(_N, "SubmissionMutation", "mutationType"),
            type = "string",
            name = "mutationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CardValue = schema.new({
    id = id.from(_N, "CardValue"),
    type = "structure",
    members = {
        cardId = schema.new({
            id = id.from(_N, "CardValue", "cardId"),
            type = "string",
            name = "cardId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "CardValue", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        submissionMutation = schema.new({
            id = id.from(_N, "CardValue", "submissionMutation"),
            type = "structure",
            name = "submissionMutation",
            target_id = id.from(_N, "SubmissionMutation"),
            target = M.SubmissionMutation,
        }),
    },
})

M.Category = schema.new({
    id = id.from(_N, "Category"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Category", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "Category", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        color = schema.new({
            id = id.from(_N, "Category", "color"),
            type = "string",
            name = "color",
            target_id = prelude.String.id,
        }),
        appCount = schema.new({
            id = id.from(_N, "Category", "appCount"),
            type = "integer",
            name = "appCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ContentTooLargeException = schema.new({
    id = id.from(_N, "ContentTooLargeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ContentTooLargeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ContentTooLargeException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ContentTooLargeException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConversationMessage = schema.new({
    id = id.from(_N, "ConversationMessage"),
    type = "structure",
    members = {
        body = schema.new({
            id = id.from(_N, "ConversationMessage", "body"),
            type = "string",
            name = "body",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "ConversationMessage", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateLibraryItemInput = schema.new({
    id = id.from(_N, "CreateLibraryItemInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "CreateLibraryItemInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        appId = schema.new({
            id = id.from(_N, "CreateLibraryItemInput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appVersion = schema.new({
            id = id.from(_N, "CreateLibraryItemInput", "appVersion"),
            type = "integer",
            name = "appVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        categories = schema.new({
            id = id.from(_N, "CreateLibraryItemInput", "categories"),
            type = "list",
            name = "categories",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateLibraryItemOutput = schema.new({
    id = id.from(_N, "CreateLibraryItemOutput"),
    type = "structure",
    members = {
        libraryItemId = schema.new({
            id = id.from(_N, "CreateLibraryItemOutput", "libraryItemId"),
            type = "string",
            name = "libraryItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateLibraryItemOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateLibraryItemOutput", "createdAt"),
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
        createdBy = schema.new({
            id = id.from(_N, "CreateLibraryItemOutput", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreateLibraryItemOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedBy = schema.new({
            id = id.from(_N, "CreateLibraryItemOutput", "updatedBy"),
            type = "string",
            name = "updatedBy",
            target_id = prelude.String.id,
        }),
        ratingCount = schema.new({
            id = id.from(_N, "CreateLibraryItemOutput", "ratingCount"),
            type = "integer",
            name = "ratingCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        isVerified = schema.new({
            id = id.from(_N, "CreateLibraryItemOutput", "isVerified"),
            type = "boolean",
            name = "isVerified",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreatePresignedUrlInput = schema.new({
    id = id.from(_N, "CreatePresignedUrlInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "CreatePresignedUrlInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        cardId = schema.new({
            id = id.from(_N, "CreatePresignedUrlInput", "cardId"),
            type = "string",
            name = "cardId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appId = schema.new({
            id = id.from(_N, "CreatePresignedUrlInput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileContentsSha256 = schema.new({
            id = id.from(_N, "CreatePresignedUrlInput", "fileContentsSha256"),
            type = "string",
            name = "fileContentsSha256",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileName = schema.new({
            id = id.from(_N, "CreatePresignedUrlInput", "fileName"),
            type = "string",
            name = "fileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        scope = schema.new({
            id = id.from(_N, "CreatePresignedUrlInput", "scope"),
            type = "string",
            name = "scope",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "CreatePresignedUrlInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePresignedUrlOutput = schema.new({
    id = id.from(_N, "CreatePresignedUrlOutput"),
    type = "structure",
    members = {
        fileId = schema.new({
            id = id.from(_N, "CreatePresignedUrlOutput", "fileId"),
            type = "string",
            name = "fileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        presignedUrl = schema.new({
            id = id.from(_N, "CreatePresignedUrlOutput", "presignedUrl"),
            type = "string",
            name = "presignedUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        presignedUrlFields = schema.new({
            id = id.from(_N, "CreatePresignedUrlOutput", "presignedUrlFields"),
            type = "map",
            name = "presignedUrlFields",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        presignedUrlExpiration = schema.new({
            id = id.from(_N, "CreatePresignedUrlOutput", "presignedUrlExpiration"),
            type = "timestamp",
            name = "presignedUrlExpiration",
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

M.CreateQAppOutput = schema.new({
    id = id.from(_N, "CreateQAppOutput"),
    type = "structure",
    members = {
        appId = schema.new({
            id = id.from(_N, "CreateQAppOutput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appArn = schema.new({
            id = id.from(_N, "CreateQAppOutput", "appArn"),
            type = "string",
            name = "appArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "CreateQAppOutput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateQAppOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        initialPrompt = schema.new({
            id = id.from(_N, "CreateQAppOutput", "initialPrompt"),
            type = "string",
            name = "initialPrompt",
            target_id = prelude.String.id,
        }),
        appVersion = schema.new({
            id = id.from(_N, "CreateQAppOutput", "appVersion"),
            type = "integer",
            name = "appVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateQAppOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateQAppOutput", "createdAt"),
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
        createdBy = schema.new({
            id = id.from(_N, "CreateQAppOutput", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreateQAppOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedBy = schema.new({
            id = id.from(_N, "CreateQAppOutput", "updatedBy"),
            type = "string",
            name = "updatedBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        requiredCapabilities = schema.new({
            id = id.from(_N, "CreateQAppOutput", "requiredCapabilities"),
            type = "list",
            name = "requiredCapabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DeleteLibraryItemInput = schema.new({
    id = id.from(_N, "DeleteLibraryItemInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "DeleteLibraryItemInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        libraryItemId = schema.new({
            id = id.from(_N, "DeleteLibraryItemInput", "libraryItemId"),
            type = "string",
            name = "libraryItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLibraryItemOutput = schema.new({
    id = id.from(_N, "DeleteLibraryItemOutput"),
    type = "structure",
})

M.DeleteQAppInput = schema.new({
    id = id.from(_N, "DeleteQAppInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "DeleteQAppInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        appId = schema.new({
            id = id.from(_N, "DeleteQAppInput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteQAppOutput = schema.new({
    id = id.from(_N, "DeleteQAppOutput"),
    type = "structure",
})

M.DescribeQAppPermissionsInput = schema.new({
    id = id.from(_N, "DescribeQAppPermissionsInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "DescribeQAppPermissionsInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        appId = schema.new({
            id = id.from(_N, "DescribeQAppPermissionsInput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "appId" },
            },
        }),
    },
})

M.PrincipalOutput = schema.new({
    id = id.from(_N, "PrincipalOutput"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "PrincipalOutput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
        userType = schema.new({
            id = id.from(_N, "PrincipalOutput", "userType"),
            type = "string",
            name = "userType",
            target_id = prelude.String.id,
        }),
        email = schema.new({
            id = id.from(_N, "PrincipalOutput", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
        }),
    },
})

M.PermissionOutput = schema.new({
    id = id.from(_N, "PermissionOutput"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "PermissionOutput", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "PermissionOutput", "principal"),
            type = "structure",
            name = "principal",
            target_id = id.from(_N, "PrincipalOutput"),
            target = M.PrincipalOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeQAppPermissionsOutput = schema.new({
    id = id.from(_N, "DescribeQAppPermissionsOutput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "DescribeQAppPermissionsOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
        }),
        appId = schema.new({
            id = id.from(_N, "DescribeQAppPermissionsOutput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
        }),
        permissions = schema.new({
            id = id.from(_N, "DescribeQAppPermissionsOutput", "permissions"),
            type = "list",
            name = "permissions",
            target_id = prelude.Document.id,
            list_member = M.PermissionOutput,
        }),
    },
})

M.DisassociateLibraryItemReviewInput = schema.new({
    id = id.from(_N, "DisassociateLibraryItemReviewInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "DisassociateLibraryItemReviewInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        libraryItemId = schema.new({
            id = id.from(_N, "DisassociateLibraryItemReviewInput", "libraryItemId"),
            type = "string",
            name = "libraryItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateLibraryItemReviewOutput = schema.new({
    id = id.from(_N, "DisassociateLibraryItemReviewOutput"),
    type = "structure",
})

M.DisassociateQAppFromUserInput = schema.new({
    id = id.from(_N, "DisassociateQAppFromUserInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "DisassociateQAppFromUserInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        appId = schema.new({
            id = id.from(_N, "DisassociateQAppFromUserInput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateQAppFromUserOutput = schema.new({
    id = id.from(_N, "DisassociateQAppFromUserOutput"),
    type = "structure",
})

M.ExportQAppSessionDataInput = schema.new({
    id = id.from(_N, "ExportQAppSessionDataInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "ExportQAppSessionDataInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "ExportQAppSessionDataInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExportQAppSessionDataOutput = schema.new({
    id = id.from(_N, "ExportQAppSessionDataOutput"),
    type = "structure",
    members = {
        csvFileLink = schema.new({
            id = id.from(_N, "ExportQAppSessionDataOutput", "csvFileLink"),
            type = "string",
            name = "csvFileLink",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiresAt = schema.new({
            id = id.from(_N, "ExportQAppSessionDataOutput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionArn = schema.new({
            id = id.from(_N, "ExportQAppSessionDataOutput", "sessionArn"),
            type = "string",
            name = "sessionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetLibraryItemInput = schema.new({
    id = id.from(_N, "GetLibraryItemInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "GetLibraryItemInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        libraryItemId = schema.new({
            id = id.from(_N, "GetLibraryItemInput", "libraryItemId"),
            type = "string",
            name = "libraryItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "libraryItemId" },
            },
        }),
        appId = schema.new({
            id = id.from(_N, "GetLibraryItemInput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "appId" },
            },
        }),
    },
})

M.GetLibraryItemOutput = schema.new({
    id = id.from(_N, "GetLibraryItemOutput"),
    type = "structure",
    members = {
        libraryItemId = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "libraryItemId"),
            type = "string",
            name = "libraryItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appId = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appVersion = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "appVersion"),
            type = "integer",
            name = "appVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        categories = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "categories"),
            type = "list",
            name = "categories",
            target_id = prelude.Document.id,
            list_member = M.Category,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "createdAt"),
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
        createdBy = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedBy = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "updatedBy"),
            type = "string",
            name = "updatedBy",
            target_id = prelude.String.id,
        }),
        ratingCount = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "ratingCount"),
            type = "integer",
            name = "ratingCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        isRatedByUser = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "isRatedByUser"),
            type = "boolean",
            name = "isRatedByUser",
            target_id = prelude.Boolean.id,
        }),
        userCount = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "userCount"),
            type = "integer",
            name = "userCount",
            target_id = prelude.Integer.id,
        }),
        isVerified = schema.new({
            id = id.from(_N, "GetLibraryItemOutput", "isVerified"),
            type = "boolean",
            name = "isVerified",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetQAppInput = schema.new({
    id = id.from(_N, "GetQAppInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "GetQAppInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        appId = schema.new({
            id = id.from(_N, "GetQAppInput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "appId" },
            },
        }),
        appVersion = schema.new({
            id = id.from(_N, "GetQAppInput", "appVersion"),
            type = "integer",
            name = "appVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "appVersion" },
            },
        }),
    },
})

M.GetQAppSessionInput = schema.new({
    id = id.from(_N, "GetQAppSessionInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "GetQAppSessionInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "GetQAppSessionInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "sessionId" },
            },
        }),
    },
})

M.GetQAppSessionOutput = schema.new({
    id = id.from(_N, "GetQAppSessionOutput"),
    type = "structure",
    members = {
        sessionId = schema.new({
            id = id.from(_N, "GetQAppSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionArn = schema.new({
            id = id.from(_N, "GetQAppSessionOutput", "sessionArn"),
            type = "string",
            name = "sessionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionName = schema.new({
            id = id.from(_N, "GetQAppSessionOutput", "sessionName"),
            type = "string",
            name = "sessionName",
            target_id = prelude.String.id,
        }),
        appVersion = schema.new({
            id = id.from(_N, "GetQAppSessionOutput", "appVersion"),
            type = "integer",
            name = "appVersion",
            target_id = prelude.Integer.id,
        }),
        latestPublishedAppVersion = schema.new({
            id = id.from(_N, "GetQAppSessionOutput", "latestPublishedAppVersion"),
            type = "integer",
            name = "latestPublishedAppVersion",
            target_id = prelude.Integer.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetQAppSessionOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cardStatus = schema.new({
            id = id.from(_N, "GetQAppSessionOutput", "cardStatus"),
            type = "map",
            name = "cardStatus",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.CardStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userIsHost = schema.new({
            id = id.from(_N, "GetQAppSessionOutput", "userIsHost"),
            type = "boolean",
            name = "userIsHost",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetQAppSessionMetadataInput = schema.new({
    id = id.from(_N, "GetQAppSessionMetadataInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "GetQAppSessionMetadataInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "GetQAppSessionMetadataInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "sessionId" },
            },
        }),
    },
})

M.SessionSharingConfiguration = schema.new({
    id = id.from(_N, "SessionSharingConfiguration"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "SessionSharingConfiguration", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        acceptResponses = schema.new({
            id = id.from(_N, "SessionSharingConfiguration", "acceptResponses"),
            type = "boolean",
            name = "acceptResponses",
            target_id = prelude.Boolean.id,
        }),
        revealCards = schema.new({
            id = id.from(_N, "SessionSharingConfiguration", "revealCards"),
            type = "boolean",
            name = "revealCards",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetQAppSessionMetadataOutput = schema.new({
    id = id.from(_N, "GetQAppSessionMetadataOutput"),
    type = "structure",
    members = {
        sessionId = schema.new({
            id = id.from(_N, "GetQAppSessionMetadataOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionArn = schema.new({
            id = id.from(_N, "GetQAppSessionMetadataOutput", "sessionArn"),
            type = "string",
            name = "sessionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionName = schema.new({
            id = id.from(_N, "GetQAppSessionMetadataOutput", "sessionName"),
            type = "string",
            name = "sessionName",
            target_id = prelude.String.id,
        }),
        sharingConfiguration = schema.new({
            id = id.from(_N, "GetQAppSessionMetadataOutput", "sharingConfiguration"),
            type = "structure",
            name = "sharingConfiguration",
            target_id = id.from(_N, "SessionSharingConfiguration"),
            target = M.SessionSharingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionOwner = schema.new({
            id = id.from(_N, "GetQAppSessionMetadataOutput", "sessionOwner"),
            type = "boolean",
            name = "sessionOwner",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ImportDocumentInput = schema.new({
    id = id.from(_N, "ImportDocumentInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "ImportDocumentInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        cardId = schema.new({
            id = id.from(_N, "ImportDocumentInput", "cardId"),
            type = "string",
            name = "cardId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appId = schema.new({
            id = id.from(_N, "ImportDocumentInput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileContentsBase64 = schema.new({
            id = id.from(_N, "ImportDocumentInput", "fileContentsBase64"),
            type = "string",
            name = "fileContentsBase64",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileName = schema.new({
            id = id.from(_N, "ImportDocumentInput", "fileName"),
            type = "string",
            name = "fileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        scope = schema.new({
            id = id.from(_N, "ImportDocumentInput", "scope"),
            type = "string",
            name = "scope",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "ImportDocumentInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportDocumentOutput = schema.new({
    id = id.from(_N, "ImportDocumentOutput"),
    type = "structure",
    members = {
        fileId = schema.new({
            id = id.from(_N, "ImportDocumentOutput", "fileId"),
            type = "string",
            name = "fileId",
            target_id = prelude.String.id,
        }),
    },
})

M.LibraryItemMember = schema.new({
    id = id.from(_N, "LibraryItemMember"),
    type = "structure",
    members = {
        libraryItemId = schema.new({
            id = id.from(_N, "LibraryItemMember", "libraryItemId"),
            type = "string",
            name = "libraryItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appId = schema.new({
            id = id.from(_N, "LibraryItemMember", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appVersion = schema.new({
            id = id.from(_N, "LibraryItemMember", "appVersion"),
            type = "integer",
            name = "appVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        categories = schema.new({
            id = id.from(_N, "LibraryItemMember", "categories"),
            type = "list",
            name = "categories",
            target_id = prelude.Document.id,
            list_member = M.Category,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "LibraryItemMember", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "LibraryItemMember", "createdAt"),
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
        createdBy = schema.new({
            id = id.from(_N, "LibraryItemMember", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "LibraryItemMember", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedBy = schema.new({
            id = id.from(_N, "LibraryItemMember", "updatedBy"),
            type = "string",
            name = "updatedBy",
            target_id = prelude.String.id,
        }),
        ratingCount = schema.new({
            id = id.from(_N, "LibraryItemMember", "ratingCount"),
            type = "integer",
            name = "ratingCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        isRatedByUser = schema.new({
            id = id.from(_N, "LibraryItemMember", "isRatedByUser"),
            type = "boolean",
            name = "isRatedByUser",
            target_id = prelude.Boolean.id,
        }),
        userCount = schema.new({
            id = id.from(_N, "LibraryItemMember", "userCount"),
            type = "integer",
            name = "userCount",
            target_id = prelude.Integer.id,
        }),
        isVerified = schema.new({
            id = id.from(_N, "LibraryItemMember", "isVerified"),
            type = "boolean",
            name = "isVerified",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ListCategoriesInput = schema.new({
    id = id.from(_N, "ListCategoriesInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "ListCategoriesInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
    },
})

M.ListCategoriesOutput = schema.new({
    id = id.from(_N, "ListCategoriesOutput"),
    type = "structure",
    members = {
        categories = schema.new({
            id = id.from(_N, "ListCategoriesOutput", "categories"),
            type = "list",
            name = "categories",
            target_id = prelude.Document.id,
            list_member = M.Category,
        }),
    },
})

M.ListLibraryItemsInput = schema.new({
    id = id.from(_N, "ListLibraryItemsInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "ListLibraryItemsInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "ListLibraryItemsInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListLibraryItemsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        categoryId = schema.new({
            id = id.from(_N, "ListLibraryItemsInput", "categoryId"),
            type = "string",
            name = "categoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "categoryId" },
            },
        }),
    },
})

M.ListLibraryItemsOutput = schema.new({
    id = id.from(_N, "ListLibraryItemsOutput"),
    type = "structure",
    members = {
        libraryItems = schema.new({
            id = id.from(_N, "ListLibraryItemsOutput", "libraryItems"),
            type = "list",
            name = "libraryItems",
            target_id = prelude.Document.id,
            list_member = M.LibraryItemMember,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListLibraryItemsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListQAppsInput = schema.new({
    id = id.from(_N, "ListQAppsInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "ListQAppsInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        limit = schema.new({
            id = id.from(_N, "ListQAppsInput", "limit"),
            type = "integer",
            name = "limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "limit" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListQAppsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.UserAppItem = schema.new({
    id = id.from(_N, "UserAppItem"),
    type = "structure",
    members = {
        appId = schema.new({
            id = id.from(_N, "UserAppItem", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appArn = schema.new({
            id = id.from(_N, "UserAppItem", "appArn"),
            type = "string",
            name = "appArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "UserAppItem", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UserAppItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UserAppItem", "createdAt"),
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
        canEdit = schema.new({
            id = id.from(_N, "UserAppItem", "canEdit"),
            type = "boolean",
            name = "canEdit",
            target_id = prelude.Boolean.id,
        }),
        status = schema.new({
            id = id.from(_N, "UserAppItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        isVerified = schema.new({
            id = id.from(_N, "UserAppItem", "isVerified"),
            type = "boolean",
            name = "isVerified",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.ListQAppsOutput = schema.new({
    id = id.from(_N, "ListQAppsOutput"),
    type = "structure",
    members = {
        apps = schema.new({
            id = id.from(_N, "ListQAppsOutput", "apps"),
            type = "list",
            name = "apps",
            target_id = prelude.Document.id,
            list_member = M.UserAppItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListQAppsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListQAppSessionDataInput = schema.new({
    id = id.from(_N, "ListQAppSessionDataInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "ListQAppSessionDataInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "ListQAppSessionDataInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "sessionId" },
            },
        }),
    },
})

M.User = schema.new({
    id = id.from(_N, "User"),
    type = "structure",
    members = {
        userId = schema.new({
            id = id.from(_N, "User", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
    },
})

M.QAppSessionData = schema.new({
    id = id.from(_N, "QAppSessionData"),
    type = "structure",
    members = {
        cardId = schema.new({
            id = id.from(_N, "QAppSessionData", "cardId"),
            type = "string",
            name = "cardId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "QAppSessionData", "value"),
            type = "document",
            name = "value",
            target_id = prelude.Document.id,
        }),
        user = schema.new({
            id = id.from(_N, "QAppSessionData", "user"),
            type = "structure",
            name = "user",
            target_id = id.from(_N, "User"),
            target = M.User,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        submissionId = schema.new({
            id = id.from(_N, "QAppSessionData", "submissionId"),
            type = "string",
            name = "submissionId",
            target_id = prelude.String.id,
        }),
        timestamp = schema.new({
            id = id.from(_N, "QAppSessionData", "timestamp"),
            type = "timestamp",
            name = "timestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListQAppSessionDataOutput = schema.new({
    id = id.from(_N, "ListQAppSessionDataOutput"),
    type = "structure",
    members = {
        sessionId = schema.new({
            id = id.from(_N, "ListQAppSessionDataOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionArn = schema.new({
            id = id.from(_N, "ListQAppSessionDataOutput", "sessionArn"),
            type = "string",
            name = "sessionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionData = schema.new({
            id = id.from(_N, "ListQAppSessionDataOutput", "sessionData"),
            type = "list",
            name = "sessionData",
            target_id = prelude.Document.id,
            list_member = M.QAppSessionData,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListQAppSessionDataOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
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
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.PermissionInput = schema.new({
    id = id.from(_N, "PermissionInput"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "PermissionInput", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        principal = schema.new({
            id = id.from(_N, "PermissionInput", "principal"),
            type = "string",
            name = "principal",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PredictQAppInputOptions = schema.new({
    id = id.from(_N, "PredictQAppInputOptions"),
    type = "union",
    members = {
        conversation = schema.new({
            id = id.from(_N, "PredictQAppInputOptions", "conversation"),
            type = "list",
            name = "conversation",
            target_id = prelude.Document.id,
            list_member = M.ConversationMessage,
        }),
        problemStatement = schema.new({
            id = id.from(_N, "PredictQAppInputOptions", "problemStatement"),
            type = "string",
            name = "problemStatement",
            target_id = prelude.String.id,
        }),
    },
})

M.PredictQAppInput = schema.new({
    id = id.from(_N, "PredictQAppInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "PredictQAppInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        options = schema.new({
            id = id.from(_N, "PredictQAppInput", "options"),
            type = "union",
            name = "options",
            target_id = id.from(_N, "PredictQAppInputOptions"),
            target = M.PredictQAppInputOptions,
        }),
    },
})

M.StartQAppSessionInput = schema.new({
    id = id.from(_N, "StartQAppSessionInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "StartQAppSessionInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        appId = schema.new({
            id = id.from(_N, "StartQAppSessionInput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appVersion = schema.new({
            id = id.from(_N, "StartQAppSessionInput", "appVersion"),
            type = "integer",
            name = "appVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        initialValues = schema.new({
            id = id.from(_N, "StartQAppSessionInput", "initialValues"),
            type = "list",
            name = "initialValues",
            target_id = prelude.Document.id,
            list_member = M.CardValue,
        }),
        sessionId = schema.new({
            id = id.from(_N, "StartQAppSessionInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "StartQAppSessionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartQAppSessionOutput = schema.new({
    id = id.from(_N, "StartQAppSessionOutput"),
    type = "structure",
    members = {
        sessionId = schema.new({
            id = id.from(_N, "StartQAppSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionArn = schema.new({
            id = id.from(_N, "StartQAppSessionOutput", "sessionArn"),
            type = "string",
            name = "sessionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopQAppSessionInput = schema.new({
    id = id.from(_N, "StopQAppSessionInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "StopQAppSessionInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "StopQAppSessionInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopQAppSessionOutput = schema.new({
    id = id.from(_N, "StopQAppSessionOutput"),
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
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
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

M.UpdateLibraryItemInput = schema.new({
    id = id.from(_N, "UpdateLibraryItemInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "UpdateLibraryItemInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        libraryItemId = schema.new({
            id = id.from(_N, "UpdateLibraryItemInput", "libraryItemId"),
            type = "string",
            name = "libraryItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateLibraryItemInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        categories = schema.new({
            id = id.from(_N, "UpdateLibraryItemInput", "categories"),
            type = "list",
            name = "categories",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateLibraryItemOutput = schema.new({
    id = id.from(_N, "UpdateLibraryItemOutput"),
    type = "structure",
    members = {
        libraryItemId = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "libraryItemId"),
            type = "string",
            name = "libraryItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appId = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appVersion = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "appVersion"),
            type = "integer",
            name = "appVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        categories = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "categories"),
            type = "list",
            name = "categories",
            target_id = prelude.Document.id,
            list_member = M.Category,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "createdAt"),
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
        createdBy = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedBy = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "updatedBy"),
            type = "string",
            name = "updatedBy",
            target_id = prelude.String.id,
        }),
        ratingCount = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "ratingCount"),
            type = "integer",
            name = "ratingCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        isRatedByUser = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "isRatedByUser"),
            type = "boolean",
            name = "isRatedByUser",
            target_id = prelude.Boolean.id,
        }),
        userCount = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "userCount"),
            type = "integer",
            name = "userCount",
            target_id = prelude.Integer.id,
        }),
        isVerified = schema.new({
            id = id.from(_N, "UpdateLibraryItemOutput", "isVerified"),
            type = "boolean",
            name = "isVerified",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateLibraryItemMetadataInput = schema.new({
    id = id.from(_N, "UpdateLibraryItemMetadataInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "UpdateLibraryItemMetadataInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        libraryItemId = schema.new({
            id = id.from(_N, "UpdateLibraryItemMetadataInput", "libraryItemId"),
            type = "string",
            name = "libraryItemId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        isVerified = schema.new({
            id = id.from(_N, "UpdateLibraryItemMetadataInput", "isVerified"),
            type = "boolean",
            name = "isVerified",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateLibraryItemMetadataOutput = schema.new({
    id = id.from(_N, "UpdateLibraryItemMetadataOutput"),
    type = "structure",
})

M.UpdateQAppOutput = schema.new({
    id = id.from(_N, "UpdateQAppOutput"),
    type = "structure",
    members = {
        appId = schema.new({
            id = id.from(_N, "UpdateQAppOutput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appArn = schema.new({
            id = id.from(_N, "UpdateQAppOutput", "appArn"),
            type = "string",
            name = "appArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "UpdateQAppOutput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateQAppOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        initialPrompt = schema.new({
            id = id.from(_N, "UpdateQAppOutput", "initialPrompt"),
            type = "string",
            name = "initialPrompt",
            target_id = prelude.String.id,
        }),
        appVersion = schema.new({
            id = id.from(_N, "UpdateQAppOutput", "appVersion"),
            type = "integer",
            name = "appVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateQAppOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateQAppOutput", "createdAt"),
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
        createdBy = schema.new({
            id = id.from(_N, "UpdateQAppOutput", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateQAppOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedBy = schema.new({
            id = id.from(_N, "UpdateQAppOutput", "updatedBy"),
            type = "string",
            name = "updatedBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        requiredCapabilities = schema.new({
            id = id.from(_N, "UpdateQAppOutput", "requiredCapabilities"),
            type = "list",
            name = "requiredCapabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateQAppPermissionsInput = schema.new({
    id = id.from(_N, "UpdateQAppPermissionsInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "UpdateQAppPermissionsInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        appId = schema.new({
            id = id.from(_N, "UpdateQAppPermissionsInput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        grantPermissions = schema.new({
            id = id.from(_N, "UpdateQAppPermissionsInput", "grantPermissions"),
            type = "list",
            name = "grantPermissions",
            target_id = prelude.Document.id,
            list_member = M.PermissionInput,
        }),
        revokePermissions = schema.new({
            id = id.from(_N, "UpdateQAppPermissionsInput", "revokePermissions"),
            type = "list",
            name = "revokePermissions",
            target_id = prelude.Document.id,
            list_member = M.PermissionInput,
        }),
    },
})

M.UpdateQAppPermissionsOutput = schema.new({
    id = id.from(_N, "UpdateQAppPermissionsOutput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UpdateQAppPermissionsOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
        }),
        appId = schema.new({
            id = id.from(_N, "UpdateQAppPermissionsOutput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
        }),
        permissions = schema.new({
            id = id.from(_N, "UpdateQAppPermissionsOutput", "permissions"),
            type = "list",
            name = "permissions",
            target_id = prelude.Document.id,
            list_member = M.PermissionOutput,
        }),
    },
})

M.UpdateQAppSessionInput = schema.new({
    id = id.from(_N, "UpdateQAppSessionInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "UpdateQAppSessionInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "UpdateQAppSessionInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        values = schema.new({
            id = id.from(_N, "UpdateQAppSessionInput", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = M.CardValue,
        }),
    },
})

M.UpdateQAppSessionOutput = schema.new({
    id = id.from(_N, "UpdateQAppSessionOutput"),
    type = "structure",
    members = {
        sessionId = schema.new({
            id = id.from(_N, "UpdateQAppSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionArn = schema.new({
            id = id.from(_N, "UpdateQAppSessionOutput", "sessionArn"),
            type = "string",
            name = "sessionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateQAppSessionMetadataInput = schema.new({
    id = id.from(_N, "UpdateQAppSessionMetadataInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "UpdateQAppSessionMetadataInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "UpdateQAppSessionMetadataInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionName = schema.new({
            id = id.from(_N, "UpdateQAppSessionMetadataInput", "sessionName"),
            type = "string",
            name = "sessionName",
            target_id = prelude.String.id,
        }),
        sharingConfiguration = schema.new({
            id = id.from(_N, "UpdateQAppSessionMetadataInput", "sharingConfiguration"),
            type = "structure",
            name = "sharingConfiguration",
            target_id = id.from(_N, "SessionSharingConfiguration"),
            target = M.SessionSharingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateQAppSessionMetadataOutput = schema.new({
    id = id.from(_N, "UpdateQAppSessionMetadataOutput"),
    type = "structure",
    members = {
        sessionId = schema.new({
            id = id.from(_N, "UpdateQAppSessionMetadataOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionArn = schema.new({
            id = id.from(_N, "UpdateQAppSessionMetadataOutput", "sessionArn"),
            type = "string",
            name = "sessionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionName = schema.new({
            id = id.from(_N, "UpdateQAppSessionMetadataOutput", "sessionName"),
            type = "string",
            name = "sessionName",
            target_id = prelude.String.id,
        }),
        sharingConfiguration = schema.new({
            id = id.from(_N, "UpdateQAppSessionMetadataOutput", "sharingConfiguration"),
            type = "structure",
            name = "sharingConfiguration",
            target_id = id.from(_N, "SessionSharingConfiguration"),
            target = M.SessionSharingConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
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

M.QQueryCard = schema.new({
    id = id.from(_N, "QQueryCard"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "QQueryCard", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "QQueryCard", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dependencies = schema.new({
            id = id.from(_N, "QQueryCard", "dependencies"),
            type = "list",
            name = "dependencies",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "QQueryCard", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        prompt = schema.new({
            id = id.from(_N, "QQueryCard", "prompt"),
            type = "string",
            name = "prompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputSource = schema.new({
            id = id.from(_N, "QQueryCard", "outputSource"),
            type = "string",
            name = "outputSource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attributeFilter = schema.new({
            id = id.from(_N, "QQueryCard", "attributeFilter"),
            type = "structure",
            name = "attributeFilter",
            target_id = id.from(_N, "AttributeFilter"),
            target = M.AttributeFilter,
        }),
        memoryReferences = schema.new({
            id = id.from(_N, "QQueryCard", "memoryReferences"),
            type = "list",
            name = "memoryReferences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.QQueryCardInput = schema.new({
    id = id.from(_N, "QQueryCardInput"),
    type = "structure",
    members = {
        title = schema.new({
            id = id.from(_N, "QQueryCardInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "QQueryCardInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "QQueryCardInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = "q-query" },
            },
        }),
        prompt = schema.new({
            id = id.from(_N, "QQueryCardInput", "prompt"),
            type = "string",
            name = "prompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputSource = schema.new({
            id = id.from(_N, "QQueryCardInput", "outputSource"),
            type = "string",
            name = "outputSource",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "approved-sources" },
            },
        }),
        attributeFilter = schema.new({
            id = id.from(_N, "QQueryCardInput", "attributeFilter"),
            type = "structure",
            name = "attributeFilter",
            target_id = id.from(_N, "AttributeFilter"),
            target = M.AttributeFilter,
        }),
    },
})

M.Card = schema.new({
    id = id.from(_N, "Card"),
    type = "union",
    members = {
        textInput = schema.new({
            id = id.from(_N, "Card", "textInput"),
            type = "structure",
            name = "textInput",
            target_id = id.from(_N, "TextInputCard"),
            target = M.TextInputCard,
        }),
        qQuery = schema.new({
            id = id.from(_N, "Card", "qQuery"),
            type = "structure",
            name = "qQuery",
            target_id = id.from(_N, "QQueryCard"),
            target = M.QQueryCard,
        }),
        qPlugin = schema.new({
            id = id.from(_N, "Card", "qPlugin"),
            type = "structure",
            name = "qPlugin",
            target_id = id.from(_N, "QPluginCard"),
            target = M.QPluginCard,
        }),
        fileUpload = schema.new({
            id = id.from(_N, "Card", "fileUpload"),
            type = "structure",
            name = "fileUpload",
            target_id = id.from(_N, "FileUploadCard"),
            target = M.FileUploadCard,
        }),
        formInput = schema.new({
            id = id.from(_N, "Card", "formInput"),
            type = "structure",
            name = "formInput",
            target_id = id.from(_N, "FormInputCard"),
            target = M.FormInputCard,
        }),
    },
})

M.CardInput = schema.new({
    id = id.from(_N, "CardInput"),
    type = "union",
    members = {
        textInput = schema.new({
            id = id.from(_N, "CardInput", "textInput"),
            type = "structure",
            name = "textInput",
            target_id = id.from(_N, "TextInputCardInput"),
            target = M.TextInputCardInput,
        }),
        qQuery = schema.new({
            id = id.from(_N, "CardInput", "qQuery"),
            type = "structure",
            name = "qQuery",
            target_id = id.from(_N, "QQueryCardInput"),
            target = M.QQueryCardInput,
        }),
        qPlugin = schema.new({
            id = id.from(_N, "CardInput", "qPlugin"),
            type = "structure",
            name = "qPlugin",
            target_id = id.from(_N, "QPluginCardInput"),
            target = M.QPluginCardInput,
        }),
        fileUpload = schema.new({
            id = id.from(_N, "CardInput", "fileUpload"),
            type = "structure",
            name = "fileUpload",
            target_id = id.from(_N, "FileUploadCardInput"),
            target = M.FileUploadCardInput,
        }),
        formInput = schema.new({
            id = id.from(_N, "CardInput", "formInput"),
            type = "structure",
            name = "formInput",
            target_id = id.from(_N, "FormInputCardInput"),
            target = M.FormInputCardInput,
        }),
    },
})

M.AppDefinition = schema.new({
    id = id.from(_N, "AppDefinition"),
    type = "structure",
    members = {
        appDefinitionVersion = schema.new({
            id = id.from(_N, "AppDefinition", "appDefinitionVersion"),
            type = "string",
            name = "appDefinitionVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cards = schema.new({
            id = id.from(_N, "AppDefinition", "cards"),
            type = "list",
            name = "cards",
            target_id = prelude.Document.id,
            list_member = M.Card,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        canEdit = schema.new({
            id = id.from(_N, "AppDefinition", "canEdit"),
            type = "boolean",
            name = "canEdit",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AppDefinitionInput = schema.new({
    id = id.from(_N, "AppDefinitionInput"),
    type = "structure",
    members = {
        cards = schema.new({
            id = id.from(_N, "AppDefinitionInput", "cards"),
            type = "list",
            name = "cards",
            target_id = prelude.Document.id,
            list_member = M.CardInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        initialPrompt = schema.new({
            id = id.from(_N, "AppDefinitionInput", "initialPrompt"),
            type = "string",
            name = "initialPrompt",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateQAppInput = schema.new({
    id = id.from(_N, "CreateQAppInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "CreateQAppInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        title = schema.new({
            id = id.from(_N, "CreateQAppInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateQAppInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        appDefinition = schema.new({
            id = id.from(_N, "CreateQAppInput", "appDefinition"),
            type = "structure",
            name = "appDefinition",
            target_id = id.from(_N, "AppDefinitionInput"),
            target = M.AppDefinitionInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateQAppInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetQAppOutput = schema.new({
    id = id.from(_N, "GetQAppOutput"),
    type = "structure",
    members = {
        appId = schema.new({
            id = id.from(_N, "GetQAppOutput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appArn = schema.new({
            id = id.from(_N, "GetQAppOutput", "appArn"),
            type = "string",
            name = "appArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "GetQAppOutput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetQAppOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        initialPrompt = schema.new({
            id = id.from(_N, "GetQAppOutput", "initialPrompt"),
            type = "string",
            name = "initialPrompt",
            target_id = prelude.String.id,
        }),
        appVersion = schema.new({
            id = id.from(_N, "GetQAppOutput", "appVersion"),
            type = "integer",
            name = "appVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetQAppOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetQAppOutput", "createdAt"),
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
        createdBy = schema.new({
            id = id.from(_N, "GetQAppOutput", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetQAppOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedBy = schema.new({
            id = id.from(_N, "GetQAppOutput", "updatedBy"),
            type = "string",
            name = "updatedBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        requiredCapabilities = schema.new({
            id = id.from(_N, "GetQAppOutput", "requiredCapabilities"),
            type = "list",
            name = "requiredCapabilities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        appDefinition = schema.new({
            id = id.from(_N, "GetQAppOutput", "appDefinition"),
            type = "structure",
            name = "appDefinition",
            target_id = id.from(_N, "AppDefinition"),
            target = M.AppDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PredictAppDefinition = schema.new({
    id = id.from(_N, "PredictAppDefinition"),
    type = "structure",
    members = {
        title = schema.new({
            id = id.from(_N, "PredictAppDefinition", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "PredictAppDefinition", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        appDefinition = schema.new({
            id = id.from(_N, "PredictAppDefinition", "appDefinition"),
            type = "structure",
            name = "appDefinition",
            target_id = id.from(_N, "AppDefinitionInput"),
            target = M.AppDefinitionInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateQAppInput = schema.new({
    id = id.from(_N, "UpdateQAppInput"),
    type = "structure",
    members = {
        instanceId = schema.new({
            id = id.from(_N, "UpdateQAppInput", "instanceId"),
            type = "string",
            name = "instanceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "instance-id" },
            },
        }),
        appId = schema.new({
            id = id.from(_N, "UpdateQAppInput", "appId"),
            type = "string",
            name = "appId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "UpdateQAppInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateQAppInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        appDefinition = schema.new({
            id = id.from(_N, "UpdateQAppInput", "appDefinition"),
            type = "structure",
            name = "appDefinition",
            target_id = id.from(_N, "AppDefinitionInput"),
            target = M.AppDefinitionInput,
        }),
    },
})

M.PredictQAppOutput = schema.new({
    id = id.from(_N, "PredictQAppOutput"),
    type = "structure",
    members = {
        app = schema.new({
            id = id.from(_N, "PredictQAppOutput", "app"),
            type = "structure",
            name = "app",
            target_id = id.from(_N, "PredictAppDefinition"),
            target = M.PredictAppDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        problemStatement = schema.new({
            id = id.from(_N, "PredictQAppOutput", "problemStatement"),
            type = "string",
            name = "problemStatement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

return M
