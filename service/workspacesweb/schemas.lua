local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.workspacesweb"

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
        }),
    },
})

M.AssociateBrowserSettingsInput = schema.new({
    id = id.from(_N, "AssociateBrowserSettingsRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateBrowserSettingsInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        browserSettingsArn = schema.new({
            id = id.from(_N, "AssociateBrowserSettingsInput", "browserSettingsArn"),
            type = "string",
            name = "browserSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "browserSettingsArn" },
            },
        }),
    },
})

M.AssociateBrowserSettingsOutput = schema.new({
    id = id.from(_N, "AssociateBrowserSettingsResponse"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateBrowserSettingsOutput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        browserSettingsArn = schema.new({
            id = id.from(_N, "AssociateBrowserSettingsOutput", "browserSettingsArn"),
            type = "string",
            name = "browserSettingsArn",
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
        }),
        retryAfterSeconds = schema.new({
            id = id.from(_N, "InternalServerException", "retryAfterSeconds"),
            type = "integer",
            name = "retryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
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
                [traits.DEFAULT] = { value = 0 },
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
        }),
        reason = schema.new({
            id = id.from(_N, "ValidationException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
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

M.AssociateDataProtectionSettingsInput = schema.new({
    id = id.from(_N, "AssociateDataProtectionSettingsRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateDataProtectionSettingsInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataProtectionSettingsArn = schema.new({
            id = id.from(_N, "AssociateDataProtectionSettingsInput", "dataProtectionSettingsArn"),
            type = "string",
            name = "dataProtectionSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "dataProtectionSettingsArn" },
            },
        }),
    },
})

M.AssociateDataProtectionSettingsOutput = schema.new({
    id = id.from(_N, "AssociateDataProtectionSettingsResponse"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateDataProtectionSettingsOutput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataProtectionSettingsArn = schema.new({
            id = id.from(_N, "AssociateDataProtectionSettingsOutput", "dataProtectionSettingsArn"),
            type = "string",
            name = "dataProtectionSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateIpAccessSettingsInput = schema.new({
    id = id.from(_N, "AssociateIpAccessSettingsRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateIpAccessSettingsInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ipAccessSettingsArn = schema.new({
            id = id.from(_N, "AssociateIpAccessSettingsInput", "ipAccessSettingsArn"),
            type = "string",
            name = "ipAccessSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "ipAccessSettingsArn" },
            },
        }),
    },
})

M.AssociateIpAccessSettingsOutput = schema.new({
    id = id.from(_N, "AssociateIpAccessSettingsResponse"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateIpAccessSettingsOutput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipAccessSettingsArn = schema.new({
            id = id.from(_N, "AssociateIpAccessSettingsOutput", "ipAccessSettingsArn"),
            type = "string",
            name = "ipAccessSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateNetworkSettingsInput = schema.new({
    id = id.from(_N, "AssociateNetworkSettingsRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateNetworkSettingsInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        networkSettingsArn = schema.new({
            id = id.from(_N, "AssociateNetworkSettingsInput", "networkSettingsArn"),
            type = "string",
            name = "networkSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "networkSettingsArn" },
            },
        }),
    },
})

M.AssociateNetworkSettingsOutput = schema.new({
    id = id.from(_N, "AssociateNetworkSettingsResponse"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateNetworkSettingsOutput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkSettingsArn = schema.new({
            id = id.from(_N, "AssociateNetworkSettingsOutput", "networkSettingsArn"),
            type = "string",
            name = "networkSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateSessionLoggerInput = schema.new({
    id = id.from(_N, "AssociateSessionLoggerRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateSessionLoggerInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionLoggerArn = schema.new({
            id = id.from(_N, "AssociateSessionLoggerInput", "sessionLoggerArn"),
            type = "string",
            name = "sessionLoggerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "sessionLoggerArn" },
            },
        }),
    },
})

M.AssociateSessionLoggerOutput = schema.new({
    id = id.from(_N, "AssociateSessionLoggerResponse"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateSessionLoggerOutput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sessionLoggerArn = schema.new({
            id = id.from(_N, "AssociateSessionLoggerOutput", "sessionLoggerArn"),
            type = "string",
            name = "sessionLoggerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateTrustStoreInput = schema.new({
    id = id.from(_N, "AssociateTrustStoreRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateTrustStoreInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        trustStoreArn = schema.new({
            id = id.from(_N, "AssociateTrustStoreInput", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "trustStoreArn" },
            },
        }),
    },
})

M.AssociateTrustStoreOutput = schema.new({
    id = id.from(_N, "AssociateTrustStoreResponse"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateTrustStoreOutput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        trustStoreArn = schema.new({
            id = id.from(_N, "AssociateTrustStoreOutput", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateUserAccessLoggingSettingsInput = schema.new({
    id = id.from(_N, "AssociateUserAccessLoggingSettingsRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateUserAccessLoggingSettingsInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userAccessLoggingSettingsArn = schema.new({
            id = id.from(_N, "AssociateUserAccessLoggingSettingsInput", "userAccessLoggingSettingsArn"),
            type = "string",
            name = "userAccessLoggingSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "userAccessLoggingSettingsArn" },
            },
        }),
    },
})

M.AssociateUserAccessLoggingSettingsOutput = schema.new({
    id = id.from(_N, "AssociateUserAccessLoggingSettingsResponse"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateUserAccessLoggingSettingsOutput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userAccessLoggingSettingsArn = schema.new({
            id = id.from(_N, "AssociateUserAccessLoggingSettingsOutput", "userAccessLoggingSettingsArn"),
            type = "string",
            name = "userAccessLoggingSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateUserSettingsInput = schema.new({
    id = id.from(_N, "AssociateUserSettingsRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateUserSettingsInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userSettingsArn = schema.new({
            id = id.from(_N, "AssociateUserSettingsInput", "userSettingsArn"),
            type = "string",
            name = "userSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "userSettingsArn" },
            },
        }),
    },
})

M.AssociateUserSettingsOutput = schema.new({
    id = id.from(_N, "AssociateUserSettingsResponse"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "AssociateUserSettingsOutput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userSettingsArn = schema.new({
            id = id.from(_N, "AssociateUserSettingsOutput", "userSettingsArn"),
            type = "string",
            name = "userSettingsArn",
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

M.WebContentFilteringPolicy = schema.new({
    id = id.from(_N, "WebContentFilteringPolicy"),
    type = "structure",
    members = {
        blockedCategories = schema.new({
            id = id.from(_N, "WebContentFilteringPolicy", "blockedCategories"),
            type = "list",
            name = "blockedCategories",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        allowedUrls = schema.new({
            id = id.from(_N, "WebContentFilteringPolicy", "allowedUrls"),
            type = "list",
            name = "allowedUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        blockedUrls = schema.new({
            id = id.from(_N, "WebContentFilteringPolicy", "blockedUrls"),
            type = "list",
            name = "blockedUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateBrowserSettingsInput = schema.new({
    id = id.from(_N, "CreateBrowserSettingsRequest"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "CreateBrowserSettingsInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        customerManagedKey = schema.new({
            id = id.from(_N, "CreateBrowserSettingsInput", "customerManagedKey"),
            type = "string",
            name = "customerManagedKey",
            target_id = prelude.String.id,
        }),
        additionalEncryptionContext = schema.new({
            id = id.from(_N, "CreateBrowserSettingsInput", "additionalEncryptionContext"),
            type = "map",
            name = "additionalEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        browserPolicy = schema.new({
            id = id.from(_N, "CreateBrowserSettingsInput", "browserPolicy"),
            type = "string",
            name = "browserPolicy",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateBrowserSettingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        webContentFilteringPolicy = schema.new({
            id = id.from(_N, "CreateBrowserSettingsInput", "webContentFilteringPolicy"),
            type = "structure",
            name = "webContentFilteringPolicy",
            target_id = id.from(_N, "WebContentFilteringPolicy"),
            target = M.WebContentFilteringPolicy,
        }),
    },
})

M.CreateBrowserSettingsOutput = schema.new({
    id = id.from(_N, "CreateBrowserSettingsResponse"),
    type = "structure",
    members = {
        browserSettingsArn = schema.new({
            id = id.from(_N, "CreateBrowserSettingsOutput", "browserSettingsArn"),
            type = "string",
            name = "browserSettingsArn",
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

M.DeleteBrowserSettingsInput = schema.new({
    id = id.from(_N, "DeleteBrowserSettingsRequest"),
    type = "structure",
    members = {
        browserSettingsArn = schema.new({
            id = id.from(_N, "DeleteBrowserSettingsInput", "browserSettingsArn"),
            type = "string",
            name = "browserSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteBrowserSettingsOutput = schema.new({
    id = id.from(_N, "DeleteBrowserSettingsResponse"),
    type = "structure",
})

M.GetBrowserSettingsInput = schema.new({
    id = id.from(_N, "GetBrowserSettingsRequest"),
    type = "structure",
    members = {
        browserSettingsArn = schema.new({
            id = id.from(_N, "GetBrowserSettingsInput", "browserSettingsArn"),
            type = "string",
            name = "browserSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.BrowserSettings = schema.new({
    id = id.from(_N, "BrowserSettings"),
    type = "structure",
    members = {
        browserSettingsArn = schema.new({
            id = id.from(_N, "BrowserSettings", "browserSettingsArn"),
            type = "string",
            name = "browserSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        associatedPortalArns = schema.new({
            id = id.from(_N, "BrowserSettings", "associatedPortalArns"),
            type = "list",
            name = "associatedPortalArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        browserPolicy = schema.new({
            id = id.from(_N, "BrowserSettings", "browserPolicy"),
            type = "string",
            name = "browserPolicy",
            target_id = prelude.String.id,
        }),
        customerManagedKey = schema.new({
            id = id.from(_N, "BrowserSettings", "customerManagedKey"),
            type = "string",
            name = "customerManagedKey",
            target_id = prelude.String.id,
        }),
        additionalEncryptionContext = schema.new({
            id = id.from(_N, "BrowserSettings", "additionalEncryptionContext"),
            type = "map",
            name = "additionalEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        webContentFilteringPolicy = schema.new({
            id = id.from(_N, "BrowserSettings", "webContentFilteringPolicy"),
            type = "structure",
            name = "webContentFilteringPolicy",
            target_id = id.from(_N, "WebContentFilteringPolicy"),
            target = M.WebContentFilteringPolicy,
        }),
    },
})

M.GetBrowserSettingsOutput = schema.new({
    id = id.from(_N, "GetBrowserSettingsResponse"),
    type = "structure",
    members = {
        browserSettings = schema.new({
            id = id.from(_N, "GetBrowserSettingsOutput", "browserSettings"),
            type = "structure",
            name = "browserSettings",
            target_id = id.from(_N, "BrowserSettings"),
            target = M.BrowserSettings,
        }),
    },
})

M.ListBrowserSettingsInput = schema.new({
    id = id.from(_N, "ListBrowserSettingsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListBrowserSettingsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListBrowserSettingsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.BrowserSettingsSummary = schema.new({
    id = id.from(_N, "BrowserSettingsSummary"),
    type = "structure",
    members = {
        browserSettingsArn = schema.new({
            id = id.from(_N, "BrowserSettingsSummary", "browserSettingsArn"),
            type = "string",
            name = "browserSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListBrowserSettingsOutput = schema.new({
    id = id.from(_N, "ListBrowserSettingsResponse"),
    type = "structure",
    members = {
        browserSettings = schema.new({
            id = id.from(_N, "ListBrowserSettingsOutput", "browserSettings"),
            type = "list",
            name = "browserSettings",
            target_id = prelude.Document.id,
            list_member = M.BrowserSettingsSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBrowserSettingsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateBrowserSettingsInput = schema.new({
    id = id.from(_N, "UpdateBrowserSettingsRequest"),
    type = "structure",
    members = {
        browserSettingsArn = schema.new({
            id = id.from(_N, "UpdateBrowserSettingsInput", "browserSettingsArn"),
            type = "string",
            name = "browserSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        browserPolicy = schema.new({
            id = id.from(_N, "UpdateBrowserSettingsInput", "browserPolicy"),
            type = "string",
            name = "browserPolicy",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateBrowserSettingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        webContentFilteringPolicy = schema.new({
            id = id.from(_N, "UpdateBrowserSettingsInput", "webContentFilteringPolicy"),
            type = "structure",
            name = "webContentFilteringPolicy",
            target_id = id.from(_N, "WebContentFilteringPolicy"),
            target = M.WebContentFilteringPolicy,
        }),
    },
})

M.UpdateBrowserSettingsOutput = schema.new({
    id = id.from(_N, "UpdateBrowserSettingsResponse"),
    type = "structure",
    members = {
        browserSettings = schema.new({
            id = id.from(_N, "UpdateBrowserSettingsOutput", "browserSettings"),
            type = "structure",
            name = "browserSettings",
            target_id = id.from(_N, "BrowserSettings"),
            target = M.BrowserSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CustomPattern = schema.new({
    id = id.from(_N, "CustomPattern"),
    type = "structure",
    members = {
        patternName = schema.new({
            id = id.from(_N, "CustomPattern", "patternName"),
            type = "string",
            name = "patternName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        patternRegex = schema.new({
            id = id.from(_N, "CustomPattern", "patternRegex"),
            type = "string",
            name = "patternRegex",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        patternDescription = schema.new({
            id = id.from(_N, "CustomPattern", "patternDescription"),
            type = "string",
            name = "patternDescription",
            target_id = prelude.String.id,
        }),
        keywordRegex = schema.new({
            id = id.from(_N, "CustomPattern", "keywordRegex"),
            type = "string",
            name = "keywordRegex",
            target_id = prelude.String.id,
        }),
    },
})

M.RedactionPlaceHolder = schema.new({
    id = id.from(_N, "RedactionPlaceHolder"),
    type = "structure",
    members = {
        redactionPlaceHolderType = schema.new({
            id = id.from(_N, "RedactionPlaceHolder", "redactionPlaceHolderType"),
            type = "string",
            name = "redactionPlaceHolderType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        redactionPlaceHolderText = schema.new({
            id = id.from(_N, "RedactionPlaceHolder", "redactionPlaceHolderText"),
            type = "string",
            name = "redactionPlaceHolderText",
            target_id = prelude.String.id,
        }),
    },
})

M.InlineRedactionPattern = schema.new({
    id = id.from(_N, "InlineRedactionPattern"),
    type = "structure",
    members = {
        builtInPatternId = schema.new({
            id = id.from(_N, "InlineRedactionPattern", "builtInPatternId"),
            type = "string",
            name = "builtInPatternId",
            target_id = prelude.String.id,
        }),
        customPattern = schema.new({
            id = id.from(_N, "InlineRedactionPattern", "customPattern"),
            type = "structure",
            name = "customPattern",
            target_id = id.from(_N, "CustomPattern"),
            target = M.CustomPattern,
        }),
        redactionPlaceHolder = schema.new({
            id = id.from(_N, "InlineRedactionPattern", "redactionPlaceHolder"),
            type = "structure",
            name = "redactionPlaceHolder",
            target_id = id.from(_N, "RedactionPlaceHolder"),
            target = M.RedactionPlaceHolder,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        enforcedUrls = schema.new({
            id = id.from(_N, "InlineRedactionPattern", "enforcedUrls"),
            type = "list",
            name = "enforcedUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        exemptUrls = schema.new({
            id = id.from(_N, "InlineRedactionPattern", "exemptUrls"),
            type = "list",
            name = "exemptUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        confidenceLevel = schema.new({
            id = id.from(_N, "InlineRedactionPattern", "confidenceLevel"),
            type = "integer",
            name = "confidenceLevel",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InlineRedactionConfiguration = schema.new({
    id = id.from(_N, "InlineRedactionConfiguration"),
    type = "structure",
    members = {
        inlineRedactionPatterns = schema.new({
            id = id.from(_N, "InlineRedactionConfiguration", "inlineRedactionPatterns"),
            type = "list",
            name = "inlineRedactionPatterns",
            target_id = prelude.Document.id,
            list_member = M.InlineRedactionPattern,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        globalEnforcedUrls = schema.new({
            id = id.from(_N, "InlineRedactionConfiguration", "globalEnforcedUrls"),
            type = "list",
            name = "globalEnforcedUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        globalExemptUrls = schema.new({
            id = id.from(_N, "InlineRedactionConfiguration", "globalExemptUrls"),
            type = "list",
            name = "globalExemptUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        globalConfidenceLevel = schema.new({
            id = id.from(_N, "InlineRedactionConfiguration", "globalConfidenceLevel"),
            type = "integer",
            name = "globalConfidenceLevel",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateDataProtectionSettingsInput = schema.new({
    id = id.from(_N, "CreateDataProtectionSettingsRequest"),
    type = "structure",
    members = {
        displayName = schema.new({
            id = id.from(_N, "CreateDataProtectionSettingsInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateDataProtectionSettingsInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDataProtectionSettingsInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        customerManagedKey = schema.new({
            id = id.from(_N, "CreateDataProtectionSettingsInput", "customerManagedKey"),
            type = "string",
            name = "customerManagedKey",
            target_id = prelude.String.id,
        }),
        additionalEncryptionContext = schema.new({
            id = id.from(_N, "CreateDataProtectionSettingsInput", "additionalEncryptionContext"),
            type = "map",
            name = "additionalEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        inlineRedactionConfiguration = schema.new({
            id = id.from(_N, "CreateDataProtectionSettingsInput", "inlineRedactionConfiguration"),
            type = "structure",
            name = "inlineRedactionConfiguration",
            target_id = id.from(_N, "InlineRedactionConfiguration"),
            target = M.InlineRedactionConfiguration,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateDataProtectionSettingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateDataProtectionSettingsOutput = schema.new({
    id = id.from(_N, "CreateDataProtectionSettingsResponse"),
    type = "structure",
    members = {
        dataProtectionSettingsArn = schema.new({
            id = id.from(_N, "CreateDataProtectionSettingsOutput", "dataProtectionSettingsArn"),
            type = "string",
            name = "dataProtectionSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDataProtectionSettingsInput = schema.new({
    id = id.from(_N, "DeleteDataProtectionSettingsRequest"),
    type = "structure",
    members = {
        dataProtectionSettingsArn = schema.new({
            id = id.from(_N, "DeleteDataProtectionSettingsInput", "dataProtectionSettingsArn"),
            type = "string",
            name = "dataProtectionSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDataProtectionSettingsOutput = schema.new({
    id = id.from(_N, "DeleteDataProtectionSettingsResponse"),
    type = "structure",
})

M.GetDataProtectionSettingsInput = schema.new({
    id = id.from(_N, "GetDataProtectionSettingsRequest"),
    type = "structure",
    members = {
        dataProtectionSettingsArn = schema.new({
            id = id.from(_N, "GetDataProtectionSettingsInput", "dataProtectionSettingsArn"),
            type = "string",
            name = "dataProtectionSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DataProtectionSettings = schema.new({
    id = id.from(_N, "DataProtectionSettings"),
    type = "structure",
    members = {
        dataProtectionSettingsArn = schema.new({
            id = id.from(_N, "DataProtectionSettings", "dataProtectionSettingsArn"),
            type = "string",
            name = "dataProtectionSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inlineRedactionConfiguration = schema.new({
            id = id.from(_N, "DataProtectionSettings", "inlineRedactionConfiguration"),
            type = "structure",
            name = "inlineRedactionConfiguration",
            target_id = id.from(_N, "InlineRedactionConfiguration"),
            target = M.InlineRedactionConfiguration,
        }),
        associatedPortalArns = schema.new({
            id = id.from(_N, "DataProtectionSettings", "associatedPortalArns"),
            type = "list",
            name = "associatedPortalArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        displayName = schema.new({
            id = id.from(_N, "DataProtectionSettings", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "DataProtectionSettings", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "DataProtectionSettings", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        customerManagedKey = schema.new({
            id = id.from(_N, "DataProtectionSettings", "customerManagedKey"),
            type = "string",
            name = "customerManagedKey",
            target_id = prelude.String.id,
        }),
        additionalEncryptionContext = schema.new({
            id = id.from(_N, "DataProtectionSettings", "additionalEncryptionContext"),
            type = "map",
            name = "additionalEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetDataProtectionSettingsOutput = schema.new({
    id = id.from(_N, "GetDataProtectionSettingsResponse"),
    type = "structure",
    members = {
        dataProtectionSettings = schema.new({
            id = id.from(_N, "GetDataProtectionSettingsOutput", "dataProtectionSettings"),
            type = "structure",
            name = "dataProtectionSettings",
            target_id = id.from(_N, "DataProtectionSettings"),
            target = M.DataProtectionSettings,
        }),
    },
})

M.ListDataProtectionSettingsInput = schema.new({
    id = id.from(_N, "ListDataProtectionSettingsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListDataProtectionSettingsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDataProtectionSettingsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.DataProtectionSettingsSummary = schema.new({
    id = id.from(_N, "DataProtectionSettingsSummary"),
    type = "structure",
    members = {
        dataProtectionSettingsArn = schema.new({
            id = id.from(_N, "DataProtectionSettingsSummary", "dataProtectionSettingsArn"),
            type = "string",
            name = "dataProtectionSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "DataProtectionSettingsSummary", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "DataProtectionSettingsSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "DataProtectionSettingsSummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListDataProtectionSettingsOutput = schema.new({
    id = id.from(_N, "ListDataProtectionSettingsResponse"),
    type = "structure",
    members = {
        dataProtectionSettings = schema.new({
            id = id.from(_N, "ListDataProtectionSettingsOutput", "dataProtectionSettings"),
            type = "list",
            name = "dataProtectionSettings",
            target_id = prelude.Document.id,
            list_member = M.DataProtectionSettingsSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDataProtectionSettingsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDataProtectionSettingsInput = schema.new({
    id = id.from(_N, "UpdateDataProtectionSettingsRequest"),
    type = "structure",
    members = {
        dataProtectionSettingsArn = schema.new({
            id = id.from(_N, "UpdateDataProtectionSettingsInput", "dataProtectionSettingsArn"),
            type = "string",
            name = "dataProtectionSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        inlineRedactionConfiguration = schema.new({
            id = id.from(_N, "UpdateDataProtectionSettingsInput", "inlineRedactionConfiguration"),
            type = "structure",
            name = "inlineRedactionConfiguration",
            target_id = id.from(_N, "InlineRedactionConfiguration"),
            target = M.InlineRedactionConfiguration,
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdateDataProtectionSettingsInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateDataProtectionSettingsInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateDataProtectionSettingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateDataProtectionSettingsOutput = schema.new({
    id = id.from(_N, "UpdateDataProtectionSettingsResponse"),
    type = "structure",
    members = {
        dataProtectionSettings = schema.new({
            id = id.from(_N, "UpdateDataProtectionSettingsOutput", "dataProtectionSettings"),
            type = "structure",
            name = "dataProtectionSettings",
            target_id = id.from(_N, "DataProtectionSettings"),
            target = M.DataProtectionSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExpireSessionInput = schema.new({
    id = id.from(_N, "ExpireSessionRequest"),
    type = "structure",
    members = {
        portalId = schema.new({
            id = id.from(_N, "ExpireSessionInput", "portalId"),
            type = "string",
            name = "portalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "ExpireSessionInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ExpireSessionOutput = schema.new({
    id = id.from(_N, "ExpireSessionResponse"),
    type = "structure",
})

M.GetSessionInput = schema.new({
    id = id.from(_N, "GetSessionRequest"),
    type = "structure",
    members = {
        portalId = schema.new({
            id = id.from(_N, "GetSessionInput", "portalId"),
            type = "string",
            name = "portalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "GetSessionInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.Session = schema.new({
    id = id.from(_N, "Session"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "Session", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
        }),
        sessionId = schema.new({
            id = id.from(_N, "Session", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
        username = schema.new({
            id = id.from(_N, "Session", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
        }),
        clientIpAddresses = schema.new({
            id = id.from(_N, "Session", "clientIpAddresses"),
            type = "list",
            name = "clientIpAddresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "Session", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "Session", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "Session", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetSessionOutput = schema.new({
    id = id.from(_N, "GetSessionResponse"),
    type = "structure",
    members = {
        session = schema.new({
            id = id.from(_N, "GetSessionOutput", "session"),
            type = "structure",
            name = "session",
            target_id = id.from(_N, "Session"),
            target = M.Session,
        }),
    },
})

M.CreateIdentityProviderInput = schema.new({
    id = id.from(_N, "CreateIdentityProviderRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "CreateIdentityProviderInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identityProviderName = schema.new({
            id = id.from(_N, "CreateIdentityProviderInput", "identityProviderName"),
            type = "string",
            name = "identityProviderName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identityProviderType = schema.new({
            id = id.from(_N, "CreateIdentityProviderInput", "identityProviderType"),
            type = "string",
            name = "identityProviderType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identityProviderDetails = schema.new({
            id = id.from(_N, "CreateIdentityProviderInput", "identityProviderDetails"),
            type = "map",
            name = "identityProviderDetails",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateIdentityProviderInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateIdentityProviderInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateIdentityProviderOutput = schema.new({
    id = id.from(_N, "CreateIdentityProviderResponse"),
    type = "structure",
    members = {
        identityProviderArn = schema.new({
            id = id.from(_N, "CreateIdentityProviderOutput", "identityProviderArn"),
            type = "string",
            name = "identityProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteIdentityProviderInput = schema.new({
    id = id.from(_N, "DeleteIdentityProviderRequest"),
    type = "structure",
    members = {
        identityProviderArn = schema.new({
            id = id.from(_N, "DeleteIdentityProviderInput", "identityProviderArn"),
            type = "string",
            name = "identityProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteIdentityProviderOutput = schema.new({
    id = id.from(_N, "DeleteIdentityProviderResponse"),
    type = "structure",
})

M.GetIdentityProviderInput = schema.new({
    id = id.from(_N, "GetIdentityProviderRequest"),
    type = "structure",
    members = {
        identityProviderArn = schema.new({
            id = id.from(_N, "GetIdentityProviderInput", "identityProviderArn"),
            type = "string",
            name = "identityProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.IdentityProvider = schema.new({
    id = id.from(_N, "IdentityProvider"),
    type = "structure",
    members = {
        identityProviderArn = schema.new({
            id = id.from(_N, "IdentityProvider", "identityProviderArn"),
            type = "string",
            name = "identityProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identityProviderName = schema.new({
            id = id.from(_N, "IdentityProvider", "identityProviderName"),
            type = "string",
            name = "identityProviderName",
            target_id = prelude.String.id,
        }),
        identityProviderType = schema.new({
            id = id.from(_N, "IdentityProvider", "identityProviderType"),
            type = "string",
            name = "identityProviderType",
            target_id = prelude.String.id,
        }),
        identityProviderDetails = schema.new({
            id = id.from(_N, "IdentityProvider", "identityProviderDetails"),
            type = "map",
            name = "identityProviderDetails",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetIdentityProviderOutput = schema.new({
    id = id.from(_N, "GetIdentityProviderResponse"),
    type = "structure",
    members = {
        identityProvider = schema.new({
            id = id.from(_N, "GetIdentityProviderOutput", "identityProvider"),
            type = "structure",
            name = "identityProvider",
            target_id = id.from(_N, "IdentityProvider"),
            target = M.IdentityProvider,
        }),
    },
})

M.ListIdentityProvidersInput = schema.new({
    id = id.from(_N, "ListIdentityProvidersRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListIdentityProvidersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListIdentityProvidersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        portalArn = schema.new({
            id = id.from(_N, "ListIdentityProvidersInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.IdentityProviderSummary = schema.new({
    id = id.from(_N, "IdentityProviderSummary"),
    type = "structure",
    members = {
        identityProviderArn = schema.new({
            id = id.from(_N, "IdentityProviderSummary", "identityProviderArn"),
            type = "string",
            name = "identityProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identityProviderName = schema.new({
            id = id.from(_N, "IdentityProviderSummary", "identityProviderName"),
            type = "string",
            name = "identityProviderName",
            target_id = prelude.String.id,
        }),
        identityProviderType = schema.new({
            id = id.from(_N, "IdentityProviderSummary", "identityProviderType"),
            type = "string",
            name = "identityProviderType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListIdentityProvidersOutput = schema.new({
    id = id.from(_N, "ListIdentityProvidersResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListIdentityProvidersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        identityProviders = schema.new({
            id = id.from(_N, "ListIdentityProvidersOutput", "identityProviders"),
            type = "list",
            name = "identityProviders",
            target_id = prelude.Document.id,
            list_member = M.IdentityProviderSummary,
        }),
    },
})

M.UpdateIdentityProviderInput = schema.new({
    id = id.from(_N, "UpdateIdentityProviderRequest"),
    type = "structure",
    members = {
        identityProviderArn = schema.new({
            id = id.from(_N, "UpdateIdentityProviderInput", "identityProviderArn"),
            type = "string",
            name = "identityProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        identityProviderName = schema.new({
            id = id.from(_N, "UpdateIdentityProviderInput", "identityProviderName"),
            type = "string",
            name = "identityProviderName",
            target_id = prelude.String.id,
        }),
        identityProviderType = schema.new({
            id = id.from(_N, "UpdateIdentityProviderInput", "identityProviderType"),
            type = "string",
            name = "identityProviderType",
            target_id = prelude.String.id,
        }),
        identityProviderDetails = schema.new({
            id = id.from(_N, "UpdateIdentityProviderInput", "identityProviderDetails"),
            type = "map",
            name = "identityProviderDetails",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateIdentityProviderInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateIdentityProviderOutput = schema.new({
    id = id.from(_N, "UpdateIdentityProviderResponse"),
    type = "structure",
    members = {
        identityProvider = schema.new({
            id = id.from(_N, "UpdateIdentityProviderOutput", "identityProvider"),
            type = "structure",
            name = "identityProvider",
            target_id = id.from(_N, "IdentityProvider"),
            target = M.IdentityProvider,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IpRule = schema.new({
    id = id.from(_N, "IpRule"),
    type = "structure",
    members = {
        ipRange = schema.new({
            id = id.from(_N, "IpRule", "ipRange"),
            type = "string",
            name = "ipRange",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "IpRule", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateIpAccessSettingsInput = schema.new({
    id = id.from(_N, "CreateIpAccessSettingsRequest"),
    type = "structure",
    members = {
        displayName = schema.new({
            id = id.from(_N, "CreateIpAccessSettingsInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateIpAccessSettingsInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateIpAccessSettingsInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        customerManagedKey = schema.new({
            id = id.from(_N, "CreateIpAccessSettingsInput", "customerManagedKey"),
            type = "string",
            name = "customerManagedKey",
            target_id = prelude.String.id,
        }),
        additionalEncryptionContext = schema.new({
            id = id.from(_N, "CreateIpAccessSettingsInput", "additionalEncryptionContext"),
            type = "map",
            name = "additionalEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ipRules = schema.new({
            id = id.from(_N, "CreateIpAccessSettingsInput", "ipRules"),
            type = "list",
            name = "ipRules",
            target_id = prelude.Document.id,
            list_member = M.IpRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateIpAccessSettingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateIpAccessSettingsOutput = schema.new({
    id = id.from(_N, "CreateIpAccessSettingsResponse"),
    type = "structure",
    members = {
        ipAccessSettingsArn = schema.new({
            id = id.from(_N, "CreateIpAccessSettingsOutput", "ipAccessSettingsArn"),
            type = "string",
            name = "ipAccessSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteIpAccessSettingsInput = schema.new({
    id = id.from(_N, "DeleteIpAccessSettingsRequest"),
    type = "structure",
    members = {
        ipAccessSettingsArn = schema.new({
            id = id.from(_N, "DeleteIpAccessSettingsInput", "ipAccessSettingsArn"),
            type = "string",
            name = "ipAccessSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteIpAccessSettingsOutput = schema.new({
    id = id.from(_N, "DeleteIpAccessSettingsResponse"),
    type = "structure",
})

M.GetIpAccessSettingsInput = schema.new({
    id = id.from(_N, "GetIpAccessSettingsRequest"),
    type = "structure",
    members = {
        ipAccessSettingsArn = schema.new({
            id = id.from(_N, "GetIpAccessSettingsInput", "ipAccessSettingsArn"),
            type = "string",
            name = "ipAccessSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.IpAccessSettings = schema.new({
    id = id.from(_N, "IpAccessSettings"),
    type = "structure",
    members = {
        ipAccessSettingsArn = schema.new({
            id = id.from(_N, "IpAccessSettings", "ipAccessSettingsArn"),
            type = "string",
            name = "ipAccessSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        associatedPortalArns = schema.new({
            id = id.from(_N, "IpAccessSettings", "associatedPortalArns"),
            type = "list",
            name = "associatedPortalArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ipRules = schema.new({
            id = id.from(_N, "IpAccessSettings", "ipRules"),
            type = "list",
            name = "ipRules",
            target_id = prelude.Document.id,
            list_member = M.IpRule,
        }),
        displayName = schema.new({
            id = id.from(_N, "IpAccessSettings", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "IpAccessSettings", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "IpAccessSettings", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        customerManagedKey = schema.new({
            id = id.from(_N, "IpAccessSettings", "customerManagedKey"),
            type = "string",
            name = "customerManagedKey",
            target_id = prelude.String.id,
        }),
        additionalEncryptionContext = schema.new({
            id = id.from(_N, "IpAccessSettings", "additionalEncryptionContext"),
            type = "map",
            name = "additionalEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetIpAccessSettingsOutput = schema.new({
    id = id.from(_N, "GetIpAccessSettingsResponse"),
    type = "structure",
    members = {
        ipAccessSettings = schema.new({
            id = id.from(_N, "GetIpAccessSettingsOutput", "ipAccessSettings"),
            type = "structure",
            name = "ipAccessSettings",
            target_id = id.from(_N, "IpAccessSettings"),
            target = M.IpAccessSettings,
        }),
    },
})

M.ListIpAccessSettingsInput = schema.new({
    id = id.from(_N, "ListIpAccessSettingsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListIpAccessSettingsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListIpAccessSettingsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.IpAccessSettingsSummary = schema.new({
    id = id.from(_N, "IpAccessSettingsSummary"),
    type = "structure",
    members = {
        ipAccessSettingsArn = schema.new({
            id = id.from(_N, "IpAccessSettingsSummary", "ipAccessSettingsArn"),
            type = "string",
            name = "ipAccessSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "IpAccessSettingsSummary", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "IpAccessSettingsSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "IpAccessSettingsSummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListIpAccessSettingsOutput = schema.new({
    id = id.from(_N, "ListIpAccessSettingsResponse"),
    type = "structure",
    members = {
        ipAccessSettings = schema.new({
            id = id.from(_N, "ListIpAccessSettingsOutput", "ipAccessSettings"),
            type = "list",
            name = "ipAccessSettings",
            target_id = prelude.Document.id,
            list_member = M.IpAccessSettingsSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIpAccessSettingsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateIpAccessSettingsInput = schema.new({
    id = id.from(_N, "UpdateIpAccessSettingsRequest"),
    type = "structure",
    members = {
        ipAccessSettingsArn = schema.new({
            id = id.from(_N, "UpdateIpAccessSettingsInput", "ipAccessSettingsArn"),
            type = "string",
            name = "ipAccessSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdateIpAccessSettingsInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateIpAccessSettingsInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        ipRules = schema.new({
            id = id.from(_N, "UpdateIpAccessSettingsInput", "ipRules"),
            type = "list",
            name = "ipRules",
            target_id = prelude.Document.id,
            list_member = M.IpRule,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateIpAccessSettingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateIpAccessSettingsOutput = schema.new({
    id = id.from(_N, "UpdateIpAccessSettingsResponse"),
    type = "structure",
    members = {
        ipAccessSettings = schema.new({
            id = id.from(_N, "UpdateIpAccessSettingsOutput", "ipAccessSettings"),
            type = "structure",
            name = "ipAccessSettings",
            target_id = id.from(_N, "IpAccessSettings"),
            target = M.IpAccessSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListSessionsInput = schema.new({
    id = id.from(_N, "ListSessionsRequest"),
    type = "structure",
    members = {
        portalId = schema.new({
            id = id.from(_N, "ListSessionsInput", "portalId"),
            type = "string",
            name = "portalId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        username = schema.new({
            id = id.from(_N, "ListSessionsInput", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "username" },
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "ListSessionsInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sessionId" },
            },
        }),
        sortBy = schema.new({
            id = id.from(_N, "ListSessionsInput", "sortBy"),
            type = "string",
            name = "sortBy",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "sortBy" },
            },
        }),
        status = schema.new({
            id = id.from(_N, "ListSessionsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSessionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSessionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.SessionSummary = schema.new({
    id = id.from(_N, "SessionSummary"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "SessionSummary", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
        }),
        sessionId = schema.new({
            id = id.from(_N, "SessionSummary", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
        username = schema.new({
            id = id.from(_N, "SessionSummary", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "SessionSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        startTime = schema.new({
            id = id.from(_N, "SessionSummary", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "SessionSummary", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListSessionsOutput = schema.new({
    id = id.from(_N, "ListSessionsResponse"),
    type = "structure",
    members = {
        sessions = schema.new({
            id = id.from(_N, "ListSessionsOutput", "sessions"),
            type = "list",
            name = "sessions",
            target_id = prelude.Document.id,
            list_member = M.SessionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSessionsOutput", "nextToken"),
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
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateNetworkSettingsInput = schema.new({
    id = id.from(_N, "CreateNetworkSettingsRequest"),
    type = "structure",
    members = {
        vpcId = schema.new({
            id = id.from(_N, "CreateNetworkSettingsInput", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subnetIds = schema.new({
            id = id.from(_N, "CreateNetworkSettingsInput", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "CreateNetworkSettingsInput", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateNetworkSettingsInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateNetworkSettingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateNetworkSettingsOutput = schema.new({
    id = id.from(_N, "CreateNetworkSettingsResponse"),
    type = "structure",
    members = {
        networkSettingsArn = schema.new({
            id = id.from(_N, "CreateNetworkSettingsOutput", "networkSettingsArn"),
            type = "string",
            name = "networkSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteNetworkSettingsInput = schema.new({
    id = id.from(_N, "DeleteNetworkSettingsRequest"),
    type = "structure",
    members = {
        networkSettingsArn = schema.new({
            id = id.from(_N, "DeleteNetworkSettingsInput", "networkSettingsArn"),
            type = "string",
            name = "networkSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteNetworkSettingsOutput = schema.new({
    id = id.from(_N, "DeleteNetworkSettingsResponse"),
    type = "structure",
})

M.GetNetworkSettingsInput = schema.new({
    id = id.from(_N, "GetNetworkSettingsRequest"),
    type = "structure",
    members = {
        networkSettingsArn = schema.new({
            id = id.from(_N, "GetNetworkSettingsInput", "networkSettingsArn"),
            type = "string",
            name = "networkSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.NetworkSettings = schema.new({
    id = id.from(_N, "NetworkSettings"),
    type = "structure",
    members = {
        networkSettingsArn = schema.new({
            id = id.from(_N, "NetworkSettings", "networkSettingsArn"),
            type = "string",
            name = "networkSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        associatedPortalArns = schema.new({
            id = id.from(_N, "NetworkSettings", "associatedPortalArns"),
            type = "list",
            name = "associatedPortalArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        vpcId = schema.new({
            id = id.from(_N, "NetworkSettings", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
        }),
        subnetIds = schema.new({
            id = id.from(_N, "NetworkSettings", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "NetworkSettings", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetNetworkSettingsOutput = schema.new({
    id = id.from(_N, "GetNetworkSettingsResponse"),
    type = "structure",
    members = {
        networkSettings = schema.new({
            id = id.from(_N, "GetNetworkSettingsOutput", "networkSettings"),
            type = "structure",
            name = "networkSettings",
            target_id = id.from(_N, "NetworkSettings"),
            target = M.NetworkSettings,
        }),
    },
})

M.ListNetworkSettingsInput = schema.new({
    id = id.from(_N, "ListNetworkSettingsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkSettingsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkSettingsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.NetworkSettingsSummary = schema.new({
    id = id.from(_N, "NetworkSettingsSummary"),
    type = "structure",
    members = {
        networkSettingsArn = schema.new({
            id = id.from(_N, "NetworkSettingsSummary", "networkSettingsArn"),
            type = "string",
            name = "networkSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcId = schema.new({
            id = id.from(_N, "NetworkSettingsSummary", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkSettingsOutput = schema.new({
    id = id.from(_N, "ListNetworkSettingsResponse"),
    type = "structure",
    members = {
        networkSettings = schema.new({
            id = id.from(_N, "ListNetworkSettingsOutput", "networkSettings"),
            type = "list",
            name = "networkSettings",
            target_id = prelude.Document.id,
            list_member = M.NetworkSettingsSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkSettingsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateNetworkSettingsInput = schema.new({
    id = id.from(_N, "UpdateNetworkSettingsRequest"),
    type = "structure",
    members = {
        networkSettingsArn = schema.new({
            id = id.from(_N, "UpdateNetworkSettingsInput", "networkSettingsArn"),
            type = "string",
            name = "networkSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        vpcId = schema.new({
            id = id.from(_N, "UpdateNetworkSettingsInput", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
        }),
        subnetIds = schema.new({
            id = id.from(_N, "UpdateNetworkSettingsInput", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "UpdateNetworkSettingsInput", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateNetworkSettingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateNetworkSettingsOutput = schema.new({
    id = id.from(_N, "UpdateNetworkSettingsResponse"),
    type = "structure",
    members = {
        networkSettings = schema.new({
            id = id.from(_N, "UpdateNetworkSettingsOutput", "networkSettings"),
            type = "structure",
            name = "networkSettings",
            target_id = id.from(_N, "NetworkSettings"),
            target = M.NetworkSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreatePortalInput = schema.new({
    id = id.from(_N, "CreatePortalRequest"),
    type = "structure",
    members = {
        displayName = schema.new({
            id = id.from(_N, "CreatePortalInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreatePortalInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        customerManagedKey = schema.new({
            id = id.from(_N, "CreatePortalInput", "customerManagedKey"),
            type = "string",
            name = "customerManagedKey",
            target_id = prelude.String.id,
        }),
        additionalEncryptionContext = schema.new({
            id = id.from(_N, "CreatePortalInput", "additionalEncryptionContext"),
            type = "map",
            name = "additionalEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreatePortalInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        authenticationType = schema.new({
            id = id.from(_N, "CreatePortalInput", "authenticationType"),
            type = "string",
            name = "authenticationType",
            target_id = prelude.String.id,
        }),
        instanceType = schema.new({
            id = id.from(_N, "CreatePortalInput", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
        }),
        maxConcurrentSessions = schema.new({
            id = id.from(_N, "CreatePortalInput", "maxConcurrentSessions"),
            type = "integer",
            name = "maxConcurrentSessions",
            target_id = prelude.Integer.id,
        }),
        portalCustomDomain = schema.new({
            id = id.from(_N, "CreatePortalInput", "portalCustomDomain"),
            type = "string",
            name = "portalCustomDomain",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePortalOutput = schema.new({
    id = id.from(_N, "CreatePortalResponse"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "CreatePortalOutput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portalEndpoint = schema.new({
            id = id.from(_N, "CreatePortalOutput", "portalEndpoint"),
            type = "string",
            name = "portalEndpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePortalInput = schema.new({
    id = id.from(_N, "DeletePortalRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "DeletePortalInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeletePortalOutput = schema.new({
    id = id.from(_N, "DeletePortalResponse"),
    type = "structure",
})

M.DisassociateBrowserSettingsInput = schema.new({
    id = id.from(_N, "DisassociateBrowserSettingsRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "DisassociateBrowserSettingsInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateBrowserSettingsOutput = schema.new({
    id = id.from(_N, "DisassociateBrowserSettingsResponse"),
    type = "structure",
})

M.DisassociateDataProtectionSettingsInput = schema.new({
    id = id.from(_N, "DisassociateDataProtectionSettingsRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "DisassociateDataProtectionSettingsInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateDataProtectionSettingsOutput = schema.new({
    id = id.from(_N, "DisassociateDataProtectionSettingsResponse"),
    type = "structure",
})

M.DisassociateIpAccessSettingsInput = schema.new({
    id = id.from(_N, "DisassociateIpAccessSettingsRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "DisassociateIpAccessSettingsInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateIpAccessSettingsOutput = schema.new({
    id = id.from(_N, "DisassociateIpAccessSettingsResponse"),
    type = "structure",
})

M.DisassociateNetworkSettingsInput = schema.new({
    id = id.from(_N, "DisassociateNetworkSettingsRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "DisassociateNetworkSettingsInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateNetworkSettingsOutput = schema.new({
    id = id.from(_N, "DisassociateNetworkSettingsResponse"),
    type = "structure",
})

M.DisassociateSessionLoggerInput = schema.new({
    id = id.from(_N, "DisassociateSessionLoggerRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "DisassociateSessionLoggerInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateSessionLoggerOutput = schema.new({
    id = id.from(_N, "DisassociateSessionLoggerResponse"),
    type = "structure",
})

M.DisassociateTrustStoreInput = schema.new({
    id = id.from(_N, "DisassociateTrustStoreRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "DisassociateTrustStoreInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateTrustStoreOutput = schema.new({
    id = id.from(_N, "DisassociateTrustStoreResponse"),
    type = "structure",
})

M.DisassociateUserAccessLoggingSettingsInput = schema.new({
    id = id.from(_N, "DisassociateUserAccessLoggingSettingsRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "DisassociateUserAccessLoggingSettingsInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateUserAccessLoggingSettingsOutput = schema.new({
    id = id.from(_N, "DisassociateUserAccessLoggingSettingsResponse"),
    type = "structure",
})

M.DisassociateUserSettingsInput = schema.new({
    id = id.from(_N, "DisassociateUserSettingsRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "DisassociateUserSettingsInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisassociateUserSettingsOutput = schema.new({
    id = id.from(_N, "DisassociateUserSettingsResponse"),
    type = "structure",
})

M.GetPortalInput = schema.new({
    id = id.from(_N, "GetPortalRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "GetPortalInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.Portal = schema.new({
    id = id.from(_N, "Portal"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "Portal", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        rendererType = schema.new({
            id = id.from(_N, "Portal", "rendererType"),
            type = "string",
            name = "rendererType",
            target_id = prelude.String.id,
        }),
        browserType = schema.new({
            id = id.from(_N, "Portal", "browserType"),
            type = "string",
            name = "browserType",
            target_id = prelude.String.id,
        }),
        portalStatus = schema.new({
            id = id.from(_N, "Portal", "portalStatus"),
            type = "string",
            name = "portalStatus",
            target_id = prelude.String.id,
        }),
        portalEndpoint = schema.new({
            id = id.from(_N, "Portal", "portalEndpoint"),
            type = "string",
            name = "portalEndpoint",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "Portal", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "Portal", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        browserSettingsArn = schema.new({
            id = id.from(_N, "Portal", "browserSettingsArn"),
            type = "string",
            name = "browserSettingsArn",
            target_id = prelude.String.id,
        }),
        dataProtectionSettingsArn = schema.new({
            id = id.from(_N, "Portal", "dataProtectionSettingsArn"),
            type = "string",
            name = "dataProtectionSettingsArn",
            target_id = prelude.String.id,
        }),
        userSettingsArn = schema.new({
            id = id.from(_N, "Portal", "userSettingsArn"),
            type = "string",
            name = "userSettingsArn",
            target_id = prelude.String.id,
        }),
        networkSettingsArn = schema.new({
            id = id.from(_N, "Portal", "networkSettingsArn"),
            type = "string",
            name = "networkSettingsArn",
            target_id = prelude.String.id,
        }),
        sessionLoggerArn = schema.new({
            id = id.from(_N, "Portal", "sessionLoggerArn"),
            type = "string",
            name = "sessionLoggerArn",
            target_id = prelude.String.id,
        }),
        trustStoreArn = schema.new({
            id = id.from(_N, "Portal", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "Portal", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        userAccessLoggingSettingsArn = schema.new({
            id = id.from(_N, "Portal", "userAccessLoggingSettingsArn"),
            type = "string",
            name = "userAccessLoggingSettingsArn",
            target_id = prelude.String.id,
        }),
        authenticationType = schema.new({
            id = id.from(_N, "Portal", "authenticationType"),
            type = "string",
            name = "authenticationType",
            target_id = prelude.String.id,
        }),
        ipAccessSettingsArn = schema.new({
            id = id.from(_N, "Portal", "ipAccessSettingsArn"),
            type = "string",
            name = "ipAccessSettingsArn",
            target_id = prelude.String.id,
        }),
        customerManagedKey = schema.new({
            id = id.from(_N, "Portal", "customerManagedKey"),
            type = "string",
            name = "customerManagedKey",
            target_id = prelude.String.id,
        }),
        additionalEncryptionContext = schema.new({
            id = id.from(_N, "Portal", "additionalEncryptionContext"),
            type = "map",
            name = "additionalEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        instanceType = schema.new({
            id = id.from(_N, "Portal", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
        }),
        maxConcurrentSessions = schema.new({
            id = id.from(_N, "Portal", "maxConcurrentSessions"),
            type = "integer",
            name = "maxConcurrentSessions",
            target_id = prelude.Integer.id,
        }),
        portalCustomDomain = schema.new({
            id = id.from(_N, "Portal", "portalCustomDomain"),
            type = "string",
            name = "portalCustomDomain",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPortalOutput = schema.new({
    id = id.from(_N, "GetPortalResponse"),
    type = "structure",
    members = {
        portal = schema.new({
            id = id.from(_N, "GetPortalOutput", "portal"),
            type = "structure",
            name = "portal",
            target_id = id.from(_N, "Portal"),
            target = M.Portal,
        }),
    },
})

M.GetPortalServiceProviderMetadataInput = schema.new({
    id = id.from(_N, "GetPortalServiceProviderMetadataRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "GetPortalServiceProviderMetadataInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetPortalServiceProviderMetadataOutput = schema.new({
    id = id.from(_N, "GetPortalServiceProviderMetadataResponse"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "GetPortalServiceProviderMetadataOutput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceProviderSamlMetadata = schema.new({
            id = id.from(_N, "GetPortalServiceProviderMetadataOutput", "serviceProviderSamlMetadata"),
            type = "string",
            name = "serviceProviderSamlMetadata",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPortalsInput = schema.new({
    id = id.from(_N, "ListPortalsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPortalsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPortalsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.PortalSummary = schema.new({
    id = id.from(_N, "PortalSummary"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "PortalSummary", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        rendererType = schema.new({
            id = id.from(_N, "PortalSummary", "rendererType"),
            type = "string",
            name = "rendererType",
            target_id = prelude.String.id,
        }),
        browserType = schema.new({
            id = id.from(_N, "PortalSummary", "browserType"),
            type = "string",
            name = "browserType",
            target_id = prelude.String.id,
        }),
        portalStatus = schema.new({
            id = id.from(_N, "PortalSummary", "portalStatus"),
            type = "string",
            name = "portalStatus",
            target_id = prelude.String.id,
        }),
        portalEndpoint = schema.new({
            id = id.from(_N, "PortalSummary", "portalEndpoint"),
            type = "string",
            name = "portalEndpoint",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "PortalSummary", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "PortalSummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
        browserSettingsArn = schema.new({
            id = id.from(_N, "PortalSummary", "browserSettingsArn"),
            type = "string",
            name = "browserSettingsArn",
            target_id = prelude.String.id,
        }),
        dataProtectionSettingsArn = schema.new({
            id = id.from(_N, "PortalSummary", "dataProtectionSettingsArn"),
            type = "string",
            name = "dataProtectionSettingsArn",
            target_id = prelude.String.id,
        }),
        userSettingsArn = schema.new({
            id = id.from(_N, "PortalSummary", "userSettingsArn"),
            type = "string",
            name = "userSettingsArn",
            target_id = prelude.String.id,
        }),
        networkSettingsArn = schema.new({
            id = id.from(_N, "PortalSummary", "networkSettingsArn"),
            type = "string",
            name = "networkSettingsArn",
            target_id = prelude.String.id,
        }),
        sessionLoggerArn = schema.new({
            id = id.from(_N, "PortalSummary", "sessionLoggerArn"),
            type = "string",
            name = "sessionLoggerArn",
            target_id = prelude.String.id,
        }),
        trustStoreArn = schema.new({
            id = id.from(_N, "PortalSummary", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
        }),
        userAccessLoggingSettingsArn = schema.new({
            id = id.from(_N, "PortalSummary", "userAccessLoggingSettingsArn"),
            type = "string",
            name = "userAccessLoggingSettingsArn",
            target_id = prelude.String.id,
        }),
        authenticationType = schema.new({
            id = id.from(_N, "PortalSummary", "authenticationType"),
            type = "string",
            name = "authenticationType",
            target_id = prelude.String.id,
        }),
        ipAccessSettingsArn = schema.new({
            id = id.from(_N, "PortalSummary", "ipAccessSettingsArn"),
            type = "string",
            name = "ipAccessSettingsArn",
            target_id = prelude.String.id,
        }),
        instanceType = schema.new({
            id = id.from(_N, "PortalSummary", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
        }),
        maxConcurrentSessions = schema.new({
            id = id.from(_N, "PortalSummary", "maxConcurrentSessions"),
            type = "integer",
            name = "maxConcurrentSessions",
            target_id = prelude.Integer.id,
        }),
        portalCustomDomain = schema.new({
            id = id.from(_N, "PortalSummary", "portalCustomDomain"),
            type = "string",
            name = "portalCustomDomain",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPortalsOutput = schema.new({
    id = id.from(_N, "ListPortalsResponse"),
    type = "structure",
    members = {
        portals = schema.new({
            id = id.from(_N, "ListPortalsOutput", "portals"),
            type = "list",
            name = "portals",
            target_id = prelude.Document.id,
            list_member = M.PortalSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPortalsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePortalInput = schema.new({
    id = id.from(_N, "UpdatePortalRequest"),
    type = "structure",
    members = {
        portalArn = schema.new({
            id = id.from(_N, "UpdatePortalInput", "portalArn"),
            type = "string",
            name = "portalArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdatePortalInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        authenticationType = schema.new({
            id = id.from(_N, "UpdatePortalInput", "authenticationType"),
            type = "string",
            name = "authenticationType",
            target_id = prelude.String.id,
        }),
        instanceType = schema.new({
            id = id.from(_N, "UpdatePortalInput", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
        }),
        maxConcurrentSessions = schema.new({
            id = id.from(_N, "UpdatePortalInput", "maxConcurrentSessions"),
            type = "integer",
            name = "maxConcurrentSessions",
            target_id = prelude.Integer.id,
        }),
        portalCustomDomain = schema.new({
            id = id.from(_N, "UpdatePortalInput", "portalCustomDomain"),
            type = "string",
            name = "portalCustomDomain",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePortalOutput = schema.new({
    id = id.from(_N, "UpdatePortalResponse"),
    type = "structure",
    members = {
        portal = schema.new({
            id = id.from(_N, "UpdatePortalOutput", "portal"),
            type = "structure",
            name = "portal",
            target_id = id.from(_N, "Portal"),
            target = M.Portal,
        }),
    },
})

M.Unit = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.EventFilter = schema.new({
    id = id.from(_N, "EventFilter"),
    type = "union",
    members = {
        all = schema.new({
            id = id.from(_N, "EventFilter", "all"),
            type = "structure",
            name = "all",
            target_id = id.from(_N, "Unit"),
            target = M.Unit,
        }),
        include = schema.new({
            id = id.from(_N, "EventFilter", "include"),
            type = "list",
            name = "include",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.S3LogConfiguration = schema.new({
    id = id.from(_N, "S3LogConfiguration"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "S3LogConfiguration", "bucket"),
            type = "string",
            name = "bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        keyPrefix = schema.new({
            id = id.from(_N, "S3LogConfiguration", "keyPrefix"),
            type = "string",
            name = "keyPrefix",
            target_id = prelude.String.id,
        }),
        bucketOwner = schema.new({
            id = id.from(_N, "S3LogConfiguration", "bucketOwner"),
            type = "string",
            name = "bucketOwner",
            target_id = prelude.String.id,
        }),
        logFileFormat = schema.new({
            id = id.from(_N, "S3LogConfiguration", "logFileFormat"),
            type = "string",
            name = "logFileFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        folderStructure = schema.new({
            id = id.from(_N, "S3LogConfiguration", "folderStructure"),
            type = "string",
            name = "folderStructure",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LogConfiguration = schema.new({
    id = id.from(_N, "LogConfiguration"),
    type = "structure",
    members = {
        s3 = schema.new({
            id = id.from(_N, "LogConfiguration", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3LogConfiguration"),
            target = M.S3LogConfiguration,
        }),
    },
})

M.CreateSessionLoggerInput = schema.new({
    id = id.from(_N, "CreateSessionLoggerRequest"),
    type = "structure",
    members = {
        eventFilter = schema.new({
            id = id.from(_N, "CreateSessionLoggerInput", "eventFilter"),
            type = "union",
            name = "eventFilter",
            target_id = id.from(_N, "EventFilter"),
            target = M.EventFilter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logConfiguration = schema.new({
            id = id.from(_N, "CreateSessionLoggerInput", "logConfiguration"),
            type = "structure",
            name = "logConfiguration",
            target_id = id.from(_N, "LogConfiguration"),
            target = M.LogConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "CreateSessionLoggerInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        customerManagedKey = schema.new({
            id = id.from(_N, "CreateSessionLoggerInput", "customerManagedKey"),
            type = "string",
            name = "customerManagedKey",
            target_id = prelude.String.id,
        }),
        additionalEncryptionContext = schema.new({
            id = id.from(_N, "CreateSessionLoggerInput", "additionalEncryptionContext"),
            type = "map",
            name = "additionalEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateSessionLoggerInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateSessionLoggerInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateSessionLoggerOutput = schema.new({
    id = id.from(_N, "CreateSessionLoggerResponse"),
    type = "structure",
    members = {
        sessionLoggerArn = schema.new({
            id = id.from(_N, "CreateSessionLoggerOutput", "sessionLoggerArn"),
            type = "string",
            name = "sessionLoggerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSessionLoggerInput = schema.new({
    id = id.from(_N, "DeleteSessionLoggerRequest"),
    type = "structure",
    members = {
        sessionLoggerArn = schema.new({
            id = id.from(_N, "DeleteSessionLoggerInput", "sessionLoggerArn"),
            type = "string",
            name = "sessionLoggerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteSessionLoggerOutput = schema.new({
    id = id.from(_N, "DeleteSessionLoggerResponse"),
    type = "structure",
})

M.GetSessionLoggerInput = schema.new({
    id = id.from(_N, "GetSessionLoggerRequest"),
    type = "structure",
    members = {
        sessionLoggerArn = schema.new({
            id = id.from(_N, "GetSessionLoggerInput", "sessionLoggerArn"),
            type = "string",
            name = "sessionLoggerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.SessionLogger = schema.new({
    id = id.from(_N, "SessionLogger"),
    type = "structure",
    members = {
        sessionLoggerArn = schema.new({
            id = id.from(_N, "SessionLogger", "sessionLoggerArn"),
            type = "string",
            name = "sessionLoggerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        eventFilter = schema.new({
            id = id.from(_N, "SessionLogger", "eventFilter"),
            type = "union",
            name = "eventFilter",
            target_id = id.from(_N, "EventFilter"),
            target = M.EventFilter,
        }),
        logConfiguration = schema.new({
            id = id.from(_N, "SessionLogger", "logConfiguration"),
            type = "structure",
            name = "logConfiguration",
            target_id = id.from(_N, "LogConfiguration"),
            target = M.LogConfiguration,
        }),
        customerManagedKey = schema.new({
            id = id.from(_N, "SessionLogger", "customerManagedKey"),
            type = "string",
            name = "customerManagedKey",
            target_id = prelude.String.id,
        }),
        additionalEncryptionContext = schema.new({
            id = id.from(_N, "SessionLogger", "additionalEncryptionContext"),
            type = "map",
            name = "additionalEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        associatedPortalArns = schema.new({
            id = id.from(_N, "SessionLogger", "associatedPortalArns"),
            type = "list",
            name = "associatedPortalArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        displayName = schema.new({
            id = id.from(_N, "SessionLogger", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "SessionLogger", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetSessionLoggerOutput = schema.new({
    id = id.from(_N, "GetSessionLoggerResponse"),
    type = "structure",
    members = {
        sessionLogger = schema.new({
            id = id.from(_N, "GetSessionLoggerOutput", "sessionLogger"),
            type = "structure",
            name = "sessionLogger",
            target_id = id.from(_N, "SessionLogger"),
            target = M.SessionLogger,
        }),
    },
})

M.ListSessionLoggersInput = schema.new({
    id = id.from(_N, "ListSessionLoggersRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSessionLoggersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSessionLoggersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.SessionLoggerSummary = schema.new({
    id = id.from(_N, "SessionLoggerSummary"),
    type = "structure",
    members = {
        sessionLoggerArn = schema.new({
            id = id.from(_N, "SessionLoggerSummary", "sessionLoggerArn"),
            type = "string",
            name = "sessionLoggerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logConfiguration = schema.new({
            id = id.from(_N, "SessionLoggerSummary", "logConfiguration"),
            type = "structure",
            name = "logConfiguration",
            target_id = id.from(_N, "LogConfiguration"),
            target = M.LogConfiguration,
        }),
        displayName = schema.new({
            id = id.from(_N, "SessionLoggerSummary", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        creationDate = schema.new({
            id = id.from(_N, "SessionLoggerSummary", "creationDate"),
            type = "timestamp",
            name = "creationDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListSessionLoggersOutput = schema.new({
    id = id.from(_N, "ListSessionLoggersResponse"),
    type = "structure",
    members = {
        sessionLoggers = schema.new({
            id = id.from(_N, "ListSessionLoggersOutput", "sessionLoggers"),
            type = "list",
            name = "sessionLoggers",
            target_id = prelude.Document.id,
            list_member = M.SessionLoggerSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSessionLoggersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSessionLoggerInput = schema.new({
    id = id.from(_N, "UpdateSessionLoggerRequest"),
    type = "structure",
    members = {
        sessionLoggerArn = schema.new({
            id = id.from(_N, "UpdateSessionLoggerInput", "sessionLoggerArn"),
            type = "string",
            name = "sessionLoggerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        eventFilter = schema.new({
            id = id.from(_N, "UpdateSessionLoggerInput", "eventFilter"),
            type = "union",
            name = "eventFilter",
            target_id = id.from(_N, "EventFilter"),
            target = M.EventFilter,
        }),
        logConfiguration = schema.new({
            id = id.from(_N, "UpdateSessionLoggerInput", "logConfiguration"),
            type = "structure",
            name = "logConfiguration",
            target_id = id.from(_N, "LogConfiguration"),
            target = M.LogConfiguration,
        }),
        displayName = schema.new({
            id = id.from(_N, "UpdateSessionLoggerInput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSessionLoggerOutput = schema.new({
    id = id.from(_N, "UpdateSessionLoggerResponse"),
    type = "structure",
    members = {
        sessionLogger = schema.new({
            id = id.from(_N, "UpdateSessionLoggerOutput", "sessionLogger"),
            type = "structure",
            name = "sessionLogger",
            target_id = id.from(_N, "SessionLogger"),
            target = M.SessionLogger,
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
        clientToken = schema.new({
            id = id.from(_N, "TagResourceInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
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
        resourceName = schema.new({
            id = id.from(_N, "TooManyTagsException", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.CertificateSummary = schema.new({
    id = id.from(_N, "CertificateSummary"),
    type = "structure",
    members = {
        thumbprint = schema.new({
            id = id.from(_N, "CertificateSummary", "thumbprint"),
            type = "string",
            name = "thumbprint",
            target_id = prelude.String.id,
        }),
        subject = schema.new({
            id = id.from(_N, "CertificateSummary", "subject"),
            type = "string",
            name = "subject",
            target_id = prelude.String.id,
        }),
        issuer = schema.new({
            id = id.from(_N, "CertificateSummary", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
        }),
        notValidBefore = schema.new({
            id = id.from(_N, "CertificateSummary", "notValidBefore"),
            type = "timestamp",
            name = "notValidBefore",
            target_id = prelude.Timestamp.id,
        }),
        notValidAfter = schema.new({
            id = id.from(_N, "CertificateSummary", "notValidAfter"),
            type = "timestamp",
            name = "notValidAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateTrustStoreInput = schema.new({
    id = id.from(_N, "CreateTrustStoreRequest"),
    type = "structure",
    members = {
        certificateList = schema.new({
            id = id.from(_N, "CreateTrustStoreInput", "certificateList"),
            type = "list",
            name = "certificateList",
            target_id = prelude.Document.id,
            list_member = prelude.Blob,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateTrustStoreInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateTrustStoreInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateTrustStoreOutput = schema.new({
    id = id.from(_N, "CreateTrustStoreResponse"),
    type = "structure",
    members = {
        trustStoreArn = schema.new({
            id = id.from(_N, "CreateTrustStoreOutput", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteTrustStoreInput = schema.new({
    id = id.from(_N, "DeleteTrustStoreRequest"),
    type = "structure",
    members = {
        trustStoreArn = schema.new({
            id = id.from(_N, "DeleteTrustStoreInput", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteTrustStoreOutput = schema.new({
    id = id.from(_N, "DeleteTrustStoreResponse"),
    type = "structure",
})

M.GetTrustStoreInput = schema.new({
    id = id.from(_N, "GetTrustStoreRequest"),
    type = "structure",
    members = {
        trustStoreArn = schema.new({
            id = id.from(_N, "GetTrustStoreInput", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.TrustStore = schema.new({
    id = id.from(_N, "TrustStore"),
    type = "structure",
    members = {
        associatedPortalArns = schema.new({
            id = id.from(_N, "TrustStore", "associatedPortalArns"),
            type = "list",
            name = "associatedPortalArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        trustStoreArn = schema.new({
            id = id.from(_N, "TrustStore", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetTrustStoreOutput = schema.new({
    id = id.from(_N, "GetTrustStoreResponse"),
    type = "structure",
    members = {
        trustStore = schema.new({
            id = id.from(_N, "GetTrustStoreOutput", "trustStore"),
            type = "structure",
            name = "trustStore",
            target_id = id.from(_N, "TrustStore"),
            target = M.TrustStore,
        }),
    },
})

M.GetTrustStoreCertificateInput = schema.new({
    id = id.from(_N, "GetTrustStoreCertificateRequest"),
    type = "structure",
    members = {
        trustStoreArn = schema.new({
            id = id.from(_N, "GetTrustStoreCertificateInput", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        thumbprint = schema.new({
            id = id.from(_N, "GetTrustStoreCertificateInput", "thumbprint"),
            type = "string",
            name = "thumbprint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "thumbprint" },
            },
        }),
    },
})

M.Certificate = schema.new({
    id = id.from(_N, "Certificate"),
    type = "structure",
    members = {
        thumbprint = schema.new({
            id = id.from(_N, "Certificate", "thumbprint"),
            type = "string",
            name = "thumbprint",
            target_id = prelude.String.id,
        }),
        subject = schema.new({
            id = id.from(_N, "Certificate", "subject"),
            type = "string",
            name = "subject",
            target_id = prelude.String.id,
        }),
        issuer = schema.new({
            id = id.from(_N, "Certificate", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
        }),
        notValidBefore = schema.new({
            id = id.from(_N, "Certificate", "notValidBefore"),
            type = "timestamp",
            name = "notValidBefore",
            target_id = prelude.Timestamp.id,
        }),
        notValidAfter = schema.new({
            id = id.from(_N, "Certificate", "notValidAfter"),
            type = "timestamp",
            name = "notValidAfter",
            target_id = prelude.Timestamp.id,
        }),
        body = schema.new({
            id = id.from(_N, "Certificate", "body"),
            type = "blob",
            name = "body",
            target_id = prelude.Blob.id,
        }),
    },
})

M.GetTrustStoreCertificateOutput = schema.new({
    id = id.from(_N, "GetTrustStoreCertificateResponse"),
    type = "structure",
    members = {
        trustStoreArn = schema.new({
            id = id.from(_N, "GetTrustStoreCertificateOutput", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        certificate = schema.new({
            id = id.from(_N, "GetTrustStoreCertificateOutput", "certificate"),
            type = "structure",
            name = "certificate",
            target_id = id.from(_N, "Certificate"),
            target = M.Certificate,
        }),
    },
})

M.ListTrustStoreCertificatesInput = schema.new({
    id = id.from(_N, "ListTrustStoreCertificatesRequest"),
    type = "structure",
    members = {
        trustStoreArn = schema.new({
            id = id.from(_N, "ListTrustStoreCertificatesInput", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTrustStoreCertificatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTrustStoreCertificatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListTrustStoreCertificatesOutput = schema.new({
    id = id.from(_N, "ListTrustStoreCertificatesResponse"),
    type = "structure",
    members = {
        certificateList = schema.new({
            id = id.from(_N, "ListTrustStoreCertificatesOutput", "certificateList"),
            type = "list",
            name = "certificateList",
            target_id = prelude.Document.id,
            list_member = M.CertificateSummary,
        }),
        trustStoreArn = schema.new({
            id = id.from(_N, "ListTrustStoreCertificatesOutput", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTrustStoreCertificatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTrustStoresInput = schema.new({
    id = id.from(_N, "ListTrustStoresRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTrustStoresInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTrustStoresInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.TrustStoreSummary = schema.new({
    id = id.from(_N, "TrustStoreSummary"),
    type = "structure",
    members = {
        trustStoreArn = schema.new({
            id = id.from(_N, "TrustStoreSummary", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTrustStoresOutput = schema.new({
    id = id.from(_N, "ListTrustStoresResponse"),
    type = "structure",
    members = {
        trustStores = schema.new({
            id = id.from(_N, "ListTrustStoresOutput", "trustStores"),
            type = "list",
            name = "trustStores",
            target_id = prelude.Document.id,
            list_member = M.TrustStoreSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTrustStoresOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateTrustStoreInput = schema.new({
    id = id.from(_N, "UpdateTrustStoreRequest"),
    type = "structure",
    members = {
        trustStoreArn = schema.new({
            id = id.from(_N, "UpdateTrustStoreInput", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        certificatesToAdd = schema.new({
            id = id.from(_N, "UpdateTrustStoreInput", "certificatesToAdd"),
            type = "list",
            name = "certificatesToAdd",
            target_id = prelude.Document.id,
            list_member = prelude.Blob,
        }),
        certificatesToDelete = schema.new({
            id = id.from(_N, "UpdateTrustStoreInput", "certificatesToDelete"),
            type = "list",
            name = "certificatesToDelete",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateTrustStoreInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateTrustStoreOutput = schema.new({
    id = id.from(_N, "UpdateTrustStoreResponse"),
    type = "structure",
    members = {
        trustStoreArn = schema.new({
            id = id.from(_N, "UpdateTrustStoreOutput", "trustStoreArn"),
            type = "string",
            name = "trustStoreArn",
            target_id = prelude.String.id,
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

M.CreateUserAccessLoggingSettingsInput = schema.new({
    id = id.from(_N, "CreateUserAccessLoggingSettingsRequest"),
    type = "structure",
    members = {
        kinesisStreamArn = schema.new({
            id = id.from(_N, "CreateUserAccessLoggingSettingsInput", "kinesisStreamArn"),
            type = "string",
            name = "kinesisStreamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateUserAccessLoggingSettingsInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateUserAccessLoggingSettingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateUserAccessLoggingSettingsOutput = schema.new({
    id = id.from(_N, "CreateUserAccessLoggingSettingsResponse"),
    type = "structure",
    members = {
        userAccessLoggingSettingsArn = schema.new({
            id = id.from(_N, "CreateUserAccessLoggingSettingsOutput", "userAccessLoggingSettingsArn"),
            type = "string",
            name = "userAccessLoggingSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteUserAccessLoggingSettingsInput = schema.new({
    id = id.from(_N, "DeleteUserAccessLoggingSettingsRequest"),
    type = "structure",
    members = {
        userAccessLoggingSettingsArn = schema.new({
            id = id.from(_N, "DeleteUserAccessLoggingSettingsInput", "userAccessLoggingSettingsArn"),
            type = "string",
            name = "userAccessLoggingSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteUserAccessLoggingSettingsOutput = schema.new({
    id = id.from(_N, "DeleteUserAccessLoggingSettingsResponse"),
    type = "structure",
})

M.GetUserAccessLoggingSettingsInput = schema.new({
    id = id.from(_N, "GetUserAccessLoggingSettingsRequest"),
    type = "structure",
    members = {
        userAccessLoggingSettingsArn = schema.new({
            id = id.from(_N, "GetUserAccessLoggingSettingsInput", "userAccessLoggingSettingsArn"),
            type = "string",
            name = "userAccessLoggingSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UserAccessLoggingSettings = schema.new({
    id = id.from(_N, "UserAccessLoggingSettings"),
    type = "structure",
    members = {
        userAccessLoggingSettingsArn = schema.new({
            id = id.from(_N, "UserAccessLoggingSettings", "userAccessLoggingSettingsArn"),
            type = "string",
            name = "userAccessLoggingSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        associatedPortalArns = schema.new({
            id = id.from(_N, "UserAccessLoggingSettings", "associatedPortalArns"),
            type = "list",
            name = "associatedPortalArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        kinesisStreamArn = schema.new({
            id = id.from(_N, "UserAccessLoggingSettings", "kinesisStreamArn"),
            type = "string",
            name = "kinesisStreamArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetUserAccessLoggingSettingsOutput = schema.new({
    id = id.from(_N, "GetUserAccessLoggingSettingsResponse"),
    type = "structure",
    members = {
        userAccessLoggingSettings = schema.new({
            id = id.from(_N, "GetUserAccessLoggingSettingsOutput", "userAccessLoggingSettings"),
            type = "structure",
            name = "userAccessLoggingSettings",
            target_id = id.from(_N, "UserAccessLoggingSettings"),
            target = M.UserAccessLoggingSettings,
        }),
    },
})

M.ListUserAccessLoggingSettingsInput = schema.new({
    id = id.from(_N, "ListUserAccessLoggingSettingsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListUserAccessLoggingSettingsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListUserAccessLoggingSettingsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.UserAccessLoggingSettingsSummary = schema.new({
    id = id.from(_N, "UserAccessLoggingSettingsSummary"),
    type = "structure",
    members = {
        userAccessLoggingSettingsArn = schema.new({
            id = id.from(_N, "UserAccessLoggingSettingsSummary", "userAccessLoggingSettingsArn"),
            type = "string",
            name = "userAccessLoggingSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kinesisStreamArn = schema.new({
            id = id.from(_N, "UserAccessLoggingSettingsSummary", "kinesisStreamArn"),
            type = "string",
            name = "kinesisStreamArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUserAccessLoggingSettingsOutput = schema.new({
    id = id.from(_N, "ListUserAccessLoggingSettingsResponse"),
    type = "structure",
    members = {
        userAccessLoggingSettings = schema.new({
            id = id.from(_N, "ListUserAccessLoggingSettingsOutput", "userAccessLoggingSettings"),
            type = "list",
            name = "userAccessLoggingSettings",
            target_id = prelude.Document.id,
            list_member = M.UserAccessLoggingSettingsSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListUserAccessLoggingSettingsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateUserAccessLoggingSettingsInput = schema.new({
    id = id.from(_N, "UpdateUserAccessLoggingSettingsRequest"),
    type = "structure",
    members = {
        userAccessLoggingSettingsArn = schema.new({
            id = id.from(_N, "UpdateUserAccessLoggingSettingsInput", "userAccessLoggingSettingsArn"),
            type = "string",
            name = "userAccessLoggingSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        kinesisStreamArn = schema.new({
            id = id.from(_N, "UpdateUserAccessLoggingSettingsInput", "kinesisStreamArn"),
            type = "string",
            name = "kinesisStreamArn",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateUserAccessLoggingSettingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateUserAccessLoggingSettingsOutput = schema.new({
    id = id.from(_N, "UpdateUserAccessLoggingSettingsResponse"),
    type = "structure",
    members = {
        userAccessLoggingSettings = schema.new({
            id = id.from(_N, "UpdateUserAccessLoggingSettingsOutput", "userAccessLoggingSettings"),
            type = "structure",
            name = "userAccessLoggingSettings",
            target_id = id.from(_N, "UserAccessLoggingSettings"),
            target = M.UserAccessLoggingSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ImageMetadata = schema.new({
    id = id.from(_N, "ImageMetadata"),
    type = "structure",
    members = {
        mimeType = schema.new({
            id = id.from(_N, "ImageMetadata", "mimeType"),
            type = "string",
            name = "mimeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileExtension = schema.new({
            id = id.from(_N, "ImageMetadata", "fileExtension"),
            type = "string",
            name = "fileExtension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUploadTimestamp = schema.new({
            id = id.from(_N, "ImageMetadata", "lastUploadTimestamp"),
            type = "timestamp",
            name = "lastUploadTimestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LocalizedBrandingStrings = schema.new({
    id = id.from(_N, "LocalizedBrandingStrings"),
    type = "structure",
    members = {
        browserTabTitle = schema.new({
            id = id.from(_N, "LocalizedBrandingStrings", "browserTabTitle"),
            type = "string",
            name = "browserTabTitle",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        welcomeText = schema.new({
            id = id.from(_N, "LocalizedBrandingStrings", "welcomeText"),
            type = "string",
            name = "welcomeText",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        loginTitle = schema.new({
            id = id.from(_N, "LocalizedBrandingStrings", "loginTitle"),
            type = "string",
            name = "loginTitle",
            target_id = prelude.String.id,
        }),
        loginDescription = schema.new({
            id = id.from(_N, "LocalizedBrandingStrings", "loginDescription"),
            type = "string",
            name = "loginDescription",
            target_id = prelude.String.id,
        }),
        loginButtonText = schema.new({
            id = id.from(_N, "LocalizedBrandingStrings", "loginButtonText"),
            type = "string",
            name = "loginButtonText",
            target_id = prelude.String.id,
        }),
        contactLink = schema.new({
            id = id.from(_N, "LocalizedBrandingStrings", "contactLink"),
            type = "string",
            name = "contactLink",
            target_id = prelude.String.id,
        }),
        contactButtonText = schema.new({
            id = id.from(_N, "LocalizedBrandingStrings", "contactButtonText"),
            type = "string",
            name = "contactButtonText",
            target_id = prelude.String.id,
        }),
        loadingText = schema.new({
            id = id.from(_N, "LocalizedBrandingStrings", "loadingText"),
            type = "string",
            name = "loadingText",
            target_id = prelude.String.id,
        }),
    },
})

M.BrandingConfiguration = schema.new({
    id = id.from(_N, "BrandingConfiguration"),
    type = "structure",
    members = {
        logo = schema.new({
            id = id.from(_N, "BrandingConfiguration", "logo"),
            type = "structure",
            name = "logo",
            target_id = id.from(_N, "ImageMetadata"),
            target = M.ImageMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        wallpaper = schema.new({
            id = id.from(_N, "BrandingConfiguration", "wallpaper"),
            type = "structure",
            name = "wallpaper",
            target_id = id.from(_N, "ImageMetadata"),
            target = M.ImageMetadata,
        }),
        favicon = schema.new({
            id = id.from(_N, "BrandingConfiguration", "favicon"),
            type = "structure",
            name = "favicon",
            target_id = id.from(_N, "ImageMetadata"),
            target = M.ImageMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        localizedStrings = schema.new({
            id = id.from(_N, "BrandingConfiguration", "localizedStrings"),
            type = "map",
            name = "localizedStrings",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.LocalizedBrandingStrings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        colorTheme = schema.new({
            id = id.from(_N, "BrandingConfiguration", "colorTheme"),
            type = "string",
            name = "colorTheme",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        termsOfService = schema.new({
            id = id.from(_N, "BrandingConfiguration", "termsOfService"),
            type = "string",
            name = "termsOfService",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "text/markdown" },
            },
        }),
    },
})

M.CookieSpecification = schema.new({
    id = id.from(_N, "CookieSpecification"),
    type = "structure",
    members = {
        domain = schema.new({
            id = id.from(_N, "CookieSpecification", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CookieSpecification", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "CookieSpecification", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
    },
})

M.CookieSynchronizationConfiguration = schema.new({
    id = id.from(_N, "CookieSynchronizationConfiguration"),
    type = "structure",
    members = {
        allowlist = schema.new({
            id = id.from(_N, "CookieSynchronizationConfiguration", "allowlist"),
            type = "list",
            name = "allowlist",
            target_id = prelude.Document.id,
            list_member = M.CookieSpecification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        blocklist = schema.new({
            id = id.from(_N, "CookieSynchronizationConfiguration", "blocklist"),
            type = "list",
            name = "blocklist",
            target_id = prelude.Document.id,
            list_member = M.CookieSpecification,
        }),
    },
})

M.IconImageInput = schema.new({
    id = id.from(_N, "IconImageInput"),
    type = "union",
    members = {
        blob = schema.new({
            id = id.from(_N, "IconImageInput", "blob"),
            type = "blob",
            name = "blob",
            target_id = prelude.Blob.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "image/*" },
            },
        }),
        s3Uri = schema.new({
            id = id.from(_N, "IconImageInput", "s3Uri"),
            type = "string",
            name = "s3Uri",
            target_id = prelude.String.id,
        }),
    },
})

M.WallpaperImageInput = schema.new({
    id = id.from(_N, "WallpaperImageInput"),
    type = "union",
    members = {
        blob = schema.new({
            id = id.from(_N, "WallpaperImageInput", "blob"),
            type = "blob",
            name = "blob",
            target_id = prelude.Blob.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "image/*" },
            },
        }),
        s3Uri = schema.new({
            id = id.from(_N, "WallpaperImageInput", "s3Uri"),
            type = "string",
            name = "s3Uri",
            target_id = prelude.String.id,
        }),
    },
})

M.BrandingConfigurationCreateInput = schema.new({
    id = id.from(_N, "BrandingConfigurationCreateInput"),
    type = "structure",
    members = {
        logo = schema.new({
            id = id.from(_N, "BrandingConfigurationCreateInput", "logo"),
            type = "union",
            name = "logo",
            target_id = id.from(_N, "IconImageInput"),
            target = M.IconImageInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        wallpaper = schema.new({
            id = id.from(_N, "BrandingConfigurationCreateInput", "wallpaper"),
            type = "union",
            name = "wallpaper",
            target_id = id.from(_N, "WallpaperImageInput"),
            target = M.WallpaperImageInput,
        }),
        favicon = schema.new({
            id = id.from(_N, "BrandingConfigurationCreateInput", "favicon"),
            type = "union",
            name = "favicon",
            target_id = id.from(_N, "IconImageInput"),
            target = M.IconImageInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        localizedStrings = schema.new({
            id = id.from(_N, "BrandingConfigurationCreateInput", "localizedStrings"),
            type = "map",
            name = "localizedStrings",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.LocalizedBrandingStrings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        colorTheme = schema.new({
            id = id.from(_N, "BrandingConfigurationCreateInput", "colorTheme"),
            type = "string",
            name = "colorTheme",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        termsOfService = schema.new({
            id = id.from(_N, "BrandingConfigurationCreateInput", "termsOfService"),
            type = "string",
            name = "termsOfService",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "text/markdown" },
            },
        }),
    },
})

M.ToolbarConfiguration = schema.new({
    id = id.from(_N, "ToolbarConfiguration"),
    type = "structure",
    members = {
        toolbarType = schema.new({
            id = id.from(_N, "ToolbarConfiguration", "toolbarType"),
            type = "string",
            name = "toolbarType",
            target_id = prelude.String.id,
        }),
        visualMode = schema.new({
            id = id.from(_N, "ToolbarConfiguration", "visualMode"),
            type = "string",
            name = "visualMode",
            target_id = prelude.String.id,
        }),
        hiddenToolbarItems = schema.new({
            id = id.from(_N, "ToolbarConfiguration", "hiddenToolbarItems"),
            type = "list",
            name = "hiddenToolbarItems",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        maxDisplayResolution = schema.new({
            id = id.from(_N, "ToolbarConfiguration", "maxDisplayResolution"),
            type = "string",
            name = "maxDisplayResolution",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateUserSettingsInput = schema.new({
    id = id.from(_N, "CreateUserSettingsRequest"),
    type = "structure",
    members = {
        copyAllowed = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "copyAllowed"),
            type = "string",
            name = "copyAllowed",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pasteAllowed = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "pasteAllowed"),
            type = "string",
            name = "pasteAllowed",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        downloadAllowed = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "downloadAllowed"),
            type = "string",
            name = "downloadAllowed",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        uploadAllowed = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "uploadAllowed"),
            type = "string",
            name = "uploadAllowed",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        printAllowed = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "printAllowed"),
            type = "string",
            name = "printAllowed",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        disconnectTimeoutInMinutes = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "disconnectTimeoutInMinutes"),
            type = "integer",
            name = "disconnectTimeoutInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        idleDisconnectTimeoutInMinutes = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "idleDisconnectTimeoutInMinutes"),
            type = "integer",
            name = "idleDisconnectTimeoutInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        cookieSynchronizationConfiguration = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "cookieSynchronizationConfiguration"),
            type = "structure",
            name = "cookieSynchronizationConfiguration",
            target_id = id.from(_N, "CookieSynchronizationConfiguration"),
            target = M.CookieSynchronizationConfiguration,
        }),
        customerManagedKey = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "customerManagedKey"),
            type = "string",
            name = "customerManagedKey",
            target_id = prelude.String.id,
        }),
        additionalEncryptionContext = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "additionalEncryptionContext"),
            type = "map",
            name = "additionalEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        deepLinkAllowed = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "deepLinkAllowed"),
            type = "string",
            name = "deepLinkAllowed",
            target_id = prelude.String.id,
        }),
        toolbarConfiguration = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "toolbarConfiguration"),
            type = "structure",
            name = "toolbarConfiguration",
            target_id = id.from(_N, "ToolbarConfiguration"),
            target = M.ToolbarConfiguration,
        }),
        brandingConfigurationInput = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "brandingConfigurationInput"),
            type = "structure",
            name = "brandingConfigurationInput",
            target_id = id.from(_N, "BrandingConfigurationCreateInput"),
            target = M.BrandingConfigurationCreateInput,
        }),
        webAuthnAllowed = schema.new({
            id = id.from(_N, "CreateUserSettingsInput", "webAuthnAllowed"),
            type = "string",
            name = "webAuthnAllowed",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateUserSettingsOutput = schema.new({
    id = id.from(_N, "CreateUserSettingsResponse"),
    type = "structure",
    members = {
        userSettingsArn = schema.new({
            id = id.from(_N, "CreateUserSettingsOutput", "userSettingsArn"),
            type = "string",
            name = "userSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteUserSettingsInput = schema.new({
    id = id.from(_N, "DeleteUserSettingsRequest"),
    type = "structure",
    members = {
        userSettingsArn = schema.new({
            id = id.from(_N, "DeleteUserSettingsInput", "userSettingsArn"),
            type = "string",
            name = "userSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteUserSettingsOutput = schema.new({
    id = id.from(_N, "DeleteUserSettingsResponse"),
    type = "structure",
})

M.GetUserSettingsInput = schema.new({
    id = id.from(_N, "GetUserSettingsRequest"),
    type = "structure",
    members = {
        userSettingsArn = schema.new({
            id = id.from(_N, "GetUserSettingsInput", "userSettingsArn"),
            type = "string",
            name = "userSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.UserSettings = schema.new({
    id = id.from(_N, "UserSettings"),
    type = "structure",
    members = {
        userSettingsArn = schema.new({
            id = id.from(_N, "UserSettings", "userSettingsArn"),
            type = "string",
            name = "userSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        associatedPortalArns = schema.new({
            id = id.from(_N, "UserSettings", "associatedPortalArns"),
            type = "list",
            name = "associatedPortalArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        copyAllowed = schema.new({
            id = id.from(_N, "UserSettings", "copyAllowed"),
            type = "string",
            name = "copyAllowed",
            target_id = prelude.String.id,
        }),
        pasteAllowed = schema.new({
            id = id.from(_N, "UserSettings", "pasteAllowed"),
            type = "string",
            name = "pasteAllowed",
            target_id = prelude.String.id,
        }),
        downloadAllowed = schema.new({
            id = id.from(_N, "UserSettings", "downloadAllowed"),
            type = "string",
            name = "downloadAllowed",
            target_id = prelude.String.id,
        }),
        uploadAllowed = schema.new({
            id = id.from(_N, "UserSettings", "uploadAllowed"),
            type = "string",
            name = "uploadAllowed",
            target_id = prelude.String.id,
        }),
        printAllowed = schema.new({
            id = id.from(_N, "UserSettings", "printAllowed"),
            type = "string",
            name = "printAllowed",
            target_id = prelude.String.id,
        }),
        disconnectTimeoutInMinutes = schema.new({
            id = id.from(_N, "UserSettings", "disconnectTimeoutInMinutes"),
            type = "integer",
            name = "disconnectTimeoutInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        idleDisconnectTimeoutInMinutes = schema.new({
            id = id.from(_N, "UserSettings", "idleDisconnectTimeoutInMinutes"),
            type = "integer",
            name = "idleDisconnectTimeoutInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        cookieSynchronizationConfiguration = schema.new({
            id = id.from(_N, "UserSettings", "cookieSynchronizationConfiguration"),
            type = "structure",
            name = "cookieSynchronizationConfiguration",
            target_id = id.from(_N, "CookieSynchronizationConfiguration"),
            target = M.CookieSynchronizationConfiguration,
        }),
        customerManagedKey = schema.new({
            id = id.from(_N, "UserSettings", "customerManagedKey"),
            type = "string",
            name = "customerManagedKey",
            target_id = prelude.String.id,
        }),
        additionalEncryptionContext = schema.new({
            id = id.from(_N, "UserSettings", "additionalEncryptionContext"),
            type = "map",
            name = "additionalEncryptionContext",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        deepLinkAllowed = schema.new({
            id = id.from(_N, "UserSettings", "deepLinkAllowed"),
            type = "string",
            name = "deepLinkAllowed",
            target_id = prelude.String.id,
        }),
        toolbarConfiguration = schema.new({
            id = id.from(_N, "UserSettings", "toolbarConfiguration"),
            type = "structure",
            name = "toolbarConfiguration",
            target_id = id.from(_N, "ToolbarConfiguration"),
            target = M.ToolbarConfiguration,
        }),
        brandingConfiguration = schema.new({
            id = id.from(_N, "UserSettings", "brandingConfiguration"),
            type = "structure",
            name = "brandingConfiguration",
            target_id = id.from(_N, "BrandingConfiguration"),
            target = M.BrandingConfiguration,
        }),
        webAuthnAllowed = schema.new({
            id = id.from(_N, "UserSettings", "webAuthnAllowed"),
            type = "string",
            name = "webAuthnAllowed",
            target_id = prelude.String.id,
        }),
    },
})

M.GetUserSettingsOutput = schema.new({
    id = id.from(_N, "GetUserSettingsResponse"),
    type = "structure",
    members = {
        userSettings = schema.new({
            id = id.from(_N, "GetUserSettingsOutput", "userSettings"),
            type = "structure",
            name = "userSettings",
            target_id = id.from(_N, "UserSettings"),
            target = M.UserSettings,
        }),
    },
})

M.ListUserSettingsInput = schema.new({
    id = id.from(_N, "ListUserSettingsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListUserSettingsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListUserSettingsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.UserSettingsSummary = schema.new({
    id = id.from(_N, "UserSettingsSummary"),
    type = "structure",
    members = {
        userSettingsArn = schema.new({
            id = id.from(_N, "UserSettingsSummary", "userSettingsArn"),
            type = "string",
            name = "userSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        copyAllowed = schema.new({
            id = id.from(_N, "UserSettingsSummary", "copyAllowed"),
            type = "string",
            name = "copyAllowed",
            target_id = prelude.String.id,
        }),
        pasteAllowed = schema.new({
            id = id.from(_N, "UserSettingsSummary", "pasteAllowed"),
            type = "string",
            name = "pasteAllowed",
            target_id = prelude.String.id,
        }),
        downloadAllowed = schema.new({
            id = id.from(_N, "UserSettingsSummary", "downloadAllowed"),
            type = "string",
            name = "downloadAllowed",
            target_id = prelude.String.id,
        }),
        uploadAllowed = schema.new({
            id = id.from(_N, "UserSettingsSummary", "uploadAllowed"),
            type = "string",
            name = "uploadAllowed",
            target_id = prelude.String.id,
        }),
        printAllowed = schema.new({
            id = id.from(_N, "UserSettingsSummary", "printAllowed"),
            type = "string",
            name = "printAllowed",
            target_id = prelude.String.id,
        }),
        disconnectTimeoutInMinutes = schema.new({
            id = id.from(_N, "UserSettingsSummary", "disconnectTimeoutInMinutes"),
            type = "integer",
            name = "disconnectTimeoutInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        idleDisconnectTimeoutInMinutes = schema.new({
            id = id.from(_N, "UserSettingsSummary", "idleDisconnectTimeoutInMinutes"),
            type = "integer",
            name = "idleDisconnectTimeoutInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        cookieSynchronizationConfiguration = schema.new({
            id = id.from(_N, "UserSettingsSummary", "cookieSynchronizationConfiguration"),
            type = "structure",
            name = "cookieSynchronizationConfiguration",
            target_id = id.from(_N, "CookieSynchronizationConfiguration"),
            target = M.CookieSynchronizationConfiguration,
        }),
        deepLinkAllowed = schema.new({
            id = id.from(_N, "UserSettingsSummary", "deepLinkAllowed"),
            type = "string",
            name = "deepLinkAllowed",
            target_id = prelude.String.id,
        }),
        toolbarConfiguration = schema.new({
            id = id.from(_N, "UserSettingsSummary", "toolbarConfiguration"),
            type = "structure",
            name = "toolbarConfiguration",
            target_id = id.from(_N, "ToolbarConfiguration"),
            target = M.ToolbarConfiguration,
        }),
        brandingConfiguration = schema.new({
            id = id.from(_N, "UserSettingsSummary", "brandingConfiguration"),
            type = "structure",
            name = "brandingConfiguration",
            target_id = id.from(_N, "BrandingConfiguration"),
            target = M.BrandingConfiguration,
        }),
        webAuthnAllowed = schema.new({
            id = id.from(_N, "UserSettingsSummary", "webAuthnAllowed"),
            type = "string",
            name = "webAuthnAllowed",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUserSettingsOutput = schema.new({
    id = id.from(_N, "ListUserSettingsResponse"),
    type = "structure",
    members = {
        userSettings = schema.new({
            id = id.from(_N, "ListUserSettingsOutput", "userSettings"),
            type = "list",
            name = "userSettings",
            target_id = prelude.Document.id,
            list_member = M.UserSettingsSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListUserSettingsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.BrandingConfigurationUpdateInput = schema.new({
    id = id.from(_N, "BrandingConfigurationUpdateInput"),
    type = "structure",
    members = {
        logo = schema.new({
            id = id.from(_N, "BrandingConfigurationUpdateInput", "logo"),
            type = "union",
            name = "logo",
            target_id = id.from(_N, "IconImageInput"),
            target = M.IconImageInput,
        }),
        wallpaper = schema.new({
            id = id.from(_N, "BrandingConfigurationUpdateInput", "wallpaper"),
            type = "union",
            name = "wallpaper",
            target_id = id.from(_N, "WallpaperImageInput"),
            target = M.WallpaperImageInput,
        }),
        favicon = schema.new({
            id = id.from(_N, "BrandingConfigurationUpdateInput", "favicon"),
            type = "union",
            name = "favicon",
            target_id = id.from(_N, "IconImageInput"),
            target = M.IconImageInput,
        }),
        localizedStrings = schema.new({
            id = id.from(_N, "BrandingConfigurationUpdateInput", "localizedStrings"),
            type = "map",
            name = "localizedStrings",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.LocalizedBrandingStrings,
        }),
        colorTheme = schema.new({
            id = id.from(_N, "BrandingConfigurationUpdateInput", "colorTheme"),
            type = "string",
            name = "colorTheme",
            target_id = prelude.String.id,
        }),
        termsOfService = schema.new({
            id = id.from(_N, "BrandingConfigurationUpdateInput", "termsOfService"),
            type = "string",
            name = "termsOfService",
            target_id = prelude.String.id,
            traits = {
                [traits.MEDIA_TYPE] = { value = "text/markdown" },
            },
        }),
    },
})

M.UpdateUserSettingsInput = schema.new({
    id = id.from(_N, "UpdateUserSettingsRequest"),
    type = "structure",
    members = {
        userSettingsArn = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "userSettingsArn"),
            type = "string",
            name = "userSettingsArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        copyAllowed = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "copyAllowed"),
            type = "string",
            name = "copyAllowed",
            target_id = prelude.String.id,
        }),
        pasteAllowed = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "pasteAllowed"),
            type = "string",
            name = "pasteAllowed",
            target_id = prelude.String.id,
        }),
        downloadAllowed = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "downloadAllowed"),
            type = "string",
            name = "downloadAllowed",
            target_id = prelude.String.id,
        }),
        uploadAllowed = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "uploadAllowed"),
            type = "string",
            name = "uploadAllowed",
            target_id = prelude.String.id,
        }),
        printAllowed = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "printAllowed"),
            type = "string",
            name = "printAllowed",
            target_id = prelude.String.id,
        }),
        disconnectTimeoutInMinutes = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "disconnectTimeoutInMinutes"),
            type = "integer",
            name = "disconnectTimeoutInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        idleDisconnectTimeoutInMinutes = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "idleDisconnectTimeoutInMinutes"),
            type = "integer",
            name = "idleDisconnectTimeoutInMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        cookieSynchronizationConfiguration = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "cookieSynchronizationConfiguration"),
            type = "structure",
            name = "cookieSynchronizationConfiguration",
            target_id = id.from(_N, "CookieSynchronizationConfiguration"),
            target = M.CookieSynchronizationConfiguration,
        }),
        deepLinkAllowed = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "deepLinkAllowed"),
            type = "string",
            name = "deepLinkAllowed",
            target_id = prelude.String.id,
        }),
        toolbarConfiguration = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "toolbarConfiguration"),
            type = "structure",
            name = "toolbarConfiguration",
            target_id = id.from(_N, "ToolbarConfiguration"),
            target = M.ToolbarConfiguration,
        }),
        brandingConfigurationInput = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "brandingConfigurationInput"),
            type = "structure",
            name = "brandingConfigurationInput",
            target_id = id.from(_N, "BrandingConfigurationUpdateInput"),
            target = M.BrandingConfigurationUpdateInput,
        }),
        webAuthnAllowed = schema.new({
            id = id.from(_N, "UpdateUserSettingsInput", "webAuthnAllowed"),
            type = "string",
            name = "webAuthnAllowed",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateUserSettingsOutput = schema.new({
    id = id.from(_N, "UpdateUserSettingsResponse"),
    type = "structure",
    members = {
        userSettings = schema.new({
            id = id.from(_N, "UpdateUserSettingsOutput", "userSettings"),
            type = "structure",
            name = "userSettings",
            target_id = id.from(_N, "UserSettings"),
            target = M.UserSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
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
