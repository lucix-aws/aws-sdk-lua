local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.route53globalresolver"

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

M.CreateAccessSourceInput = schema.new({
    id = id.from(_N, "CreateAccessSourceInput"),
    type = "structure",
    members = {
        cidr = schema.new({
            id = id.from(_N, "CreateAccessSourceInput", "cidr"),
            type = "string",
            name = "cidr",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateAccessSourceInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "CreateAccessSourceInput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "IPV4" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateAccessSourceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "CreateAccessSourceInput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "CreateAccessSourceInput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAccessSourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateAccessSourceOutput = schema.new({
    id = id.from(_N, "CreateAccessSourceOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreateAccessSourceOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cidr = schema.new({
            id = id.from(_N, "CreateAccessSourceOutput", "cidr"),
            type = "string",
            name = "cidr",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateAccessSourceOutput", "createdAt"),
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
        id = schema.new({
            id = id.from(_N, "CreateAccessSourceOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "CreateAccessSourceOutput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateAccessSourceOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "CreateAccessSourceOutput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "CreateAccessSourceOutput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateAccessSourceOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreateAccessSourceOutput", "updatedAt"),
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
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "quotaCode"),
            type = "string",
            name = "quotaCode",
            target_id = prelude.String.id,
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

M.DeleteAccessSourceInput = schema.new({
    id = id.from(_N, "DeleteAccessSourceInput"),
    type = "structure",
    members = {
        accessSourceId = schema.new({
            id = id.from(_N, "DeleteAccessSourceInput", "accessSourceId"),
            type = "string",
            name = "accessSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAccessSourceOutput = schema.new({
    id = id.from(_N, "DeleteAccessSourceOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteAccessSourceOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cidr = schema.new({
            id = id.from(_N, "DeleteAccessSourceOutput", "cidr"),
            type = "string",
            name = "cidr",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "DeleteAccessSourceOutput", "createdAt"),
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
        id = schema.new({
            id = id.from(_N, "DeleteAccessSourceOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "DeleteAccessSourceOutput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteAccessSourceOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "DeleteAccessSourceOutput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "DeleteAccessSourceOutput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteAccessSourceOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "DeleteAccessSourceOutput", "updatedAt"),
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
    },
})

M.GetAccessSourceInput = schema.new({
    id = id.from(_N, "GetAccessSourceInput"),
    type = "structure",
    members = {
        accessSourceId = schema.new({
            id = id.from(_N, "GetAccessSourceInput", "accessSourceId"),
            type = "string",
            name = "accessSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAccessSourceOutput = schema.new({
    id = id.from(_N, "GetAccessSourceOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetAccessSourceOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cidr = schema.new({
            id = id.from(_N, "GetAccessSourceOutput", "cidr"),
            type = "string",
            name = "cidr",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetAccessSourceOutput", "createdAt"),
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
        id = schema.new({
            id = id.from(_N, "GetAccessSourceOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "GetAccessSourceOutput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetAccessSourceOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "GetAccessSourceOutput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "GetAccessSourceOutput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetAccessSourceOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetAccessSourceOutput", "updatedAt"),
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
    },
})

M.ListAccessSourcesInput = schema.new({
    id = id.from(_N, "ListAccessSourcesInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListAccessSourcesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessSourcesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListAccessSourcesInput", "filters"),
            type = "map",
            name = "filters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
            traits = {
                [traits.HTTP_QUERY_PARAMS] = {},
            },
        }),
    },
})

M.AccessSourcesItem = schema.new({
    id = id.from(_N, "AccessSourcesItem"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "AccessSourcesItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cidr = schema.new({
            id = id.from(_N, "AccessSourcesItem", "cidr"),
            type = "string",
            name = "cidr",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "AccessSourcesItem", "createdAt"),
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
        id = schema.new({
            id = id.from(_N, "AccessSourcesItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "AccessSourcesItem", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AccessSourcesItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "AccessSourcesItem", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "AccessSourcesItem", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AccessSourcesItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "AccessSourcesItem", "updatedAt"),
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
    },
})

M.ListAccessSourcesOutput = schema.new({
    id = id.from(_N, "ListAccessSourcesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAccessSourcesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        accessSources = schema.new({
            id = id.from(_N, "ListAccessSourcesOutput", "accessSources"),
            type = "list",
            name = "accessSources",
            target_id = prelude.Document.id,
            list_member = M.AccessSourcesItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAccessSourceInput = schema.new({
    id = id.from(_N, "UpdateAccessSourceInput"),
    type = "structure",
    members = {
        accessSourceId = schema.new({
            id = id.from(_N, "UpdateAccessSourceInput", "accessSourceId"),
            type = "string",
            name = "accessSourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        cidr = schema.new({
            id = id.from(_N, "UpdateAccessSourceInput", "cidr"),
            type = "string",
            name = "cidr",
            target_id = prelude.String.id,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "UpdateAccessSourceInput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateAccessSourceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        protocol = schema.new({
            id = id.from(_N, "UpdateAccessSourceInput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAccessSourceOutput = schema.new({
    id = id.from(_N, "UpdateAccessSourceOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateAccessSourceOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cidr = schema.new({
            id = id.from(_N, "UpdateAccessSourceOutput", "cidr"),
            type = "string",
            name = "cidr",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateAccessSourceOutput", "createdAt"),
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
        id = schema.new({
            id = id.from(_N, "UpdateAccessSourceOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "UpdateAccessSourceOutput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateAccessSourceOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "UpdateAccessSourceOutput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "UpdateAccessSourceOutput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateAccessSourceOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateAccessSourceOutput", "updatedAt"),
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
    },
})

M.CreateAccessTokenInput = schema.new({
    id = id.from(_N, "CreateAccessTokenInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateAccessTokenInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "CreateAccessTokenInput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        expiresAt = schema.new({
            id = id.from(_N, "CreateAccessTokenInput", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateAccessTokenInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAccessTokenInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateAccessTokenOutput = schema.new({
    id = id.from(_N, "CreateAccessTokenOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "createdAt"),
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
        dnsViewId = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiresAt = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "expiresAt"),
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
        name = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "CreateAccessTokenOutput", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAccessTokenInput = schema.new({
    id = id.from(_N, "DeleteAccessTokenInput"),
    type = "structure",
    members = {
        accessTokenId = schema.new({
            id = id.from(_N, "DeleteAccessTokenInput", "accessTokenId"),
            type = "string",
            name = "accessTokenId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAccessTokenOutput = schema.new({
    id = id.from(_N, "DeleteAccessTokenOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteAccessTokenOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteAccessTokenOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        deletedAt = schema.new({
            id = id.from(_N, "DeleteAccessTokenOutput", "deletedAt"),
            type = "timestamp",
            name = "deletedAt",
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

M.GetAccessTokenInput = schema.new({
    id = id.from(_N, "GetAccessTokenInput"),
    type = "structure",
    members = {
        accessTokenId = schema.new({
            id = id.from(_N, "GetAccessTokenInput", "accessTokenId"),
            type = "string",
            name = "accessTokenId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAccessTokenOutput = schema.new({
    id = id.from(_N, "GetAccessTokenOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "createdAt"),
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
        dnsViewId = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiresAt = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "expiresAt"),
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
        globalResolverId = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "updatedAt"),
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
        value = schema.new({
            id = id.from(_N, "GetAccessTokenOutput", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAccessTokensInput = schema.new({
    id = id.from(_N, "ListAccessTokensInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListAccessTokensInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAccessTokensInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "ListAccessTokensInput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListAccessTokensInput", "filters"),
            type = "map",
            name = "filters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
            traits = {
                [traits.HTTP_QUERY_PARAMS] = {},
            },
        }),
    },
})

M.AccessTokenItem = schema.new({
    id = id.from(_N, "AccessTokenItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AccessTokenItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "AccessTokenItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "AccessTokenItem", "createdAt"),
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
        dnsViewId = schema.new({
            id = id.from(_N, "AccessTokenItem", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiresAt = schema.new({
            id = id.from(_N, "AccessTokenItem", "expiresAt"),
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
        globalResolverId = schema.new({
            id = id.from(_N, "AccessTokenItem", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AccessTokenItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "AccessTokenItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "AccessTokenItem", "updatedAt"),
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
    },
})

M.ListAccessTokensOutput = schema.new({
    id = id.from(_N, "ListAccessTokensOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAccessTokensOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        accessTokens = schema.new({
            id = id.from(_N, "ListAccessTokensOutput", "accessTokens"),
            type = "list",
            name = "accessTokens",
            target_id = prelude.Document.id,
            list_member = M.AccessTokenItem,
        }),
    },
})

M.UpdateAccessTokenInput = schema.new({
    id = id.from(_N, "UpdateAccessTokenInput"),
    type = "structure",
    members = {
        accessTokenId = schema.new({
            id = id.from(_N, "UpdateAccessTokenInput", "accessTokenId"),
            type = "string",
            name = "accessTokenId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateAccessTokenInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateAccessTokenOutput = schema.new({
    id = id.from(_N, "UpdateAccessTokenOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateAccessTokenOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateAccessTokenOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateHostedZoneInput = schema.new({
    id = id.from(_N, "AssociateHostedZoneInput"),
    type = "structure",
    members = {
        hostedZoneId = schema.new({
            id = id.from(_N, "AssociateHostedZoneInput", "hostedZoneId"),
            type = "string",
            name = "hostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "AssociateHostedZoneInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AssociateHostedZoneInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateHostedZoneOutput = schema.new({
    id = id.from(_N, "AssociateHostedZoneOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "AssociateHostedZoneOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "AssociateHostedZoneOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hostedZoneId = schema.new({
            id = id.from(_N, "AssociateHostedZoneOutput", "hostedZoneId"),
            type = "string",
            name = "hostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hostedZoneName = schema.new({
            id = id.from(_N, "AssociateHostedZoneOutput", "hostedZoneName"),
            type = "string",
            name = "hostedZoneName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AssociateHostedZoneOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "AssociateHostedZoneOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "AssociateHostedZoneOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "AssociateHostedZoneOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchCreateFirewallRuleInputItem = schema.new({
    id = id.from(_N, "BatchCreateFirewallRuleInputItem"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blockOverrideDnsType = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "blockOverrideDnsType"),
            type = "string",
            name = "blockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        blockOverrideDomain = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "blockOverrideDomain"),
            type = "string",
            name = "blockOverrideDomain",
            target_id = prelude.String.id,
        }),
        blockOverrideTtl = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "blockOverrideTtl"),
            type = "integer",
            name = "blockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        blockResponse = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "blockResponse"),
            type = "string",
            name = "blockResponse",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        confidenceThreshold = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "confidenceThreshold"),
            type = "string",
            name = "confidenceThreshold",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnsAdvancedProtection = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "dnsAdvancedProtection"),
            type = "string",
            name = "dnsAdvancedProtection",
            target_id = prelude.String.id,
        }),
        firewallDomainListId = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "priority"),
            type = "long",
            name = "priority",
            target_id = prelude.Long.id,
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        qType = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInputItem", "qType"),
            type = "string",
            name = "qType",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateFirewallRuleInput = schema.new({
    id = id.from(_N, "BatchCreateFirewallRuleInput"),
    type = "structure",
    members = {
        firewallRules = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleInput", "firewallRules"),
            type = "list",
            name = "firewallRules",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateFirewallRuleInputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchCreateFirewallRuleResult = schema.new({
    id = id.from(_N, "BatchCreateFirewallRuleResult"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blockOverrideDnsType = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "blockOverrideDnsType"),
            type = "string",
            name = "blockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        blockOverrideDomain = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "blockOverrideDomain"),
            type = "string",
            name = "blockOverrideDomain",
            target_id = prelude.String.id,
        }),
        blockOverrideTtl = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "blockOverrideTtl"),
            type = "integer",
            name = "blockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        blockResponse = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "blockResponse"),
            type = "string",
            name = "blockResponse",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        confidenceThreshold = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "confidenceThreshold"),
            type = "string",
            name = "confidenceThreshold",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        description = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnsAdvancedProtection = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "dnsAdvancedProtection"),
            type = "string",
            name = "dnsAdvancedProtection",
            target_id = prelude.String.id,
        }),
        firewallDomainListId = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        managedDomainListName = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "managedDomainListName"),
            type = "string",
            name = "managedDomainListName",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "priority"),
            type = "long",
            name = "priority",
            target_id = prelude.Long.id,
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        queryType = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "queryType"),
            type = "string",
            name = "queryType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleResult", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.BatchCreateFirewallRuleOutputItem = schema.new({
    id = id.from(_N, "BatchCreateFirewallRuleOutputItem"),
    type = "structure",
    members = {
        firewallRule = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleOutputItem", "firewallRule"),
            type = "structure",
            name = "firewallRule",
            target_id = id.from(_N, "BatchCreateFirewallRuleResult"),
            target = M.BatchCreateFirewallRuleResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        code = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleOutputItem", "code"),
            type = "integer",
            name = "code",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleOutputItem", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchCreateFirewallRuleOutput = schema.new({
    id = id.from(_N, "BatchCreateFirewallRuleOutput"),
    type = "structure",
    members = {
        failures = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleOutput", "failures"),
            type = "list",
            name = "failures",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateFirewallRuleOutputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        successes = schema.new({
            id = id.from(_N, "BatchCreateFirewallRuleOutput", "successes"),
            type = "list",
            name = "successes",
            target_id = prelude.Document.id,
            list_member = M.BatchCreateFirewallRuleOutputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteFirewallRuleInputItem = schema.new({
    id = id.from(_N, "BatchDeleteFirewallRuleInputItem"),
    type = "structure",
    members = {
        firewallRuleId = schema.new({
            id = id.from(_N, "BatchDeleteFirewallRuleInputItem", "firewallRuleId"),
            type = "string",
            name = "firewallRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteFirewallRuleInput = schema.new({
    id = id.from(_N, "BatchDeleteFirewallRuleInput"),
    type = "structure",
    members = {
        firewallRules = schema.new({
            id = id.from(_N, "BatchDeleteFirewallRuleInput", "firewallRules"),
            type = "list",
            name = "firewallRules",
            target_id = prelude.Document.id,
            list_member = M.BatchDeleteFirewallRuleInputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchDeleteFirewallRuleResult = schema.new({
    id = id.from(_N, "BatchDeleteFirewallRuleResult"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "BatchDeleteFirewallRuleResult", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "BatchDeleteFirewallRuleResult", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "BatchDeleteFirewallRuleResult", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "BatchDeleteFirewallRuleResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeleteFirewallRuleOutputItem = schema.new({
    id = id.from(_N, "BatchDeleteFirewallRuleOutputItem"),
    type = "structure",
    members = {
        firewallRule = schema.new({
            id = id.from(_N, "BatchDeleteFirewallRuleOutputItem", "firewallRule"),
            type = "structure",
            name = "firewallRule",
            target_id = id.from(_N, "BatchDeleteFirewallRuleResult"),
            target = M.BatchDeleteFirewallRuleResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        code = schema.new({
            id = id.from(_N, "BatchDeleteFirewallRuleOutputItem", "code"),
            type = "integer",
            name = "code",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "BatchDeleteFirewallRuleOutputItem", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeleteFirewallRuleOutput = schema.new({
    id = id.from(_N, "BatchDeleteFirewallRuleOutput"),
    type = "structure",
    members = {
        failures = schema.new({
            id = id.from(_N, "BatchDeleteFirewallRuleOutput", "failures"),
            type = "list",
            name = "failures",
            target_id = prelude.Document.id,
            list_member = M.BatchDeleteFirewallRuleOutputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        successes = schema.new({
            id = id.from(_N, "BatchDeleteFirewallRuleOutput", "successes"),
            type = "list",
            name = "successes",
            target_id = prelude.Document.id,
            list_member = M.BatchDeleteFirewallRuleOutputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchUpdateFirewallRuleInputItem = schema.new({
    id = id.from(_N, "BatchUpdateFirewallRuleInputItem"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleInputItem", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
        }),
        blockOverrideDnsType = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleInputItem", "blockOverrideDnsType"),
            type = "string",
            name = "blockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        blockOverrideDomain = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleInputItem", "blockOverrideDomain"),
            type = "string",
            name = "blockOverrideDomain",
            target_id = prelude.String.id,
        }),
        blockOverrideTtl = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleInputItem", "blockOverrideTtl"),
            type = "integer",
            name = "blockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        blockResponse = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleInputItem", "blockResponse"),
            type = "string",
            name = "blockResponse",
            target_id = prelude.String.id,
        }),
        confidenceThreshold = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleInputItem", "confidenceThreshold"),
            type = "string",
            name = "confidenceThreshold",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleInputItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnsAdvancedProtection = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleInputItem", "dnsAdvancedProtection"),
            type = "string",
            name = "dnsAdvancedProtection",
            target_id = prelude.String.id,
        }),
        firewallRuleId = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleInputItem", "firewallRuleId"),
            type = "string",
            name = "firewallRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleInputItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        priority = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleInputItem", "priority"),
            type = "long",
            name = "priority",
            target_id = prelude.Long.id,
        }),
    },
})

M.BatchUpdateFirewallRuleInput = schema.new({
    id = id.from(_N, "BatchUpdateFirewallRuleInput"),
    type = "structure",
    members = {
        firewallRules = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleInput", "firewallRules"),
            type = "list",
            name = "firewallRules",
            target_id = prelude.Document.id,
            list_member = M.BatchUpdateFirewallRuleInputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchUpdateFirewallRuleResult = schema.new({
    id = id.from(_N, "BatchUpdateFirewallRuleResult"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
        }),
        blockOverrideDnsType = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "blockOverrideDnsType"),
            type = "string",
            name = "blockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        blockOverrideDomain = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "blockOverrideDomain"),
            type = "string",
            name = "blockOverrideDomain",
            target_id = prelude.String.id,
        }),
        blockOverrideTtl = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "blockOverrideTtl"),
            type = "integer",
            name = "blockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        blockResponse = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "blockResponse"),
            type = "string",
            name = "blockResponse",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        confidenceThreshold = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "confidenceThreshold"),
            type = "string",
            name = "confidenceThreshold",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        description = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnsAdvancedProtection = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "dnsAdvancedProtection"),
            type = "string",
            name = "dnsAdvancedProtection",
            target_id = prelude.String.id,
        }),
        firewallDomainListId = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        priority = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "priority"),
            type = "long",
            name = "priority",
            target_id = prelude.Long.id,
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
        }),
        queryType = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "queryType"),
            type = "string",
            name = "queryType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleResult", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.BatchUpdateFirewallRuleOutputItem = schema.new({
    id = id.from(_N, "BatchUpdateFirewallRuleOutputItem"),
    type = "structure",
    members = {
        firewallRule = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleOutputItem", "firewallRule"),
            type = "structure",
            name = "firewallRule",
            target_id = id.from(_N, "BatchUpdateFirewallRuleResult"),
            target = M.BatchUpdateFirewallRuleResult,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        code = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleOutputItem", "code"),
            type = "integer",
            name = "code",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleOutputItem", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchUpdateFirewallRuleOutput = schema.new({
    id = id.from(_N, "BatchUpdateFirewallRuleOutput"),
    type = "structure",
    members = {
        failures = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleOutput", "failures"),
            type = "list",
            name = "failures",
            target_id = prelude.Document.id,
            list_member = M.BatchUpdateFirewallRuleOutputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        successes = schema.new({
            id = id.from(_N, "BatchUpdateFirewallRuleOutput", "successes"),
            type = "list",
            name = "successes",
            target_id = prelude.Document.id,
            list_member = M.BatchUpdateFirewallRuleOutputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateDNSViewInput = schema.new({
    id = id.from(_N, "CreateDNSViewInput"),
    type = "structure",
    members = {
        globalResolverId = schema.new({
            id = id.from(_N, "CreateDNSViewInput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateDNSViewInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateDNSViewInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dnssecValidation = schema.new({
            id = id.from(_N, "CreateDNSViewInput", "dnssecValidation"),
            type = "string",
            name = "dnssecValidation",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "DISABLED" },
            },
        }),
        ednsClientSubnet = schema.new({
            id = id.from(_N, "CreateDNSViewInput", "ednsClientSubnet"),
            type = "string",
            name = "ednsClientSubnet",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "DISABLED" },
            },
        }),
        firewallRulesFailOpen = schema.new({
            id = id.from(_N, "CreateDNSViewInput", "firewallRulesFailOpen"),
            type = "string",
            name = "firewallRulesFailOpen",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "DISABLED" },
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateDNSViewInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDNSViewInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateDNSViewOutput = schema.new({
    id = id.from(_N, "CreateDNSViewOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateDNSViewOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "CreateDNSViewOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateDNSViewOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        dnssecValidation = schema.new({
            id = id.from(_N, "CreateDNSViewOutput", "dnssecValidation"),
            type = "string",
            name = "dnssecValidation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ednsClientSubnet = schema.new({
            id = id.from(_N, "CreateDNSViewOutput", "ednsClientSubnet"),
            type = "string",
            name = "ednsClientSubnet",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        firewallRulesFailOpen = schema.new({
            id = id.from(_N, "CreateDNSViewOutput", "firewallRulesFailOpen"),
            type = "string",
            name = "firewallRulesFailOpen",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateDNSViewOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateDNSViewOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "CreateDNSViewOutput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateDNSViewOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "CreateDNSViewOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "CreateDNSViewOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateFirewallDomainListInput = schema.new({
    id = id.from(_N, "CreateFirewallDomainListInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateFirewallDomainListInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "CreateFirewallDomainListInput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateFirewallDomainListInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateFirewallDomainListInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateFirewallDomainListInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateFirewallDomainListOutput = schema.new({
    id = id.from(_N, "CreateFirewallDomainListOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreateFirewallDomainListOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "CreateFirewallDomainListOutput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateFirewallDomainListOutput", "createdAt"),
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
        description = schema.new({
            id = id.from(_N, "CreateFirewallDomainListOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        domainCount = schema.new({
            id = id.from(_N, "CreateFirewallDomainListOutput", "domainCount"),
            type = "integer",
            name = "domainCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "CreateFirewallDomainListOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateFirewallDomainListOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateFirewallDomainListOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreateFirewallDomainListOutput", "updatedAt"),
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
    },
})

M.CreateFirewallRuleInput = schema.new({
    id = id.from(_N, "CreateFirewallRuleInput"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blockOverrideDnsType = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "blockOverrideDnsType"),
            type = "string",
            name = "blockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        blockOverrideDomain = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "blockOverrideDomain"),
            type = "string",
            name = "blockOverrideDomain",
            target_id = prelude.String.id,
        }),
        blockOverrideTtl = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "blockOverrideTtl"),
            type = "integer",
            name = "blockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        blockResponse = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "blockResponse"),
            type = "string",
            name = "blockResponse",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        confidenceThreshold = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "confidenceThreshold"),
            type = "string",
            name = "confidenceThreshold",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnsAdvancedProtection = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "dnsAdvancedProtection"),
            type = "string",
            name = "dnsAdvancedProtection",
            target_id = prelude.String.id,
        }),
        firewallDomainListId = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "priority"),
            type = "long",
            name = "priority",
            target_id = prelude.Long.id,
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        qType = schema.new({
            id = id.from(_N, "CreateFirewallRuleInput", "qType"),
            type = "string",
            name = "qType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateFirewallRuleOutput = schema.new({
    id = id.from(_N, "CreateFirewallRuleOutput"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blockOverrideDnsType = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "blockOverrideDnsType"),
            type = "string",
            name = "blockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        blockOverrideDomain = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "blockOverrideDomain"),
            type = "string",
            name = "blockOverrideDomain",
            target_id = prelude.String.id,
        }),
        blockOverrideTtl = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "blockOverrideTtl"),
            type = "integer",
            name = "blockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        blockResponse = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "blockResponse"),
            type = "string",
            name = "blockResponse",
            target_id = prelude.String.id,
        }),
        confidenceThreshold = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "confidenceThreshold"),
            type = "string",
            name = "confidenceThreshold",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "createdAt"),
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
        description = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnsAdvancedProtection = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "dnsAdvancedProtection"),
            type = "string",
            name = "dnsAdvancedProtection",
            target_id = prelude.String.id,
        }),
        firewallDomainListId = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "priority"),
            type = "long",
            name = "priority",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        queryType = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "queryType"),
            type = "string",
            name = "queryType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreateFirewallRuleOutput", "updatedAt"),
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
    },
})

M.CreateGlobalResolverInput = schema.new({
    id = id.from(_N, "CreateGlobalResolverInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateGlobalResolverInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateGlobalResolverInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "CreateGlobalResolverInput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateGlobalResolverInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        observabilityRegion = schema.new({
            id = id.from(_N, "CreateGlobalResolverInput", "observabilityRegion"),
            type = "string",
            name = "observabilityRegion",
            target_id = prelude.String.id,
        }),
        regions = schema.new({
            id = id.from(_N, "CreateGlobalResolverInput", "regions"),
            type = "list",
            name = "regions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateGlobalResolverInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateGlobalResolverOutput = schema.new({
    id = id.from(_N, "CreateGlobalResolverOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "createdAt"),
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
        description = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnsName = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "dnsName"),
            type = "string",
            name = "dnsName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
        ipv4Addresses = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "ipv4Addresses"),
            type = "list",
            name = "ipv4Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipv6Addresses = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "ipv6Addresses"),
            type = "list",
            name = "ipv6Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        name = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        observabilityRegion = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "observabilityRegion"),
            type = "string",
            name = "observabilityRegion",
            target_id = prelude.String.id,
        }),
        regions = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "regions"),
            type = "list",
            name = "regions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreateGlobalResolverOutput", "updatedAt"),
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
    },
})

M.DeleteDNSViewInput = schema.new({
    id = id.from(_N, "DeleteDNSViewInput"),
    type = "structure",
    members = {
        dnsViewId = schema.new({
            id = id.from(_N, "DeleteDNSViewInput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDNSViewOutput = schema.new({
    id = id.from(_N, "DeleteDNSViewOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteDNSViewOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "DeleteDNSViewOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteDNSViewOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        dnssecValidation = schema.new({
            id = id.from(_N, "DeleteDNSViewOutput", "dnssecValidation"),
            type = "string",
            name = "dnssecValidation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ednsClientSubnet = schema.new({
            id = id.from(_N, "DeleteDNSViewOutput", "ednsClientSubnet"),
            type = "string",
            name = "ednsClientSubnet",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        firewallRulesFailOpen = schema.new({
            id = id.from(_N, "DeleteDNSViewOutput", "firewallRulesFailOpen"),
            type = "string",
            name = "firewallRulesFailOpen",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteDNSViewOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "DeleteDNSViewOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "DeleteDNSViewOutput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "DeleteDNSViewOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "DeleteDNSViewOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "DeleteDNSViewOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteFirewallDomainListInput = schema.new({
    id = id.from(_N, "DeleteFirewallDomainListInput"),
    type = "structure",
    members = {
        firewallDomainListId = schema.new({
            id = id.from(_N, "DeleteFirewallDomainListInput", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteFirewallDomainListOutput = schema.new({
    id = id.from(_N, "DeleteFirewallDomainListOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteFirewallDomainListOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "DeleteFirewallDomainListOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteFirewallDomainListOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteFirewallDomainListOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteFirewallRuleInput = schema.new({
    id = id.from(_N, "DeleteFirewallRuleInput"),
    type = "structure",
    members = {
        firewallRuleId = schema.new({
            id = id.from(_N, "DeleteFirewallRuleInput", "firewallRuleId"),
            type = "string",
            name = "firewallRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteFirewallRuleOutput = schema.new({
    id = id.from(_N, "DeleteFirewallRuleOutput"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blockOverrideDnsType = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "blockOverrideDnsType"),
            type = "string",
            name = "blockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        blockOverrideDomain = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "blockOverrideDomain"),
            type = "string",
            name = "blockOverrideDomain",
            target_id = prelude.String.id,
        }),
        blockOverrideTtl = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "blockOverrideTtl"),
            type = "integer",
            name = "blockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        blockResponse = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "blockResponse"),
            type = "string",
            name = "blockResponse",
            target_id = prelude.String.id,
        }),
        confidenceThreshold = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "confidenceThreshold"),
            type = "string",
            name = "confidenceThreshold",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "createdAt"),
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
        description = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnsAdvancedProtection = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "dnsAdvancedProtection"),
            type = "string",
            name = "dnsAdvancedProtection",
            target_id = prelude.String.id,
        }),
        firewallDomainListId = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "priority"),
            type = "long",
            name = "priority",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        queryType = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "queryType"),
            type = "string",
            name = "queryType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "DeleteFirewallRuleOutput", "updatedAt"),
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
    },
})

M.DeleteGlobalResolverInput = schema.new({
    id = id.from(_N, "DeleteGlobalResolverInput"),
    type = "structure",
    members = {
        globalResolverId = schema.new({
            id = id.from(_N, "DeleteGlobalResolverInput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteGlobalResolverOutput = schema.new({
    id = id.from(_N, "DeleteGlobalResolverOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dnsName = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "dnsName"),
            type = "string",
            name = "dnsName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        observabilityRegion = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "observabilityRegion"),
            type = "string",
            name = "observabilityRegion",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        regions = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "regions"),
            type = "list",
            name = "regions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipv4Addresses = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "ipv4Addresses"),
            type = "list",
            name = "ipv4Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipv6Addresses = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "ipv6Addresses"),
            type = "list",
            name = "ipv6Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "DeleteGlobalResolverOutput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableDNSViewInput = schema.new({
    id = id.from(_N, "DisableDNSViewInput"),
    type = "structure",
    members = {
        dnsViewId = schema.new({
            id = id.from(_N, "DisableDNSViewInput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisableDNSViewOutput = schema.new({
    id = id.from(_N, "DisableDNSViewOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DisableDNSViewOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "DisableDNSViewOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DisableDNSViewOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        dnssecValidation = schema.new({
            id = id.from(_N, "DisableDNSViewOutput", "dnssecValidation"),
            type = "string",
            name = "dnssecValidation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ednsClientSubnet = schema.new({
            id = id.from(_N, "DisableDNSViewOutput", "ednsClientSubnet"),
            type = "string",
            name = "ednsClientSubnet",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        firewallRulesFailOpen = schema.new({
            id = id.from(_N, "DisableDNSViewOutput", "firewallRulesFailOpen"),
            type = "string",
            name = "firewallRulesFailOpen",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DisableDNSViewOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "DisableDNSViewOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "DisableDNSViewOutput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "DisableDNSViewOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "DisableDNSViewOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "DisableDNSViewOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateHostedZoneInput = schema.new({
    id = id.from(_N, "DisassociateHostedZoneInput"),
    type = "structure",
    members = {
        hostedZoneId = schema.new({
            id = id.from(_N, "DisassociateHostedZoneInput", "hostedZoneId"),
            type = "string",
            name = "hostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "DisassociateHostedZoneInput", "resourceArn"),
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

M.DisassociateHostedZoneOutput = schema.new({
    id = id.from(_N, "DisassociateHostedZoneOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DisassociateHostedZoneOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "DisassociateHostedZoneOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hostedZoneId = schema.new({
            id = id.from(_N, "DisassociateHostedZoneOutput", "hostedZoneId"),
            type = "string",
            name = "hostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hostedZoneName = schema.new({
            id = id.from(_N, "DisassociateHostedZoneOutput", "hostedZoneName"),
            type = "string",
            name = "hostedZoneName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DisassociateHostedZoneOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "DisassociateHostedZoneOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "DisassociateHostedZoneOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "DisassociateHostedZoneOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableDNSViewInput = schema.new({
    id = id.from(_N, "EnableDNSViewInput"),
    type = "structure",
    members = {
        dnsViewId = schema.new({
            id = id.from(_N, "EnableDNSViewInput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.EnableDNSViewOutput = schema.new({
    id = id.from(_N, "EnableDNSViewOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "EnableDNSViewOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "EnableDNSViewOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "EnableDNSViewOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        dnssecValidation = schema.new({
            id = id.from(_N, "EnableDNSViewOutput", "dnssecValidation"),
            type = "string",
            name = "dnssecValidation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ednsClientSubnet = schema.new({
            id = id.from(_N, "EnableDNSViewOutput", "ednsClientSubnet"),
            type = "string",
            name = "ednsClientSubnet",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        firewallRulesFailOpen = schema.new({
            id = id.from(_N, "EnableDNSViewOutput", "firewallRulesFailOpen"),
            type = "string",
            name = "firewallRulesFailOpen",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "EnableDNSViewOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "EnableDNSViewOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "EnableDNSViewOutput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "EnableDNSViewOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "EnableDNSViewOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "EnableDNSViewOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDNSViewInput = schema.new({
    id = id.from(_N, "GetDNSViewInput"),
    type = "structure",
    members = {
        dnsViewId = schema.new({
            id = id.from(_N, "GetDNSViewInput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDNSViewOutput = schema.new({
    id = id.from(_N, "GetDNSViewOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetDNSViewOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "GetDNSViewOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "GetDNSViewOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        dnssecValidation = schema.new({
            id = id.from(_N, "GetDNSViewOutput", "dnssecValidation"),
            type = "string",
            name = "dnssecValidation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ednsClientSubnet = schema.new({
            id = id.from(_N, "GetDNSViewOutput", "ednsClientSubnet"),
            type = "string",
            name = "ednsClientSubnet",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        firewallRulesFailOpen = schema.new({
            id = id.from(_N, "GetDNSViewOutput", "firewallRulesFailOpen"),
            type = "string",
            name = "firewallRulesFailOpen",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetDNSViewOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetDNSViewOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "GetDNSViewOutput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetDNSViewOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "GetDNSViewOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "GetDNSViewOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListDNSViewsInput = schema.new({
    id = id.from(_N, "ListDNSViewsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListDNSViewsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDNSViewsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "ListDNSViewsInput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DNSViewSummary = schema.new({
    id = id.from(_N, "DNSViewSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DNSViewSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "DNSViewSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DNSViewSummary", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dnssecValidation = schema.new({
            id = id.from(_N, "DNSViewSummary", "dnssecValidation"),
            type = "string",
            name = "dnssecValidation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ednsClientSubnet = schema.new({
            id = id.from(_N, "DNSViewSummary", "ednsClientSubnet"),
            type = "string",
            name = "ednsClientSubnet",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        firewallRulesFailOpen = schema.new({
            id = id.from(_N, "DNSViewSummary", "firewallRulesFailOpen"),
            type = "string",
            name = "firewallRulesFailOpen",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DNSViewSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "DNSViewSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "DNSViewSummary", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "DNSViewSummary", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "DNSViewSummary", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "DNSViewSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListDNSViewsOutput = schema.new({
    id = id.from(_N, "ListDNSViewsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListDNSViewsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        dnsViews = schema.new({
            id = id.from(_N, "ListDNSViewsOutput", "dnsViews"),
            type = "list",
            name = "dnsViews",
            target_id = prelude.Document.id,
            list_member = M.DNSViewSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateDNSViewInput = schema.new({
    id = id.from(_N, "UpdateDNSViewInput"),
    type = "structure",
    members = {
        dnsViewId = schema.new({
            id = id.from(_N, "UpdateDNSViewInput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateDNSViewInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateDNSViewInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnssecValidation = schema.new({
            id = id.from(_N, "UpdateDNSViewInput", "dnssecValidation"),
            type = "string",
            name = "dnssecValidation",
            target_id = prelude.String.id,
        }),
        ednsClientSubnet = schema.new({
            id = id.from(_N, "UpdateDNSViewInput", "ednsClientSubnet"),
            type = "string",
            name = "ednsClientSubnet",
            target_id = prelude.String.id,
        }),
        firewallRulesFailOpen = schema.new({
            id = id.from(_N, "UpdateDNSViewInput", "firewallRulesFailOpen"),
            type = "string",
            name = "firewallRulesFailOpen",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDNSViewOutput = schema.new({
    id = id.from(_N, "UpdateDNSViewOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateDNSViewOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateDNSViewOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateDNSViewOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        dnssecValidation = schema.new({
            id = id.from(_N, "UpdateDNSViewOutput", "dnssecValidation"),
            type = "string",
            name = "dnssecValidation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ednsClientSubnet = schema.new({
            id = id.from(_N, "UpdateDNSViewOutput", "ednsClientSubnet"),
            type = "string",
            name = "ednsClientSubnet",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        firewallRulesFailOpen = schema.new({
            id = id.from(_N, "UpdateDNSViewOutput", "firewallRulesFailOpen"),
            type = "string",
            name = "firewallRulesFailOpen",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateDNSViewOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateDNSViewOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "UpdateDNSViewOutput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateDNSViewOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "UpdateDNSViewOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "UpdateDNSViewOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetFirewallDomainListInput = schema.new({
    id = id.from(_N, "GetFirewallDomainListInput"),
    type = "structure",
    members = {
        firewallDomainListId = schema.new({
            id = id.from(_N, "GetFirewallDomainListInput", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetFirewallDomainListOutput = schema.new({
    id = id.from(_N, "GetFirewallDomainListOutput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetFirewallDomainListOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "GetFirewallDomainListOutput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "GetFirewallDomainListOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetFirewallDomainListOutput", "createdAt"),
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
        description = schema.new({
            id = id.from(_N, "GetFirewallDomainListOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        domainCount = schema.new({
            id = id.from(_N, "GetFirewallDomainListOutput", "domainCount"),
            type = "integer",
            name = "domainCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetFirewallDomainListOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetFirewallDomainListOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetFirewallDomainListOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusMessage = schema.new({
            id = id.from(_N, "GetFirewallDomainListOutput", "statusMessage"),
            type = "string",
            name = "statusMessage",
            target_id = prelude.String.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetFirewallDomainListOutput", "updatedAt"),
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
    },
})

M.ImportFirewallDomainsInput = schema.new({
    id = id.from(_N, "ImportFirewallDomainsInput"),
    type = "structure",
    members = {
        domainFileUrl = schema.new({
            id = id.from(_N, "ImportFirewallDomainsInput", "domainFileUrl"),
            type = "string",
            name = "domainFileUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        firewallDomainListId = schema.new({
            id = id.from(_N, "ImportFirewallDomainsInput", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        operation = schema.new({
            id = id.from(_N, "ImportFirewallDomainsInput", "operation"),
            type = "string",
            name = "operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ImportFirewallDomainsOutput = schema.new({
    id = id.from(_N, "ImportFirewallDomainsOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ImportFirewallDomainsOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "ImportFirewallDomainsOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ImportFirewallDomainsOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListFirewallDomainListsInput = schema.new({
    id = id.from(_N, "ListFirewallDomainListsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListFirewallDomainListsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFirewallDomainListsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "ListFirewallDomainListsInput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "global_resolver_id" },
            },
        }),
    },
})

M.FirewallDomainListsItem = schema.new({
    id = id.from(_N, "FirewallDomainListsItem"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "FirewallDomainListsItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        globalResolverId = schema.new({
            id = id.from(_N, "FirewallDomainListsItem", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "FirewallDomainListsItem", "createdAt"),
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
        description = schema.new({
            id = id.from(_N, "FirewallDomainListsItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "FirewallDomainListsItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "FirewallDomainListsItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "FirewallDomainListsItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "FirewallDomainListsItem", "updatedAt"),
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
    },
})

M.ListFirewallDomainListsOutput = schema.new({
    id = id.from(_N, "ListFirewallDomainListsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListFirewallDomainListsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        firewallDomainLists = schema.new({
            id = id.from(_N, "ListFirewallDomainListsOutput", "firewallDomainLists"),
            type = "list",
            name = "firewallDomainLists",
            target_id = prelude.Document.id,
            list_member = M.FirewallDomainListsItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListFirewallDomainsInput = schema.new({
    id = id.from(_N, "ListFirewallDomainsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListFirewallDomainsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFirewallDomainsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        firewallDomainListId = schema.new({
            id = id.from(_N, "ListFirewallDomainsInput", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListFirewallDomainsOutput = schema.new({
    id = id.from(_N, "ListFirewallDomainsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListFirewallDomainsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        domains = schema.new({
            id = id.from(_N, "ListFirewallDomainsOutput", "domains"),
            type = "list",
            name = "domains",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateFirewallDomainsInput = schema.new({
    id = id.from(_N, "UpdateFirewallDomainsInput"),
    type = "structure",
    members = {
        domains = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsInput", "domains"),
            type = "list",
            name = "domains",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        firewallDomainListId = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsInput", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        operation = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsInput", "operation"),
            type = "string",
            name = "operation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateFirewallDomainsOutput = schema.new({
    id = id.from(_N, "UpdateFirewallDomainsOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateFirewallDomainsOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetFirewallRuleInput = schema.new({
    id = id.from(_N, "GetFirewallRuleInput"),
    type = "structure",
    members = {
        firewallRuleId = schema.new({
            id = id.from(_N, "GetFirewallRuleInput", "firewallRuleId"),
            type = "string",
            name = "firewallRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetFirewallRuleOutput = schema.new({
    id = id.from(_N, "GetFirewallRuleOutput"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blockOverrideDnsType = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "blockOverrideDnsType"),
            type = "string",
            name = "blockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        blockOverrideDomain = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "blockOverrideDomain"),
            type = "string",
            name = "blockOverrideDomain",
            target_id = prelude.String.id,
        }),
        blockOverrideTtl = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "blockOverrideTtl"),
            type = "integer",
            name = "blockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        blockResponse = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "blockResponse"),
            type = "string",
            name = "blockResponse",
            target_id = prelude.String.id,
        }),
        confidenceThreshold = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "confidenceThreshold"),
            type = "string",
            name = "confidenceThreshold",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "createdAt"),
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
        description = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnsAdvancedProtection = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "dnsAdvancedProtection"),
            type = "string",
            name = "dnsAdvancedProtection",
            target_id = prelude.String.id,
        }),
        firewallDomainListId = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "priority"),
            type = "long",
            name = "priority",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        queryType = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "queryType"),
            type = "string",
            name = "queryType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetFirewallRuleOutput", "updatedAt"),
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
    },
})

M.ListFirewallRulesInput = schema.new({
    id = id.from(_N, "ListFirewallRulesInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListFirewallRulesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFirewallRulesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "ListFirewallRulesInput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "dnsview_id" },
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListFirewallRulesInput", "filters"),
            type = "map",
            name = "filters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
            traits = {
                [traits.HTTP_QUERY_PARAMS] = {},
            },
        }),
    },
})

M.FirewallRulesItem = schema.new({
    id = id.from(_N, "FirewallRulesItem"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "FirewallRulesItem", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blockOverrideDnsType = schema.new({
            id = id.from(_N, "FirewallRulesItem", "blockOverrideDnsType"),
            type = "string",
            name = "blockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        blockOverrideDomain = schema.new({
            id = id.from(_N, "FirewallRulesItem", "blockOverrideDomain"),
            type = "string",
            name = "blockOverrideDomain",
            target_id = prelude.String.id,
        }),
        blockOverrideTtl = schema.new({
            id = id.from(_N, "FirewallRulesItem", "blockOverrideTtl"),
            type = "integer",
            name = "blockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        blockResponse = schema.new({
            id = id.from(_N, "FirewallRulesItem", "blockResponse"),
            type = "string",
            name = "blockResponse",
            target_id = prelude.String.id,
        }),
        confidenceThreshold = schema.new({
            id = id.from(_N, "FirewallRulesItem", "confidenceThreshold"),
            type = "string",
            name = "confidenceThreshold",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "FirewallRulesItem", "createdAt"),
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
        description = schema.new({
            id = id.from(_N, "FirewallRulesItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnsAdvancedProtection = schema.new({
            id = id.from(_N, "FirewallRulesItem", "dnsAdvancedProtection"),
            type = "string",
            name = "dnsAdvancedProtection",
            target_id = prelude.String.id,
        }),
        firewallDomainListId = schema.new({
            id = id.from(_N, "FirewallRulesItem", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "FirewallRulesItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "FirewallRulesItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "FirewallRulesItem", "priority"),
            type = "long",
            name = "priority",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "FirewallRulesItem", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        queryType = schema.new({
            id = id.from(_N, "FirewallRulesItem", "queryType"),
            type = "string",
            name = "queryType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "FirewallRulesItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "FirewallRulesItem", "updatedAt"),
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
    },
})

M.ListFirewallRulesOutput = schema.new({
    id = id.from(_N, "ListFirewallRulesOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListFirewallRulesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        firewallRules = schema.new({
            id = id.from(_N, "ListFirewallRulesOutput", "firewallRules"),
            type = "list",
            name = "firewallRules",
            target_id = prelude.Document.id,
            list_member = M.FirewallRulesItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateFirewallRuleInput = schema.new({
    id = id.from(_N, "UpdateFirewallRuleInput"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
        }),
        blockOverrideDnsType = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "blockOverrideDnsType"),
            type = "string",
            name = "blockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        blockOverrideDomain = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "blockOverrideDomain"),
            type = "string",
            name = "blockOverrideDomain",
            target_id = prelude.String.id,
        }),
        blockOverrideTtl = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "blockOverrideTtl"),
            type = "integer",
            name = "blockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        blockResponse = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "blockResponse"),
            type = "string",
            name = "blockResponse",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        confidenceThreshold = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "confidenceThreshold"),
            type = "string",
            name = "confidenceThreshold",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnsAdvancedProtection = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "dnsAdvancedProtection"),
            type = "string",
            name = "dnsAdvancedProtection",
            target_id = prelude.String.id,
        }),
        firewallRuleId = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "firewallRuleId"),
            type = "string",
            name = "firewallRuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        priority = schema.new({
            id = id.from(_N, "UpdateFirewallRuleInput", "priority"),
            type = "long",
            name = "priority",
            target_id = prelude.Long.id,
        }),
    },
})

M.UpdateFirewallRuleOutput = schema.new({
    id = id.from(_N, "UpdateFirewallRuleOutput"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blockOverrideDnsType = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "blockOverrideDnsType"),
            type = "string",
            name = "blockOverrideDnsType",
            target_id = prelude.String.id,
        }),
        blockOverrideDomain = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "blockOverrideDomain"),
            type = "string",
            name = "blockOverrideDomain",
            target_id = prelude.String.id,
        }),
        blockOverrideTtl = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "blockOverrideTtl"),
            type = "integer",
            name = "blockOverrideTtl",
            target_id = prelude.Integer.id,
        }),
        blockResponse = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "blockResponse"),
            type = "string",
            name = "blockResponse",
            target_id = prelude.String.id,
        }),
        confidenceThreshold = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "confidenceThreshold"),
            type = "string",
            name = "confidenceThreshold",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "createdAt"),
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
        description = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        dnsAdvancedProtection = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "dnsAdvancedProtection"),
            type = "string",
            name = "dnsAdvancedProtection",
            target_id = prelude.String.id,
        }),
        firewallDomainListId = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "firewallDomainListId"),
            type = "string",
            name = "firewallDomainListId",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "priority"),
            type = "long",
            name = "priority",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dnsViewId = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "dnsViewId"),
            type = "string",
            name = "dnsViewId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        queryType = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "queryType"),
            type = "string",
            name = "queryType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateFirewallRuleOutput", "updatedAt"),
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
    },
})

M.GetGlobalResolverInput = schema.new({
    id = id.from(_N, "GetGlobalResolverInput"),
    type = "structure",
    members = {
        globalResolverId = schema.new({
            id = id.from(_N, "GetGlobalResolverInput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetGlobalResolverOutput = schema.new({
    id = id.from(_N, "GetGlobalResolverOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dnsName = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "dnsName"),
            type = "string",
            name = "dnsName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        observabilityRegion = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "observabilityRegion"),
            type = "string",
            name = "observabilityRegion",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        regions = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "regions"),
            type = "list",
            name = "regions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipv4Addresses = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "ipv4Addresses"),
            type = "list",
            name = "ipv4Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipv6Addresses = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "ipv6Addresses"),
            type = "list",
            name = "ipv6Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "GetGlobalResolverOutput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGlobalResolversInput = schema.new({
    id = id.from(_N, "ListGlobalResolversInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListGlobalResolversInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListGlobalResolversInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
    },
})

M.GlobalResolversItem = schema.new({
    id = id.from(_N, "GlobalResolversItem"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GlobalResolversItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "GlobalResolversItem", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "GlobalResolversItem", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dnsName = schema.new({
            id = id.from(_N, "GlobalResolversItem", "dnsName"),
            type = "string",
            name = "dnsName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        observabilityRegion = schema.new({
            id = id.from(_N, "GlobalResolversItem", "observabilityRegion"),
            type = "string",
            name = "observabilityRegion",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GlobalResolversItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GlobalResolversItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        regions = schema.new({
            id = id.from(_N, "GlobalResolversItem", "regions"),
            type = "list",
            name = "regions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GlobalResolversItem", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "GlobalResolversItem", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "GlobalResolversItem", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipv4Addresses = schema.new({
            id = id.from(_N, "GlobalResolversItem", "ipv4Addresses"),
            type = "list",
            name = "ipv4Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipv6Addresses = schema.new({
            id = id.from(_N, "GlobalResolversItem", "ipv6Addresses"),
            type = "list",
            name = "ipv6Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "GlobalResolversItem", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGlobalResolversOutput = schema.new({
    id = id.from(_N, "ListGlobalResolversOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListGlobalResolversOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        globalResolvers = schema.new({
            id = id.from(_N, "ListGlobalResolversOutput", "globalResolvers"),
            type = "list",
            name = "globalResolvers",
            target_id = prelude.Document.id,
            list_member = M.GlobalResolversItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateGlobalResolverInput = schema.new({
    id = id.from(_N, "UpdateGlobalResolverInput"),
    type = "structure",
    members = {
        globalResolverId = schema.new({
            id = id.from(_N, "UpdateGlobalResolverInput", "globalResolverId"),
            type = "string",
            name = "globalResolverId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateGlobalResolverInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        observabilityRegion = schema.new({
            id = id.from(_N, "UpdateGlobalResolverInput", "observabilityRegion"),
            type = "string",
            name = "observabilityRegion",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateGlobalResolverInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "UpdateGlobalResolverInput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
        regions = schema.new({
            id = id.from(_N, "UpdateGlobalResolverInput", "regions"),
            type = "list",
            name = "regions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateGlobalResolverOutput = schema.new({
    id = id.from(_N, "UpdateGlobalResolverOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dnsName = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "dnsName"),
            type = "string",
            name = "dnsName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        observabilityRegion = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "observabilityRegion"),
            type = "string",
            name = "observabilityRegion",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        regions = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "regions"),
            type = "list",
            name = "regions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipv4Addresses = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "ipv4Addresses"),
            type = "list",
            name = "ipv4Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipv6Addresses = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "ipv6Addresses"),
            type = "list",
            name = "ipv6Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "UpdateGlobalResolverOutput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetHostedZoneAssociationInput = schema.new({
    id = id.from(_N, "GetHostedZoneAssociationInput"),
    type = "structure",
    members = {
        hostedZoneAssociationId = schema.new({
            id = id.from(_N, "GetHostedZoneAssociationInput", "hostedZoneAssociationId"),
            type = "string",
            name = "hostedZoneAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetHostedZoneAssociationOutput = schema.new({
    id = id.from(_N, "GetHostedZoneAssociationOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetHostedZoneAssociationOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "GetHostedZoneAssociationOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hostedZoneId = schema.new({
            id = id.from(_N, "GetHostedZoneAssociationOutput", "hostedZoneId"),
            type = "string",
            name = "hostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hostedZoneName = schema.new({
            id = id.from(_N, "GetHostedZoneAssociationOutput", "hostedZoneName"),
            type = "string",
            name = "hostedZoneName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetHostedZoneAssociationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetHostedZoneAssociationOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "GetHostedZoneAssociationOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "GetHostedZoneAssociationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListHostedZoneAssociationsInput = schema.new({
    id = id.from(_N, "ListHostedZoneAssociationsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListHostedZoneAssociationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListHostedZoneAssociationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "ListHostedZoneAssociationsInput", "resourceArn"),
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

M.HostedZoneAssociationSummary = schema.new({
    id = id.from(_N, "HostedZoneAssociationSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "HostedZoneAssociationSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "HostedZoneAssociationSummary", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hostedZoneId = schema.new({
            id = id.from(_N, "HostedZoneAssociationSummary", "hostedZoneId"),
            type = "string",
            name = "hostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hostedZoneName = schema.new({
            id = id.from(_N, "HostedZoneAssociationSummary", "hostedZoneName"),
            type = "string",
            name = "hostedZoneName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "HostedZoneAssociationSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "HostedZoneAssociationSummary", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "HostedZoneAssociationSummary", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "HostedZoneAssociationSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListHostedZoneAssociationsOutput = schema.new({
    id = id.from(_N, "ListHostedZoneAssociationsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListHostedZoneAssociationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        hostedZoneAssociations = schema.new({
            id = id.from(_N, "ListHostedZoneAssociationsOutput", "hostedZoneAssociations"),
            type = "list",
            name = "hostedZoneAssociations",
            target_id = prelude.Document.id,
            list_member = M.HostedZoneAssociationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateHostedZoneAssociationInput = schema.new({
    id = id.from(_N, "UpdateHostedZoneAssociationInput"),
    type = "structure",
    members = {
        hostedZoneAssociationId = schema.new({
            id = id.from(_N, "UpdateHostedZoneAssociationInput", "hostedZoneAssociationId"),
            type = "string",
            name = "hostedZoneAssociationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateHostedZoneAssociationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateHostedZoneAssociationOutput = schema.new({
    id = id.from(_N, "UpdateHostedZoneAssociationOutput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateHostedZoneAssociationOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "UpdateHostedZoneAssociationOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hostedZoneId = schema.new({
            id = id.from(_N, "UpdateHostedZoneAssociationOutput", "hostedZoneId"),
            type = "string",
            name = "hostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hostedZoneName = schema.new({
            id = id.from(_N, "UpdateHostedZoneAssociationOutput", "hostedZoneName"),
            type = "string",
            name = "hostedZoneName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateHostedZoneAssociationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateHostedZoneAssociationOutput", "createdAt"),
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
        updatedAt = schema.new({
            id = id.from(_N, "UpdateHostedZoneAssociationOutput", "updatedAt"),
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
        status = schema.new({
            id = id.from(_N, "UpdateHostedZoneAssociationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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

M.GetManagedFirewallDomainListInput = schema.new({
    id = id.from(_N, "GetManagedFirewallDomainListInput"),
    type = "structure",
    members = {
        managedFirewallDomainListId = schema.new({
            id = id.from(_N, "GetManagedFirewallDomainListInput", "managedFirewallDomainListId"),
            type = "string",
            name = "managedFirewallDomainListId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetManagedFirewallDomainListOutput = schema.new({
    id = id.from(_N, "GetManagedFirewallDomainListOutput"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "GetManagedFirewallDomainListOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "GetManagedFirewallDomainListOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetManagedFirewallDomainListOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        managedListType = schema.new({
            id = id.from(_N, "GetManagedFirewallDomainListOutput", "managedListType"),
            type = "string",
            name = "managedListType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListManagedFirewallDomainListsInput = schema.new({
    id = id.from(_N, "ListManagedFirewallDomainListsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListManagedFirewallDomainListsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "max_results" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListManagedFirewallDomainListsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "next_token" },
            },
        }),
        managedFirewallDomainListType = schema.new({
            id = id.from(_N, "ListManagedFirewallDomainListsInput", "managedFirewallDomainListType"),
            type = "string",
            name = "managedFirewallDomainListType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ManagedFirewallDomainListsItem = schema.new({
    id = id.from(_N, "ManagedFirewallDomainListsItem"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "ManagedFirewallDomainListsItem", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "ManagedFirewallDomainListsItem", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "ManagedFirewallDomainListsItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        managedListType = schema.new({
            id = id.from(_N, "ManagedFirewallDomainListsItem", "managedListType"),
            type = "string",
            name = "managedListType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListManagedFirewallDomainListsOutput = schema.new({
    id = id.from(_N, "ListManagedFirewallDomainListsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListManagedFirewallDomainListsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        managedFirewallDomainLists = schema.new({
            id = id.from(_N, "ListManagedFirewallDomainListsOutput", "managedFirewallDomainLists"),
            type = "list",
            name = "managedFirewallDomainLists",
            target_id = prelude.Document.id,
            list_member = M.ManagedFirewallDomainListsItem,
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
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

return M
