local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.mgn"

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
        code = schema.new({
            id = id.from(_N, "AccessDeniedException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.ApplicationAggregatedStatus = schema.new({
    id = id.from(_N, "ApplicationAggregatedStatus"),
    type = "structure",
    members = {
        lastUpdateDateTime = schema.new({
            id = id.from(_N, "ApplicationAggregatedStatus", "lastUpdateDateTime"),
            type = "string",
            name = "lastUpdateDateTime",
            target_id = prelude.String.id,
        }),
        healthStatus = schema.new({
            id = id.from(_N, "ApplicationAggregatedStatus", "healthStatus"),
            type = "string",
            name = "healthStatus",
            target_id = prelude.String.id,
        }),
        progressStatus = schema.new({
            id = id.from(_N, "ApplicationAggregatedStatus", "progressStatus"),
            type = "string",
            name = "progressStatus",
            target_id = prelude.String.id,
        }),
        totalSourceServers = schema.new({
            id = id.from(_N, "ApplicationAggregatedStatus", "totalSourceServers"),
            type = "long",
            name = "totalSourceServers",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.Application = schema.new({
    id = id.from(_N, "Application"),
    type = "structure",
    members = {
        applicationID = schema.new({
            id = id.from(_N, "Application", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Application", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Application", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Application", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "Application", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        applicationAggregatedStatus = schema.new({
            id = id.from(_N, "Application", "applicationAggregatedStatus"),
            type = "structure",
            name = "applicationAggregatedStatus",
            target_id = id.from(_N, "ApplicationAggregatedStatus"),
            target = M.ApplicationAggregatedStatus,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "Application", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        lastModifiedDateTime = schema.new({
            id = id.from(_N, "Application", "lastModifiedDateTime"),
            type = "string",
            name = "lastModifiedDateTime",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Application", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        waveID = schema.new({
            id = id.from(_N, "Application", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
        }),
    },
})

M.ArchiveApplicationInput = schema.new({
    id = id.from(_N, "ArchiveApplicationRequest"),
    type = "structure",
    members = {
        applicationID = schema.new({
            id = id.from(_N, "ArchiveApplicationInput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "ArchiveApplicationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.ArchiveApplicationOutput = schema.new({
    id = id.from(_N, "Application"),
    type = "structure",
    members = {
        applicationID = schema.new({
            id = id.from(_N, "ArchiveApplicationOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ArchiveApplicationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ArchiveApplicationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ArchiveApplicationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "ArchiveApplicationOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        applicationAggregatedStatus = schema.new({
            id = id.from(_N, "ArchiveApplicationOutput", "applicationAggregatedStatus"),
            type = "structure",
            name = "applicationAggregatedStatus",
            target_id = id.from(_N, "ApplicationAggregatedStatus"),
            target = M.ApplicationAggregatedStatus,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "ArchiveApplicationOutput", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        lastModifiedDateTime = schema.new({
            id = id.from(_N, "ArchiveApplicationOutput", "lastModifiedDateTime"),
            type = "string",
            name = "lastModifiedDateTime",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ArchiveApplicationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        waveID = schema.new({
            id = id.from(_N, "ArchiveApplicationOutput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
        }),
    },
})

M.ErrorDetails = schema.new({
    id = id.from(_N, "ErrorDetails"),
    type = "structure",
    members = {
        message = schema.new({
            id = id.from(_N, "ErrorDetails", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "ErrorDetails", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        resourceId = schema.new({
            id = id.from(_N, "ErrorDetails", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "ErrorDetails", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
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
        code = schema.new({
            id = id.from(_N, "ConflictException", "code"),
            type = "string",
            name = "code",
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
        errors = schema.new({
            id = id.from(_N, "ConflictException", "errors"),
            type = "list",
            name = "errors",
            target_id = prelude.Document.id,
            list_member = M.ErrorDetails,
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
        code = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "code"),
            type = "string",
            name = "code",
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
        code = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "code"),
            type = "string",
            name = "code",
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
        quotaValue = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "quotaValue"),
            type = "integer",
            name = "quotaValue",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UninitializedAccountException = schema.new({
    id = id.from(_N, "UninitializedAccountException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UninitializedAccountException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        code = schema.new({
            id = id.from(_N, "UninitializedAccountException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateSourceServersInput = schema.new({
    id = id.from(_N, "AssociateSourceServersRequest"),
    type = "structure",
    members = {
        applicationID = schema.new({
            id = id.from(_N, "AssociateSourceServersInput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceServerIDs = schema.new({
            id = id.from(_N, "AssociateSourceServersInput", "sourceServerIDs"),
            type = "list",
            name = "sourceServerIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "AssociateSourceServersInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateSourceServersOutput = schema.new({
    id = id.from(_N, "AssociateSourceServersResponse"),
    type = "structure",
})

M.CreateApplicationInput = schema.new({
    id = id.from(_N, "CreateApplicationRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateApplicationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateApplicationInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateApplicationInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        accountID = schema.new({
            id = id.from(_N, "CreateApplicationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateApplicationOutput = schema.new({
    id = id.from(_N, "Application"),
    type = "structure",
    members = {
        applicationID = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        applicationAggregatedStatus = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "applicationAggregatedStatus"),
            type = "structure",
            name = "applicationAggregatedStatus",
            target_id = id.from(_N, "ApplicationAggregatedStatus"),
            target = M.ApplicationAggregatedStatus,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        lastModifiedDateTime = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "lastModifiedDateTime"),
            type = "string",
            name = "lastModifiedDateTime",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        waveID = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteApplicationInput = schema.new({
    id = id.from(_N, "DeleteApplicationRequest"),
    type = "structure",
    members = {
        applicationID = schema.new({
            id = id.from(_N, "DeleteApplicationInput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "DeleteApplicationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteApplicationOutput = schema.new({
    id = id.from(_N, "DeleteApplicationResponse"),
    type = "structure",
})

M.DisassociateSourceServersInput = schema.new({
    id = id.from(_N, "DisassociateSourceServersRequest"),
    type = "structure",
    members = {
        applicationID = schema.new({
            id = id.from(_N, "DisassociateSourceServersInput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceServerIDs = schema.new({
            id = id.from(_N, "DisassociateSourceServersInput", "sourceServerIDs"),
            type = "list",
            name = "sourceServerIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "DisassociateSourceServersInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateSourceServersOutput = schema.new({
    id = id.from(_N, "DisassociateSourceServersResponse"),
    type = "structure",
})

M.ListApplicationsRequestFilters = schema.new({
    id = id.from(_N, "ListApplicationsRequestFilters"),
    type = "structure",
    members = {
        applicationIDs = schema.new({
            id = id.from(_N, "ListApplicationsRequestFilters", "applicationIDs"),
            type = "list",
            name = "applicationIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        isArchived = schema.new({
            id = id.from(_N, "ListApplicationsRequestFilters", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        waveIDs = schema.new({
            id = id.from(_N, "ListApplicationsRequestFilters", "waveIDs"),
            type = "list",
            name = "waveIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListApplicationsInput = schema.new({
    id = id.from(_N, "ListApplicationsRequest"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "ListApplicationsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListApplicationsRequestFilters"),
            target = M.ListApplicationsRequestFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListApplicationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListApplicationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        accountID = schema.new({
            id = id.from(_N, "ListApplicationsInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationsOutput = schema.new({
    id = id.from(_N, "ListApplicationsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.Application,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UnarchiveApplicationInput = schema.new({
    id = id.from(_N, "UnarchiveApplicationRequest"),
    type = "structure",
    members = {
        applicationID = schema.new({
            id = id.from(_N, "UnarchiveApplicationInput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "UnarchiveApplicationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.UnarchiveApplicationOutput = schema.new({
    id = id.from(_N, "Application"),
    type = "structure",
    members = {
        applicationID = schema.new({
            id = id.from(_N, "UnarchiveApplicationOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "UnarchiveApplicationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UnarchiveApplicationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UnarchiveApplicationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "UnarchiveApplicationOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        applicationAggregatedStatus = schema.new({
            id = id.from(_N, "UnarchiveApplicationOutput", "applicationAggregatedStatus"),
            type = "structure",
            name = "applicationAggregatedStatus",
            target_id = id.from(_N, "ApplicationAggregatedStatus"),
            target = M.ApplicationAggregatedStatus,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "UnarchiveApplicationOutput", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        lastModifiedDateTime = schema.new({
            id = id.from(_N, "UnarchiveApplicationOutput", "lastModifiedDateTime"),
            type = "string",
            name = "lastModifiedDateTime",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UnarchiveApplicationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        waveID = schema.new({
            id = id.from(_N, "UnarchiveApplicationOutput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateApplicationInput = schema.new({
    id = id.from(_N, "UpdateApplicationRequest"),
    type = "structure",
    members = {
        applicationID = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        accountID = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateApplicationOutput = schema.new({
    id = id.from(_N, "Application"),
    type = "structure",
    members = {
        applicationID = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        applicationAggregatedStatus = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "applicationAggregatedStatus"),
            type = "structure",
            name = "applicationAggregatedStatus",
            target_id = id.from(_N, "ApplicationAggregatedStatus"),
            target = M.ApplicationAggregatedStatus,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        lastModifiedDateTime = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "lastModifiedDateTime"),
            type = "string",
            name = "lastModifiedDateTime",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        waveID = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectorSsmCommandConfig = schema.new({
    id = id.from(_N, "ConnectorSsmCommandConfig"),
    type = "structure",
    members = {
        s3OutputEnabled = schema.new({
            id = id.from(_N, "ConnectorSsmCommandConfig", "s3OutputEnabled"),
            type = "boolean",
            name = "s3OutputEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputS3BucketName = schema.new({
            id = id.from(_N, "ConnectorSsmCommandConfig", "outputS3BucketName"),
            type = "string",
            name = "outputS3BucketName",
            target_id = prelude.String.id,
        }),
        cloudWatchOutputEnabled = schema.new({
            id = id.from(_N, "ConnectorSsmCommandConfig", "cloudWatchOutputEnabled"),
            type = "boolean",
            name = "cloudWatchOutputEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cloudWatchLogGroupName = schema.new({
            id = id.from(_N, "ConnectorSsmCommandConfig", "cloudWatchLogGroupName"),
            type = "string",
            name = "cloudWatchLogGroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConnectorInput = schema.new({
    id = id.from(_N, "CreateConnectorRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateConnectorInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ssmInstanceID = schema.new({
            id = id.from(_N, "CreateConnectorInput", "ssmInstanceID"),
            type = "string",
            name = "ssmInstanceID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateConnectorInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ssmCommandConfig = schema.new({
            id = id.from(_N, "CreateConnectorInput", "ssmCommandConfig"),
            type = "structure",
            name = "ssmCommandConfig",
            target_id = id.from(_N, "ConnectorSsmCommandConfig"),
            target = M.ConnectorSsmCommandConfig,
        }),
    },
})

M.CreateConnectorOutput = schema.new({
    id = id.from(_N, "Connector"),
    type = "structure",
    members = {
        connectorID = schema.new({
            id = id.from(_N, "CreateConnectorOutput", "connectorID"),
            type = "string",
            name = "connectorID",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateConnectorOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        ssmInstanceID = schema.new({
            id = id.from(_N, "CreateConnectorOutput", "ssmInstanceID"),
            type = "string",
            name = "ssmInstanceID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CreateConnectorOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateConnectorOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ssmCommandConfig = schema.new({
            id = id.from(_N, "CreateConnectorOutput", "ssmCommandConfig"),
            type = "structure",
            name = "ssmCommandConfig",
            target_id = id.from(_N, "ConnectorSsmCommandConfig"),
            target = M.ConnectorSsmCommandConfig,
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
        }),
        message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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
        code = schema.new({
            id = id.from(_N, "ValidationException", "code"),
            type = "string",
            name = "code",
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

M.DeleteConnectorInput = schema.new({
    id = id.from(_N, "DeleteConnectorRequest"),
    type = "structure",
    members = {
        connectorID = schema.new({
            id = id.from(_N, "DeleteConnectorInput", "connectorID"),
            type = "string",
            name = "connectorID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteConnectorOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ListConnectorsRequestFilters = schema.new({
    id = id.from(_N, "ListConnectorsRequestFilters"),
    type = "structure",
    members = {
        connectorIDs = schema.new({
            id = id.from(_N, "ListConnectorsRequestFilters", "connectorIDs"),
            type = "list",
            name = "connectorIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListConnectorsInput = schema.new({
    id = id.from(_N, "ListConnectorsRequest"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "ListConnectorsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListConnectorsRequestFilters"),
            target = M.ListConnectorsRequestFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListConnectorsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConnectorsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Connector = schema.new({
    id = id.from(_N, "Connector"),
    type = "structure",
    members = {
        connectorID = schema.new({
            id = id.from(_N, "Connector", "connectorID"),
            type = "string",
            name = "connectorID",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Connector", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        ssmInstanceID = schema.new({
            id = id.from(_N, "Connector", "ssmInstanceID"),
            type = "string",
            name = "ssmInstanceID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Connector", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Connector", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ssmCommandConfig = schema.new({
            id = id.from(_N, "Connector", "ssmCommandConfig"),
            type = "structure",
            name = "ssmCommandConfig",
            target_id = id.from(_N, "ConnectorSsmCommandConfig"),
            target = M.ConnectorSsmCommandConfig,
        }),
    },
})

M.ListConnectorsOutput = schema.new({
    id = id.from(_N, "ListConnectorsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListConnectorsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.Connector,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConnectorsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConnectorInput = schema.new({
    id = id.from(_N, "UpdateConnectorRequest"),
    type = "structure",
    members = {
        connectorID = schema.new({
            id = id.from(_N, "UpdateConnectorInput", "connectorID"),
            type = "string",
            name = "connectorID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateConnectorInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        ssmCommandConfig = schema.new({
            id = id.from(_N, "UpdateConnectorInput", "ssmCommandConfig"),
            type = "structure",
            name = "ssmCommandConfig",
            target_id = id.from(_N, "ConnectorSsmCommandConfig"),
            target = M.ConnectorSsmCommandConfig,
        }),
    },
})

M.UpdateConnectorOutput = schema.new({
    id = id.from(_N, "Connector"),
    type = "structure",
    members = {
        connectorID = schema.new({
            id = id.from(_N, "UpdateConnectorOutput", "connectorID"),
            type = "string",
            name = "connectorID",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateConnectorOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        ssmInstanceID = schema.new({
            id = id.from(_N, "UpdateConnectorOutput", "ssmInstanceID"),
            type = "string",
            name = "ssmInstanceID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateConnectorOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateConnectorOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ssmCommandConfig = schema.new({
            id = id.from(_N, "UpdateConnectorOutput", "ssmCommandConfig"),
            type = "structure",
            name = "ssmCommandConfig",
            target_id = id.from(_N, "ConnectorSsmCommandConfig"),
            target = M.ConnectorSsmCommandConfig,
        }),
    },
})

M.ListExportErrorsInput = schema.new({
    id = id.from(_N, "ListExportErrorsRequest"),
    type = "structure",
    members = {
        exportID = schema.new({
            id = id.from(_N, "ListExportErrorsInput", "exportID"),
            type = "string",
            name = "exportID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListExportErrorsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExportErrorsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportErrorData = schema.new({
    id = id.from(_N, "ExportErrorData"),
    type = "structure",
    members = {
        rawError = schema.new({
            id = id.from(_N, "ExportErrorData", "rawError"),
            type = "string",
            name = "rawError",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportTaskError = schema.new({
    id = id.from(_N, "ExportTaskError"),
    type = "structure",
    members = {
        errorDateTime = schema.new({
            id = id.from(_N, "ExportTaskError", "errorDateTime"),
            type = "string",
            name = "errorDateTime",
            target_id = prelude.String.id,
        }),
        errorData = schema.new({
            id = id.from(_N, "ExportTaskError", "errorData"),
            type = "structure",
            name = "errorData",
            target_id = id.from(_N, "ExportErrorData"),
            target = M.ExportErrorData,
        }),
    },
})

M.ListExportErrorsOutput = schema.new({
    id = id.from(_N, "ListExportErrorsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListExportErrorsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ExportTaskError,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExportErrorsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExportsRequestFilters = schema.new({
    id = id.from(_N, "ListExportsRequestFilters"),
    type = "structure",
    members = {
        exportIDs = schema.new({
            id = id.from(_N, "ListExportsRequestFilters", "exportIDs"),
            type = "list",
            name = "exportIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListExportsInput = schema.new({
    id = id.from(_N, "ListExportsRequest"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "ListExportsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListExportsRequestFilters"),
            target = M.ListExportsRequestFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListExportsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExportsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportTaskSummary = schema.new({
    id = id.from(_N, "ExportTaskSummary"),
    type = "structure",
    members = {
        serversCount = schema.new({
            id = id.from(_N, "ExportTaskSummary", "serversCount"),
            type = "long",
            name = "serversCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        applicationsCount = schema.new({
            id = id.from(_N, "ExportTaskSummary", "applicationsCount"),
            type = "long",
            name = "applicationsCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        wavesCount = schema.new({
            id = id.from(_N, "ExportTaskSummary", "wavesCount"),
            type = "long",
            name = "wavesCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ExportTask = schema.new({
    id = id.from(_N, "ExportTask"),
    type = "structure",
    members = {
        exportID = schema.new({
            id = id.from(_N, "ExportTask", "exportID"),
            type = "string",
            name = "exportID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ExportTask", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        s3Bucket = schema.new({
            id = id.from(_N, "ExportTask", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
        }),
        s3Key = schema.new({
            id = id.from(_N, "ExportTask", "s3Key"),
            type = "string",
            name = "s3Key",
            target_id = prelude.String.id,
        }),
        s3BucketOwner = schema.new({
            id = id.from(_N, "ExportTask", "s3BucketOwner"),
            type = "string",
            name = "s3BucketOwner",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "ExportTask", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        endDateTime = schema.new({
            id = id.from(_N, "ExportTask", "endDateTime"),
            type = "string",
            name = "endDateTime",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ExportTask", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        progressPercentage = schema.new({
            id = id.from(_N, "ExportTask", "progressPercentage"),
            type = "float",
            name = "progressPercentage",
            target_id = prelude.Float.id,
        }),
        summary = schema.new({
            id = id.from(_N, "ExportTask", "summary"),
            type = "structure",
            name = "summary",
            target_id = id.from(_N, "ExportTaskSummary"),
            target = M.ExportTaskSummary,
        }),
        tags = schema.new({
            id = id.from(_N, "ExportTask", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListExportsOutput = schema.new({
    id = id.from(_N, "ListExportsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListExportsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ExportTask,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExportsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartExportInput = schema.new({
    id = id.from(_N, "StartExportRequest"),
    type = "structure",
    members = {
        s3Bucket = schema.new({
            id = id.from(_N, "StartExportInput", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3Key = schema.new({
            id = id.from(_N, "StartExportInput", "s3Key"),
            type = "string",
            name = "s3Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3BucketOwner = schema.new({
            id = id.from(_N, "StartExportInput", "s3BucketOwner"),
            type = "string",
            name = "s3BucketOwner",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "StartExportInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartExportOutput = schema.new({
    id = id.from(_N, "StartExportResponse"),
    type = "structure",
    members = {
        exportTask = schema.new({
            id = id.from(_N, "StartExportOutput", "exportTask"),
            type = "structure",
            name = "exportTask",
            target_id = id.from(_N, "ExportTask"),
            target = M.ExportTask,
        }),
    },
})

M.ListImportErrorsInput = schema.new({
    id = id.from(_N, "ListImportErrorsRequest"),
    type = "structure",
    members = {
        importID = schema.new({
            id = id.from(_N, "ListImportErrorsInput", "importID"),
            type = "string",
            name = "importID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListImportErrorsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListImportErrorsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportErrorData = schema.new({
    id = id.from(_N, "ImportErrorData"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "ImportErrorData", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "ImportErrorData", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        waveID = schema.new({
            id = id.from(_N, "ImportErrorData", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
        }),
        ec2LaunchTemplateID = schema.new({
            id = id.from(_N, "ImportErrorData", "ec2LaunchTemplateID"),
            type = "string",
            name = "ec2LaunchTemplateID",
            target_id = prelude.String.id,
        }),
        rowNumber = schema.new({
            id = id.from(_N, "ImportErrorData", "rowNumber"),
            type = "long",
            name = "rowNumber",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        rawError = schema.new({
            id = id.from(_N, "ImportErrorData", "rawError"),
            type = "string",
            name = "rawError",
            target_id = prelude.String.id,
        }),
        accountID = schema.new({
            id = id.from(_N, "ImportErrorData", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportTaskError = schema.new({
    id = id.from(_N, "ImportTaskError"),
    type = "structure",
    members = {
        errorDateTime = schema.new({
            id = id.from(_N, "ImportTaskError", "errorDateTime"),
            type = "string",
            name = "errorDateTime",
            target_id = prelude.String.id,
        }),
        errorType = schema.new({
            id = id.from(_N, "ImportTaskError", "errorType"),
            type = "string",
            name = "errorType",
            target_id = prelude.String.id,
        }),
        errorData = schema.new({
            id = id.from(_N, "ImportTaskError", "errorData"),
            type = "structure",
            name = "errorData",
            target_id = id.from(_N, "ImportErrorData"),
            target = M.ImportErrorData,
        }),
    },
})

M.ListImportErrorsOutput = schema.new({
    id = id.from(_N, "ListImportErrorsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListImportErrorsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ImportTaskError,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListImportErrorsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListImportsRequestFilters = schema.new({
    id = id.from(_N, "ListImportsRequestFilters"),
    type = "structure",
    members = {
        importIDs = schema.new({
            id = id.from(_N, "ListImportsRequestFilters", "importIDs"),
            type = "list",
            name = "importIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListImportsInput = schema.new({
    id = id.from(_N, "ListImportsRequest"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "ListImportsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListImportsRequestFilters"),
            target = M.ListImportsRequestFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListImportsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListImportsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.S3BucketSource = schema.new({
    id = id.from(_N, "S3BucketSource"),
    type = "structure",
    members = {
        s3Bucket = schema.new({
            id = id.from(_N, "S3BucketSource", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3Key = schema.new({
            id = id.from(_N, "S3BucketSource", "s3Key"),
            type = "string",
            name = "s3Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3BucketOwner = schema.new({
            id = id.from(_N, "S3BucketSource", "s3BucketOwner"),
            type = "string",
            name = "s3BucketOwner",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportTaskSummaryApplications = schema.new({
    id = id.from(_N, "ImportTaskSummaryApplications"),
    type = "structure",
    members = {
        createdCount = schema.new({
            id = id.from(_N, "ImportTaskSummaryApplications", "createdCount"),
            type = "long",
            name = "createdCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        modifiedCount = schema.new({
            id = id.from(_N, "ImportTaskSummaryApplications", "modifiedCount"),
            type = "long",
            name = "modifiedCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ImportTaskSummaryServers = schema.new({
    id = id.from(_N, "ImportTaskSummaryServers"),
    type = "structure",
    members = {
        createdCount = schema.new({
            id = id.from(_N, "ImportTaskSummaryServers", "createdCount"),
            type = "long",
            name = "createdCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        modifiedCount = schema.new({
            id = id.from(_N, "ImportTaskSummaryServers", "modifiedCount"),
            type = "long",
            name = "modifiedCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ImportTaskSummaryWaves = schema.new({
    id = id.from(_N, "ImportTaskSummaryWaves"),
    type = "structure",
    members = {
        createdCount = schema.new({
            id = id.from(_N, "ImportTaskSummaryWaves", "createdCount"),
            type = "long",
            name = "createdCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        modifiedCount = schema.new({
            id = id.from(_N, "ImportTaskSummaryWaves", "modifiedCount"),
            type = "long",
            name = "modifiedCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ImportTaskSummary = schema.new({
    id = id.from(_N, "ImportTaskSummary"),
    type = "structure",
    members = {
        waves = schema.new({
            id = id.from(_N, "ImportTaskSummary", "waves"),
            type = "structure",
            name = "waves",
            target_id = id.from(_N, "ImportTaskSummaryWaves"),
            target = M.ImportTaskSummaryWaves,
        }),
        applications = schema.new({
            id = id.from(_N, "ImportTaskSummary", "applications"),
            type = "structure",
            name = "applications",
            target_id = id.from(_N, "ImportTaskSummaryApplications"),
            target = M.ImportTaskSummaryApplications,
        }),
        servers = schema.new({
            id = id.from(_N, "ImportTaskSummary", "servers"),
            type = "structure",
            name = "servers",
            target_id = id.from(_N, "ImportTaskSummaryServers"),
            target = M.ImportTaskSummaryServers,
        }),
    },
})

M.ImportTask = schema.new({
    id = id.from(_N, "ImportTask"),
    type = "structure",
    members = {
        importID = schema.new({
            id = id.from(_N, "ImportTask", "importID"),
            type = "string",
            name = "importID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ImportTask", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        s3BucketSource = schema.new({
            id = id.from(_N, "ImportTask", "s3BucketSource"),
            type = "structure",
            name = "s3BucketSource",
            target_id = id.from(_N, "S3BucketSource"),
            target = M.S3BucketSource,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "ImportTask", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        endDateTime = schema.new({
            id = id.from(_N, "ImportTask", "endDateTime"),
            type = "string",
            name = "endDateTime",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ImportTask", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        progressPercentage = schema.new({
            id = id.from(_N, "ImportTask", "progressPercentage"),
            type = "float",
            name = "progressPercentage",
            target_id = prelude.Float.id,
        }),
        summary = schema.new({
            id = id.from(_N, "ImportTask", "summary"),
            type = "structure",
            name = "summary",
            target_id = id.from(_N, "ImportTaskSummary"),
            target = M.ImportTaskSummary,
        }),
        tags = schema.new({
            id = id.from(_N, "ImportTask", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListImportsOutput = schema.new({
    id = id.from(_N, "ListImportsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListImportsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ImportTask,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListImportsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartImportInput = schema.new({
    id = id.from(_N, "StartImportRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "StartImportInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        s3BucketSource = schema.new({
            id = id.from(_N, "StartImportInput", "s3BucketSource"),
            type = "structure",
            name = "s3BucketSource",
            target_id = id.from(_N, "S3BucketSource"),
            target = M.S3BucketSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "StartImportInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartImportOutput = schema.new({
    id = id.from(_N, "StartImportResponse"),
    type = "structure",
    members = {
        importTask = schema.new({
            id = id.from(_N, "StartImportOutput", "importTask"),
            type = "structure",
            name = "importTask",
            target_id = id.from(_N, "ImportTask"),
            target = M.ImportTask,
        }),
    },
})

M.InitializeServiceInput = schema.new({
    id = id.from(_N, "InitializeServiceRequest"),
    type = "structure",
})

M.InitializeServiceOutput = schema.new({
    id = id.from(_N, "InitializeServiceResponse"),
    type = "structure",
})

M.DeleteJobInput = schema.new({
    id = id.from(_N, "DeleteJobRequest"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "DeleteJobInput", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "DeleteJobInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteJobOutput = schema.new({
    id = id.from(_N, "DeleteJobResponse"),
    type = "structure",
})

M.DescribeJobLogItemsInput = schema.new({
    id = id.from(_N, "DescribeJobLogItemsRequest"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "DescribeJobLogItemsInput", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeJobLogItemsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeJobLogItemsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        accountID = schema.new({
            id = id.from(_N, "DescribeJobLogItemsInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.JobLogEventData = schema.new({
    id = id.from(_N, "JobLogEventData"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "JobLogEventData", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        conversionServerID = schema.new({
            id = id.from(_N, "JobLogEventData", "conversionServerID"),
            type = "string",
            name = "conversionServerID",
            target_id = prelude.String.id,
        }),
        targetInstanceID = schema.new({
            id = id.from(_N, "JobLogEventData", "targetInstanceID"),
            type = "string",
            name = "targetInstanceID",
            target_id = prelude.String.id,
        }),
        rawError = schema.new({
            id = id.from(_N, "JobLogEventData", "rawError"),
            type = "string",
            name = "rawError",
            target_id = prelude.String.id,
        }),
        attemptCount = schema.new({
            id = id.from(_N, "JobLogEventData", "attemptCount"),
            type = "integer",
            name = "attemptCount",
            target_id = prelude.Integer.id,
        }),
        maxAttemptsCount = schema.new({
            id = id.from(_N, "JobLogEventData", "maxAttemptsCount"),
            type = "integer",
            name = "maxAttemptsCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.JobLog = schema.new({
    id = id.from(_N, "JobLog"),
    type = "structure",
    members = {
        logDateTime = schema.new({
            id = id.from(_N, "JobLog", "logDateTime"),
            type = "string",
            name = "logDateTime",
            target_id = prelude.String.id,
        }),
        event = schema.new({
            id = id.from(_N, "JobLog", "event"),
            type = "string",
            name = "event",
            target_id = prelude.String.id,
        }),
        eventData = schema.new({
            id = id.from(_N, "JobLog", "eventData"),
            type = "structure",
            name = "eventData",
            target_id = id.from(_N, "JobLogEventData"),
            target = M.JobLogEventData,
        }),
    },
})

M.DescribeJobLogItemsOutput = schema.new({
    id = id.from(_N, "DescribeJobLogItemsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "DescribeJobLogItemsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.JobLog,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeJobLogItemsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeJobsRequestFilters = schema.new({
    id = id.from(_N, "DescribeJobsRequestFilters"),
    type = "structure",
    members = {
        jobIDs = schema.new({
            id = id.from(_N, "DescribeJobsRequestFilters", "jobIDs"),
            type = "list",
            name = "jobIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        fromDate = schema.new({
            id = id.from(_N, "DescribeJobsRequestFilters", "fromDate"),
            type = "string",
            name = "fromDate",
            target_id = prelude.String.id,
        }),
        toDate = schema.new({
            id = id.from(_N, "DescribeJobsRequestFilters", "toDate"),
            type = "string",
            name = "toDate",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeJobsInput = schema.new({
    id = id.from(_N, "DescribeJobsRequest"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "DescribeJobsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "DescribeJobsRequestFilters"),
            target = M.DescribeJobsRequestFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeJobsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        accountID = schema.new({
            id = id.from(_N, "DescribeJobsInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.SsmExternalParameter = schema.new({
    id = id.from(_N, "SsmExternalParameter"),
    type = "union",
    members = {
        dynamicPath = schema.new({
            id = id.from(_N, "SsmExternalParameter", "dynamicPath"),
            type = "string",
            name = "dynamicPath",
            target_id = prelude.String.id,
        }),
    },
})

M.SsmParameterStoreParameter = schema.new({
    id = id.from(_N, "SsmParameterStoreParameter"),
    type = "structure",
    members = {
        parameterType = schema.new({
            id = id.from(_N, "SsmParameterStoreParameter", "parameterType"),
            type = "string",
            name = "parameterType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parameterName = schema.new({
            id = id.from(_N, "SsmParameterStoreParameter", "parameterName"),
            type = "string",
            name = "parameterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SsmDocument = schema.new({
    id = id.from(_N, "SsmDocument"),
    type = "structure",
    members = {
        actionName = schema.new({
            id = id.from(_N, "SsmDocument", "actionName"),
            type = "string",
            name = "actionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ssmDocumentName = schema.new({
            id = id.from(_N, "SsmDocument", "ssmDocumentName"),
            type = "string",
            name = "ssmDocumentName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timeoutSeconds = schema.new({
            id = id.from(_N, "SsmDocument", "timeoutSeconds"),
            type = "integer",
            name = "timeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        mustSucceedForCutover = schema.new({
            id = id.from(_N, "SsmDocument", "mustSucceedForCutover"),
            type = "boolean",
            name = "mustSucceedForCutover",
            target_id = prelude.Boolean.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "SsmDocument", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.SsmParameterStoreParameter }),
        }),
        externalParameters = schema.new({
            id = id.from(_N, "SsmDocument", "externalParameters"),
            type = "map",
            name = "externalParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.SsmExternalParameter,
        }),
    },
})

M.JobPostLaunchActionsLaunchStatus = schema.new({
    id = id.from(_N, "JobPostLaunchActionsLaunchStatus"),
    type = "structure",
    members = {
        ssmDocument = schema.new({
            id = id.from(_N, "JobPostLaunchActionsLaunchStatus", "ssmDocument"),
            type = "structure",
            name = "ssmDocument",
            target_id = id.from(_N, "SsmDocument"),
            target = M.SsmDocument,
        }),
        ssmDocumentType = schema.new({
            id = id.from(_N, "JobPostLaunchActionsLaunchStatus", "ssmDocumentType"),
            type = "string",
            name = "ssmDocumentType",
            target_id = prelude.String.id,
        }),
        executionID = schema.new({
            id = id.from(_N, "JobPostLaunchActionsLaunchStatus", "executionID"),
            type = "string",
            name = "executionID",
            target_id = prelude.String.id,
        }),
        executionStatus = schema.new({
            id = id.from(_N, "JobPostLaunchActionsLaunchStatus", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "JobPostLaunchActionsLaunchStatus", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.PostLaunchActionsStatus = schema.new({
    id = id.from(_N, "PostLaunchActionsStatus"),
    type = "structure",
    members = {
        ssmAgentDiscoveryDatetime = schema.new({
            id = id.from(_N, "PostLaunchActionsStatus", "ssmAgentDiscoveryDatetime"),
            type = "string",
            name = "ssmAgentDiscoveryDatetime",
            target_id = prelude.String.id,
        }),
        postLaunchActionsLaunchStatusList = schema.new({
            id = id.from(_N, "PostLaunchActionsStatus", "postLaunchActionsLaunchStatusList"),
            type = "list",
            name = "postLaunchActionsLaunchStatusList",
            target_id = prelude.Document.id,
            list_member = M.JobPostLaunchActionsLaunchStatus,
        }),
    },
})

M.ParticipatingServer = schema.new({
    id = id.from(_N, "ParticipatingServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "ParticipatingServer", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        launchStatus = schema.new({
            id = id.from(_N, "ParticipatingServer", "launchStatus"),
            type = "string",
            name = "launchStatus",
            target_id = prelude.String.id,
        }),
        launchedEc2InstanceID = schema.new({
            id = id.from(_N, "ParticipatingServer", "launchedEc2InstanceID"),
            type = "string",
            name = "launchedEc2InstanceID",
            target_id = prelude.String.id,
        }),
        postLaunchActionsStatus = schema.new({
            id = id.from(_N, "ParticipatingServer", "postLaunchActionsStatus"),
            type = "structure",
            name = "postLaunchActionsStatus",
            target_id = id.from(_N, "PostLaunchActionsStatus"),
            target = M.PostLaunchActionsStatus,
        }),
    },
})

M.Job = schema.new({
    id = id.from(_N, "Job"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "Job", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "Job", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Job", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        initiatedBy = schema.new({
            id = id.from(_N, "Job", "initiatedBy"),
            type = "string",
            name = "initiatedBy",
            target_id = prelude.String.id,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "Job", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        endDateTime = schema.new({
            id = id.from(_N, "Job", "endDateTime"),
            type = "string",
            name = "endDateTime",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Job", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        participatingServers = schema.new({
            id = id.from(_N, "Job", "participatingServers"),
            type = "list",
            name = "participatingServers",
            target_id = prelude.Document.id,
            list_member = M.ParticipatingServer,
        }),
        tags = schema.new({
            id = id.from(_N, "Job", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DescribeJobsOutput = schema.new({
    id = id.from(_N, "DescribeJobsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "DescribeJobsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.Job,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchTemplateDiskConf = schema.new({
    id = id.from(_N, "LaunchTemplateDiskConf"),
    type = "structure",
    members = {
        volumeType = schema.new({
            id = id.from(_N, "LaunchTemplateDiskConf", "volumeType"),
            type = "string",
            name = "volumeType",
            target_id = prelude.String.id,
        }),
        iops = schema.new({
            id = id.from(_N, "LaunchTemplateDiskConf", "iops"),
            type = "long",
            name = "iops",
            target_id = prelude.Long.id,
        }),
        throughput = schema.new({
            id = id.from(_N, "LaunchTemplateDiskConf", "throughput"),
            type = "long",
            name = "throughput",
            target_id = prelude.Long.id,
        }),
    },
})

M.Licensing = schema.new({
    id = id.from(_N, "Licensing"),
    type = "structure",
    members = {
        osByol = schema.new({
            id = id.from(_N, "Licensing", "osByol"),
            type = "boolean",
            name = "osByol",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.PostLaunchActions = schema.new({
    id = id.from(_N, "PostLaunchActions"),
    type = "structure",
    members = {
        deployment = schema.new({
            id = id.from(_N, "PostLaunchActions", "deployment"),
            type = "string",
            name = "deployment",
            target_id = prelude.String.id,
        }),
        s3LogBucket = schema.new({
            id = id.from(_N, "PostLaunchActions", "s3LogBucket"),
            type = "string",
            name = "s3LogBucket",
            target_id = prelude.String.id,
        }),
        s3OutputKeyPrefix = schema.new({
            id = id.from(_N, "PostLaunchActions", "s3OutputKeyPrefix"),
            type = "string",
            name = "s3OutputKeyPrefix",
            target_id = prelude.String.id,
        }),
        cloudWatchLogGroupName = schema.new({
            id = id.from(_N, "PostLaunchActions", "cloudWatchLogGroupName"),
            type = "string",
            name = "cloudWatchLogGroupName",
            target_id = prelude.String.id,
        }),
        ssmDocuments = schema.new({
            id = id.from(_N, "PostLaunchActions", "ssmDocuments"),
            type = "list",
            name = "ssmDocuments",
            target_id = prelude.Document.id,
            list_member = M.SsmDocument,
        }),
    },
})

M.CreateLaunchConfigurationTemplateInput = schema.new({
    id = id.from(_N, "CreateLaunchConfigurationTemplateRequest"),
    type = "structure",
    members = {
        postLaunchActions = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "postLaunchActions"),
            type = "structure",
            name = "postLaunchActions",
            target_id = id.from(_N, "PostLaunchActions"),
            target = M.PostLaunchActions,
        }),
        enableMapAutoTagging = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "enableMapAutoTagging"),
            type = "boolean",
            name = "enableMapAutoTagging",
            target_id = prelude.Boolean.id,
        }),
        mapAutoTaggingMpeID = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "mapAutoTaggingMpeID"),
            type = "string",
            name = "mapAutoTaggingMpeID",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchDisposition = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "launchDisposition"),
            type = "string",
            name = "launchDisposition",
            target_id = prelude.String.id,
        }),
        targetInstanceTypeRightSizingMethod = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "targetInstanceTypeRightSizingMethod"),
            type = "string",
            name = "targetInstanceTypeRightSizingMethod",
            target_id = prelude.String.id,
        }),
        copyPrivateIp = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "copyPrivateIp"),
            type = "boolean",
            name = "copyPrivateIp",
            target_id = prelude.Boolean.id,
        }),
        associatePublicIpAddress = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "associatePublicIpAddress"),
            type = "boolean",
            name = "associatePublicIpAddress",
            target_id = prelude.Boolean.id,
        }),
        copyTags = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "copyTags"),
            type = "boolean",
            name = "copyTags",
            target_id = prelude.Boolean.id,
        }),
        licensing = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "licensing"),
            type = "structure",
            name = "licensing",
            target_id = id.from(_N, "Licensing"),
            target = M.Licensing,
        }),
        bootMode = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "bootMode"),
            type = "string",
            name = "bootMode",
            target_id = prelude.String.id,
        }),
        smallVolumeMaxSize = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "smallVolumeMaxSize"),
            type = "long",
            name = "smallVolumeMaxSize",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        smallVolumeConf = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "smallVolumeConf"),
            type = "structure",
            name = "smallVolumeConf",
            target_id = id.from(_N, "LaunchTemplateDiskConf"),
            target = M.LaunchTemplateDiskConf,
        }),
        largeVolumeConf = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "largeVolumeConf"),
            type = "structure",
            name = "largeVolumeConf",
            target_id = id.from(_N, "LaunchTemplateDiskConf"),
            target = M.LaunchTemplateDiskConf,
        }),
        enableParametersEncryption = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "enableParametersEncryption"),
            type = "boolean",
            name = "enableParametersEncryption",
            target_id = prelude.Boolean.id,
        }),
        parametersEncryptionKey = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "parametersEncryptionKey"),
            type = "string",
            name = "parametersEncryptionKey",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLaunchConfigurationTemplateOutput = schema.new({
    id = id.from(_N, "LaunchConfigurationTemplate"),
    type = "structure",
    members = {
        launchConfigurationTemplateID = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "launchConfigurationTemplateID"),
            type = "string",
            name = "launchConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        postLaunchActions = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "postLaunchActions"),
            type = "structure",
            name = "postLaunchActions",
            target_id = id.from(_N, "PostLaunchActions"),
            target = M.PostLaunchActions,
        }),
        enableMapAutoTagging = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "enableMapAutoTagging"),
            type = "boolean",
            name = "enableMapAutoTagging",
            target_id = prelude.Boolean.id,
        }),
        mapAutoTaggingMpeID = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "mapAutoTaggingMpeID"),
            type = "string",
            name = "mapAutoTaggingMpeID",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ec2LaunchTemplateID = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "ec2LaunchTemplateID"),
            type = "string",
            name = "ec2LaunchTemplateID",
            target_id = prelude.String.id,
        }),
        launchDisposition = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "launchDisposition"),
            type = "string",
            name = "launchDisposition",
            target_id = prelude.String.id,
        }),
        targetInstanceTypeRightSizingMethod = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "targetInstanceTypeRightSizingMethod"),
            type = "string",
            name = "targetInstanceTypeRightSizingMethod",
            target_id = prelude.String.id,
        }),
        copyPrivateIp = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "copyPrivateIp"),
            type = "boolean",
            name = "copyPrivateIp",
            target_id = prelude.Boolean.id,
        }),
        associatePublicIpAddress = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "associatePublicIpAddress"),
            type = "boolean",
            name = "associatePublicIpAddress",
            target_id = prelude.Boolean.id,
        }),
        copyTags = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "copyTags"),
            type = "boolean",
            name = "copyTags",
            target_id = prelude.Boolean.id,
        }),
        licensing = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "licensing"),
            type = "structure",
            name = "licensing",
            target_id = id.from(_N, "Licensing"),
            target = M.Licensing,
        }),
        bootMode = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "bootMode"),
            type = "string",
            name = "bootMode",
            target_id = prelude.String.id,
        }),
        smallVolumeMaxSize = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "smallVolumeMaxSize"),
            type = "long",
            name = "smallVolumeMaxSize",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        smallVolumeConf = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "smallVolumeConf"),
            type = "structure",
            name = "smallVolumeConf",
            target_id = id.from(_N, "LaunchTemplateDiskConf"),
            target = M.LaunchTemplateDiskConf,
        }),
        largeVolumeConf = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "largeVolumeConf"),
            type = "structure",
            name = "largeVolumeConf",
            target_id = id.from(_N, "LaunchTemplateDiskConf"),
            target = M.LaunchTemplateDiskConf,
        }),
        enableParametersEncryption = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "enableParametersEncryption"),
            type = "boolean",
            name = "enableParametersEncryption",
            target_id = prelude.Boolean.id,
        }),
        parametersEncryptionKey = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "parametersEncryptionKey"),
            type = "string",
            name = "parametersEncryptionKey",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteLaunchConfigurationTemplateInput = schema.new({
    id = id.from(_N, "DeleteLaunchConfigurationTemplateRequest"),
    type = "structure",
    members = {
        launchConfigurationTemplateID = schema.new({
            id = id.from(_N, "DeleteLaunchConfigurationTemplateInput", "launchConfigurationTemplateID"),
            type = "string",
            name = "launchConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLaunchConfigurationTemplateOutput = schema.new({
    id = id.from(_N, "DeleteLaunchConfigurationTemplateResponse"),
    type = "structure",
})

M.DescribeLaunchConfigurationTemplatesInput = schema.new({
    id = id.from(_N, "DescribeLaunchConfigurationTemplatesRequest"),
    type = "structure",
    members = {
        launchConfigurationTemplateIDs = schema.new({
            id = id.from(_N, "DescribeLaunchConfigurationTemplatesInput", "launchConfigurationTemplateIDs"),
            type = "list",
            name = "launchConfigurationTemplateIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeLaunchConfigurationTemplatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeLaunchConfigurationTemplatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchConfigurationTemplate = schema.new({
    id = id.from(_N, "LaunchConfigurationTemplate"),
    type = "structure",
    members = {
        launchConfigurationTemplateID = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "launchConfigurationTemplateID"),
            type = "string",
            name = "launchConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        postLaunchActions = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "postLaunchActions"),
            type = "structure",
            name = "postLaunchActions",
            target_id = id.from(_N, "PostLaunchActions"),
            target = M.PostLaunchActions,
        }),
        enableMapAutoTagging = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "enableMapAutoTagging"),
            type = "boolean",
            name = "enableMapAutoTagging",
            target_id = prelude.Boolean.id,
        }),
        mapAutoTaggingMpeID = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "mapAutoTaggingMpeID"),
            type = "string",
            name = "mapAutoTaggingMpeID",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ec2LaunchTemplateID = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "ec2LaunchTemplateID"),
            type = "string",
            name = "ec2LaunchTemplateID",
            target_id = prelude.String.id,
        }),
        launchDisposition = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "launchDisposition"),
            type = "string",
            name = "launchDisposition",
            target_id = prelude.String.id,
        }),
        targetInstanceTypeRightSizingMethod = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "targetInstanceTypeRightSizingMethod"),
            type = "string",
            name = "targetInstanceTypeRightSizingMethod",
            target_id = prelude.String.id,
        }),
        copyPrivateIp = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "copyPrivateIp"),
            type = "boolean",
            name = "copyPrivateIp",
            target_id = prelude.Boolean.id,
        }),
        associatePublicIpAddress = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "associatePublicIpAddress"),
            type = "boolean",
            name = "associatePublicIpAddress",
            target_id = prelude.Boolean.id,
        }),
        copyTags = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "copyTags"),
            type = "boolean",
            name = "copyTags",
            target_id = prelude.Boolean.id,
        }),
        licensing = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "licensing"),
            type = "structure",
            name = "licensing",
            target_id = id.from(_N, "Licensing"),
            target = M.Licensing,
        }),
        bootMode = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "bootMode"),
            type = "string",
            name = "bootMode",
            target_id = prelude.String.id,
        }),
        smallVolumeMaxSize = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "smallVolumeMaxSize"),
            type = "long",
            name = "smallVolumeMaxSize",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        smallVolumeConf = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "smallVolumeConf"),
            type = "structure",
            name = "smallVolumeConf",
            target_id = id.from(_N, "LaunchTemplateDiskConf"),
            target = M.LaunchTemplateDiskConf,
        }),
        largeVolumeConf = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "largeVolumeConf"),
            type = "structure",
            name = "largeVolumeConf",
            target_id = id.from(_N, "LaunchTemplateDiskConf"),
            target = M.LaunchTemplateDiskConf,
        }),
        enableParametersEncryption = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "enableParametersEncryption"),
            type = "boolean",
            name = "enableParametersEncryption",
            target_id = prelude.Boolean.id,
        }),
        parametersEncryptionKey = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "parametersEncryptionKey"),
            type = "string",
            name = "parametersEncryptionKey",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeLaunchConfigurationTemplatesOutput = schema.new({
    id = id.from(_N, "DescribeLaunchConfigurationTemplatesResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "DescribeLaunchConfigurationTemplatesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.LaunchConfigurationTemplate,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeLaunchConfigurationTemplatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TemplateActionsRequestFilters = schema.new({
    id = id.from(_N, "TemplateActionsRequestFilters"),
    type = "structure",
    members = {
        actionIDs = schema.new({
            id = id.from(_N, "TemplateActionsRequestFilters", "actionIDs"),
            type = "list",
            name = "actionIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListTemplateActionsInput = schema.new({
    id = id.from(_N, "ListTemplateActionsRequest"),
    type = "structure",
    members = {
        launchConfigurationTemplateID = schema.new({
            id = id.from(_N, "ListTemplateActionsInput", "launchConfigurationTemplateID"),
            type = "string",
            name = "launchConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListTemplateActionsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "TemplateActionsRequestFilters"),
            target = M.TemplateActionsRequestFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTemplateActionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTemplateActionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TemplateActionDocument = schema.new({
    id = id.from(_N, "TemplateActionDocument"),
    type = "structure",
    members = {
        actionID = schema.new({
            id = id.from(_N, "TemplateActionDocument", "actionID"),
            type = "string",
            name = "actionID",
            target_id = prelude.String.id,
        }),
        actionName = schema.new({
            id = id.from(_N, "TemplateActionDocument", "actionName"),
            type = "string",
            name = "actionName",
            target_id = prelude.String.id,
        }),
        documentIdentifier = schema.new({
            id = id.from(_N, "TemplateActionDocument", "documentIdentifier"),
            type = "string",
            name = "documentIdentifier",
            target_id = prelude.String.id,
        }),
        order = schema.new({
            id = id.from(_N, "TemplateActionDocument", "order"),
            type = "integer",
            name = "order",
            target_id = prelude.Integer.id,
        }),
        documentVersion = schema.new({
            id = id.from(_N, "TemplateActionDocument", "documentVersion"),
            type = "string",
            name = "documentVersion",
            target_id = prelude.String.id,
        }),
        active = schema.new({
            id = id.from(_N, "TemplateActionDocument", "active"),
            type = "boolean",
            name = "active",
            target_id = prelude.Boolean.id,
        }),
        timeoutSeconds = schema.new({
            id = id.from(_N, "TemplateActionDocument", "timeoutSeconds"),
            type = "integer",
            name = "timeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        mustSucceedForCutover = schema.new({
            id = id.from(_N, "TemplateActionDocument", "mustSucceedForCutover"),
            type = "boolean",
            name = "mustSucceedForCutover",
            target_id = prelude.Boolean.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "TemplateActionDocument", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.SsmParameterStoreParameter }),
        }),
        operatingSystem = schema.new({
            id = id.from(_N, "TemplateActionDocument", "operatingSystem"),
            type = "string",
            name = "operatingSystem",
            target_id = prelude.String.id,
        }),
        externalParameters = schema.new({
            id = id.from(_N, "TemplateActionDocument", "externalParameters"),
            type = "map",
            name = "externalParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.SsmExternalParameter,
        }),
        description = schema.new({
            id = id.from(_N, "TemplateActionDocument", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "TemplateActionDocument", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTemplateActionsOutput = schema.new({
    id = id.from(_N, "ListTemplateActionsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListTemplateActionsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.TemplateActionDocument,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTemplateActionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutTemplateActionInput = schema.new({
    id = id.from(_N, "PutTemplateActionRequest"),
    type = "structure",
    members = {
        launchConfigurationTemplateID = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "launchConfigurationTemplateID"),
            type = "string",
            name = "launchConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionName = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "actionName"),
            type = "string",
            name = "actionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        documentIdentifier = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "documentIdentifier"),
            type = "string",
            name = "documentIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        order = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "order"),
            type = "integer",
            name = "order",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionID = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "actionID"),
            type = "string",
            name = "actionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        documentVersion = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "documentVersion"),
            type = "string",
            name = "documentVersion",
            target_id = prelude.String.id,
        }),
        active = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "active"),
            type = "boolean",
            name = "active",
            target_id = prelude.Boolean.id,
        }),
        timeoutSeconds = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "timeoutSeconds"),
            type = "integer",
            name = "timeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        mustSucceedForCutover = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "mustSucceedForCutover"),
            type = "boolean",
            name = "mustSucceedForCutover",
            target_id = prelude.Boolean.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.SsmParameterStoreParameter }),
        }),
        operatingSystem = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "operatingSystem"),
            type = "string",
            name = "operatingSystem",
            target_id = prelude.String.id,
        }),
        externalParameters = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "externalParameters"),
            type = "map",
            name = "externalParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.SsmExternalParameter,
        }),
        description = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "PutTemplateActionInput", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
    },
})

M.PutTemplateActionOutput = schema.new({
    id = id.from(_N, "TemplateActionDocument"),
    type = "structure",
    members = {
        actionID = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "actionID"),
            type = "string",
            name = "actionID",
            target_id = prelude.String.id,
        }),
        actionName = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "actionName"),
            type = "string",
            name = "actionName",
            target_id = prelude.String.id,
        }),
        documentIdentifier = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "documentIdentifier"),
            type = "string",
            name = "documentIdentifier",
            target_id = prelude.String.id,
        }),
        order = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "order"),
            type = "integer",
            name = "order",
            target_id = prelude.Integer.id,
        }),
        documentVersion = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "documentVersion"),
            type = "string",
            name = "documentVersion",
            target_id = prelude.String.id,
        }),
        active = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "active"),
            type = "boolean",
            name = "active",
            target_id = prelude.Boolean.id,
        }),
        timeoutSeconds = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "timeoutSeconds"),
            type = "integer",
            name = "timeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        mustSucceedForCutover = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "mustSucceedForCutover"),
            type = "boolean",
            name = "mustSucceedForCutover",
            target_id = prelude.Boolean.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.SsmParameterStoreParameter }),
        }),
        operatingSystem = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "operatingSystem"),
            type = "string",
            name = "operatingSystem",
            target_id = prelude.String.id,
        }),
        externalParameters = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "externalParameters"),
            type = "map",
            name = "externalParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.SsmExternalParameter,
        }),
        description = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "PutTemplateActionOutput", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
    },
})

M.RemoveTemplateActionInput = schema.new({
    id = id.from(_N, "RemoveTemplateActionRequest"),
    type = "structure",
    members = {
        launchConfigurationTemplateID = schema.new({
            id = id.from(_N, "RemoveTemplateActionInput", "launchConfigurationTemplateID"),
            type = "string",
            name = "launchConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionID = schema.new({
            id = id.from(_N, "RemoveTemplateActionInput", "actionID"),
            type = "string",
            name = "actionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveTemplateActionOutput = schema.new({
    id = id.from(_N, "RemoveTemplateActionResponse"),
    type = "structure",
})

M.UpdateLaunchConfigurationTemplateInput = schema.new({
    id = id.from(_N, "UpdateLaunchConfigurationTemplateRequest"),
    type = "structure",
    members = {
        launchConfigurationTemplateID = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "launchConfigurationTemplateID"),
            type = "string",
            name = "launchConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        postLaunchActions = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "postLaunchActions"),
            type = "structure",
            name = "postLaunchActions",
            target_id = id.from(_N, "PostLaunchActions"),
            target = M.PostLaunchActions,
        }),
        enableMapAutoTagging = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "enableMapAutoTagging"),
            type = "boolean",
            name = "enableMapAutoTagging",
            target_id = prelude.Boolean.id,
        }),
        mapAutoTaggingMpeID = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "mapAutoTaggingMpeID"),
            type = "string",
            name = "mapAutoTaggingMpeID",
            target_id = prelude.String.id,
        }),
        launchDisposition = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "launchDisposition"),
            type = "string",
            name = "launchDisposition",
            target_id = prelude.String.id,
        }),
        targetInstanceTypeRightSizingMethod = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "targetInstanceTypeRightSizingMethod"),
            type = "string",
            name = "targetInstanceTypeRightSizingMethod",
            target_id = prelude.String.id,
        }),
        copyPrivateIp = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "copyPrivateIp"),
            type = "boolean",
            name = "copyPrivateIp",
            target_id = prelude.Boolean.id,
        }),
        associatePublicIpAddress = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "associatePublicIpAddress"),
            type = "boolean",
            name = "associatePublicIpAddress",
            target_id = prelude.Boolean.id,
        }),
        copyTags = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "copyTags"),
            type = "boolean",
            name = "copyTags",
            target_id = prelude.Boolean.id,
        }),
        licensing = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "licensing"),
            type = "structure",
            name = "licensing",
            target_id = id.from(_N, "Licensing"),
            target = M.Licensing,
        }),
        bootMode = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "bootMode"),
            type = "string",
            name = "bootMode",
            target_id = prelude.String.id,
        }),
        smallVolumeMaxSize = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "smallVolumeMaxSize"),
            type = "long",
            name = "smallVolumeMaxSize",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        smallVolumeConf = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "smallVolumeConf"),
            type = "structure",
            name = "smallVolumeConf",
            target_id = id.from(_N, "LaunchTemplateDiskConf"),
            target = M.LaunchTemplateDiskConf,
        }),
        largeVolumeConf = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "largeVolumeConf"),
            type = "structure",
            name = "largeVolumeConf",
            target_id = id.from(_N, "LaunchTemplateDiskConf"),
            target = M.LaunchTemplateDiskConf,
        }),
        enableParametersEncryption = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "enableParametersEncryption"),
            type = "boolean",
            name = "enableParametersEncryption",
            target_id = prelude.Boolean.id,
        }),
        parametersEncryptionKey = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "parametersEncryptionKey"),
            type = "string",
            name = "parametersEncryptionKey",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateLaunchConfigurationTemplateOutput = schema.new({
    id = id.from(_N, "LaunchConfigurationTemplate"),
    type = "structure",
    members = {
        launchConfigurationTemplateID = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "launchConfigurationTemplateID"),
            type = "string",
            name = "launchConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        postLaunchActions = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "postLaunchActions"),
            type = "structure",
            name = "postLaunchActions",
            target_id = id.from(_N, "PostLaunchActions"),
            target = M.PostLaunchActions,
        }),
        enableMapAutoTagging = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "enableMapAutoTagging"),
            type = "boolean",
            name = "enableMapAutoTagging",
            target_id = prelude.Boolean.id,
        }),
        mapAutoTaggingMpeID = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "mapAutoTaggingMpeID"),
            type = "string",
            name = "mapAutoTaggingMpeID",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ec2LaunchTemplateID = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "ec2LaunchTemplateID"),
            type = "string",
            name = "ec2LaunchTemplateID",
            target_id = prelude.String.id,
        }),
        launchDisposition = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "launchDisposition"),
            type = "string",
            name = "launchDisposition",
            target_id = prelude.String.id,
        }),
        targetInstanceTypeRightSizingMethod = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "targetInstanceTypeRightSizingMethod"),
            type = "string",
            name = "targetInstanceTypeRightSizingMethod",
            target_id = prelude.String.id,
        }),
        copyPrivateIp = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "copyPrivateIp"),
            type = "boolean",
            name = "copyPrivateIp",
            target_id = prelude.Boolean.id,
        }),
        associatePublicIpAddress = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "associatePublicIpAddress"),
            type = "boolean",
            name = "associatePublicIpAddress",
            target_id = prelude.Boolean.id,
        }),
        copyTags = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "copyTags"),
            type = "boolean",
            name = "copyTags",
            target_id = prelude.Boolean.id,
        }),
        licensing = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "licensing"),
            type = "structure",
            name = "licensing",
            target_id = id.from(_N, "Licensing"),
            target = M.Licensing,
        }),
        bootMode = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "bootMode"),
            type = "string",
            name = "bootMode",
            target_id = prelude.String.id,
        }),
        smallVolumeMaxSize = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "smallVolumeMaxSize"),
            type = "long",
            name = "smallVolumeMaxSize",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        smallVolumeConf = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "smallVolumeConf"),
            type = "structure",
            name = "smallVolumeConf",
            target_id = id.from(_N, "LaunchTemplateDiskConf"),
            target = M.LaunchTemplateDiskConf,
        }),
        largeVolumeConf = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "largeVolumeConf"),
            type = "structure",
            name = "largeVolumeConf",
            target_id = id.from(_N, "LaunchTemplateDiskConf"),
            target = M.LaunchTemplateDiskConf,
        }),
        enableParametersEncryption = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "enableParametersEncryption"),
            type = "boolean",
            name = "enableParametersEncryption",
            target_id = prelude.Boolean.id,
        }),
        parametersEncryptionKey = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "parametersEncryptionKey"),
            type = "string",
            name = "parametersEncryptionKey",
            target_id = prelude.String.id,
        }),
    },
})

M.ListImportFileEnrichmentsFilters = schema.new({
    id = id.from(_N, "ListImportFileEnrichmentsFilters"),
    type = "structure",
    members = {
        jobIDs = schema.new({
            id = id.from(_N, "ListImportFileEnrichmentsFilters", "jobIDs"),
            type = "list",
            name = "jobIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListImportFileEnrichmentsInput = schema.new({
    id = id.from(_N, "ListImportFileEnrichmentsRequest"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "ListImportFileEnrichmentsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListImportFileEnrichmentsFilters"),
            target = M.ListImportFileEnrichmentsFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListImportFileEnrichmentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListImportFileEnrichmentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Checksum = schema.new({
    id = id.from(_N, "Checksum"),
    type = "structure",
    members = {
        encryptionAlgorithm = schema.new({
            id = id.from(_N, "Checksum", "encryptionAlgorithm"),
            type = "string",
            name = "encryptionAlgorithm",
            target_id = prelude.String.id,
        }),
        hash = schema.new({
            id = id.from(_N, "Checksum", "hash"),
            type = "string",
            name = "hash",
            target_id = prelude.String.id,
        }),
    },
})

M.EnrichmentTargetS3Configuration = schema.new({
    id = id.from(_N, "EnrichmentTargetS3Configuration"),
    type = "structure",
    members = {
        s3Bucket = schema.new({
            id = id.from(_N, "EnrichmentTargetS3Configuration", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3BucketOwner = schema.new({
            id = id.from(_N, "EnrichmentTargetS3Configuration", "s3BucketOwner"),
            type = "string",
            name = "s3BucketOwner",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3Key = schema.new({
            id = id.from(_N, "EnrichmentTargetS3Configuration", "s3Key"),
            type = "string",
            name = "s3Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ImportFileEnrichment = schema.new({
    id = id.from(_N, "ImportFileEnrichment"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "ImportFileEnrichment", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ImportFileEnrichment", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        endedAt = schema.new({
            id = id.from(_N, "ImportFileEnrichment", "endedAt"),
            type = "timestamp",
            name = "endedAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "ImportFileEnrichment", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusDetails = schema.new({
            id = id.from(_N, "ImportFileEnrichment", "statusDetails"),
            type = "string",
            name = "statusDetails",
            target_id = prelude.String.id,
        }),
        checksum = schema.new({
            id = id.from(_N, "ImportFileEnrichment", "checksum"),
            type = "structure",
            name = "checksum",
            target_id = id.from(_N, "Checksum"),
            target = M.Checksum,
        }),
        s3BucketTarget = schema.new({
            id = id.from(_N, "ImportFileEnrichment", "s3BucketTarget"),
            type = "structure",
            name = "s3BucketTarget",
            target_id = id.from(_N, "EnrichmentTargetS3Configuration"),
            target = M.EnrichmentTargetS3Configuration,
        }),
    },
})

M.ListImportFileEnrichmentsOutput = schema.new({
    id = id.from(_N, "ListImportFileEnrichmentsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListImportFileEnrichmentsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ImportFileEnrichment,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListImportFileEnrichmentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListManagedAccountsInput = schema.new({
    id = id.from(_N, "ListManagedAccountsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListManagedAccountsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListManagedAccountsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ManagedAccount = schema.new({
    id = id.from(_N, "ManagedAccount"),
    type = "structure",
    members = {
        accountId = schema.new({
            id = id.from(_N, "ManagedAccount", "accountId"),
            type = "string",
            name = "accountId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListManagedAccountsOutput = schema.new({
    id = id.from(_N, "ListManagedAccountsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListManagedAccountsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ManagedAccount,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListManagedAccountsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
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
        retryAfterSeconds = schema.new({
            id = id.from(_N, "InternalServerException", "retryAfterSeconds"),
            type = "long",
            name = "retryAfterSeconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
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
            type = "string",
            name = "retryAfterSeconds",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.SourceS3Configuration = schema.new({
    id = id.from(_N, "SourceS3Configuration"),
    type = "structure",
    members = {
        s3Bucket = schema.new({
            id = id.from(_N, "SourceS3Configuration", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3BucketOwner = schema.new({
            id = id.from(_N, "SourceS3Configuration", "s3BucketOwner"),
            type = "string",
            name = "s3BucketOwner",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3Key = schema.new({
            id = id.from(_N, "SourceS3Configuration", "s3Key"),
            type = "string",
            name = "s3Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SourceConfiguration = schema.new({
    id = id.from(_N, "SourceConfiguration"),
    type = "structure",
    members = {
        sourceEnvironment = schema.new({
            id = id.from(_N, "SourceConfiguration", "sourceEnvironment"),
            type = "string",
            name = "sourceEnvironment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceS3Configuration = schema.new({
            id = id.from(_N, "SourceConfiguration", "sourceS3Configuration"),
            type = "structure",
            name = "sourceS3Configuration",
            target_id = id.from(_N, "SourceS3Configuration"),
            target = M.SourceS3Configuration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TargetNetwork = schema.new({
    id = id.from(_N, "TargetNetwork"),
    type = "structure",
    members = {
        topology = schema.new({
            id = id.from(_N, "TargetNetwork", "topology"),
            type = "string",
            name = "topology",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inboundCidr = schema.new({
            id = id.from(_N, "TargetNetwork", "inboundCidr"),
            type = "string",
            name = "inboundCidr",
            target_id = prelude.String.id,
        }),
        outboundCidr = schema.new({
            id = id.from(_N, "TargetNetwork", "outboundCidr"),
            type = "string",
            name = "outboundCidr",
            target_id = prelude.String.id,
        }),
        inspectionCidr = schema.new({
            id = id.from(_N, "TargetNetwork", "inspectionCidr"),
            type = "string",
            name = "inspectionCidr",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetS3Configuration = schema.new({
    id = id.from(_N, "TargetS3Configuration"),
    type = "structure",
    members = {
        s3Bucket = schema.new({
            id = id.from(_N, "TargetS3Configuration", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3BucketOwner = schema.new({
            id = id.from(_N, "TargetS3Configuration", "s3BucketOwner"),
            type = "string",
            name = "s3BucketOwner",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateNetworkMigrationDefinitionInput = schema.new({
    id = id.from(_N, "CreateNetworkMigrationDefinitionRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sourceConfigurations = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionInput", "sourceConfigurations"),
            type = "list",
            name = "sourceConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SourceConfiguration,
        }),
        targetS3Configuration = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionInput", "targetS3Configuration"),
            type = "structure",
            name = "targetS3Configuration",
            target_id = id.from(_N, "TargetS3Configuration"),
            target = M.TargetS3Configuration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetNetwork = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionInput", "targetNetwork"),
            type = "structure",
            name = "targetNetwork",
            target_id = id.from(_N, "TargetNetwork"),
            target = M.TargetNetwork,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetDeployment = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionInput", "targetDeployment"),
            type = "string",
            name = "targetDeployment",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        scopeTags = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionInput", "scopeTags"),
            type = "map",
            name = "scopeTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateNetworkMigrationDefinitionOutput = schema.new({
    id = id.from(_N, "NetworkMigrationDefinition"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionOutput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sourceConfigurations = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionOutput", "sourceConfigurations"),
            type = "list",
            name = "sourceConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SourceConfiguration,
        }),
        targetS3Configuration = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionOutput", "targetS3Configuration"),
            type = "structure",
            name = "targetS3Configuration",
            target_id = id.from(_N, "TargetS3Configuration"),
            target = M.TargetS3Configuration,
        }),
        targetNetwork = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionOutput", "targetNetwork"),
            type = "structure",
            name = "targetNetwork",
            target_id = id.from(_N, "TargetNetwork"),
            target = M.TargetNetwork,
        }),
        targetDeployment = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionOutput", "targetDeployment"),
            type = "string",
            name = "targetDeployment",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        scopeTags = schema.new({
            id = id.from(_N, "CreateNetworkMigrationDefinitionOutput", "scopeTags"),
            type = "map",
            name = "scopeTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DeleteNetworkMigrationDefinitionInput = schema.new({
    id = id.from(_N, "DeleteNetworkMigrationDefinitionRequest"),
    type = "structure",
    members = {
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "DeleteNetworkMigrationDefinitionInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteNetworkMigrationDefinitionOutput = schema.new({
    id = id.from(_N, "DeleteNetworkMigrationDefinitionResponse"),
    type = "structure",
})

M.GetNetworkMigrationDefinitionInput = schema.new({
    id = id.from(_N, "GetNetworkMigrationDefinitionRequest"),
    type = "structure",
    members = {
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetNetworkMigrationDefinitionOutput = schema.new({
    id = id.from(_N, "NetworkMigrationDefinition"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionOutput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sourceConfigurations = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionOutput", "sourceConfigurations"),
            type = "list",
            name = "sourceConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SourceConfiguration,
        }),
        targetS3Configuration = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionOutput", "targetS3Configuration"),
            type = "structure",
            name = "targetS3Configuration",
            target_id = id.from(_N, "TargetS3Configuration"),
            target = M.TargetS3Configuration,
        }),
        targetNetwork = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionOutput", "targetNetwork"),
            type = "structure",
            name = "targetNetwork",
            target_id = id.from(_N, "TargetNetwork"),
            target = M.TargetNetwork,
        }),
        targetDeployment = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionOutput", "targetDeployment"),
            type = "string",
            name = "targetDeployment",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        scopeTags = schema.new({
            id = id.from(_N, "GetNetworkMigrationDefinitionOutput", "scopeTags"),
            type = "map",
            name = "scopeTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetNetworkMigrationMapperSegmentConstructInput = schema.new({
    id = id.from(_N, "GetNetworkMigrationMapperSegmentConstructRequest"),
    type = "structure",
    members = {
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "GetNetworkMigrationMapperSegmentConstructInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "GetNetworkMigrationMapperSegmentConstructInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        segmentID = schema.new({
            id = id.from(_N, "GetNetworkMigrationMapperSegmentConstructInput", "segmentID"),
            type = "string",
            name = "segmentID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        constructID = schema.new({
            id = id.from(_N, "GetNetworkMigrationMapperSegmentConstructInput", "constructID"),
            type = "string",
            name = "constructID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NetworkMigrationMapperSegmentConstruct = schema.new({
    id = id.from(_N, "NetworkMigrationMapperSegmentConstruct"),
    type = "structure",
    members = {
        constructID = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegmentConstruct", "constructID"),
            type = "string",
            name = "constructID",
            target_id = prelude.String.id,
        }),
        constructType = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegmentConstruct", "constructType"),
            type = "string",
            name = "constructType",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegmentConstruct", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegmentConstruct", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        logicalID = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegmentConstruct", "logicalID"),
            type = "string",
            name = "logicalID",
            target_id = prelude.String.id,
        }),
        excluded = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegmentConstruct", "excluded"),
            type = "boolean",
            name = "excluded",
            target_id = prelude.Boolean.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegmentConstruct", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegmentConstruct", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        properties = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegmentConstruct", "properties"),
            type = "map",
            name = "properties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetNetworkMigrationMapperSegmentConstructOutput = schema.new({
    id = id.from(_N, "GetNetworkMigrationMapperSegmentConstructResponse"),
    type = "structure",
    members = {
        construct = schema.new({
            id = id.from(_N, "GetNetworkMigrationMapperSegmentConstructOutput", "construct"),
            type = "structure",
            name = "construct",
            target_id = id.from(_N, "NetworkMigrationMapperSegmentConstruct"),
            target = M.NetworkMigrationMapperSegmentConstruct,
        }),
    },
})

M.ListNetworkMigrationAnalysesFilters = schema.new({
    id = id.from(_N, "ListNetworkMigrationAnalysesFilters"),
    type = "structure",
    members = {
        jobIDs = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysesFilters", "jobIDs"),
            type = "list",
            name = "jobIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListNetworkMigrationAnalysesInput = schema.new({
    id = id.from(_N, "ListNetworkMigrationAnalysesRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysesInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysesInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysesInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListNetworkMigrationAnalysesFilters"),
            target = M.ListNetworkMigrationAnalysesFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkMigrationAnalysisJobDetails = schema.new({
    id = id.from(_N, "NetworkMigrationAnalysisJobDetails"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisJobDetails", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisJobDetails", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisJobDetails", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisJobDetails", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        endedAt = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisJobDetails", "endedAt"),
            type = "timestamp",
            name = "endedAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisJobDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusDetails = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisJobDetails", "statusDetails"),
            type = "string",
            name = "statusDetails",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationAnalysesOutput = schema.new({
    id = id.from(_N, "ListNetworkMigrationAnalysesResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationAnalysisJobDetails,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationAnalysisResultsFilters = schema.new({
    id = id.from(_N, "ListNetworkMigrationAnalysisResultsFilters"),
    type = "structure",
    members = {
        vpcIDs = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysisResultsFilters", "vpcIDs"),
            type = "list",
            name = "vpcIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListNetworkMigrationAnalysisResultsInput = schema.new({
    id = id.from(_N, "ListNetworkMigrationAnalysisResultsRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysisResultsInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysisResultsInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysisResultsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListNetworkMigrationAnalysisResultsFilters"),
            target = M.ListNetworkMigrationAnalysisResultsFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysisResultsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysisResultsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkMigrationAnalysisResultSource = schema.new({
    id = id.from(_N, "NetworkMigrationAnalysisResultSource"),
    type = "structure",
    members = {
        vpcID = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisResultSource", "vpcID"),
            type = "string",
            name = "vpcID",
            target_id = prelude.String.id,
        }),
        subnetID = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisResultSource", "subnetID"),
            type = "string",
            name = "subnetID",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkMigrationAnalysisResultTarget = schema.new({
    id = id.from(_N, "NetworkMigrationAnalysisResultTarget"),
    type = "structure",
    members = {
        vpcID = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisResultTarget", "vpcID"),
            type = "string",
            name = "vpcID",
            target_id = prelude.String.id,
        }),
        subnetID = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisResultTarget", "subnetID"),
            type = "string",
            name = "subnetID",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkMigrationAnalysisResult = schema.new({
    id = id.from(_N, "NetworkMigrationAnalysisResult"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisResult", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisResult", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisResult", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        analyzerType = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisResult", "analyzerType"),
            type = "string",
            name = "analyzerType",
            target_id = prelude.String.id,
        }),
        source = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisResult", "source"),
            type = "structure",
            name = "source",
            target_id = id.from(_N, "NetworkMigrationAnalysisResultSource"),
            target = M.NetworkMigrationAnalysisResultSource,
        }),
        target = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisResult", "target"),
            type = "structure",
            name = "target",
            target_id = id.from(_N, "NetworkMigrationAnalysisResultTarget"),
            target = M.NetworkMigrationAnalysisResultTarget,
        }),
        status = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisResult", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        analysisResult = schema.new({
            id = id.from(_N, "NetworkMigrationAnalysisResult", "analysisResult"),
            type = "string",
            name = "analysisResult",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationAnalysisResultsOutput = schema.new({
    id = id.from(_N, "ListNetworkMigrationAnalysisResultsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysisResultsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationAnalysisResult,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationAnalysisResultsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationCodeGenerationsFilters = schema.new({
    id = id.from(_N, "ListNetworkMigrationCodeGenerationsFilters"),
    type = "structure",
    members = {
        jobIDs = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationsFilters", "jobIDs"),
            type = "list",
            name = "jobIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListNetworkMigrationCodeGenerationsInput = schema.new({
    id = id.from(_N, "ListNetworkMigrationCodeGenerationsRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationsInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationsInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListNetworkMigrationCodeGenerationsFilters"),
            target = M.ListNetworkMigrationCodeGenerationsFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CodeGenerationOutputFormatStatusDetails = schema.new({
    id = id.from(_N, "CodeGenerationOutputFormatStatusDetails"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "CodeGenerationOutputFormatStatusDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusDetailList = schema.new({
            id = id.from(_N, "CodeGenerationOutputFormatStatusDetails", "statusDetailList"),
            type = "string",
            name = "statusDetailList",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkMigrationCodeGenerationJobDetails = schema.new({
    id = id.from(_N, "NetworkMigrationCodeGenerationJobDetails"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationJobDetails", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationJobDetails", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationJobDetails", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationJobDetails", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        endedAt = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationJobDetails", "endedAt"),
            type = "timestamp",
            name = "endedAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationJobDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusDetails = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationJobDetails", "statusDetails"),
            type = "string",
            name = "statusDetails",
            target_id = prelude.String.id,
        }),
        codeGenerationOutputFormatStatusDetailsMap = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationJobDetails", "codeGenerationOutputFormatStatusDetailsMap"),
            type = "map",
            name = "codeGenerationOutputFormatStatusDetailsMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.CodeGenerationOutputFormatStatusDetails,
        }),
    },
})

M.ListNetworkMigrationCodeGenerationsOutput = schema.new({
    id = id.from(_N, "ListNetworkMigrationCodeGenerationsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationCodeGenerationJobDetails,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationCodeGenerationSegmentsFilters = schema.new({
    id = id.from(_N, "ListNetworkMigrationCodeGenerationSegmentsFilters"),
    type = "structure",
    members = {
        segmentIDs = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationSegmentsFilters", "segmentIDs"),
            type = "list",
            name = "segmentIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListNetworkMigrationCodeGenerationSegmentsInput = schema.new({
    id = id.from(_N, "ListNetworkMigrationCodeGenerationSegmentsRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationSegmentsInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationSegmentsInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationSegmentsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListNetworkMigrationCodeGenerationSegmentsFilters"),
            target = M.ListNetworkMigrationCodeGenerationSegmentsFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationSegmentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationSegmentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.S3Configuration = schema.new({
    id = id.from(_N, "S3Configuration"),
    type = "structure",
    members = {
        s3Bucket = schema.new({
            id = id.from(_N, "S3Configuration", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
        }),
        s3BucketOwner = schema.new({
            id = id.from(_N, "S3Configuration", "s3BucketOwner"),
            type = "string",
            name = "s3BucketOwner",
            target_id = prelude.String.id,
        }),
        s3Key = schema.new({
            id = id.from(_N, "S3Configuration", "s3Key"),
            type = "string",
            name = "s3Key",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkMigrationCodeGenerationArtifact = schema.new({
    id = id.from(_N, "NetworkMigrationCodeGenerationArtifact"),
    type = "structure",
    members = {
        artifactID = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationArtifact", "artifactID"),
            type = "string",
            name = "artifactID",
            target_id = prelude.String.id,
        }),
        artifactType = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationArtifact", "artifactType"),
            type = "string",
            name = "artifactType",
            target_id = prelude.String.id,
        }),
        artifactSubType = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationArtifact", "artifactSubType"),
            type = "string",
            name = "artifactSubType",
            target_id = prelude.String.id,
        }),
        logicalID = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationArtifact", "logicalID"),
            type = "string",
            name = "logicalID",
            target_id = prelude.String.id,
        }),
        outputS3Configuration = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationArtifact", "outputS3Configuration"),
            type = "structure",
            name = "outputS3Configuration",
            target_id = id.from(_N, "S3Configuration"),
            target = M.S3Configuration,
        }),
        checksum = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationArtifact", "checksum"),
            type = "structure",
            name = "checksum",
            target_id = id.from(_N, "Checksum"),
            target = M.Checksum,
        }),
        createdAt = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationArtifact", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.NetworkMigrationCodeGenerationSegment = schema.new({
    id = id.from(_N, "NetworkMigrationCodeGenerationSegment"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationSegment", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationSegment", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationSegment", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        segmentID = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationSegment", "segmentID"),
            type = "string",
            name = "segmentID",
            target_id = prelude.String.id,
        }),
        segmentType = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationSegment", "segmentType"),
            type = "string",
            name = "segmentType",
            target_id = prelude.String.id,
        }),
        logicalID = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationSegment", "logicalID"),
            type = "string",
            name = "logicalID",
            target_id = prelude.String.id,
        }),
        mapperSegmentID = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationSegment", "mapperSegmentID"),
            type = "string",
            name = "mapperSegmentID",
            target_id = prelude.String.id,
        }),
        artifacts = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationSegment", "artifacts"),
            type = "list",
            name = "artifacts",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationCodeGenerationArtifact,
        }),
        createdAt = schema.new({
            id = id.from(_N, "NetworkMigrationCodeGenerationSegment", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListNetworkMigrationCodeGenerationSegmentsOutput = schema.new({
    id = id.from(_N, "ListNetworkMigrationCodeGenerationSegmentsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationSegmentsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationCodeGenerationSegment,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationCodeGenerationSegmentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationDefinitionsRequestFilters = schema.new({
    id = id.from(_N, "ListNetworkMigrationDefinitionsRequestFilters"),
    type = "structure",
    members = {
        networkMigrationDefinitionIDs = schema.new({
            id = id.from(_N, "ListNetworkMigrationDefinitionsRequestFilters", "networkMigrationDefinitionIDs"),
            type = "list",
            name = "networkMigrationDefinitionIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListNetworkMigrationDefinitionsInput = schema.new({
    id = id.from(_N, "ListNetworkMigrationDefinitionsRequest"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "ListNetworkMigrationDefinitionsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListNetworkMigrationDefinitionsRequestFilters"),
            target = M.ListNetworkMigrationDefinitionsRequestFilters,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationDefinitionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkMigrationDefinitionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.NetworkMigrationDefinitionSummary = schema.new({
    id = id.from(_N, "NetworkMigrationDefinitionSummary"),
    type = "structure",
    members = {
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "NetworkMigrationDefinitionSummary", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "NetworkMigrationDefinitionSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        sourceEnvironment = schema.new({
            id = id.from(_N, "NetworkMigrationDefinitionSummary", "sourceEnvironment"),
            type = "string",
            name = "sourceEnvironment",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "NetworkMigrationDefinitionSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "NetworkMigrationDefinitionSummary", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        scopeTags = schema.new({
            id = id.from(_N, "NetworkMigrationDefinitionSummary", "scopeTags"),
            type = "map",
            name = "scopeTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListNetworkMigrationDefinitionsOutput = schema.new({
    id = id.from(_N, "ListNetworkMigrationDefinitionsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListNetworkMigrationDefinitionsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationDefinitionSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationDefinitionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationDeployedStacksInput = schema.new({
    id = id.from(_N, "ListNetworkMigrationDeployedStacksRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeployedStacksInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeployedStacksInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeployedStacksInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeployedStacksInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkMigrationFailedResourceDetails = schema.new({
    id = id.from(_N, "NetworkMigrationFailedResourceDetails"),
    type = "structure",
    members = {
        logicalID = schema.new({
            id = id.from(_N, "NetworkMigrationFailedResourceDetails", "logicalID"),
            type = "string",
            name = "logicalID",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "NetworkMigrationFailedResourceDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "NetworkMigrationFailedResourceDetails", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkMigrationDeployedStackDetails = schema.new({
    id = id.from(_N, "NetworkMigrationDeployedStackDetails"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "NetworkMigrationDeployedStackDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        stackPhysicalID = schema.new({
            id = id.from(_N, "NetworkMigrationDeployedStackDetails", "stackPhysicalID"),
            type = "string",
            name = "stackPhysicalID",
            target_id = prelude.String.id,
        }),
        stackLogicalID = schema.new({
            id = id.from(_N, "NetworkMigrationDeployedStackDetails", "stackLogicalID"),
            type = "string",
            name = "stackLogicalID",
            target_id = prelude.String.id,
        }),
        segmentID = schema.new({
            id = id.from(_N, "NetworkMigrationDeployedStackDetails", "segmentID"),
            type = "string",
            name = "segmentID",
            target_id = prelude.String.id,
        }),
        targetAccount = schema.new({
            id = id.from(_N, "NetworkMigrationDeployedStackDetails", "targetAccount"),
            type = "string",
            name = "targetAccount",
            target_id = prelude.String.id,
        }),
        failedResources = schema.new({
            id = id.from(_N, "NetworkMigrationDeployedStackDetails", "failedResources"),
            type = "list",
            name = "failedResources",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationFailedResourceDetails,
        }),
    },
})

M.ListNetworkMigrationDeployedStacksOutput = schema.new({
    id = id.from(_N, "ListNetworkMigrationDeployedStacksResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeployedStacksOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationDeployedStackDetails,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeployedStacksOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationDeployerJobFilters = schema.new({
    id = id.from(_N, "ListNetworkMigrationDeployerJobFilters"),
    type = "structure",
    members = {
        jobIDs = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeployerJobFilters", "jobIDs"),
            type = "list",
            name = "jobIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListNetworkMigrationDeploymentsInput = schema.new({
    id = id.from(_N, "ListNetworkMigrationDeploymentsRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeploymentsInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeploymentsInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeploymentsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListNetworkMigrationDeployerJobFilters"),
            target = M.ListNetworkMigrationDeployerJobFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeploymentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeploymentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkMigrationDeployerJobDetails = schema.new({
    id = id.from(_N, "NetworkMigrationDeployerJobDetails"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "NetworkMigrationDeployerJobDetails", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "NetworkMigrationDeployerJobDetails", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "NetworkMigrationDeployerJobDetails", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "NetworkMigrationDeployerJobDetails", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        endedAt = schema.new({
            id = id.from(_N, "NetworkMigrationDeployerJobDetails", "endedAt"),
            type = "timestamp",
            name = "endedAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "NetworkMigrationDeployerJobDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusDetails = schema.new({
            id = id.from(_N, "NetworkMigrationDeployerJobDetails", "statusDetails"),
            type = "string",
            name = "statusDetails",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationDeploymentsOutput = schema.new({
    id = id.from(_N, "ListNetworkMigrationDeployerJobResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeploymentsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationDeployerJobDetails,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationDeploymentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationExecutionRequestFilters = schema.new({
    id = id.from(_N, "ListNetworkMigrationExecutionRequestFilters"),
    type = "structure",
    members = {
        networkMigrationExecutionIDs = schema.new({
            id = id.from(_N, "ListNetworkMigrationExecutionRequestFilters", "networkMigrationExecutionIDs"),
            type = "list",
            name = "networkMigrationExecutionIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        networkMigrationExecutionStatuses = schema.new({
            id = id.from(_N, "ListNetworkMigrationExecutionRequestFilters", "networkMigrationExecutionStatuses"),
            type = "list",
            name = "networkMigrationExecutionStatuses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListNetworkMigrationExecutionsInput = schema.new({
    id = id.from(_N, "ListNetworkMigrationExecutionsRequest"),
    type = "structure",
    members = {
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationExecutionsInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListNetworkMigrationExecutionsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListNetworkMigrationExecutionRequestFilters"),
            target = M.ListNetworkMigrationExecutionRequestFilters,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationExecutionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkMigrationExecutionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.NetworkMigrationExecution = schema.new({
    id = id.from(_N, "NetworkMigrationExecution"),
    type = "structure",
    members = {
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "NetworkMigrationExecution", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "NetworkMigrationExecution", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "NetworkMigrationExecution", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        stage = schema.new({
            id = id.from(_N, "NetworkMigrationExecution", "stage"),
            type = "string",
            name = "stage",
            target_id = prelude.String.id,
        }),
        activity = schema.new({
            id = id.from(_N, "NetworkMigrationExecution", "activity"),
            type = "string",
            name = "activity",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "NetworkMigrationExecution", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "NetworkMigrationExecution", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "NetworkMigrationExecution", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListNetworkMigrationExecutionsOutput = schema.new({
    id = id.from(_N, "ListNetworkMigrationExecutionsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListNetworkMigrationExecutionsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationExecution,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationExecutionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationMapperSegmentConstructsFilters = schema.new({
    id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsFilters"),
    type = "structure",
    members = {
        constructIDs = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsFilters", "constructIDs"),
            type = "list",
            name = "constructIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        constructTypes = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsFilters", "constructTypes"),
            type = "list",
            name = "constructTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListNetworkMigrationMapperSegmentConstructsInput = schema.new({
    id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        segmentID = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsInput", "segmentID"),
            type = "string",
            name = "segmentID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsFilters"),
            target = M.ListNetworkMigrationMapperSegmentConstructsFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationMapperSegmentConstructsOutput = schema.new({
    id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationMapperSegmentConstruct,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentConstructsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationMapperSegmentsFilters = schema.new({
    id = id.from(_N, "ListNetworkMigrationMapperSegmentsFilters"),
    type = "structure",
    members = {
        segmentIDs = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentsFilters", "segmentIDs"),
            type = "list",
            name = "segmentIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListNetworkMigrationMapperSegmentsInput = schema.new({
    id = id.from(_N, "ListNetworkMigrationMapperSegmentsRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentsInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentsInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListNetworkMigrationMapperSegmentsFilters"),
            target = M.ListNetworkMigrationMapperSegmentsFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkMigrationMapperSegment = schema.new({
    id = id.from(_N, "NetworkMigrationMapperSegment"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        segmentID = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "segmentID"),
            type = "string",
            name = "segmentID",
            target_id = prelude.String.id,
        }),
        segmentType = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "segmentType"),
            type = "string",
            name = "segmentType",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        logicalID = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "logicalID"),
            type = "string",
            name = "logicalID",
            target_id = prelude.String.id,
        }),
        checksum = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "checksum"),
            type = "structure",
            name = "checksum",
            target_id = id.from(_N, "Checksum"),
            target = M.Checksum,
        }),
        outputS3Configuration = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "outputS3Configuration"),
            type = "structure",
            name = "outputS3Configuration",
            target_id = id.from(_N, "S3Configuration"),
            target = M.S3Configuration,
        }),
        createdAt = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        scopeTags = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "scopeTags"),
            type = "map",
            name = "scopeTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        targetAccount = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "targetAccount"),
            type = "string",
            name = "targetAccount",
            target_id = prelude.String.id,
        }),
        referencedSegments = schema.new({
            id = id.from(_N, "NetworkMigrationMapperSegment", "referencedSegments"),
            type = "list",
            name = "referencedSegments",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListNetworkMigrationMapperSegmentsOutput = schema.new({
    id = id.from(_N, "ListNetworkMigrationMapperSegmentsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationMapperSegment,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationMapperSegmentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationMappingsFilters = schema.new({
    id = id.from(_N, "ListNetworkMigrationMappingsFilters"),
    type = "structure",
    members = {
        jobIDs = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingsFilters", "jobIDs"),
            type = "list",
            name = "jobIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListNetworkMigrationMappingsInput = schema.new({
    id = id.from(_N, "ListNetworkMigrationMappingsRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingsInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingsInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListNetworkMigrationMappingsFilters"),
            target = M.ListNetworkMigrationMappingsFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkMigrationMappingJobDetails = schema.new({
    id = id.from(_N, "NetworkMigrationMappingJobDetails"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "NetworkMigrationMappingJobDetails", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "NetworkMigrationMappingJobDetails", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "NetworkMigrationMappingJobDetails", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "NetworkMigrationMappingJobDetails", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        endedAt = schema.new({
            id = id.from(_N, "NetworkMigrationMappingJobDetails", "endedAt"),
            type = "timestamp",
            name = "endedAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "NetworkMigrationMappingJobDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusDetails = schema.new({
            id = id.from(_N, "NetworkMigrationMappingJobDetails", "statusDetails"),
            type = "string",
            name = "statusDetails",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationMappingsOutput = schema.new({
    id = id.from(_N, "ListNetworkMigrationMappingsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationMappingJobDetails,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationMappingUpdatesFilters = schema.new({
    id = id.from(_N, "ListNetworkMigrationMappingUpdatesFilters"),
    type = "structure",
    members = {
        jobIDs = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingUpdatesFilters", "jobIDs"),
            type = "list",
            name = "jobIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListNetworkMigrationMappingUpdatesInput = schema.new({
    id = id.from(_N, "ListNetworkMigrationMappingUpdatesRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingUpdatesInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingUpdatesInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingUpdatesInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListNetworkMigrationMappingUpdatesFilters"),
            target = M.ListNetworkMigrationMappingUpdatesFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingUpdatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingUpdatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkMigrationMappingUpdateJobDetails = schema.new({
    id = id.from(_N, "NetworkMigrationMappingUpdateJobDetails"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "NetworkMigrationMappingUpdateJobDetails", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "NetworkMigrationMappingUpdateJobDetails", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "NetworkMigrationMappingUpdateJobDetails", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "NetworkMigrationMappingUpdateJobDetails", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        endedAt = schema.new({
            id = id.from(_N, "NetworkMigrationMappingUpdateJobDetails", "endedAt"),
            type = "timestamp",
            name = "endedAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "NetworkMigrationMappingUpdateJobDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusDetails = schema.new({
            id = id.from(_N, "NetworkMigrationMappingUpdateJobDetails", "statusDetails"),
            type = "string",
            name = "statusDetails",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkMigrationMappingUpdatesOutput = schema.new({
    id = id.from(_N, "ListNetworkMigrationMappingUpdatesResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingUpdatesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.NetworkMigrationMappingUpdateJobDetails,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkMigrationMappingUpdatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartNetworkMigrationAnalysisInput = schema.new({
    id = id.from(_N, "StartNetworkMigrationAnalysisRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "StartNetworkMigrationAnalysisInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "StartNetworkMigrationAnalysisInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartNetworkMigrationAnalysisOutput = schema.new({
    id = id.from(_N, "StartNetworkMigrationAnalysisResponse"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "StartNetworkMigrationAnalysisOutput", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
    },
})

M.StartNetworkMigrationCodeGenerationInput = schema.new({
    id = id.from(_N, "StartNetworkMigrationCodeGenerationRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "StartNetworkMigrationCodeGenerationInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "StartNetworkMigrationCodeGenerationInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        codeGenerationOutputFormatTypes = schema.new({
            id = id.from(_N, "StartNetworkMigrationCodeGenerationInput", "codeGenerationOutputFormatTypes"),
            type = "list",
            name = "codeGenerationOutputFormatTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.StartNetworkMigrationCodeGenerationOutput = schema.new({
    id = id.from(_N, "StartNetworkMigrationCodeGenerationResponse"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "StartNetworkMigrationCodeGenerationOutput", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
    },
})

M.StartNetworkMigrationDeploymentInput = schema.new({
    id = id.from(_N, "StartNetworkMigrationDeploymentRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "StartNetworkMigrationDeploymentInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "StartNetworkMigrationDeploymentInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartNetworkMigrationDeploymentOutput = schema.new({
    id = id.from(_N, "StartNetworkMigrationDeployerJobResponse"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "StartNetworkMigrationDeploymentOutput", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
    },
})

M.StartNetworkMigrationMappingInput = schema.new({
    id = id.from(_N, "StartNetworkMigrationMappingRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        securityGroupMappingStrategy = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingInput", "securityGroupMappingStrategy"),
            type = "string",
            name = "securityGroupMappingStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.StartNetworkMigrationMappingOutput = schema.new({
    id = id.from(_N, "StartNetworkMigrationMappingResponse"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingOutput", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteOperation = schema.new({
    id = id.from(_N, "DeleteOperation"),
    type = "structure",
})

M.MergeConstruct = schema.new({
    id = id.from(_N, "MergeConstruct"),
    type = "structure",
    members = {
        segmentID = schema.new({
            id = id.from(_N, "MergeConstruct", "segmentID"),
            type = "string",
            name = "segmentID",
            target_id = prelude.String.id,
        }),
        constructID = schema.new({
            id = id.from(_N, "MergeConstruct", "constructID"),
            type = "string",
            name = "constructID",
            target_id = prelude.String.id,
        }),
    },
})

M.MergeOperation = schema.new({
    id = id.from(_N, "MergeOperation"),
    type = "structure",
    members = {
        mergeConstructs = schema.new({
            id = id.from(_N, "MergeOperation", "mergeConstructs"),
            type = "list",
            name = "mergeConstructs",
            target_id = prelude.Document.id,
            list_member = M.MergeConstruct,
        }),
    },
})

M.SplitConstruct = schema.new({
    id = id.from(_N, "SplitConstruct"),
    type = "structure",
    members = {
        cidrBlock = schema.new({
            id = id.from(_N, "SplitConstruct", "cidrBlock"),
            type = "string",
            name = "cidrBlock",
            target_id = prelude.String.id,
        }),
    },
})

M.SplitOperation = schema.new({
    id = id.from(_N, "SplitOperation"),
    type = "structure",
    members = {
        splitConstructs = schema.new({
            id = id.from(_N, "SplitOperation", "splitConstructs"),
            type = "list",
            name = "splitConstructs",
            target_id = prelude.Document.id,
            list_member = M.SplitConstruct,
        }),
    },
})

M.UpdateOperation = schema.new({
    id = id.from(_N, "UpdateOperation"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateOperation", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        excluded = schema.new({
            id = id.from(_N, "UpdateOperation", "excluded"),
            type = "boolean",
            name = "excluded",
            target_id = prelude.Boolean.id,
        }),
        properties = schema.new({
            id = id.from(_N, "UpdateOperation", "properties"),
            type = "map",
            name = "properties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.OperationUnion = schema.new({
    id = id.from(_N, "OperationUnion"),
    type = "union",
    members = {
        merge = schema.new({
            id = id.from(_N, "OperationUnion", "merge"),
            type = "structure",
            name = "merge",
            target_id = id.from(_N, "MergeOperation"),
            target = M.MergeOperation,
        }),
        split = schema.new({
            id = id.from(_N, "OperationUnion", "split"),
            type = "structure",
            name = "split",
            target_id = id.from(_N, "SplitOperation"),
            target = M.SplitOperation,
        }),
        delete = schema.new({
            id = id.from(_N, "OperationUnion", "delete"),
            type = "structure",
            name = "delete",
            target_id = id.from(_N, "DeleteOperation"),
            target = M.DeleteOperation,
        }),
        update = schema.new({
            id = id.from(_N, "OperationUnion", "update"),
            type = "structure",
            name = "update",
            target_id = id.from(_N, "UpdateOperation"),
            target = M.UpdateOperation,
        }),
    },
})

M.StartNetworkMigrationMappingUpdateConstruct = schema.new({
    id = id.from(_N, "StartNetworkMigrationMappingUpdateConstruct"),
    type = "structure",
    members = {
        segmentID = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingUpdateConstruct", "segmentID"),
            type = "string",
            name = "segmentID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        constructID = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingUpdateConstruct", "constructID"),
            type = "string",
            name = "constructID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        constructType = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingUpdateConstruct", "constructType"),
            type = "string",
            name = "constructType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operation = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingUpdateConstruct", "operation"),
            type = "union",
            name = "operation",
            target_id = id.from(_N, "OperationUnion"),
            target = M.OperationUnion,
        }),
    },
})

M.StartNetworkMigrationMappingUpdateSegment = schema.new({
    id = id.from(_N, "StartNetworkMigrationMappingUpdateSegment"),
    type = "structure",
    members = {
        segmentID = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingUpdateSegment", "segmentID"),
            type = "string",
            name = "segmentID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetAccount = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingUpdateSegment", "targetAccount"),
            type = "string",
            name = "targetAccount",
            target_id = prelude.String.id,
        }),
        scopeTags = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingUpdateSegment", "scopeTags"),
            type = "map",
            name = "scopeTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartNetworkMigrationMappingUpdateInput = schema.new({
    id = id.from(_N, "StartNetworkMigrationMappingUpdateRequest"),
    type = "structure",
    members = {
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingUpdateInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingUpdateInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        constructs = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingUpdateInput", "constructs"),
            type = "list",
            name = "constructs",
            target_id = prelude.Document.id,
            list_member = M.StartNetworkMigrationMappingUpdateConstruct,
        }),
        segments = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingUpdateInput", "segments"),
            type = "list",
            name = "segments",
            target_id = prelude.Document.id,
            list_member = M.StartNetworkMigrationMappingUpdateSegment,
        }),
    },
})

M.StartNetworkMigrationMappingUpdateOutput = schema.new({
    id = id.from(_N, "StartNetworkMigrationMappingUpdateResponse"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "StartNetworkMigrationMappingUpdateOutput", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetNetworkUpdate = schema.new({
    id = id.from(_N, "TargetNetworkUpdate"),
    type = "structure",
    members = {
        topology = schema.new({
            id = id.from(_N, "TargetNetworkUpdate", "topology"),
            type = "string",
            name = "topology",
            target_id = prelude.String.id,
        }),
        inboundCidr = schema.new({
            id = id.from(_N, "TargetNetworkUpdate", "inboundCidr"),
            type = "string",
            name = "inboundCidr",
            target_id = prelude.String.id,
        }),
        outboundCidr = schema.new({
            id = id.from(_N, "TargetNetworkUpdate", "outboundCidr"),
            type = "string",
            name = "outboundCidr",
            target_id = prelude.String.id,
        }),
        inspectionCidr = schema.new({
            id = id.from(_N, "TargetNetworkUpdate", "inspectionCidr"),
            type = "string",
            name = "inspectionCidr",
            target_id = prelude.String.id,
        }),
    },
})

M.TargetS3ConfigurationUpdate = schema.new({
    id = id.from(_N, "TargetS3ConfigurationUpdate"),
    type = "structure",
    members = {
        s3Bucket = schema.new({
            id = id.from(_N, "TargetS3ConfigurationUpdate", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
        }),
        s3BucketOwner = schema.new({
            id = id.from(_N, "TargetS3ConfigurationUpdate", "s3BucketOwner"),
            type = "string",
            name = "s3BucketOwner",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateNetworkMigrationDefinitionInput = schema.new({
    id = id.from(_N, "UpdateNetworkMigrationDefinitionRequest"),
    type = "structure",
    members = {
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sourceConfigurations = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionInput", "sourceConfigurations"),
            type = "list",
            name = "sourceConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SourceConfiguration,
        }),
        targetS3Configuration = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionInput", "targetS3Configuration"),
            type = "structure",
            name = "targetS3Configuration",
            target_id = id.from(_N, "TargetS3ConfigurationUpdate"),
            target = M.TargetS3ConfigurationUpdate,
        }),
        targetNetwork = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionInput", "targetNetwork"),
            type = "structure",
            name = "targetNetwork",
            target_id = id.from(_N, "TargetNetworkUpdate"),
            target = M.TargetNetworkUpdate,
        }),
        targetDeployment = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionInput", "targetDeployment"),
            type = "string",
            name = "targetDeployment",
            target_id = prelude.String.id,
        }),
        scopeTags = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionInput", "scopeTags"),
            type = "map",
            name = "scopeTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateNetworkMigrationDefinitionOutput = schema.new({
    id = id.from(_N, "NetworkMigrationDefinition"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionOutput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        sourceConfigurations = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionOutput", "sourceConfigurations"),
            type = "list",
            name = "sourceConfigurations",
            target_id = prelude.Document.id,
            list_member = M.SourceConfiguration,
        }),
        targetS3Configuration = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionOutput", "targetS3Configuration"),
            type = "structure",
            name = "targetS3Configuration",
            target_id = id.from(_N, "TargetS3Configuration"),
            target = M.TargetS3Configuration,
        }),
        targetNetwork = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionOutput", "targetNetwork"),
            type = "structure",
            name = "targetNetwork",
            target_id = id.from(_N, "TargetNetwork"),
            target = M.TargetNetwork,
        }),
        targetDeployment = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionOutput", "targetDeployment"),
            type = "string",
            name = "targetDeployment",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        scopeTags = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationDefinitionOutput", "scopeTags"),
            type = "map",
            name = "scopeTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateNetworkMigrationMapperSegmentInput = schema.new({
    id = id.from(_N, "UpdateNetworkMigrationMapperSegmentRequest"),
    type = "structure",
    members = {
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentInput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentInput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        segmentID = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentInput", "segmentID"),
            type = "string",
            name = "segmentID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        scopeTags = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentInput", "scopeTags"),
            type = "map",
            name = "scopeTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateNetworkMigrationMapperSegmentOutput = schema.new({
    id = id.from(_N, "NetworkMigrationMapperSegment"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        networkMigrationExecutionID = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "networkMigrationExecutionID"),
            type = "string",
            name = "networkMigrationExecutionID",
            target_id = prelude.String.id,
        }),
        networkMigrationDefinitionID = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "networkMigrationDefinitionID"),
            type = "string",
            name = "networkMigrationDefinitionID",
            target_id = prelude.String.id,
        }),
        segmentID = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "segmentID"),
            type = "string",
            name = "segmentID",
            target_id = prelude.String.id,
        }),
        segmentType = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "segmentType"),
            type = "string",
            name = "segmentType",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        logicalID = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "logicalID"),
            type = "string",
            name = "logicalID",
            target_id = prelude.String.id,
        }),
        checksum = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "checksum"),
            type = "structure",
            name = "checksum",
            target_id = id.from(_N, "Checksum"),
            target = M.Checksum,
        }),
        outputS3Configuration = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "outputS3Configuration"),
            type = "structure",
            name = "outputS3Configuration",
            target_id = id.from(_N, "S3Configuration"),
            target = M.S3Configuration,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        scopeTags = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "scopeTags"),
            type = "map",
            name = "scopeTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        targetAccount = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "targetAccount"),
            type = "string",
            name = "targetAccount",
            target_id = prelude.String.id,
        }),
        referencedSegments = schema.new({
            id = id.from(_N, "UpdateNetworkMigrationMapperSegmentOutput", "referencedSegments"),
            type = "list",
            name = "referencedSegments",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateReplicationConfigurationTemplateInput = schema.new({
    id = id.from(_N, "CreateReplicationConfigurationTemplateRequest"),
    type = "structure",
    members = {
        stagingAreaSubnetId = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "stagingAreaSubnetId"),
            type = "string",
            name = "stagingAreaSubnetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        associateDefaultSecurityGroup = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "associateDefaultSecurityGroup"),
            type = "boolean",
            name = "associateDefaultSecurityGroup",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        replicationServersSecurityGroupsIDs = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "replicationServersSecurityGroupsIDs"),
            type = "list",
            name = "replicationServersSecurityGroupsIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        replicationServerInstanceType = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "replicationServerInstanceType"),
            type = "string",
            name = "replicationServerInstanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        useDedicatedReplicationServer = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "useDedicatedReplicationServer"),
            type = "boolean",
            name = "useDedicatedReplicationServer",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        defaultLargeStagingDiskType = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "defaultLargeStagingDiskType"),
            type = "string",
            name = "defaultLargeStagingDiskType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ebsEncryption = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "ebsEncryption"),
            type = "string",
            name = "ebsEncryption",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ebsEncryptionKeyArn = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "ebsEncryptionKeyArn"),
            type = "string",
            name = "ebsEncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        bandwidthThrottling = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "bandwidthThrottling"),
            type = "long",
            name = "bandwidthThrottling",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        dataPlaneRouting = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "dataPlaneRouting"),
            type = "string",
            name = "dataPlaneRouting",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createPublicIP = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "createPublicIP"),
            type = "boolean",
            name = "createPublicIP",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stagingAreaTags = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "stagingAreaTags"),
            type = "map",
            name = "stagingAreaTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        useFipsEndpoint = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "useFipsEndpoint"),
            type = "boolean",
            name = "useFipsEndpoint",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
        }),
        storeSnapshotOnLocalZone = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "storeSnapshotOnLocalZone"),
            type = "boolean",
            name = "storeSnapshotOnLocalZone",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateReplicationConfigurationTemplateOutput = schema.new({
    id = id.from(_N, "ReplicationConfigurationTemplate"),
    type = "structure",
    members = {
        replicationConfigurationTemplateID = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "replicationConfigurationTemplateID"),
            type = "string",
            name = "replicationConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        stagingAreaSubnetId = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "stagingAreaSubnetId"),
            type = "string",
            name = "stagingAreaSubnetId",
            target_id = prelude.String.id,
        }),
        associateDefaultSecurityGroup = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "associateDefaultSecurityGroup"),
            type = "boolean",
            name = "associateDefaultSecurityGroup",
            target_id = prelude.Boolean.id,
        }),
        replicationServersSecurityGroupsIDs = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "replicationServersSecurityGroupsIDs"),
            type = "list",
            name = "replicationServersSecurityGroupsIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        replicationServerInstanceType = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "replicationServerInstanceType"),
            type = "string",
            name = "replicationServerInstanceType",
            target_id = prelude.String.id,
        }),
        useDedicatedReplicationServer = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "useDedicatedReplicationServer"),
            type = "boolean",
            name = "useDedicatedReplicationServer",
            target_id = prelude.Boolean.id,
        }),
        defaultLargeStagingDiskType = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "defaultLargeStagingDiskType"),
            type = "string",
            name = "defaultLargeStagingDiskType",
            target_id = prelude.String.id,
        }),
        ebsEncryption = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "ebsEncryption"),
            type = "string",
            name = "ebsEncryption",
            target_id = prelude.String.id,
        }),
        ebsEncryptionKeyArn = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "ebsEncryptionKeyArn"),
            type = "string",
            name = "ebsEncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        bandwidthThrottling = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "bandwidthThrottling"),
            type = "long",
            name = "bandwidthThrottling",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        dataPlaneRouting = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "dataPlaneRouting"),
            type = "string",
            name = "dataPlaneRouting",
            target_id = prelude.String.id,
        }),
        createPublicIP = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "createPublicIP"),
            type = "boolean",
            name = "createPublicIP",
            target_id = prelude.Boolean.id,
        }),
        stagingAreaTags = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "stagingAreaTags"),
            type = "map",
            name = "stagingAreaTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        useFipsEndpoint = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "useFipsEndpoint"),
            type = "boolean",
            name = "useFipsEndpoint",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
        }),
        storeSnapshotOnLocalZone = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "storeSnapshotOnLocalZone"),
            type = "boolean",
            name = "storeSnapshotOnLocalZone",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DeleteReplicationConfigurationTemplateInput = schema.new({
    id = id.from(_N, "DeleteReplicationConfigurationTemplateRequest"),
    type = "structure",
    members = {
        replicationConfigurationTemplateID = schema.new({
            id = id.from(_N, "DeleteReplicationConfigurationTemplateInput", "replicationConfigurationTemplateID"),
            type = "string",
            name = "replicationConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteReplicationConfigurationTemplateOutput = schema.new({
    id = id.from(_N, "DeleteReplicationConfigurationTemplateResponse"),
    type = "structure",
})

M.DescribeReplicationConfigurationTemplatesInput = schema.new({
    id = id.from(_N, "DescribeReplicationConfigurationTemplatesRequest"),
    type = "structure",
    members = {
        replicationConfigurationTemplateIDs = schema.new({
            id = id.from(_N, "DescribeReplicationConfigurationTemplatesInput", "replicationConfigurationTemplateIDs"),
            type = "list",
            name = "replicationConfigurationTemplateIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeReplicationConfigurationTemplatesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeReplicationConfigurationTemplatesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationConfigurationTemplate = schema.new({
    id = id.from(_N, "ReplicationConfigurationTemplate"),
    type = "structure",
    members = {
        replicationConfigurationTemplateID = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "replicationConfigurationTemplateID"),
            type = "string",
            name = "replicationConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        stagingAreaSubnetId = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "stagingAreaSubnetId"),
            type = "string",
            name = "stagingAreaSubnetId",
            target_id = prelude.String.id,
        }),
        associateDefaultSecurityGroup = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "associateDefaultSecurityGroup"),
            type = "boolean",
            name = "associateDefaultSecurityGroup",
            target_id = prelude.Boolean.id,
        }),
        replicationServersSecurityGroupsIDs = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "replicationServersSecurityGroupsIDs"),
            type = "list",
            name = "replicationServersSecurityGroupsIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        replicationServerInstanceType = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "replicationServerInstanceType"),
            type = "string",
            name = "replicationServerInstanceType",
            target_id = prelude.String.id,
        }),
        useDedicatedReplicationServer = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "useDedicatedReplicationServer"),
            type = "boolean",
            name = "useDedicatedReplicationServer",
            target_id = prelude.Boolean.id,
        }),
        defaultLargeStagingDiskType = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "defaultLargeStagingDiskType"),
            type = "string",
            name = "defaultLargeStagingDiskType",
            target_id = prelude.String.id,
        }),
        ebsEncryption = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "ebsEncryption"),
            type = "string",
            name = "ebsEncryption",
            target_id = prelude.String.id,
        }),
        ebsEncryptionKeyArn = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "ebsEncryptionKeyArn"),
            type = "string",
            name = "ebsEncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        bandwidthThrottling = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "bandwidthThrottling"),
            type = "long",
            name = "bandwidthThrottling",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        dataPlaneRouting = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "dataPlaneRouting"),
            type = "string",
            name = "dataPlaneRouting",
            target_id = prelude.String.id,
        }),
        createPublicIP = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "createPublicIP"),
            type = "boolean",
            name = "createPublicIP",
            target_id = prelude.Boolean.id,
        }),
        stagingAreaTags = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "stagingAreaTags"),
            type = "map",
            name = "stagingAreaTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        useFipsEndpoint = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "useFipsEndpoint"),
            type = "boolean",
            name = "useFipsEndpoint",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
        }),
        storeSnapshotOnLocalZone = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "storeSnapshotOnLocalZone"),
            type = "boolean",
            name = "storeSnapshotOnLocalZone",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeReplicationConfigurationTemplatesOutput = schema.new({
    id = id.from(_N, "DescribeReplicationConfigurationTemplatesResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "DescribeReplicationConfigurationTemplatesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.ReplicationConfigurationTemplate,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeReplicationConfigurationTemplatesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateReplicationConfigurationTemplateInput = schema.new({
    id = id.from(_N, "UpdateReplicationConfigurationTemplateRequest"),
    type = "structure",
    members = {
        replicationConfigurationTemplateID = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "replicationConfigurationTemplateID"),
            type = "string",
            name = "replicationConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        stagingAreaSubnetId = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "stagingAreaSubnetId"),
            type = "string",
            name = "stagingAreaSubnetId",
            target_id = prelude.String.id,
        }),
        associateDefaultSecurityGroup = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "associateDefaultSecurityGroup"),
            type = "boolean",
            name = "associateDefaultSecurityGroup",
            target_id = prelude.Boolean.id,
        }),
        replicationServersSecurityGroupsIDs = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "replicationServersSecurityGroupsIDs"),
            type = "list",
            name = "replicationServersSecurityGroupsIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        replicationServerInstanceType = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "replicationServerInstanceType"),
            type = "string",
            name = "replicationServerInstanceType",
            target_id = prelude.String.id,
        }),
        useDedicatedReplicationServer = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "useDedicatedReplicationServer"),
            type = "boolean",
            name = "useDedicatedReplicationServer",
            target_id = prelude.Boolean.id,
        }),
        defaultLargeStagingDiskType = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "defaultLargeStagingDiskType"),
            type = "string",
            name = "defaultLargeStagingDiskType",
            target_id = prelude.String.id,
        }),
        ebsEncryption = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "ebsEncryption"),
            type = "string",
            name = "ebsEncryption",
            target_id = prelude.String.id,
        }),
        ebsEncryptionKeyArn = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "ebsEncryptionKeyArn"),
            type = "string",
            name = "ebsEncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        bandwidthThrottling = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "bandwidthThrottling"),
            type = "long",
            name = "bandwidthThrottling",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        dataPlaneRouting = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "dataPlaneRouting"),
            type = "string",
            name = "dataPlaneRouting",
            target_id = prelude.String.id,
        }),
        createPublicIP = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "createPublicIP"),
            type = "boolean",
            name = "createPublicIP",
            target_id = prelude.Boolean.id,
        }),
        stagingAreaTags = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "stagingAreaTags"),
            type = "map",
            name = "stagingAreaTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        useFipsEndpoint = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "useFipsEndpoint"),
            type = "boolean",
            name = "useFipsEndpoint",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
        }),
        storeSnapshotOnLocalZone = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "storeSnapshotOnLocalZone"),
            type = "boolean",
            name = "storeSnapshotOnLocalZone",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateReplicationConfigurationTemplateOutput = schema.new({
    id = id.from(_N, "ReplicationConfigurationTemplate"),
    type = "structure",
    members = {
        replicationConfigurationTemplateID = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "replicationConfigurationTemplateID"),
            type = "string",
            name = "replicationConfigurationTemplateID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        stagingAreaSubnetId = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "stagingAreaSubnetId"),
            type = "string",
            name = "stagingAreaSubnetId",
            target_id = prelude.String.id,
        }),
        associateDefaultSecurityGroup = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "associateDefaultSecurityGroup"),
            type = "boolean",
            name = "associateDefaultSecurityGroup",
            target_id = prelude.Boolean.id,
        }),
        replicationServersSecurityGroupsIDs = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "replicationServersSecurityGroupsIDs"),
            type = "list",
            name = "replicationServersSecurityGroupsIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        replicationServerInstanceType = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "replicationServerInstanceType"),
            type = "string",
            name = "replicationServerInstanceType",
            target_id = prelude.String.id,
        }),
        useDedicatedReplicationServer = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "useDedicatedReplicationServer"),
            type = "boolean",
            name = "useDedicatedReplicationServer",
            target_id = prelude.Boolean.id,
        }),
        defaultLargeStagingDiskType = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "defaultLargeStagingDiskType"),
            type = "string",
            name = "defaultLargeStagingDiskType",
            target_id = prelude.String.id,
        }),
        ebsEncryption = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "ebsEncryption"),
            type = "string",
            name = "ebsEncryption",
            target_id = prelude.String.id,
        }),
        ebsEncryptionKeyArn = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "ebsEncryptionKeyArn"),
            type = "string",
            name = "ebsEncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        bandwidthThrottling = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "bandwidthThrottling"),
            type = "long",
            name = "bandwidthThrottling",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        dataPlaneRouting = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "dataPlaneRouting"),
            type = "string",
            name = "dataPlaneRouting",
            target_id = prelude.String.id,
        }),
        createPublicIP = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "createPublicIP"),
            type = "boolean",
            name = "createPublicIP",
            target_id = prelude.Boolean.id,
        }),
        stagingAreaTags = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "stagingAreaTags"),
            type = "map",
            name = "stagingAreaTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        useFipsEndpoint = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "useFipsEndpoint"),
            type = "boolean",
            name = "useFipsEndpoint",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
        }),
        storeSnapshotOnLocalZone = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "storeSnapshotOnLocalZone"),
            type = "boolean",
            name = "storeSnapshotOnLocalZone",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ChangeServerLifeCycleStateSourceServerLifecycle = schema.new({
    id = id.from(_N, "ChangeServerLifeCycleStateSourceServerLifecycle"),
    type = "structure",
    members = {
        state = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateSourceServerLifecycle", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChangeServerLifeCycleStateInput = schema.new({
    id = id.from(_N, "ChangeServerLifeCycleStateRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateInput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "ChangeServerLifeCycleStateSourceServerLifecycle"),
            target = M.ChangeServerLifeCycleStateSourceServerLifecycle,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceServerConnectorAction = schema.new({
    id = id.from(_N, "SourceServerConnectorAction"),
    type = "structure",
    members = {
        credentialsSecretArn = schema.new({
            id = id.from(_N, "SourceServerConnectorAction", "credentialsSecretArn"),
            type = "string",
            name = "credentialsSecretArn",
            target_id = prelude.String.id,
        }),
        connectorArn = schema.new({
            id = id.from(_N, "SourceServerConnectorAction", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DataReplicationError = schema.new({
    id = id.from(_N, "DataReplicationError"),
    type = "structure",
    members = {
        error = schema.new({
            id = id.from(_N, "DataReplicationError", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        rawError = schema.new({
            id = id.from(_N, "DataReplicationError", "rawError"),
            type = "string",
            name = "rawError",
            target_id = prelude.String.id,
        }),
    },
})

M.DataReplicationInitiationStep = schema.new({
    id = id.from(_N, "DataReplicationInitiationStep"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DataReplicationInitiationStep", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DataReplicationInitiationStep", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.DataReplicationInitiation = schema.new({
    id = id.from(_N, "DataReplicationInitiation"),
    type = "structure",
    members = {
        startDateTime = schema.new({
            id = id.from(_N, "DataReplicationInitiation", "startDateTime"),
            type = "string",
            name = "startDateTime",
            target_id = prelude.String.id,
        }),
        nextAttemptDateTime = schema.new({
            id = id.from(_N, "DataReplicationInitiation", "nextAttemptDateTime"),
            type = "string",
            name = "nextAttemptDateTime",
            target_id = prelude.String.id,
        }),
        steps = schema.new({
            id = id.from(_N, "DataReplicationInitiation", "steps"),
            type = "list",
            name = "steps",
            target_id = prelude.Document.id,
            list_member = M.DataReplicationInitiationStep,
        }),
    },
})

M.DataReplicationInfoReplicatedDisk = schema.new({
    id = id.from(_N, "DataReplicationInfoReplicatedDisk"),
    type = "structure",
    members = {
        deviceName = schema.new({
            id = id.from(_N, "DataReplicationInfoReplicatedDisk", "deviceName"),
            type = "string",
            name = "deviceName",
            target_id = prelude.String.id,
        }),
        totalStorageBytes = schema.new({
            id = id.from(_N, "DataReplicationInfoReplicatedDisk", "totalStorageBytes"),
            type = "long",
            name = "totalStorageBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        replicatedStorageBytes = schema.new({
            id = id.from(_N, "DataReplicationInfoReplicatedDisk", "replicatedStorageBytes"),
            type = "long",
            name = "replicatedStorageBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        rescannedStorageBytes = schema.new({
            id = id.from(_N, "DataReplicationInfoReplicatedDisk", "rescannedStorageBytes"),
            type = "long",
            name = "rescannedStorageBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        backloggedStorageBytes = schema.new({
            id = id.from(_N, "DataReplicationInfoReplicatedDisk", "backloggedStorageBytes"),
            type = "long",
            name = "backloggedStorageBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DataReplicationInfo = schema.new({
    id = id.from(_N, "DataReplicationInfo"),
    type = "structure",
    members = {
        lagDuration = schema.new({
            id = id.from(_N, "DataReplicationInfo", "lagDuration"),
            type = "string",
            name = "lagDuration",
            target_id = prelude.String.id,
        }),
        etaDateTime = schema.new({
            id = id.from(_N, "DataReplicationInfo", "etaDateTime"),
            type = "string",
            name = "etaDateTime",
            target_id = prelude.String.id,
        }),
        replicatedDisks = schema.new({
            id = id.from(_N, "DataReplicationInfo", "replicatedDisks"),
            type = "list",
            name = "replicatedDisks",
            target_id = prelude.Document.id,
            list_member = M.DataReplicationInfoReplicatedDisk,
        }),
        dataReplicationState = schema.new({
            id = id.from(_N, "DataReplicationInfo", "dataReplicationState"),
            type = "string",
            name = "dataReplicationState",
            target_id = prelude.String.id,
        }),
        dataReplicationInitiation = schema.new({
            id = id.from(_N, "DataReplicationInfo", "dataReplicationInitiation"),
            type = "structure",
            name = "dataReplicationInitiation",
            target_id = id.from(_N, "DataReplicationInitiation"),
            target = M.DataReplicationInitiation,
        }),
        dataReplicationError = schema.new({
            id = id.from(_N, "DataReplicationInfo", "dataReplicationError"),
            type = "structure",
            name = "dataReplicationError",
            target_id = id.from(_N, "DataReplicationError"),
            target = M.DataReplicationError,
        }),
        lastSnapshotDateTime = schema.new({
            id = id.from(_N, "DataReplicationInfo", "lastSnapshotDateTime"),
            type = "string",
            name = "lastSnapshotDateTime",
            target_id = prelude.String.id,
        }),
        replicatorId = schema.new({
            id = id.from(_N, "DataReplicationInfo", "replicatorId"),
            type = "string",
            name = "replicatorId",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchedInstance = schema.new({
    id = id.from(_N, "LaunchedInstance"),
    type = "structure",
    members = {
        ec2InstanceID = schema.new({
            id = id.from(_N, "LaunchedInstance", "ec2InstanceID"),
            type = "string",
            name = "ec2InstanceID",
            target_id = prelude.String.id,
        }),
        jobID = schema.new({
            id = id.from(_N, "LaunchedInstance", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        firstBoot = schema.new({
            id = id.from(_N, "LaunchedInstance", "firstBoot"),
            type = "string",
            name = "firstBoot",
            target_id = prelude.String.id,
        }),
    },
})

M.LifeCycleLastCutoverFinalized = schema.new({
    id = id.from(_N, "LifeCycleLastCutoverFinalized"),
    type = "structure",
    members = {
        apiCallDateTime = schema.new({
            id = id.from(_N, "LifeCycleLastCutoverFinalized", "apiCallDateTime"),
            type = "string",
            name = "apiCallDateTime",
            target_id = prelude.String.id,
        }),
    },
})

M.LifeCycleLastCutoverInitiated = schema.new({
    id = id.from(_N, "LifeCycleLastCutoverInitiated"),
    type = "structure",
    members = {
        apiCallDateTime = schema.new({
            id = id.from(_N, "LifeCycleLastCutoverInitiated", "apiCallDateTime"),
            type = "string",
            name = "apiCallDateTime",
            target_id = prelude.String.id,
        }),
        jobID = schema.new({
            id = id.from(_N, "LifeCycleLastCutoverInitiated", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
    },
})

M.LifeCycleLastCutoverReverted = schema.new({
    id = id.from(_N, "LifeCycleLastCutoverReverted"),
    type = "structure",
    members = {
        apiCallDateTime = schema.new({
            id = id.from(_N, "LifeCycleLastCutoverReverted", "apiCallDateTime"),
            type = "string",
            name = "apiCallDateTime",
            target_id = prelude.String.id,
        }),
    },
})

M.LifeCycleLastCutover = schema.new({
    id = id.from(_N, "LifeCycleLastCutover"),
    type = "structure",
    members = {
        initiated = schema.new({
            id = id.from(_N, "LifeCycleLastCutover", "initiated"),
            type = "structure",
            name = "initiated",
            target_id = id.from(_N, "LifeCycleLastCutoverInitiated"),
            target = M.LifeCycleLastCutoverInitiated,
        }),
        reverted = schema.new({
            id = id.from(_N, "LifeCycleLastCutover", "reverted"),
            type = "structure",
            name = "reverted",
            target_id = id.from(_N, "LifeCycleLastCutoverReverted"),
            target = M.LifeCycleLastCutoverReverted,
        }),
        finalized = schema.new({
            id = id.from(_N, "LifeCycleLastCutover", "finalized"),
            type = "structure",
            name = "finalized",
            target_id = id.from(_N, "LifeCycleLastCutoverFinalized"),
            target = M.LifeCycleLastCutoverFinalized,
        }),
    },
})

M.LifeCycleLastTestFinalized = schema.new({
    id = id.from(_N, "LifeCycleLastTestFinalized"),
    type = "structure",
    members = {
        apiCallDateTime = schema.new({
            id = id.from(_N, "LifeCycleLastTestFinalized", "apiCallDateTime"),
            type = "string",
            name = "apiCallDateTime",
            target_id = prelude.String.id,
        }),
    },
})

M.LifeCycleLastTestInitiated = schema.new({
    id = id.from(_N, "LifeCycleLastTestInitiated"),
    type = "structure",
    members = {
        apiCallDateTime = schema.new({
            id = id.from(_N, "LifeCycleLastTestInitiated", "apiCallDateTime"),
            type = "string",
            name = "apiCallDateTime",
            target_id = prelude.String.id,
        }),
        jobID = schema.new({
            id = id.from(_N, "LifeCycleLastTestInitiated", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
    },
})

M.LifeCycleLastTestReverted = schema.new({
    id = id.from(_N, "LifeCycleLastTestReverted"),
    type = "structure",
    members = {
        apiCallDateTime = schema.new({
            id = id.from(_N, "LifeCycleLastTestReverted", "apiCallDateTime"),
            type = "string",
            name = "apiCallDateTime",
            target_id = prelude.String.id,
        }),
    },
})

M.LifeCycleLastTest = schema.new({
    id = id.from(_N, "LifeCycleLastTest"),
    type = "structure",
    members = {
        initiated = schema.new({
            id = id.from(_N, "LifeCycleLastTest", "initiated"),
            type = "structure",
            name = "initiated",
            target_id = id.from(_N, "LifeCycleLastTestInitiated"),
            target = M.LifeCycleLastTestInitiated,
        }),
        reverted = schema.new({
            id = id.from(_N, "LifeCycleLastTest", "reverted"),
            type = "structure",
            name = "reverted",
            target_id = id.from(_N, "LifeCycleLastTestReverted"),
            target = M.LifeCycleLastTestReverted,
        }),
        finalized = schema.new({
            id = id.from(_N, "LifeCycleLastTest", "finalized"),
            type = "structure",
            name = "finalized",
            target_id = id.from(_N, "LifeCycleLastTestFinalized"),
            target = M.LifeCycleLastTestFinalized,
        }),
    },
})

M.LifeCycle = schema.new({
    id = id.from(_N, "LifeCycle"),
    type = "structure",
    members = {
        addedToServiceDateTime = schema.new({
            id = id.from(_N, "LifeCycle", "addedToServiceDateTime"),
            type = "string",
            name = "addedToServiceDateTime",
            target_id = prelude.String.id,
        }),
        firstByteDateTime = schema.new({
            id = id.from(_N, "LifeCycle", "firstByteDateTime"),
            type = "string",
            name = "firstByteDateTime",
            target_id = prelude.String.id,
        }),
        elapsedReplicationDuration = schema.new({
            id = id.from(_N, "LifeCycle", "elapsedReplicationDuration"),
            type = "string",
            name = "elapsedReplicationDuration",
            target_id = prelude.String.id,
        }),
        lastSeenByServiceDateTime = schema.new({
            id = id.from(_N, "LifeCycle", "lastSeenByServiceDateTime"),
            type = "string",
            name = "lastSeenByServiceDateTime",
            target_id = prelude.String.id,
        }),
        lastTest = schema.new({
            id = id.from(_N, "LifeCycle", "lastTest"),
            type = "structure",
            name = "lastTest",
            target_id = id.from(_N, "LifeCycleLastTest"),
            target = M.LifeCycleLastTest,
        }),
        lastCutover = schema.new({
            id = id.from(_N, "LifeCycle", "lastCutover"),
            type = "structure",
            name = "lastCutover",
            target_id = id.from(_N, "LifeCycleLastCutover"),
            target = M.LifeCycleLastCutover,
        }),
        state = schema.new({
            id = id.from(_N, "LifeCycle", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
    },
})

M.CPU = schema.new({
    id = id.from(_N, "CPU"),
    type = "structure",
    members = {
        cores = schema.new({
            id = id.from(_N, "CPU", "cores"),
            type = "long",
            name = "cores",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        modelName = schema.new({
            id = id.from(_N, "CPU", "modelName"),
            type = "string",
            name = "modelName",
            target_id = prelude.String.id,
        }),
    },
})

M.Disk = schema.new({
    id = id.from(_N, "Disk"),
    type = "structure",
    members = {
        deviceName = schema.new({
            id = id.from(_N, "Disk", "deviceName"),
            type = "string",
            name = "deviceName",
            target_id = prelude.String.id,
        }),
        bytes = schema.new({
            id = id.from(_N, "Disk", "bytes"),
            type = "long",
            name = "bytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.IdentificationHints = schema.new({
    id = id.from(_N, "IdentificationHints"),
    type = "structure",
    members = {
        fqdn = schema.new({
            id = id.from(_N, "IdentificationHints", "fqdn"),
            type = "string",
            name = "fqdn",
            target_id = prelude.String.id,
        }),
        hostname = schema.new({
            id = id.from(_N, "IdentificationHints", "hostname"),
            type = "string",
            name = "hostname",
            target_id = prelude.String.id,
        }),
        vmWareUuid = schema.new({
            id = id.from(_N, "IdentificationHints", "vmWareUuid"),
            type = "string",
            name = "vmWareUuid",
            target_id = prelude.String.id,
        }),
        awsInstanceID = schema.new({
            id = id.from(_N, "IdentificationHints", "awsInstanceID"),
            type = "string",
            name = "awsInstanceID",
            target_id = prelude.String.id,
        }),
        vmPath = schema.new({
            id = id.from(_N, "IdentificationHints", "vmPath"),
            type = "string",
            name = "vmPath",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkInterface = schema.new({
    id = id.from(_N, "NetworkInterface"),
    type = "structure",
    members = {
        macAddress = schema.new({
            id = id.from(_N, "NetworkInterface", "macAddress"),
            type = "string",
            name = "macAddress",
            target_id = prelude.String.id,
        }),
        ips = schema.new({
            id = id.from(_N, "NetworkInterface", "ips"),
            type = "list",
            name = "ips",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        isPrimary = schema.new({
            id = id.from(_N, "NetworkInterface", "isPrimary"),
            type = "boolean",
            name = "isPrimary",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.OS = schema.new({
    id = id.from(_N, "OS"),
    type = "structure",
    members = {
        fullString = schema.new({
            id = id.from(_N, "OS", "fullString"),
            type = "string",
            name = "fullString",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceProperties = schema.new({
    id = id.from(_N, "SourceProperties"),
    type = "structure",
    members = {
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "SourceProperties", "lastUpdatedDateTime"),
            type = "string",
            name = "lastUpdatedDateTime",
            target_id = prelude.String.id,
        }),
        recommendedInstanceType = schema.new({
            id = id.from(_N, "SourceProperties", "recommendedInstanceType"),
            type = "string",
            name = "recommendedInstanceType",
            target_id = prelude.String.id,
        }),
        identificationHints = schema.new({
            id = id.from(_N, "SourceProperties", "identificationHints"),
            type = "structure",
            name = "identificationHints",
            target_id = id.from(_N, "IdentificationHints"),
            target = M.IdentificationHints,
        }),
        networkInterfaces = schema.new({
            id = id.from(_N, "SourceProperties", "networkInterfaces"),
            type = "list",
            name = "networkInterfaces",
            target_id = prelude.Document.id,
            list_member = M.NetworkInterface,
        }),
        disks = schema.new({
            id = id.from(_N, "SourceProperties", "disks"),
            type = "list",
            name = "disks",
            target_id = prelude.Document.id,
            list_member = M.Disk,
        }),
        cpus = schema.new({
            id = id.from(_N, "SourceProperties", "cpus"),
            type = "list",
            name = "cpus",
            target_id = prelude.Document.id,
            list_member = M.CPU,
        }),
        ramBytes = schema.new({
            id = id.from(_N, "SourceProperties", "ramBytes"),
            type = "long",
            name = "ramBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        os = schema.new({
            id = id.from(_N, "SourceProperties", "os"),
            type = "structure",
            name = "os",
            target_id = id.from(_N, "OS"),
            target = M.OS,
        }),
    },
})

M.ChangeServerLifeCycleStateOutput = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchedInstance = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "launchedInstance"),
            type = "structure",
            name = "launchedInstance",
            target_id = id.from(_N, "LaunchedInstance"),
            target = M.LaunchedInstance,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        replicationType = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
        }),
        vcenterClientID = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        userProvidedID = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "userProvidedID"),
            type = "string",
            name = "userProvidedID",
            target_id = prelude.String.id,
        }),
        fqdnForActionFramework = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "fqdnForActionFramework"),
            type = "string",
            name = "fqdnForActionFramework",
            target_id = prelude.String.id,
        }),
        connectorAction = schema.new({
            id = id.from(_N, "ChangeServerLifeCycleStateOutput", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.DeleteSourceServerInput = schema.new({
    id = id.from(_N, "DeleteSourceServerRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "DeleteSourceServerInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "DeleteSourceServerInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteSourceServerOutput = schema.new({
    id = id.from(_N, "DeleteSourceServerResponse"),
    type = "structure",
})

M.DescribeSourceServersRequestFilters = schema.new({
    id = id.from(_N, "DescribeSourceServersRequestFilters"),
    type = "structure",
    members = {
        sourceServerIDs = schema.new({
            id = id.from(_N, "DescribeSourceServersRequestFilters", "sourceServerIDs"),
            type = "list",
            name = "sourceServerIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        isArchived = schema.new({
            id = id.from(_N, "DescribeSourceServersRequestFilters", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        replicationTypes = schema.new({
            id = id.from(_N, "DescribeSourceServersRequestFilters", "replicationTypes"),
            type = "list",
            name = "replicationTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        lifeCycleStates = schema.new({
            id = id.from(_N, "DescribeSourceServersRequestFilters", "lifeCycleStates"),
            type = "list",
            name = "lifeCycleStates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        applicationIDs = schema.new({
            id = id.from(_N, "DescribeSourceServersRequestFilters", "applicationIDs"),
            type = "list",
            name = "applicationIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeSourceServersInput = schema.new({
    id = id.from(_N, "DescribeSourceServersRequest"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "DescribeSourceServersInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "DescribeSourceServersRequestFilters"),
            target = M.DescribeSourceServersRequestFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeSourceServersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeSourceServersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        accountID = schema.new({
            id = id.from(_N, "DescribeSourceServersInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceServer = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "SourceServer", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "SourceServer", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "SourceServer", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "SourceServer", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchedInstance = schema.new({
            id = id.from(_N, "SourceServer", "launchedInstance"),
            type = "structure",
            name = "launchedInstance",
            target_id = id.from(_N, "LaunchedInstance"),
            target = M.LaunchedInstance,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "SourceServer", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "SourceServer", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "SourceServer", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        replicationType = schema.new({
            id = id.from(_N, "SourceServer", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
        }),
        vcenterClientID = schema.new({
            id = id.from(_N, "SourceServer", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "SourceServer", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        userProvidedID = schema.new({
            id = id.from(_N, "SourceServer", "userProvidedID"),
            type = "string",
            name = "userProvidedID",
            target_id = prelude.String.id,
        }),
        fqdnForActionFramework = schema.new({
            id = id.from(_N, "SourceServer", "fqdnForActionFramework"),
            type = "string",
            name = "fqdnForActionFramework",
            target_id = prelude.String.id,
        }),
        connectorAction = schema.new({
            id = id.from(_N, "SourceServer", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.DescribeSourceServersOutput = schema.new({
    id = id.from(_N, "DescribeSourceServersResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "DescribeSourceServersOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.SourceServer,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeSourceServersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DisconnectFromServiceInput = schema.new({
    id = id.from(_N, "DisconnectFromServiceRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "DisconnectFromServiceInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "DisconnectFromServiceInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.DisconnectFromServiceOutput = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchedInstance = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "launchedInstance"),
            type = "structure",
            name = "launchedInstance",
            target_id = id.from(_N, "LaunchedInstance"),
            target = M.LaunchedInstance,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        replicationType = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
        }),
        vcenterClientID = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        userProvidedID = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "userProvidedID"),
            type = "string",
            name = "userProvidedID",
            target_id = prelude.String.id,
        }),
        fqdnForActionFramework = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "fqdnForActionFramework"),
            type = "string",
            name = "fqdnForActionFramework",
            target_id = prelude.String.id,
        }),
        connectorAction = schema.new({
            id = id.from(_N, "DisconnectFromServiceOutput", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.FinalizeCutoverInput = schema.new({
    id = id.from(_N, "FinalizeCutoverRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "FinalizeCutoverInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "FinalizeCutoverInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.FinalizeCutoverOutput = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchedInstance = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "launchedInstance"),
            type = "structure",
            name = "launchedInstance",
            target_id = id.from(_N, "LaunchedInstance"),
            target = M.LaunchedInstance,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        replicationType = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
        }),
        vcenterClientID = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        userProvidedID = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "userProvidedID"),
            type = "string",
            name = "userProvidedID",
            target_id = prelude.String.id,
        }),
        fqdnForActionFramework = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "fqdnForActionFramework"),
            type = "string",
            name = "fqdnForActionFramework",
            target_id = prelude.String.id,
        }),
        connectorAction = schema.new({
            id = id.from(_N, "FinalizeCutoverOutput", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.GetLaunchConfigurationInput = schema.new({
    id = id.from(_N, "GetLaunchConfigurationRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "GetLaunchConfigurationInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "GetLaunchConfigurationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.GetLaunchConfigurationOutput = schema.new({
    id = id.from(_N, "LaunchConfiguration"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        ec2LaunchTemplateID = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "ec2LaunchTemplateID"),
            type = "string",
            name = "ec2LaunchTemplateID",
            target_id = prelude.String.id,
        }),
        launchDisposition = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "launchDisposition"),
            type = "string",
            name = "launchDisposition",
            target_id = prelude.String.id,
        }),
        targetInstanceTypeRightSizingMethod = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "targetInstanceTypeRightSizingMethod"),
            type = "string",
            name = "targetInstanceTypeRightSizingMethod",
            target_id = prelude.String.id,
        }),
        copyPrivateIp = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "copyPrivateIp"),
            type = "boolean",
            name = "copyPrivateIp",
            target_id = prelude.Boolean.id,
        }),
        copyTags = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "copyTags"),
            type = "boolean",
            name = "copyTags",
            target_id = prelude.Boolean.id,
        }),
        licensing = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "licensing"),
            type = "structure",
            name = "licensing",
            target_id = id.from(_N, "Licensing"),
            target = M.Licensing,
        }),
        bootMode = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "bootMode"),
            type = "string",
            name = "bootMode",
            target_id = prelude.String.id,
        }),
        postLaunchActions = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "postLaunchActions"),
            type = "structure",
            name = "postLaunchActions",
            target_id = id.from(_N, "PostLaunchActions"),
            target = M.PostLaunchActions,
        }),
        enableMapAutoTagging = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "enableMapAutoTagging"),
            type = "boolean",
            name = "enableMapAutoTagging",
            target_id = prelude.Boolean.id,
        }),
        mapAutoTaggingMpeID = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "mapAutoTaggingMpeID"),
            type = "string",
            name = "mapAutoTaggingMpeID",
            target_id = prelude.String.id,
        }),
    },
})

M.GetReplicationConfigurationInput = schema.new({
    id = id.from(_N, "GetReplicationConfigurationRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "GetReplicationConfigurationInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "GetReplicationConfigurationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationConfigurationReplicatedDisk = schema.new({
    id = id.from(_N, "ReplicationConfigurationReplicatedDisk"),
    type = "structure",
    members = {
        deviceName = schema.new({
            id = id.from(_N, "ReplicationConfigurationReplicatedDisk", "deviceName"),
            type = "string",
            name = "deviceName",
            target_id = prelude.String.id,
        }),
        isBootDisk = schema.new({
            id = id.from(_N, "ReplicationConfigurationReplicatedDisk", "isBootDisk"),
            type = "boolean",
            name = "isBootDisk",
            target_id = prelude.Boolean.id,
        }),
        stagingDiskType = schema.new({
            id = id.from(_N, "ReplicationConfigurationReplicatedDisk", "stagingDiskType"),
            type = "string",
            name = "stagingDiskType",
            target_id = prelude.String.id,
        }),
        iops = schema.new({
            id = id.from(_N, "ReplicationConfigurationReplicatedDisk", "iops"),
            type = "long",
            name = "iops",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        throughput = schema.new({
            id = id.from(_N, "ReplicationConfigurationReplicatedDisk", "throughput"),
            type = "long",
            name = "throughput",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.GetReplicationConfigurationOutput = schema.new({
    id = id.from(_N, "ReplicationConfiguration"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        stagingAreaSubnetId = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "stagingAreaSubnetId"),
            type = "string",
            name = "stagingAreaSubnetId",
            target_id = prelude.String.id,
        }),
        associateDefaultSecurityGroup = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "associateDefaultSecurityGroup"),
            type = "boolean",
            name = "associateDefaultSecurityGroup",
            target_id = prelude.Boolean.id,
        }),
        replicationServersSecurityGroupsIDs = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "replicationServersSecurityGroupsIDs"),
            type = "list",
            name = "replicationServersSecurityGroupsIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        replicationServerInstanceType = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "replicationServerInstanceType"),
            type = "string",
            name = "replicationServerInstanceType",
            target_id = prelude.String.id,
        }),
        useDedicatedReplicationServer = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "useDedicatedReplicationServer"),
            type = "boolean",
            name = "useDedicatedReplicationServer",
            target_id = prelude.Boolean.id,
        }),
        defaultLargeStagingDiskType = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "defaultLargeStagingDiskType"),
            type = "string",
            name = "defaultLargeStagingDiskType",
            target_id = prelude.String.id,
        }),
        replicatedDisks = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "replicatedDisks"),
            type = "list",
            name = "replicatedDisks",
            target_id = prelude.Document.id,
            list_member = M.ReplicationConfigurationReplicatedDisk,
        }),
        ebsEncryption = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "ebsEncryption"),
            type = "string",
            name = "ebsEncryption",
            target_id = prelude.String.id,
        }),
        ebsEncryptionKeyArn = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "ebsEncryptionKeyArn"),
            type = "string",
            name = "ebsEncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        bandwidthThrottling = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "bandwidthThrottling"),
            type = "long",
            name = "bandwidthThrottling",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        dataPlaneRouting = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "dataPlaneRouting"),
            type = "string",
            name = "dataPlaneRouting",
            target_id = prelude.String.id,
        }),
        createPublicIP = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "createPublicIP"),
            type = "boolean",
            name = "createPublicIP",
            target_id = prelude.Boolean.id,
        }),
        stagingAreaTags = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "stagingAreaTags"),
            type = "map",
            name = "stagingAreaTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        useFipsEndpoint = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "useFipsEndpoint"),
            type = "boolean",
            name = "useFipsEndpoint",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
        }),
        storeSnapshotOnLocalZone = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "storeSnapshotOnLocalZone"),
            type = "boolean",
            name = "storeSnapshotOnLocalZone",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.SourceServerActionsRequestFilters = schema.new({
    id = id.from(_N, "SourceServerActionsRequestFilters"),
    type = "structure",
    members = {
        actionIDs = schema.new({
            id = id.from(_N, "SourceServerActionsRequestFilters", "actionIDs"),
            type = "list",
            name = "actionIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListSourceServerActionsInput = schema.new({
    id = id.from(_N, "ListSourceServerActionsRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "ListSourceServerActionsInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListSourceServerActionsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "SourceServerActionsRequestFilters"),
            target = M.SourceServerActionsRequestFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSourceServerActionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSourceServerActionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        accountID = schema.new({
            id = id.from(_N, "ListSourceServerActionsInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceServerActionDocument = schema.new({
    id = id.from(_N, "SourceServerActionDocument"),
    type = "structure",
    members = {
        actionID = schema.new({
            id = id.from(_N, "SourceServerActionDocument", "actionID"),
            type = "string",
            name = "actionID",
            target_id = prelude.String.id,
        }),
        actionName = schema.new({
            id = id.from(_N, "SourceServerActionDocument", "actionName"),
            type = "string",
            name = "actionName",
            target_id = prelude.String.id,
        }),
        documentIdentifier = schema.new({
            id = id.from(_N, "SourceServerActionDocument", "documentIdentifier"),
            type = "string",
            name = "documentIdentifier",
            target_id = prelude.String.id,
        }),
        order = schema.new({
            id = id.from(_N, "SourceServerActionDocument", "order"),
            type = "integer",
            name = "order",
            target_id = prelude.Integer.id,
        }),
        documentVersion = schema.new({
            id = id.from(_N, "SourceServerActionDocument", "documentVersion"),
            type = "string",
            name = "documentVersion",
            target_id = prelude.String.id,
        }),
        active = schema.new({
            id = id.from(_N, "SourceServerActionDocument", "active"),
            type = "boolean",
            name = "active",
            target_id = prelude.Boolean.id,
        }),
        timeoutSeconds = schema.new({
            id = id.from(_N, "SourceServerActionDocument", "timeoutSeconds"),
            type = "integer",
            name = "timeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        mustSucceedForCutover = schema.new({
            id = id.from(_N, "SourceServerActionDocument", "mustSucceedForCutover"),
            type = "boolean",
            name = "mustSucceedForCutover",
            target_id = prelude.Boolean.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "SourceServerActionDocument", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.SsmParameterStoreParameter }),
        }),
        externalParameters = schema.new({
            id = id.from(_N, "SourceServerActionDocument", "externalParameters"),
            type = "map",
            name = "externalParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.SsmExternalParameter,
        }),
        description = schema.new({
            id = id.from(_N, "SourceServerActionDocument", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "SourceServerActionDocument", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSourceServerActionsOutput = schema.new({
    id = id.from(_N, "ListSourceServerActionsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListSourceServerActionsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.SourceServerActionDocument,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSourceServerActionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MarkAsArchivedInput = schema.new({
    id = id.from(_N, "MarkAsArchivedRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "MarkAsArchivedInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "MarkAsArchivedInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.MarkAsArchivedOutput = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchedInstance = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "launchedInstance"),
            type = "structure",
            name = "launchedInstance",
            target_id = id.from(_N, "LaunchedInstance"),
            target = M.LaunchedInstance,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        replicationType = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
        }),
        vcenterClientID = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        userProvidedID = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "userProvidedID"),
            type = "string",
            name = "userProvidedID",
            target_id = prelude.String.id,
        }),
        fqdnForActionFramework = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "fqdnForActionFramework"),
            type = "string",
            name = "fqdnForActionFramework",
            target_id = prelude.String.id,
        }),
        connectorAction = schema.new({
            id = id.from(_N, "MarkAsArchivedOutput", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.PauseReplicationInput = schema.new({
    id = id.from(_N, "PauseReplicationRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "PauseReplicationInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "PauseReplicationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.PauseReplicationOutput = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchedInstance = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "launchedInstance"),
            type = "structure",
            name = "launchedInstance",
            target_id = id.from(_N, "LaunchedInstance"),
            target = M.LaunchedInstance,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        replicationType = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
        }),
        vcenterClientID = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        userProvidedID = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "userProvidedID"),
            type = "string",
            name = "userProvidedID",
            target_id = prelude.String.id,
        }),
        fqdnForActionFramework = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "fqdnForActionFramework"),
            type = "string",
            name = "fqdnForActionFramework",
            target_id = prelude.String.id,
        }),
        connectorAction = schema.new({
            id = id.from(_N, "PauseReplicationOutput", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.PutSourceServerActionInput = schema.new({
    id = id.from(_N, "PutSourceServerActionRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionName = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "actionName"),
            type = "string",
            name = "actionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        documentIdentifier = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "documentIdentifier"),
            type = "string",
            name = "documentIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        order = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "order"),
            type = "integer",
            name = "order",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionID = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "actionID"),
            type = "string",
            name = "actionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        documentVersion = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "documentVersion"),
            type = "string",
            name = "documentVersion",
            target_id = prelude.String.id,
        }),
        active = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "active"),
            type = "boolean",
            name = "active",
            target_id = prelude.Boolean.id,
        }),
        timeoutSeconds = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "timeoutSeconds"),
            type = "integer",
            name = "timeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        mustSucceedForCutover = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "mustSucceedForCutover"),
            type = "boolean",
            name = "mustSucceedForCutover",
            target_id = prelude.Boolean.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.SsmParameterStoreParameter }),
        }),
        externalParameters = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "externalParameters"),
            type = "map",
            name = "externalParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.SsmExternalParameter,
        }),
        description = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
        accountID = schema.new({
            id = id.from(_N, "PutSourceServerActionInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.PutSourceServerActionOutput = schema.new({
    id = id.from(_N, "SourceServerActionDocument"),
    type = "structure",
    members = {
        actionID = schema.new({
            id = id.from(_N, "PutSourceServerActionOutput", "actionID"),
            type = "string",
            name = "actionID",
            target_id = prelude.String.id,
        }),
        actionName = schema.new({
            id = id.from(_N, "PutSourceServerActionOutput", "actionName"),
            type = "string",
            name = "actionName",
            target_id = prelude.String.id,
        }),
        documentIdentifier = schema.new({
            id = id.from(_N, "PutSourceServerActionOutput", "documentIdentifier"),
            type = "string",
            name = "documentIdentifier",
            target_id = prelude.String.id,
        }),
        order = schema.new({
            id = id.from(_N, "PutSourceServerActionOutput", "order"),
            type = "integer",
            name = "order",
            target_id = prelude.Integer.id,
        }),
        documentVersion = schema.new({
            id = id.from(_N, "PutSourceServerActionOutput", "documentVersion"),
            type = "string",
            name = "documentVersion",
            target_id = prelude.String.id,
        }),
        active = schema.new({
            id = id.from(_N, "PutSourceServerActionOutput", "active"),
            type = "boolean",
            name = "active",
            target_id = prelude.Boolean.id,
        }),
        timeoutSeconds = schema.new({
            id = id.from(_N, "PutSourceServerActionOutput", "timeoutSeconds"),
            type = "integer",
            name = "timeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        mustSucceedForCutover = schema.new({
            id = id.from(_N, "PutSourceServerActionOutput", "mustSucceedForCutover"),
            type = "boolean",
            name = "mustSucceedForCutover",
            target_id = prelude.Boolean.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "PutSourceServerActionOutput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.SsmParameterStoreParameter }),
        }),
        externalParameters = schema.new({
            id = id.from(_N, "PutSourceServerActionOutput", "externalParameters"),
            type = "map",
            name = "externalParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.SsmExternalParameter,
        }),
        description = schema.new({
            id = id.from(_N, "PutSourceServerActionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "PutSourceServerActionOutput", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
    },
})

M.RemoveSourceServerActionInput = schema.new({
    id = id.from(_N, "RemoveSourceServerActionRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "RemoveSourceServerActionInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionID = schema.new({
            id = id.from(_N, "RemoveSourceServerActionInput", "actionID"),
            type = "string",
            name = "actionID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "RemoveSourceServerActionInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.RemoveSourceServerActionOutput = schema.new({
    id = id.from(_N, "RemoveSourceServerActionResponse"),
    type = "structure",
})

M.ResumeReplicationInput = schema.new({
    id = id.from(_N, "ResumeReplicationRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "ResumeReplicationInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "ResumeReplicationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.ResumeReplicationOutput = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchedInstance = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "launchedInstance"),
            type = "structure",
            name = "launchedInstance",
            target_id = id.from(_N, "LaunchedInstance"),
            target = M.LaunchedInstance,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        replicationType = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
        }),
        vcenterClientID = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        userProvidedID = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "userProvidedID"),
            type = "string",
            name = "userProvidedID",
            target_id = prelude.String.id,
        }),
        fqdnForActionFramework = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "fqdnForActionFramework"),
            type = "string",
            name = "fqdnForActionFramework",
            target_id = prelude.String.id,
        }),
        connectorAction = schema.new({
            id = id.from(_N, "ResumeReplicationOutput", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.RetryDataReplicationInput = schema.new({
    id = id.from(_N, "RetryDataReplicationRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "RetryDataReplicationInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "RetryDataReplicationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.RetryDataReplicationOutput = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchedInstance = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "launchedInstance"),
            type = "structure",
            name = "launchedInstance",
            target_id = id.from(_N, "LaunchedInstance"),
            target = M.LaunchedInstance,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        replicationType = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
        }),
        vcenterClientID = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        userProvidedID = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "userProvidedID"),
            type = "string",
            name = "userProvidedID",
            target_id = prelude.String.id,
        }),
        fqdnForActionFramework = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "fqdnForActionFramework"),
            type = "string",
            name = "fqdnForActionFramework",
            target_id = prelude.String.id,
        }),
        connectorAction = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.StartCutoverInput = schema.new({
    id = id.from(_N, "StartCutoverRequest"),
    type = "structure",
    members = {
        sourceServerIDs = schema.new({
            id = id.from(_N, "StartCutoverInput", "sourceServerIDs"),
            type = "list",
            name = "sourceServerIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "StartCutoverInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        accountID = schema.new({
            id = id.from(_N, "StartCutoverInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.StartCutoverOutput = schema.new({
    id = id.from(_N, "StartCutoverResponse"),
    type = "structure",
    members = {
        job = schema.new({
            id = id.from(_N, "StartCutoverOutput", "job"),
            type = "structure",
            name = "job",
            target_id = id.from(_N, "Job"),
            target = M.Job,
        }),
    },
})

M.StartReplicationInput = schema.new({
    id = id.from(_N, "StartReplicationRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "StartReplicationInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "StartReplicationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.StartReplicationOutput = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "StartReplicationOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "StartReplicationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "StartReplicationOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "StartReplicationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchedInstance = schema.new({
            id = id.from(_N, "StartReplicationOutput", "launchedInstance"),
            type = "structure",
            name = "launchedInstance",
            target_id = id.from(_N, "LaunchedInstance"),
            target = M.LaunchedInstance,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "StartReplicationOutput", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "StartReplicationOutput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "StartReplicationOutput", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        replicationType = schema.new({
            id = id.from(_N, "StartReplicationOutput", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
        }),
        vcenterClientID = schema.new({
            id = id.from(_N, "StartReplicationOutput", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "StartReplicationOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        userProvidedID = schema.new({
            id = id.from(_N, "StartReplicationOutput", "userProvidedID"),
            type = "string",
            name = "userProvidedID",
            target_id = prelude.String.id,
        }),
        fqdnForActionFramework = schema.new({
            id = id.from(_N, "StartReplicationOutput", "fqdnForActionFramework"),
            type = "string",
            name = "fqdnForActionFramework",
            target_id = prelude.String.id,
        }),
        connectorAction = schema.new({
            id = id.from(_N, "StartReplicationOutput", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.StartTestInput = schema.new({
    id = id.from(_N, "StartTestRequest"),
    type = "structure",
    members = {
        sourceServerIDs = schema.new({
            id = id.from(_N, "StartTestInput", "sourceServerIDs"),
            type = "list",
            name = "sourceServerIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "StartTestInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        accountID = schema.new({
            id = id.from(_N, "StartTestInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.StartTestOutput = schema.new({
    id = id.from(_N, "StartTestResponse"),
    type = "structure",
    members = {
        job = schema.new({
            id = id.from(_N, "StartTestOutput", "job"),
            type = "structure",
            name = "job",
            target_id = id.from(_N, "Job"),
            target = M.Job,
        }),
    },
})

M.StopReplicationInput = schema.new({
    id = id.from(_N, "StopReplicationRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "StopReplicationInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "StopReplicationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.StopReplicationOutput = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "StopReplicationOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "StopReplicationOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "StopReplicationOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "StopReplicationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchedInstance = schema.new({
            id = id.from(_N, "StopReplicationOutput", "launchedInstance"),
            type = "structure",
            name = "launchedInstance",
            target_id = id.from(_N, "LaunchedInstance"),
            target = M.LaunchedInstance,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "StopReplicationOutput", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "StopReplicationOutput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "StopReplicationOutput", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        replicationType = schema.new({
            id = id.from(_N, "StopReplicationOutput", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
        }),
        vcenterClientID = schema.new({
            id = id.from(_N, "StopReplicationOutput", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "StopReplicationOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        userProvidedID = schema.new({
            id = id.from(_N, "StopReplicationOutput", "userProvidedID"),
            type = "string",
            name = "userProvidedID",
            target_id = prelude.String.id,
        }),
        fqdnForActionFramework = schema.new({
            id = id.from(_N, "StopReplicationOutput", "fqdnForActionFramework"),
            type = "string",
            name = "fqdnForActionFramework",
            target_id = prelude.String.id,
        }),
        connectorAction = schema.new({
            id = id.from(_N, "StopReplicationOutput", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.TerminateTargetInstancesInput = schema.new({
    id = id.from(_N, "TerminateTargetInstancesRequest"),
    type = "structure",
    members = {
        sourceServerIDs = schema.new({
            id = id.from(_N, "TerminateTargetInstancesInput", "sourceServerIDs"),
            type = "list",
            name = "sourceServerIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TerminateTargetInstancesInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        accountID = schema.new({
            id = id.from(_N, "TerminateTargetInstancesInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.TerminateTargetInstancesOutput = schema.new({
    id = id.from(_N, "TerminateTargetInstancesResponse"),
    type = "structure",
    members = {
        job = schema.new({
            id = id.from(_N, "TerminateTargetInstancesOutput", "job"),
            type = "structure",
            name = "job",
            target_id = id.from(_N, "Job"),
            target = M.Job,
        }),
    },
})

M.UpdateLaunchConfigurationInput = schema.new({
    id = id.from(_N, "UpdateLaunchConfigurationRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        launchDisposition = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "launchDisposition"),
            type = "string",
            name = "launchDisposition",
            target_id = prelude.String.id,
        }),
        targetInstanceTypeRightSizingMethod = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "targetInstanceTypeRightSizingMethod"),
            type = "string",
            name = "targetInstanceTypeRightSizingMethod",
            target_id = prelude.String.id,
        }),
        copyPrivateIp = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "copyPrivateIp"),
            type = "boolean",
            name = "copyPrivateIp",
            target_id = prelude.Boolean.id,
        }),
        copyTags = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "copyTags"),
            type = "boolean",
            name = "copyTags",
            target_id = prelude.Boolean.id,
        }),
        licensing = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "licensing"),
            type = "structure",
            name = "licensing",
            target_id = id.from(_N, "Licensing"),
            target = M.Licensing,
        }),
        bootMode = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "bootMode"),
            type = "string",
            name = "bootMode",
            target_id = prelude.String.id,
        }),
        postLaunchActions = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "postLaunchActions"),
            type = "structure",
            name = "postLaunchActions",
            target_id = id.from(_N, "PostLaunchActions"),
            target = M.PostLaunchActions,
        }),
        enableMapAutoTagging = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "enableMapAutoTagging"),
            type = "boolean",
            name = "enableMapAutoTagging",
            target_id = prelude.Boolean.id,
        }),
        mapAutoTaggingMpeID = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "mapAutoTaggingMpeID"),
            type = "string",
            name = "mapAutoTaggingMpeID",
            target_id = prelude.String.id,
        }),
        accountID = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateLaunchConfigurationOutput = schema.new({
    id = id.from(_N, "LaunchConfiguration"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        ec2LaunchTemplateID = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "ec2LaunchTemplateID"),
            type = "string",
            name = "ec2LaunchTemplateID",
            target_id = prelude.String.id,
        }),
        launchDisposition = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "launchDisposition"),
            type = "string",
            name = "launchDisposition",
            target_id = prelude.String.id,
        }),
        targetInstanceTypeRightSizingMethod = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "targetInstanceTypeRightSizingMethod"),
            type = "string",
            name = "targetInstanceTypeRightSizingMethod",
            target_id = prelude.String.id,
        }),
        copyPrivateIp = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "copyPrivateIp"),
            type = "boolean",
            name = "copyPrivateIp",
            target_id = prelude.Boolean.id,
        }),
        copyTags = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "copyTags"),
            type = "boolean",
            name = "copyTags",
            target_id = prelude.Boolean.id,
        }),
        licensing = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "licensing"),
            type = "structure",
            name = "licensing",
            target_id = id.from(_N, "Licensing"),
            target = M.Licensing,
        }),
        bootMode = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "bootMode"),
            type = "string",
            name = "bootMode",
            target_id = prelude.String.id,
        }),
        postLaunchActions = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "postLaunchActions"),
            type = "structure",
            name = "postLaunchActions",
            target_id = id.from(_N, "PostLaunchActions"),
            target = M.PostLaunchActions,
        }),
        enableMapAutoTagging = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "enableMapAutoTagging"),
            type = "boolean",
            name = "enableMapAutoTagging",
            target_id = prelude.Boolean.id,
        }),
        mapAutoTaggingMpeID = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "mapAutoTaggingMpeID"),
            type = "string",
            name = "mapAutoTaggingMpeID",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateReplicationConfigurationInput = schema.new({
    id = id.from(_N, "UpdateReplicationConfigurationRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        stagingAreaSubnetId = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "stagingAreaSubnetId"),
            type = "string",
            name = "stagingAreaSubnetId",
            target_id = prelude.String.id,
        }),
        associateDefaultSecurityGroup = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "associateDefaultSecurityGroup"),
            type = "boolean",
            name = "associateDefaultSecurityGroup",
            target_id = prelude.Boolean.id,
        }),
        replicationServersSecurityGroupsIDs = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "replicationServersSecurityGroupsIDs"),
            type = "list",
            name = "replicationServersSecurityGroupsIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        replicationServerInstanceType = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "replicationServerInstanceType"),
            type = "string",
            name = "replicationServerInstanceType",
            target_id = prelude.String.id,
        }),
        useDedicatedReplicationServer = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "useDedicatedReplicationServer"),
            type = "boolean",
            name = "useDedicatedReplicationServer",
            target_id = prelude.Boolean.id,
        }),
        defaultLargeStagingDiskType = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "defaultLargeStagingDiskType"),
            type = "string",
            name = "defaultLargeStagingDiskType",
            target_id = prelude.String.id,
        }),
        replicatedDisks = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "replicatedDisks"),
            type = "list",
            name = "replicatedDisks",
            target_id = prelude.Document.id,
            list_member = M.ReplicationConfigurationReplicatedDisk,
        }),
        ebsEncryption = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "ebsEncryption"),
            type = "string",
            name = "ebsEncryption",
            target_id = prelude.String.id,
        }),
        ebsEncryptionKeyArn = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "ebsEncryptionKeyArn"),
            type = "string",
            name = "ebsEncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        bandwidthThrottling = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "bandwidthThrottling"),
            type = "long",
            name = "bandwidthThrottling",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        dataPlaneRouting = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "dataPlaneRouting"),
            type = "string",
            name = "dataPlaneRouting",
            target_id = prelude.String.id,
        }),
        createPublicIP = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "createPublicIP"),
            type = "boolean",
            name = "createPublicIP",
            target_id = prelude.Boolean.id,
        }),
        stagingAreaTags = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "stagingAreaTags"),
            type = "map",
            name = "stagingAreaTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        useFipsEndpoint = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "useFipsEndpoint"),
            type = "boolean",
            name = "useFipsEndpoint",
            target_id = prelude.Boolean.id,
        }),
        accountID = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
        }),
        storeSnapshotOnLocalZone = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "storeSnapshotOnLocalZone"),
            type = "boolean",
            name = "storeSnapshotOnLocalZone",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateReplicationConfigurationOutput = schema.new({
    id = id.from(_N, "ReplicationConfiguration"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        stagingAreaSubnetId = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "stagingAreaSubnetId"),
            type = "string",
            name = "stagingAreaSubnetId",
            target_id = prelude.String.id,
        }),
        associateDefaultSecurityGroup = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "associateDefaultSecurityGroup"),
            type = "boolean",
            name = "associateDefaultSecurityGroup",
            target_id = prelude.Boolean.id,
        }),
        replicationServersSecurityGroupsIDs = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "replicationServersSecurityGroupsIDs"),
            type = "list",
            name = "replicationServersSecurityGroupsIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        replicationServerInstanceType = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "replicationServerInstanceType"),
            type = "string",
            name = "replicationServerInstanceType",
            target_id = prelude.String.id,
        }),
        useDedicatedReplicationServer = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "useDedicatedReplicationServer"),
            type = "boolean",
            name = "useDedicatedReplicationServer",
            target_id = prelude.Boolean.id,
        }),
        defaultLargeStagingDiskType = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "defaultLargeStagingDiskType"),
            type = "string",
            name = "defaultLargeStagingDiskType",
            target_id = prelude.String.id,
        }),
        replicatedDisks = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "replicatedDisks"),
            type = "list",
            name = "replicatedDisks",
            target_id = prelude.Document.id,
            list_member = M.ReplicationConfigurationReplicatedDisk,
        }),
        ebsEncryption = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "ebsEncryption"),
            type = "string",
            name = "ebsEncryption",
            target_id = prelude.String.id,
        }),
        ebsEncryptionKeyArn = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "ebsEncryptionKeyArn"),
            type = "string",
            name = "ebsEncryptionKeyArn",
            target_id = prelude.String.id,
        }),
        bandwidthThrottling = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "bandwidthThrottling"),
            type = "long",
            name = "bandwidthThrottling",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        dataPlaneRouting = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "dataPlaneRouting"),
            type = "string",
            name = "dataPlaneRouting",
            target_id = prelude.String.id,
        }),
        createPublicIP = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "createPublicIP"),
            type = "boolean",
            name = "createPublicIP",
            target_id = prelude.Boolean.id,
        }),
        stagingAreaTags = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "stagingAreaTags"),
            type = "map",
            name = "stagingAreaTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        useFipsEndpoint = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "useFipsEndpoint"),
            type = "boolean",
            name = "useFipsEndpoint",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
        }),
        storeSnapshotOnLocalZone = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "storeSnapshotOnLocalZone"),
            type = "boolean",
            name = "storeSnapshotOnLocalZone",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateSourceServerInput = schema.new({
    id = id.from(_N, "UpdateSourceServerRequest"),
    type = "structure",
    members = {
        accountID = schema.new({
            id = id.from(_N, "UpdateSourceServerInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
        sourceServerID = schema.new({
            id = id.from(_N, "UpdateSourceServerInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectorAction = schema.new({
            id = id.from(_N, "UpdateSourceServerInput", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.UpdateSourceServerOutput = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchedInstance = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "launchedInstance"),
            type = "structure",
            name = "launchedInstance",
            target_id = id.from(_N, "LaunchedInstance"),
            target = M.LaunchedInstance,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        replicationType = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
        }),
        vcenterClientID = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        userProvidedID = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "userProvidedID"),
            type = "string",
            name = "userProvidedID",
            target_id = prelude.String.id,
        }),
        fqdnForActionFramework = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "fqdnForActionFramework"),
            type = "string",
            name = "fqdnForActionFramework",
            target_id = prelude.String.id,
        }),
        connectorAction = schema.new({
            id = id.from(_N, "UpdateSourceServerOutput", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.UpdateSourceServerReplicationTypeInput = schema.new({
    id = id.from(_N, "UpdateSourceServerReplicationTypeRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        replicationType = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeInput", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateSourceServerReplicationTypeOutput = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        launchedInstance = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "launchedInstance"),
            type = "structure",
            name = "launchedInstance",
            target_id = id.from(_N, "LaunchedInstance"),
            target = M.LaunchedInstance,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        replicationType = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "replicationType"),
            type = "string",
            name = "replicationType",
            target_id = prelude.String.id,
        }),
        vcenterClientID = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        applicationID = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "applicationID"),
            type = "string",
            name = "applicationID",
            target_id = prelude.String.id,
        }),
        userProvidedID = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "userProvidedID"),
            type = "string",
            name = "userProvidedID",
            target_id = prelude.String.id,
        }),
        fqdnForActionFramework = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "fqdnForActionFramework"),
            type = "string",
            name = "fqdnForActionFramework",
            target_id = prelude.String.id,
        }),
        connectorAction = schema.new({
            id = id.from(_N, "UpdateSourceServerReplicationTypeOutput", "connectorAction"),
            type = "structure",
            name = "connectorAction",
            target_id = id.from(_N, "SourceServerConnectorAction"),
            target = M.SourceServerConnectorAction,
        }),
    },
})

M.EnrichmentSourceS3Configuration = schema.new({
    id = id.from(_N, "EnrichmentSourceS3Configuration"),
    type = "structure",
    members = {
        s3Bucket = schema.new({
            id = id.from(_N, "EnrichmentSourceS3Configuration", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3BucketOwner = schema.new({
            id = id.from(_N, "EnrichmentSourceS3Configuration", "s3BucketOwner"),
            type = "string",
            name = "s3BucketOwner",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3Key = schema.new({
            id = id.from(_N, "EnrichmentSourceS3Configuration", "s3Key"),
            type = "string",
            name = "s3Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartImportFileEnrichmentInput = schema.new({
    id = id.from(_N, "StartImportFileEnrichmentRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "StartImportFileEnrichmentInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        s3BucketSource = schema.new({
            id = id.from(_N, "StartImportFileEnrichmentInput", "s3BucketSource"),
            type = "structure",
            name = "s3BucketSource",
            target_id = id.from(_N, "EnrichmentSourceS3Configuration"),
            target = M.EnrichmentSourceS3Configuration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3BucketTarget = schema.new({
            id = id.from(_N, "StartImportFileEnrichmentInput", "s3BucketTarget"),
            type = "structure",
            name = "s3BucketTarget",
            target_id = id.from(_N, "EnrichmentTargetS3Configuration"),
            target = M.EnrichmentTargetS3Configuration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipAssignmentStrategy = schema.new({
            id = id.from(_N, "StartImportFileEnrichmentInput", "ipAssignmentStrategy"),
            type = "string",
            name = "ipAssignmentStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.StartImportFileEnrichmentOutput = schema.new({
    id = id.from(_N, "StartImportFileEnrichmentResponse"),
    type = "structure",
    members = {
        jobID = schema.new({
            id = id.from(_N, "StartImportFileEnrichmentOutput", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
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
    id = id.from(_N, "Unit"),
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
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeleteVcenterClientInput = schema.new({
    id = id.from(_N, "DeleteVcenterClientRequest"),
    type = "structure",
    members = {
        vcenterClientID = schema.new({
            id = id.from(_N, "DeleteVcenterClientInput", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVcenterClientOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DescribeVcenterClientsInput = schema.new({
    id = id.from(_N, "DescribeVcenterClientsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "DescribeVcenterClientsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeVcenterClientsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.VcenterClient = schema.new({
    id = id.from(_N, "VcenterClient"),
    type = "structure",
    members = {
        vcenterClientID = schema.new({
            id = id.from(_N, "VcenterClient", "vcenterClientID"),
            type = "string",
            name = "vcenterClientID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "VcenterClient", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        hostname = schema.new({
            id = id.from(_N, "VcenterClient", "hostname"),
            type = "string",
            name = "hostname",
            target_id = prelude.String.id,
        }),
        vcenterUUID = schema.new({
            id = id.from(_N, "VcenterClient", "vcenterUUID"),
            type = "string",
            name = "vcenterUUID",
            target_id = prelude.String.id,
        }),
        datacenterName = schema.new({
            id = id.from(_N, "VcenterClient", "datacenterName"),
            type = "string",
            name = "datacenterName",
            target_id = prelude.String.id,
        }),
        lastSeenDatetime = schema.new({
            id = id.from(_N, "VcenterClient", "lastSeenDatetime"),
            type = "string",
            name = "lastSeenDatetime",
            target_id = prelude.String.id,
        }),
        sourceServerTags = schema.new({
            id = id.from(_N, "VcenterClient", "sourceServerTags"),
            type = "map",
            name = "sourceServerTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "VcenterClient", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DescribeVcenterClientsOutput = schema.new({
    id = id.from(_N, "DescribeVcenterClientsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "DescribeVcenterClientsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.VcenterClient,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeVcenterClientsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ArchiveWaveInput = schema.new({
    id = id.from(_N, "ArchiveWaveRequest"),
    type = "structure",
    members = {
        waveID = schema.new({
            id = id.from(_N, "ArchiveWaveInput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "ArchiveWaveInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.WaveAggregatedStatus = schema.new({
    id = id.from(_N, "WaveAggregatedStatus"),
    type = "structure",
    members = {
        lastUpdateDateTime = schema.new({
            id = id.from(_N, "WaveAggregatedStatus", "lastUpdateDateTime"),
            type = "string",
            name = "lastUpdateDateTime",
            target_id = prelude.String.id,
        }),
        replicationStartedDateTime = schema.new({
            id = id.from(_N, "WaveAggregatedStatus", "replicationStartedDateTime"),
            type = "string",
            name = "replicationStartedDateTime",
            target_id = prelude.String.id,
        }),
        healthStatus = schema.new({
            id = id.from(_N, "WaveAggregatedStatus", "healthStatus"),
            type = "string",
            name = "healthStatus",
            target_id = prelude.String.id,
        }),
        progressStatus = schema.new({
            id = id.from(_N, "WaveAggregatedStatus", "progressStatus"),
            type = "string",
            name = "progressStatus",
            target_id = prelude.String.id,
        }),
        totalApplications = schema.new({
            id = id.from(_N, "WaveAggregatedStatus", "totalApplications"),
            type = "long",
            name = "totalApplications",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ArchiveWaveOutput = schema.new({
    id = id.from(_N, "Wave"),
    type = "structure",
    members = {
        waveID = schema.new({
            id = id.from(_N, "ArchiveWaveOutput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ArchiveWaveOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ArchiveWaveOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "ArchiveWaveOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "ArchiveWaveOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        waveAggregatedStatus = schema.new({
            id = id.from(_N, "ArchiveWaveOutput", "waveAggregatedStatus"),
            type = "structure",
            name = "waveAggregatedStatus",
            target_id = id.from(_N, "WaveAggregatedStatus"),
            target = M.WaveAggregatedStatus,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "ArchiveWaveOutput", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        lastModifiedDateTime = schema.new({
            id = id.from(_N, "ArchiveWaveOutput", "lastModifiedDateTime"),
            type = "string",
            name = "lastModifiedDateTime",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ArchiveWaveOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.AssociateApplicationsInput = schema.new({
    id = id.from(_N, "AssociateApplicationsRequest"),
    type = "structure",
    members = {
        waveID = schema.new({
            id = id.from(_N, "AssociateApplicationsInput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        applicationIDs = schema.new({
            id = id.from(_N, "AssociateApplicationsInput", "applicationIDs"),
            type = "list",
            name = "applicationIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "AssociateApplicationsInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateApplicationsOutput = schema.new({
    id = id.from(_N, "AssociateApplicationsResponse"),
    type = "structure",
})

M.CreateWaveInput = schema.new({
    id = id.from(_N, "CreateWaveRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateWaveInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateWaveInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateWaveInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        accountID = schema.new({
            id = id.from(_N, "CreateWaveInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateWaveOutput = schema.new({
    id = id.from(_N, "Wave"),
    type = "structure",
    members = {
        waveID = schema.new({
            id = id.from(_N, "CreateWaveOutput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CreateWaveOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateWaveOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateWaveOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "CreateWaveOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        waveAggregatedStatus = schema.new({
            id = id.from(_N, "CreateWaveOutput", "waveAggregatedStatus"),
            type = "structure",
            name = "waveAggregatedStatus",
            target_id = id.from(_N, "WaveAggregatedStatus"),
            target = M.WaveAggregatedStatus,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "CreateWaveOutput", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        lastModifiedDateTime = schema.new({
            id = id.from(_N, "CreateWaveOutput", "lastModifiedDateTime"),
            type = "string",
            name = "lastModifiedDateTime",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateWaveOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.DeleteWaveInput = schema.new({
    id = id.from(_N, "DeleteWaveRequest"),
    type = "structure",
    members = {
        waveID = schema.new({
            id = id.from(_N, "DeleteWaveInput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "DeleteWaveInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteWaveOutput = schema.new({
    id = id.from(_N, "DeleteWaveResponse"),
    type = "structure",
})

M.DisassociateApplicationsInput = schema.new({
    id = id.from(_N, "DisassociateApplicationsRequest"),
    type = "structure",
    members = {
        waveID = schema.new({
            id = id.from(_N, "DisassociateApplicationsInput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        applicationIDs = schema.new({
            id = id.from(_N, "DisassociateApplicationsInput", "applicationIDs"),
            type = "list",
            name = "applicationIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "DisassociateApplicationsInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateApplicationsOutput = schema.new({
    id = id.from(_N, "DisassociateApplicationsResponse"),
    type = "structure",
})

M.ListWavesRequestFilters = schema.new({
    id = id.from(_N, "ListWavesRequestFilters"),
    type = "structure",
    members = {
        waveIDs = schema.new({
            id = id.from(_N, "ListWavesRequestFilters", "waveIDs"),
            type = "list",
            name = "waveIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        isArchived = schema.new({
            id = id.from(_N, "ListWavesRequestFilters", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ListWavesInput = schema.new({
    id = id.from(_N, "ListWavesRequest"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "ListWavesInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "ListWavesRequestFilters"),
            target = M.ListWavesRequestFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListWavesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWavesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        accountID = schema.new({
            id = id.from(_N, "ListWavesInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.Wave = schema.new({
    id = id.from(_N, "Wave"),
    type = "structure",
    members = {
        waveID = schema.new({
            id = id.from(_N, "Wave", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Wave", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Wave", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Wave", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "Wave", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        waveAggregatedStatus = schema.new({
            id = id.from(_N, "Wave", "waveAggregatedStatus"),
            type = "structure",
            name = "waveAggregatedStatus",
            target_id = id.from(_N, "WaveAggregatedStatus"),
            target = M.WaveAggregatedStatus,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "Wave", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        lastModifiedDateTime = schema.new({
            id = id.from(_N, "Wave", "lastModifiedDateTime"),
            type = "string",
            name = "lastModifiedDateTime",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Wave", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListWavesOutput = schema.new({
    id = id.from(_N, "ListWavesResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListWavesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.Wave,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWavesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UnarchiveWaveInput = schema.new({
    id = id.from(_N, "UnarchiveWaveRequest"),
    type = "structure",
    members = {
        waveID = schema.new({
            id = id.from(_N, "UnarchiveWaveInput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accountID = schema.new({
            id = id.from(_N, "UnarchiveWaveInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.UnarchiveWaveOutput = schema.new({
    id = id.from(_N, "Wave"),
    type = "structure",
    members = {
        waveID = schema.new({
            id = id.from(_N, "UnarchiveWaveOutput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "UnarchiveWaveOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UnarchiveWaveOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UnarchiveWaveOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "UnarchiveWaveOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        waveAggregatedStatus = schema.new({
            id = id.from(_N, "UnarchiveWaveOutput", "waveAggregatedStatus"),
            type = "structure",
            name = "waveAggregatedStatus",
            target_id = id.from(_N, "WaveAggregatedStatus"),
            target = M.WaveAggregatedStatus,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "UnarchiveWaveOutput", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        lastModifiedDateTime = schema.new({
            id = id.from(_N, "UnarchiveWaveOutput", "lastModifiedDateTime"),
            type = "string",
            name = "lastModifiedDateTime",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UnarchiveWaveOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateWaveInput = schema.new({
    id = id.from(_N, "UpdateWaveRequest"),
    type = "structure",
    members = {
        waveID = schema.new({
            id = id.from(_N, "UpdateWaveInput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateWaveInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateWaveInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        accountID = schema.new({
            id = id.from(_N, "UpdateWaveInput", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateWaveOutput = schema.new({
    id = id.from(_N, "Wave"),
    type = "structure",
    members = {
        waveID = schema.new({
            id = id.from(_N, "UpdateWaveOutput", "waveID"),
            type = "string",
            name = "waveID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "UpdateWaveOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateWaveOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateWaveOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isArchived = schema.new({
            id = id.from(_N, "UpdateWaveOutput", "isArchived"),
            type = "boolean",
            name = "isArchived",
            target_id = prelude.Boolean.id,
        }),
        waveAggregatedStatus = schema.new({
            id = id.from(_N, "UpdateWaveOutput", "waveAggregatedStatus"),
            type = "structure",
            name = "waveAggregatedStatus",
            target_id = id.from(_N, "WaveAggregatedStatus"),
            target = M.WaveAggregatedStatus,
        }),
        creationDateTime = schema.new({
            id = id.from(_N, "UpdateWaveOutput", "creationDateTime"),
            type = "string",
            name = "creationDateTime",
            target_id = prelude.String.id,
        }),
        lastModifiedDateTime = schema.new({
            id = id.from(_N, "UpdateWaveOutput", "lastModifiedDateTime"),
            type = "string",
            name = "lastModifiedDateTime",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "UpdateWaveOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
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
