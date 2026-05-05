local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.workspacesthinclient"

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

M.MaintenanceWindow = schema.new({
    id = id.from(_N, "MaintenanceWindow"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "MaintenanceWindow", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTimeHour = schema.new({
            id = id.from(_N, "MaintenanceWindow", "startTimeHour"),
            type = "integer",
            name = "startTimeHour",
            target_id = prelude.Integer.id,
        }),
        startTimeMinute = schema.new({
            id = id.from(_N, "MaintenanceWindow", "startTimeMinute"),
            type = "integer",
            name = "startTimeMinute",
            target_id = prelude.Integer.id,
        }),
        endTimeHour = schema.new({
            id = id.from(_N, "MaintenanceWindow", "endTimeHour"),
            type = "integer",
            name = "endTimeHour",
            target_id = prelude.Integer.id,
        }),
        endTimeMinute = schema.new({
            id = id.from(_N, "MaintenanceWindow", "endTimeMinute"),
            type = "integer",
            name = "endTimeMinute",
            target_id = prelude.Integer.id,
        }),
        daysOfTheWeek = schema.new({
            id = id.from(_N, "MaintenanceWindow", "daysOfTheWeek"),
            type = "list",
            name = "daysOfTheWeek",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        applyTimeOf = schema.new({
            id = id.from(_N, "MaintenanceWindow", "applyTimeOf"),
            type = "string",
            name = "applyTimeOf",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEnvironmentInput = schema.new({
    id = id.from(_N, "CreateEnvironmentRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        desktopArn = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "desktopArn"),
            type = "string",
            name = "desktopArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        desktopEndpoint = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "desktopEndpoint"),
            type = "string",
            name = "desktopEndpoint",
            target_id = prelude.String.id,
        }),
        softwareSetUpdateSchedule = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "softwareSetUpdateSchedule"),
            type = "string",
            name = "softwareSetUpdateSchedule",
            target_id = prelude.String.id,
        }),
        maintenanceWindow = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "maintenanceWindow"),
            type = "structure",
            name = "maintenanceWindow",
            target_id = id.from(_N, "MaintenanceWindow"),
            target = M.MaintenanceWindow,
        }),
        softwareSetUpdateMode = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "softwareSetUpdateMode"),
            type = "string",
            name = "softwareSetUpdateMode",
            target_id = prelude.String.id,
        }),
        desiredSoftwareSetId = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "desiredSoftwareSetId"),
            type = "string",
            name = "desiredSoftwareSetId",
            target_id = prelude.String.id,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        deviceCreationTags = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "deviceCreationTags"),
            type = "map",
            name = "deviceCreationTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.EnvironmentSummary = schema.new({
    id = id.from(_N, "EnvironmentSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "EnvironmentSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "EnvironmentSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        desktopArn = schema.new({
            id = id.from(_N, "EnvironmentSummary", "desktopArn"),
            type = "string",
            name = "desktopArn",
            target_id = prelude.String.id,
        }),
        desktopEndpoint = schema.new({
            id = id.from(_N, "EnvironmentSummary", "desktopEndpoint"),
            type = "string",
            name = "desktopEndpoint",
            target_id = prelude.String.id,
        }),
        desktopType = schema.new({
            id = id.from(_N, "EnvironmentSummary", "desktopType"),
            type = "string",
            name = "desktopType",
            target_id = prelude.String.id,
        }),
        activationCode = schema.new({
            id = id.from(_N, "EnvironmentSummary", "activationCode"),
            type = "string",
            name = "activationCode",
            target_id = prelude.String.id,
        }),
        softwareSetUpdateSchedule = schema.new({
            id = id.from(_N, "EnvironmentSummary", "softwareSetUpdateSchedule"),
            type = "string",
            name = "softwareSetUpdateSchedule",
            target_id = prelude.String.id,
        }),
        maintenanceWindow = schema.new({
            id = id.from(_N, "EnvironmentSummary", "maintenanceWindow"),
            type = "structure",
            name = "maintenanceWindow",
            target_id = id.from(_N, "MaintenanceWindow"),
            target = M.MaintenanceWindow,
        }),
        softwareSetUpdateMode = schema.new({
            id = id.from(_N, "EnvironmentSummary", "softwareSetUpdateMode"),
            type = "string",
            name = "softwareSetUpdateMode",
            target_id = prelude.String.id,
        }),
        desiredSoftwareSetId = schema.new({
            id = id.from(_N, "EnvironmentSummary", "desiredSoftwareSetId"),
            type = "string",
            name = "desiredSoftwareSetId",
            target_id = prelude.String.id,
        }),
        pendingSoftwareSetId = schema.new({
            id = id.from(_N, "EnvironmentSummary", "pendingSoftwareSetId"),
            type = "string",
            name = "pendingSoftwareSetId",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "EnvironmentSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "EnvironmentSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        arn = schema.new({
            id = id.from(_N, "EnvironmentSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEnvironmentOutput = schema.new({
    id = id.from(_N, "CreateEnvironmentResponse"),
    type = "structure",
    members = {
        environment = schema.new({
            id = id.from(_N, "CreateEnvironmentOutput", "environment"),
            type = "structure",
            name = "environment",
            target_id = id.from(_N, "EnvironmentSummary"),
            target = M.EnvironmentSummary,
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

M.DeleteDeviceInput = schema.new({
    id = id.from(_N, "DeleteDeviceRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteDeviceInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteDeviceInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteDeviceOutput = schema.new({
    id = id.from(_N, "DeleteDeviceResponse"),
    type = "structure",
})

M.DeleteEnvironmentInput = schema.new({
    id = id.from(_N, "DeleteEnvironmentRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeleteEnvironmentInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteEnvironmentInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteEnvironmentOutput = schema.new({
    id = id.from(_N, "DeleteEnvironmentResponse"),
    type = "structure",
})

M.DeregisterDeviceInput = schema.new({
    id = id.from(_N, "DeregisterDeviceRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeregisterDeviceInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        targetDeviceStatus = schema.new({
            id = id.from(_N, "DeregisterDeviceInput", "targetDeviceStatus"),
            type = "string",
            name = "targetDeviceStatus",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeregisterDeviceInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeregisterDeviceOutput = schema.new({
    id = id.from(_N, "DeregisterDeviceResponse"),
    type = "structure",
})

M.Device = schema.new({
    id = id.from(_N, "Device"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Device", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        serialNumber = schema.new({
            id = id.from(_N, "Device", "serialNumber"),
            type = "string",
            name = "serialNumber",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Device", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        model = schema.new({
            id = id.from(_N, "Device", "model"),
            type = "string",
            name = "model",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "Device", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Device", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        currentSoftwareSetId = schema.new({
            id = id.from(_N, "Device", "currentSoftwareSetId"),
            type = "string",
            name = "currentSoftwareSetId",
            target_id = prelude.String.id,
        }),
        currentSoftwareSetVersion = schema.new({
            id = id.from(_N, "Device", "currentSoftwareSetVersion"),
            type = "string",
            name = "currentSoftwareSetVersion",
            target_id = prelude.String.id,
        }),
        desiredSoftwareSetId = schema.new({
            id = id.from(_N, "Device", "desiredSoftwareSetId"),
            type = "string",
            name = "desiredSoftwareSetId",
            target_id = prelude.String.id,
        }),
        pendingSoftwareSetId = schema.new({
            id = id.from(_N, "Device", "pendingSoftwareSetId"),
            type = "string",
            name = "pendingSoftwareSetId",
            target_id = prelude.String.id,
        }),
        pendingSoftwareSetVersion = schema.new({
            id = id.from(_N, "Device", "pendingSoftwareSetVersion"),
            type = "string",
            name = "pendingSoftwareSetVersion",
            target_id = prelude.String.id,
        }),
        softwareSetUpdateSchedule = schema.new({
            id = id.from(_N, "Device", "softwareSetUpdateSchedule"),
            type = "string",
            name = "softwareSetUpdateSchedule",
            target_id = prelude.String.id,
        }),
        softwareSetComplianceStatus = schema.new({
            id = id.from(_N, "Device", "softwareSetComplianceStatus"),
            type = "string",
            name = "softwareSetComplianceStatus",
            target_id = prelude.String.id,
        }),
        softwareSetUpdateStatus = schema.new({
            id = id.from(_N, "Device", "softwareSetUpdateStatus"),
            type = "string",
            name = "softwareSetUpdateStatus",
            target_id = prelude.String.id,
        }),
        lastConnectedAt = schema.new({
            id = id.from(_N, "Device", "lastConnectedAt"),
            type = "timestamp",
            name = "lastConnectedAt",
            target_id = prelude.Timestamp.id,
        }),
        lastPostureAt = schema.new({
            id = id.from(_N, "Device", "lastPostureAt"),
            type = "timestamp",
            name = "lastPostureAt",
            target_id = prelude.Timestamp.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Device", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Device", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Device", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "Device", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        lastUserId = schema.new({
            id = id.from(_N, "Device", "lastUserId"),
            type = "string",
            name = "lastUserId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeviceSummary = schema.new({
    id = id.from(_N, "DeviceSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DeviceSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        serialNumber = schema.new({
            id = id.from(_N, "DeviceSummary", "serialNumber"),
            type = "string",
            name = "serialNumber",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "DeviceSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        model = schema.new({
            id = id.from(_N, "DeviceSummary", "model"),
            type = "string",
            name = "model",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "DeviceSummary", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "DeviceSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        currentSoftwareSetId = schema.new({
            id = id.from(_N, "DeviceSummary", "currentSoftwareSetId"),
            type = "string",
            name = "currentSoftwareSetId",
            target_id = prelude.String.id,
        }),
        desiredSoftwareSetId = schema.new({
            id = id.from(_N, "DeviceSummary", "desiredSoftwareSetId"),
            type = "string",
            name = "desiredSoftwareSetId",
            target_id = prelude.String.id,
        }),
        pendingSoftwareSetId = schema.new({
            id = id.from(_N, "DeviceSummary", "pendingSoftwareSetId"),
            type = "string",
            name = "pendingSoftwareSetId",
            target_id = prelude.String.id,
        }),
        softwareSetUpdateSchedule = schema.new({
            id = id.from(_N, "DeviceSummary", "softwareSetUpdateSchedule"),
            type = "string",
            name = "softwareSetUpdateSchedule",
            target_id = prelude.String.id,
        }),
        lastConnectedAt = schema.new({
            id = id.from(_N, "DeviceSummary", "lastConnectedAt"),
            type = "timestamp",
            name = "lastConnectedAt",
            target_id = prelude.Timestamp.id,
        }),
        lastPostureAt = schema.new({
            id = id.from(_N, "DeviceSummary", "lastPostureAt"),
            type = "timestamp",
            name = "lastPostureAt",
            target_id = prelude.Timestamp.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "DeviceSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "DeviceSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        arn = schema.new({
            id = id.from(_N, "DeviceSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        lastUserId = schema.new({
            id = id.from(_N, "DeviceSummary", "lastUserId"),
            type = "string",
            name = "lastUserId",
            target_id = prelude.String.id,
        }),
    },
})

M.Environment = schema.new({
    id = id.from(_N, "Environment"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Environment", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Environment", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        desktopArn = schema.new({
            id = id.from(_N, "Environment", "desktopArn"),
            type = "string",
            name = "desktopArn",
            target_id = prelude.String.id,
        }),
        desktopEndpoint = schema.new({
            id = id.from(_N, "Environment", "desktopEndpoint"),
            type = "string",
            name = "desktopEndpoint",
            target_id = prelude.String.id,
        }),
        desktopType = schema.new({
            id = id.from(_N, "Environment", "desktopType"),
            type = "string",
            name = "desktopType",
            target_id = prelude.String.id,
        }),
        activationCode = schema.new({
            id = id.from(_N, "Environment", "activationCode"),
            type = "string",
            name = "activationCode",
            target_id = prelude.String.id,
        }),
        registeredDevicesCount = schema.new({
            id = id.from(_N, "Environment", "registeredDevicesCount"),
            type = "integer",
            name = "registeredDevicesCount",
            target_id = prelude.Integer.id,
        }),
        softwareSetUpdateSchedule = schema.new({
            id = id.from(_N, "Environment", "softwareSetUpdateSchedule"),
            type = "string",
            name = "softwareSetUpdateSchedule",
            target_id = prelude.String.id,
        }),
        maintenanceWindow = schema.new({
            id = id.from(_N, "Environment", "maintenanceWindow"),
            type = "structure",
            name = "maintenanceWindow",
            target_id = id.from(_N, "MaintenanceWindow"),
            target = M.MaintenanceWindow,
        }),
        softwareSetUpdateMode = schema.new({
            id = id.from(_N, "Environment", "softwareSetUpdateMode"),
            type = "string",
            name = "softwareSetUpdateMode",
            target_id = prelude.String.id,
        }),
        desiredSoftwareSetId = schema.new({
            id = id.from(_N, "Environment", "desiredSoftwareSetId"),
            type = "string",
            name = "desiredSoftwareSetId",
            target_id = prelude.String.id,
        }),
        pendingSoftwareSetId = schema.new({
            id = id.from(_N, "Environment", "pendingSoftwareSetId"),
            type = "string",
            name = "pendingSoftwareSetId",
            target_id = prelude.String.id,
        }),
        pendingSoftwareSetVersion = schema.new({
            id = id.from(_N, "Environment", "pendingSoftwareSetVersion"),
            type = "string",
            name = "pendingSoftwareSetVersion",
            target_id = prelude.String.id,
        }),
        softwareSetComplianceStatus = schema.new({
            id = id.from(_N, "Environment", "softwareSetComplianceStatus"),
            type = "string",
            name = "softwareSetComplianceStatus",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Environment", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Environment", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Environment", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "Environment", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        deviceCreationTags = schema.new({
            id = id.from(_N, "Environment", "deviceCreationTags"),
            type = "map",
            name = "deviceCreationTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetDeviceInput = schema.new({
    id = id.from(_N, "GetDeviceRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetDeviceInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDeviceOutput = schema.new({
    id = id.from(_N, "GetDeviceResponse"),
    type = "structure",
    members = {
        device = schema.new({
            id = id.from(_N, "GetDeviceOutput", "device"),
            type = "structure",
            name = "device",
            target_id = id.from(_N, "Device"),
            target = M.Device,
        }),
    },
})

M.GetEnvironmentInput = schema.new({
    id = id.from(_N, "GetEnvironmentRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetEnvironmentInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetEnvironmentOutput = schema.new({
    id = id.from(_N, "GetEnvironmentResponse"),
    type = "structure",
    members = {
        environment = schema.new({
            id = id.from(_N, "GetEnvironmentOutput", "environment"),
            type = "structure",
            name = "environment",
            target_id = id.from(_N, "Environment"),
            target = M.Environment,
        }),
    },
})

M.GetSoftwareSetInput = schema.new({
    id = id.from(_N, "GetSoftwareSetRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetSoftwareSetInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.Software = schema.new({
    id = id.from(_N, "Software"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Software", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "Software", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
    },
})

M.SoftwareSet = schema.new({
    id = id.from(_N, "SoftwareSet"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "SoftwareSet", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "SoftwareSet", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        releasedAt = schema.new({
            id = id.from(_N, "SoftwareSet", "releasedAt"),
            type = "timestamp",
            name = "releasedAt",
            target_id = prelude.Timestamp.id,
        }),
        supportedUntil = schema.new({
            id = id.from(_N, "SoftwareSet", "supportedUntil"),
            type = "timestamp",
            name = "supportedUntil",
            target_id = prelude.Timestamp.id,
        }),
        validationStatus = schema.new({
            id = id.from(_N, "SoftwareSet", "validationStatus"),
            type = "string",
            name = "validationStatus",
            target_id = prelude.String.id,
        }),
        software = schema.new({
            id = id.from(_N, "SoftwareSet", "software"),
            type = "list",
            name = "software",
            target_id = prelude.Document.id,
            list_member = M.Software,
        }),
        arn = schema.new({
            id = id.from(_N, "SoftwareSet", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSoftwareSetOutput = schema.new({
    id = id.from(_N, "GetSoftwareSetResponse"),
    type = "structure",
    members = {
        softwareSet = schema.new({
            id = id.from(_N, "GetSoftwareSetOutput", "softwareSet"),
            type = "structure",
            name = "softwareSet",
            target_id = id.from(_N, "SoftwareSet"),
            target = M.SoftwareSet,
        }),
    },
})

M.ListDevicesInput = schema.new({
    id = id.from(_N, "ListDevicesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListDevicesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListDevicesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListDevicesOutput = schema.new({
    id = id.from(_N, "ListDevicesResponse"),
    type = "structure",
    members = {
        devices = schema.new({
            id = id.from(_N, "ListDevicesOutput", "devices"),
            type = "list",
            name = "devices",
            target_id = prelude.Document.id,
            list_member = M.DeviceSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDevicesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEnvironmentsInput = schema.new({
    id = id.from(_N, "ListEnvironmentsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListEnvironmentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListEnvironmentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListEnvironmentsOutput = schema.new({
    id = id.from(_N, "ListEnvironmentsResponse"),
    type = "structure",
    members = {
        environments = schema.new({
            id = id.from(_N, "ListEnvironmentsOutput", "environments"),
            type = "list",
            name = "environments",
            target_id = prelude.Document.id,
            list_member = M.EnvironmentSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListEnvironmentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSoftwareSetsInput = schema.new({
    id = id.from(_N, "ListSoftwareSetsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListSoftwareSetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListSoftwareSetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.SoftwareSetSummary = schema.new({
    id = id.from(_N, "SoftwareSetSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "SoftwareSetSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "SoftwareSetSummary", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        releasedAt = schema.new({
            id = id.from(_N, "SoftwareSetSummary", "releasedAt"),
            type = "timestamp",
            name = "releasedAt",
            target_id = prelude.Timestamp.id,
        }),
        supportedUntil = schema.new({
            id = id.from(_N, "SoftwareSetSummary", "supportedUntil"),
            type = "timestamp",
            name = "supportedUntil",
            target_id = prelude.Timestamp.id,
        }),
        validationStatus = schema.new({
            id = id.from(_N, "SoftwareSetSummary", "validationStatus"),
            type = "string",
            name = "validationStatus",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "SoftwareSetSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSoftwareSetsOutput = schema.new({
    id = id.from(_N, "ListSoftwareSetsResponse"),
    type = "structure",
    members = {
        softwareSets = schema.new({
            id = id.from(_N, "ListSoftwareSetsOutput", "softwareSets"),
            type = "list",
            name = "softwareSets",
            target_id = prelude.Document.id,
            list_member = M.SoftwareSetSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSoftwareSetsOutput", "nextToken"),
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

M.UpdateDeviceInput = schema.new({
    id = id.from(_N, "UpdateDeviceRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        desiredSoftwareSetId = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "desiredSoftwareSetId"),
            type = "string",
            name = "desiredSoftwareSetId",
            target_id = prelude.String.id,
        }),
        softwareSetUpdateSchedule = schema.new({
            id = id.from(_N, "UpdateDeviceInput", "softwareSetUpdateSchedule"),
            type = "string",
            name = "softwareSetUpdateSchedule",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDeviceOutput = schema.new({
    id = id.from(_N, "UpdateDeviceResponse"),
    type = "structure",
    members = {
        device = schema.new({
            id = id.from(_N, "UpdateDeviceOutput", "device"),
            type = "structure",
            name = "device",
            target_id = id.from(_N, "DeviceSummary"),
            target = M.DeviceSummary,
        }),
    },
})

M.UpdateEnvironmentInput = schema.new({
    id = id.from(_N, "UpdateEnvironmentRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        desktopArn = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "desktopArn"),
            type = "string",
            name = "desktopArn",
            target_id = prelude.String.id,
        }),
        desktopEndpoint = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "desktopEndpoint"),
            type = "string",
            name = "desktopEndpoint",
            target_id = prelude.String.id,
        }),
        softwareSetUpdateSchedule = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "softwareSetUpdateSchedule"),
            type = "string",
            name = "softwareSetUpdateSchedule",
            target_id = prelude.String.id,
        }),
        maintenanceWindow = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "maintenanceWindow"),
            type = "structure",
            name = "maintenanceWindow",
            target_id = id.from(_N, "MaintenanceWindow"),
            target = M.MaintenanceWindow,
        }),
        softwareSetUpdateMode = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "softwareSetUpdateMode"),
            type = "string",
            name = "softwareSetUpdateMode",
            target_id = prelude.String.id,
        }),
        desiredSoftwareSetId = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "desiredSoftwareSetId"),
            type = "string",
            name = "desiredSoftwareSetId",
            target_id = prelude.String.id,
        }),
        deviceCreationTags = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "deviceCreationTags"),
            type = "map",
            name = "deviceCreationTags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.UpdateEnvironmentOutput = schema.new({
    id = id.from(_N, "UpdateEnvironmentResponse"),
    type = "structure",
    members = {
        environment = schema.new({
            id = id.from(_N, "UpdateEnvironmentOutput", "environment"),
            type = "structure",
            name = "environment",
            target_id = id.from(_N, "EnvironmentSummary"),
            target = M.EnvironmentSummary,
        }),
    },
})

M.UpdateSoftwareSetInput = schema.new({
    id = id.from(_N, "UpdateSoftwareSetRequest"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "UpdateSoftwareSetInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        validationStatus = schema.new({
            id = id.from(_N, "UpdateSoftwareSetInput", "validationStatus"),
            type = "string",
            name = "validationStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSoftwareSetOutput = schema.new({
    id = id.from(_N, "UpdateSoftwareSetResponse"),
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
