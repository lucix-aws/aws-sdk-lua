local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.repostspace"

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

M.BatchAddChannelRoleToAccessorsInput = schema.new({
    id = id.from(_N, "BatchAddChannelRoleToAccessorsInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "BatchAddChannelRoleToAccessorsInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        channelId = schema.new({
            id = id.from(_N, "BatchAddChannelRoleToAccessorsInput", "channelId"),
            type = "string",
            name = "channelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        accessorIds = schema.new({
            id = id.from(_N, "BatchAddChannelRoleToAccessorsInput", "accessorIds"),
            type = "list",
            name = "accessorIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelRole = schema.new({
            id = id.from(_N, "BatchAddChannelRoleToAccessorsInput", "channelRole"),
            type = "string",
            name = "channelRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchError = schema.new({
    id = id.from(_N, "BatchError"),
    type = "structure",
    members = {
        accessorId = schema.new({
            id = id.from(_N, "BatchError", "accessorId"),
            type = "string",
            name = "accessorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        error = schema.new({
            id = id.from(_N, "BatchError", "error"),
            type = "integer",
            name = "error",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "BatchError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchAddChannelRoleToAccessorsOutput = schema.new({
    id = id.from(_N, "BatchAddChannelRoleToAccessorsOutput"),
    type = "structure",
    members = {
        addedAccessorIds = schema.new({
            id = id.from(_N, "BatchAddChannelRoleToAccessorsOutput", "addedAccessorIds"),
            type = "list",
            name = "addedAccessorIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "BatchAddChannelRoleToAccessorsOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchError,
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
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ThrottlingException", "quotaCode"),
            type = "string",
            name = "quotaCode",
            target_id = prelude.String.id,
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
        fieldList = schema.new({
            id = id.from(_N, "ValidationException", "fieldList"),
            type = "list",
            name = "fieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.BatchAddRoleInput = schema.new({
    id = id.from(_N, "BatchAddRoleInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "BatchAddRoleInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        accessorIds = schema.new({
            id = id.from(_N, "BatchAddRoleInput", "accessorIds"),
            type = "list",
            name = "accessorIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        role = schema.new({
            id = id.from(_N, "BatchAddRoleInput", "role"),
            type = "string",
            name = "role",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchAddRoleOutput = schema.new({
    id = id.from(_N, "BatchAddRoleOutput"),
    type = "structure",
    members = {
        addedAccessorIds = schema.new({
            id = id.from(_N, "BatchAddRoleOutput", "addedAccessorIds"),
            type = "list",
            name = "addedAccessorIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "BatchAddRoleOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchError,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchRemoveChannelRoleFromAccessorsInput = schema.new({
    id = id.from(_N, "BatchRemoveChannelRoleFromAccessorsInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "BatchRemoveChannelRoleFromAccessorsInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        channelId = schema.new({
            id = id.from(_N, "BatchRemoveChannelRoleFromAccessorsInput", "channelId"),
            type = "string",
            name = "channelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        accessorIds = schema.new({
            id = id.from(_N, "BatchRemoveChannelRoleFromAccessorsInput", "accessorIds"),
            type = "list",
            name = "accessorIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelRole = schema.new({
            id = id.from(_N, "BatchRemoveChannelRoleFromAccessorsInput", "channelRole"),
            type = "string",
            name = "channelRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchRemoveChannelRoleFromAccessorsOutput = schema.new({
    id = id.from(_N, "BatchRemoveChannelRoleFromAccessorsOutput"),
    type = "structure",
    members = {
        removedAccessorIds = schema.new({
            id = id.from(_N, "BatchRemoveChannelRoleFromAccessorsOutput", "removedAccessorIds"),
            type = "list",
            name = "removedAccessorIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "BatchRemoveChannelRoleFromAccessorsOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchError,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchRemoveRoleInput = schema.new({
    id = id.from(_N, "BatchRemoveRoleInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "BatchRemoveRoleInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        accessorIds = schema.new({
            id = id.from(_N, "BatchRemoveRoleInput", "accessorIds"),
            type = "list",
            name = "accessorIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        role = schema.new({
            id = id.from(_N, "BatchRemoveRoleInput", "role"),
            type = "string",
            name = "role",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchRemoveRoleOutput = schema.new({
    id = id.from(_N, "BatchRemoveRoleOutput"),
    type = "structure",
    members = {
        removedAccessorIds = schema.new({
            id = id.from(_N, "BatchRemoveRoleOutput", "removedAccessorIds"),
            type = "list",
            name = "removedAccessorIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        errors = schema.new({
            id = id.from(_N, "BatchRemoveRoleOutput", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.BatchError,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChannelData = schema.new({
    id = id.from(_N, "ChannelData"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "ChannelData", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelId = schema.new({
            id = id.from(_N, "ChannelData", "channelId"),
            type = "string",
            name = "channelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelName = schema.new({
            id = id.from(_N, "ChannelData", "channelName"),
            type = "string",
            name = "channelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelDescription = schema.new({
            id = id.from(_N, "ChannelData", "channelDescription"),
            type = "string",
            name = "channelDescription",
            target_id = prelude.String.id,
        }),
        createDateTime = schema.new({
            id = id.from(_N, "ChannelData", "createDateTime"),
            type = "timestamp",
            name = "createDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        deleteDateTime = schema.new({
            id = id.from(_N, "ChannelData", "deleteDateTime"),
            type = "timestamp",
            name = "deleteDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        channelStatus = schema.new({
            id = id.from(_N, "ChannelData", "channelStatus"),
            type = "string",
            name = "channelStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userCount = schema.new({
            id = id.from(_N, "ChannelData", "userCount"),
            type = "integer",
            name = "userCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        groupCount = schema.new({
            id = id.from(_N, "ChannelData", "groupCount"),
            type = "integer",
            name = "groupCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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

M.CreateChannelInput = schema.new({
    id = id.from(_N, "CreateChannelInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "CreateChannelInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        channelName = schema.new({
            id = id.from(_N, "CreateChannelInput", "channelName"),
            type = "string",
            name = "channelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelDescription = schema.new({
            id = id.from(_N, "CreateChannelInput", "channelDescription"),
            type = "string",
            name = "channelDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateChannelOutput = schema.new({
    id = id.from(_N, "CreateChannelOutput"),
    type = "structure",
    members = {
        channelId = schema.new({
            id = id.from(_N, "CreateChannelOutput", "channelId"),
            type = "string",
            name = "channelId",
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

M.SupportedEmailDomainsParameters = schema.new({
    id = id.from(_N, "SupportedEmailDomainsParameters"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "SupportedEmailDomainsParameters", "enabled"),
            type = "string",
            name = "enabled",
            target_id = prelude.String.id,
        }),
        allowedDomains = schema.new({
            id = id.from(_N, "SupportedEmailDomainsParameters", "allowedDomains"),
            type = "list",
            name = "allowedDomains",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateSpaceInput = schema.new({
    id = id.from(_N, "CreateSpaceInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateSpaceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subdomain = schema.new({
            id = id.from(_N, "CreateSpaceInput", "subdomain"),
            type = "string",
            name = "subdomain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tier = schema.new({
            id = id.from(_N, "CreateSpaceInput", "tier"),
            type = "string",
            name = "tier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateSpaceInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        userKMSKey = schema.new({
            id = id.from(_N, "CreateSpaceInput", "userKMSKey"),
            type = "string",
            name = "userKMSKey",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateSpaceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateSpaceInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        supportedEmailDomains = schema.new({
            id = id.from(_N, "CreateSpaceInput", "supportedEmailDomains"),
            type = "structure",
            name = "supportedEmailDomains",
            target_id = id.from(_N, "SupportedEmailDomainsParameters"),
            target = M.SupportedEmailDomainsParameters,
        }),
    },
})

M.CreateSpaceOutput = schema.new({
    id = id.from(_N, "CreateSpaceOutput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "CreateSpaceOutput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSpaceInput = schema.new({
    id = id.from(_N, "DeleteSpaceInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "DeleteSpaceInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteSpaceOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeregisterAdminInput = schema.new({
    id = id.from(_N, "DeregisterAdminInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "DeregisterAdminInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        adminId = schema.new({
            id = id.from(_N, "DeregisterAdminInput", "adminId"),
            type = "string",
            name = "adminId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeregisterAdminOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.GetChannelInput = schema.new({
    id = id.from(_N, "GetChannelInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "GetChannelInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        channelId = schema.new({
            id = id.from(_N, "GetChannelInput", "channelId"),
            type = "string",
            name = "channelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetChannelOutput = schema.new({
    id = id.from(_N, "GetChannelOutput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "GetChannelOutput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelId = schema.new({
            id = id.from(_N, "GetChannelOutput", "channelId"),
            type = "string",
            name = "channelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelName = schema.new({
            id = id.from(_N, "GetChannelOutput", "channelName"),
            type = "string",
            name = "channelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelDescription = schema.new({
            id = id.from(_N, "GetChannelOutput", "channelDescription"),
            type = "string",
            name = "channelDescription",
            target_id = prelude.String.id,
        }),
        createDateTime = schema.new({
            id = id.from(_N, "GetChannelOutput", "createDateTime"),
            type = "timestamp",
            name = "createDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        deleteDateTime = schema.new({
            id = id.from(_N, "GetChannelOutput", "deleteDateTime"),
            type = "timestamp",
            name = "deleteDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        channelRoles = schema.new({
            id = id.from(_N, "GetChannelOutput", "channelRoles"),
            type = "map",
            name = "channelRoles",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        channelStatus = schema.new({
            id = id.from(_N, "GetChannelOutput", "channelStatus"),
            type = "string",
            name = "channelStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSpaceInput = schema.new({
    id = id.from(_N, "GetSpaceInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "GetSpaceInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.SupportedEmailDomainsStatus = schema.new({
    id = id.from(_N, "SupportedEmailDomainsStatus"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "SupportedEmailDomainsStatus", "enabled"),
            type = "string",
            name = "enabled",
            target_id = prelude.String.id,
        }),
        allowedDomains = schema.new({
            id = id.from(_N, "SupportedEmailDomainsStatus", "allowedDomains"),
            type = "list",
            name = "allowedDomains",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetSpaceOutput = schema.new({
    id = id.from(_N, "GetSpaceOutput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "GetSpaceOutput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "GetSpaceOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetSpaceOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetSpaceOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configurationStatus = schema.new({
            id = id.from(_N, "GetSpaceOutput", "configurationStatus"),
            type = "string",
            name = "configurationStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "GetSpaceOutput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identityStoreId = schema.new({
            id = id.from(_N, "GetSpaceOutput", "identityStoreId"),
            type = "string",
            name = "identityStoreId",
            target_id = prelude.String.id,
        }),
        applicationArn = schema.new({
            id = id.from(_N, "GetSpaceOutput", "applicationArn"),
            type = "string",
            name = "applicationArn",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetSpaceOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        vanityDomainStatus = schema.new({
            id = id.from(_N, "GetSpaceOutput", "vanityDomainStatus"),
            type = "string",
            name = "vanityDomainStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vanityDomain = schema.new({
            id = id.from(_N, "GetSpaceOutput", "vanityDomain"),
            type = "string",
            name = "vanityDomain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        randomDomain = schema.new({
            id = id.from(_N, "GetSpaceOutput", "randomDomain"),
            type = "string",
            name = "randomDomain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        customerRoleArn = schema.new({
            id = id.from(_N, "GetSpaceOutput", "customerRoleArn"),
            type = "string",
            name = "customerRoleArn",
            target_id = prelude.String.id,
        }),
        createDateTime = schema.new({
            id = id.from(_N, "GetSpaceOutput", "createDateTime"),
            type = "timestamp",
            name = "createDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        deleteDateTime = schema.new({
            id = id.from(_N, "GetSpaceOutput", "deleteDateTime"),
            type = "timestamp",
            name = "deleteDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        tier = schema.new({
            id = id.from(_N, "GetSpaceOutput", "tier"),
            type = "string",
            name = "tier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storageLimit = schema.new({
            id = id.from(_N, "GetSpaceOutput", "storageLimit"),
            type = "long",
            name = "storageLimit",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userAdmins = schema.new({
            id = id.from(_N, "GetSpaceOutput", "userAdmins"),
            type = "list",
            name = "userAdmins",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        groupAdmins = schema.new({
            id = id.from(_N, "GetSpaceOutput", "groupAdmins"),
            type = "list",
            name = "groupAdmins",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        roles = schema.new({
            id = id.from(_N, "GetSpaceOutput", "roles"),
            type = "map",
            name = "roles",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
        userKMSKey = schema.new({
            id = id.from(_N, "GetSpaceOutput", "userKMSKey"),
            type = "string",
            name = "userKMSKey",
            target_id = prelude.String.id,
        }),
        userCount = schema.new({
            id = id.from(_N, "GetSpaceOutput", "userCount"),
            type = "integer",
            name = "userCount",
            target_id = prelude.Integer.id,
        }),
        contentSize = schema.new({
            id = id.from(_N, "GetSpaceOutput", "contentSize"),
            type = "long",
            name = "contentSize",
            target_id = prelude.Long.id,
        }),
        supportedEmailDomains = schema.new({
            id = id.from(_N, "GetSpaceOutput", "supportedEmailDomains"),
            type = "structure",
            name = "supportedEmailDomains",
            target_id = id.from(_N, "SupportedEmailDomainsStatus"),
            target = M.SupportedEmailDomainsStatus,
        }),
    },
})

M.ListChannelsInput = schema.new({
    id = id.from(_N, "ListChannelsInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "ListChannelsInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListChannelsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListChannelsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 10 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListChannelsOutput = schema.new({
    id = id.from(_N, "ListChannelsOutput"),
    type = "structure",
    members = {
        channels = schema.new({
            id = id.from(_N, "ListChannelsOutput", "channels"),
            type = "list",
            name = "channels",
            target_id = prelude.Document.id,
            list_member = M.ChannelData,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListChannelsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSpacesInput = schema.new({
    id = id.from(_N, "ListSpacesInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSpacesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSpacesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 10 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.SpaceData = schema.new({
    id = id.from(_N, "SpaceData"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "SpaceData", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "SpaceData", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "SpaceData", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "SpaceData", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "SpaceData", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configurationStatus = schema.new({
            id = id.from(_N, "SpaceData", "configurationStatus"),
            type = "string",
            name = "configurationStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vanityDomainStatus = schema.new({
            id = id.from(_N, "SpaceData", "vanityDomainStatus"),
            type = "string",
            name = "vanityDomainStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vanityDomain = schema.new({
            id = id.from(_N, "SpaceData", "vanityDomain"),
            type = "string",
            name = "vanityDomain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        randomDomain = schema.new({
            id = id.from(_N, "SpaceData", "randomDomain"),
            type = "string",
            name = "randomDomain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tier = schema.new({
            id = id.from(_N, "SpaceData", "tier"),
            type = "string",
            name = "tier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        storageLimit = schema.new({
            id = id.from(_N, "SpaceData", "storageLimit"),
            type = "long",
            name = "storageLimit",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createDateTime = schema.new({
            id = id.from(_N, "SpaceData", "createDateTime"),
            type = "timestamp",
            name = "createDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        deleteDateTime = schema.new({
            id = id.from(_N, "SpaceData", "deleteDateTime"),
            type = "timestamp",
            name = "deleteDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        userKMSKey = schema.new({
            id = id.from(_N, "SpaceData", "userKMSKey"),
            type = "string",
            name = "userKMSKey",
            target_id = prelude.String.id,
        }),
        userCount = schema.new({
            id = id.from(_N, "SpaceData", "userCount"),
            type = "integer",
            name = "userCount",
            target_id = prelude.Integer.id,
        }),
        contentSize = schema.new({
            id = id.from(_N, "SpaceData", "contentSize"),
            type = "long",
            name = "contentSize",
            target_id = prelude.Long.id,
        }),
        supportedEmailDomains = schema.new({
            id = id.from(_N, "SpaceData", "supportedEmailDomains"),
            type = "structure",
            name = "supportedEmailDomains",
            target_id = id.from(_N, "SupportedEmailDomainsStatus"),
            target = M.SupportedEmailDomainsStatus,
        }),
    },
})

M.ListSpacesOutput = schema.new({
    id = id.from(_N, "ListSpacesOutput"),
    type = "structure",
    members = {
        spaces = schema.new({
            id = id.from(_N, "ListSpacesOutput", "spaces"),
            type = "list",
            name = "spaces",
            target_id = prelude.Document.id,
            list_member = M.SpaceData,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSpacesOutput", "nextToken"),
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
                [traits.HTTP_LABEL] = {},
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
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.RegisterAdminInput = schema.new({
    id = id.from(_N, "RegisterAdminInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "RegisterAdminInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        adminId = schema.new({
            id = id.from(_N, "RegisterAdminInput", "adminId"),
            type = "string",
            name = "adminId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RegisterAdminOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.SendInvitesInput = schema.new({
    id = id.from(_N, "SendInvitesInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "SendInvitesInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        accessorIds = schema.new({
            id = id.from(_N, "SendInvitesInput", "accessorIds"),
            type = "list",
            name = "accessorIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "SendInvitesInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        body = schema.new({
            id = id.from(_N, "SendInvitesInput", "body"),
            type = "string",
            name = "body",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SendInvitesOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
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
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
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
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateChannelInput = schema.new({
    id = id.from(_N, "UpdateChannelInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "UpdateChannelInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        channelId = schema.new({
            id = id.from(_N, "UpdateChannelInput", "channelId"),
            type = "string",
            name = "channelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        channelName = schema.new({
            id = id.from(_N, "UpdateChannelInput", "channelName"),
            type = "string",
            name = "channelName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        channelDescription = schema.new({
            id = id.from(_N, "UpdateChannelInput", "channelDescription"),
            type = "string",
            name = "channelDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateChannelOutput = schema.new({
    id = id.from(_N, "UpdateChannelOutput"),
    type = "structure",
})

M.UpdateSpaceInput = schema.new({
    id = id.from(_N, "UpdateSpaceInput"),
    type = "structure",
    members = {
        spaceId = schema.new({
            id = id.from(_N, "UpdateSpaceInput", "spaceId"),
            type = "string",
            name = "spaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateSpaceInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tier = schema.new({
            id = id.from(_N, "UpdateSpaceInput", "tier"),
            type = "string",
            name = "tier",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateSpaceInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        supportedEmailDomains = schema.new({
            id = id.from(_N, "UpdateSpaceInput", "supportedEmailDomains"),
            type = "structure",
            name = "supportedEmailDomains",
            target_id = id.from(_N, "SupportedEmailDomainsParameters"),
            target = M.SupportedEmailDomainsParameters,
        }),
    },
})

M.UpdateSpaceOutput = schema.new({
    id = id.from(_N, "Unit"),
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
