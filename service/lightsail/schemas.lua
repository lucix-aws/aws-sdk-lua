local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.lightsail"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        code = schema.new({
            id = id.from(_N, "AccessDeniedException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        docs = schema.new({
            id = id.from(_N, "AccessDeniedException", "docs"),
            type = "string",
            name = "docs",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        tip = schema.new({
            id = id.from(_N, "AccessDeniedException", "tip"),
            type = "string",
            name = "tip",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessKeyLastUsed = schema.new({
    id = id.from(_N, "AccessKeyLastUsed"),
    type = "structure",
    members = {
        lastUsedDate = schema.new({
            id = id.from(_N, "AccessKeyLastUsed", "lastUsedDate"),
            type = "timestamp",
            name = "lastUsedDate",
            target_id = prelude.Timestamp.id,
        }),
        region = schema.new({
            id = id.from(_N, "AccessKeyLastUsed", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        serviceName = schema.new({
            id = id.from(_N, "AccessKeyLastUsed", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessKey = schema.new({
    id = id.from(_N, "AccessKey"),
    type = "structure",
    members = {
        accessKeyId = schema.new({
            id = id.from(_N, "AccessKey", "accessKeyId"),
            type = "string",
            name = "accessKeyId",
            target_id = prelude.String.id,
        }),
        secretAccessKey = schema.new({
            id = id.from(_N, "AccessKey", "secretAccessKey"),
            type = "string",
            name = "secretAccessKey",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "AccessKey", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "AccessKey", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        lastUsed = schema.new({
            id = id.from(_N, "AccessKey", "lastUsed"),
            type = "structure",
            name = "lastUsed",
            target_id = id.from(_N, "AccessKeyLastUsed"),
            target = M.AccessKeyLastUsed,
        }),
    },
})

M.ResourceReceivingAccess = schema.new({
    id = id.from(_N, "ResourceReceivingAccess"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ResourceReceivingAccess", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceReceivingAccess", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessRules = schema.new({
    id = id.from(_N, "AccessRules"),
    type = "structure",
    members = {
        getObject = schema.new({
            id = id.from(_N, "AccessRules", "getObject"),
            type = "string",
            name = "getObject",
            target_id = prelude.String.id,
        }),
        allowPublicOverrides = schema.new({
            id = id.from(_N, "AccessRules", "allowPublicOverrides"),
            type = "boolean",
            name = "allowPublicOverrides",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AccountLevelBpaSync = schema.new({
    id = id.from(_N, "AccountLevelBpaSync"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "AccountLevelBpaSync", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        lastSyncedAt = schema.new({
            id = id.from(_N, "AccountLevelBpaSync", "lastSyncedAt"),
            type = "timestamp",
            name = "lastSyncedAt",
            target_id = prelude.Timestamp.id,
        }),
        message = schema.new({
            id = id.from(_N, "AccountLevelBpaSync", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        bpaImpactsLightsail = schema.new({
            id = id.from(_N, "AccountLevelBpaSync", "bpaImpactsLightsail"),
            type = "boolean",
            name = "bpaImpactsLightsail",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AccountSetupInProgressException = schema.new({
    id = id.from(_N, "AccountSetupInProgressException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        code = schema.new({
            id = id.from(_N, "AccountSetupInProgressException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        docs = schema.new({
            id = id.from(_N, "AccountSetupInProgressException", "docs"),
            type = "string",
            name = "docs",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "AccountSetupInProgressException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        tip = schema.new({
            id = id.from(_N, "AccountSetupInProgressException", "tip"),
            type = "string",
            name = "tip",
            target_id = prelude.String.id,
        }),
    },
})

M.AddOn = schema.new({
    id = id.from(_N, "AddOn"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AddOn", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "AddOn", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        snapshotTimeOfDay = schema.new({
            id = id.from(_N, "AddOn", "snapshotTimeOfDay"),
            type = "string",
            name = "snapshotTimeOfDay",
            target_id = prelude.String.id,
        }),
        nextSnapshotTimeOfDay = schema.new({
            id = id.from(_N, "AddOn", "nextSnapshotTimeOfDay"),
            type = "string",
            name = "nextSnapshotTimeOfDay",
            target_id = prelude.String.id,
        }),
        threshold = schema.new({
            id = id.from(_N, "AddOn", "threshold"),
            type = "string",
            name = "threshold",
            target_id = prelude.String.id,
        }),
        duration = schema.new({
            id = id.from(_N, "AddOn", "duration"),
            type = "string",
            name = "duration",
            target_id = prelude.String.id,
        }),
    },
})

M.AutoSnapshotAddOnRequest = schema.new({
    id = id.from(_N, "AutoSnapshotAddOnRequest"),
    type = "structure",
    members = {
        snapshotTimeOfDay = schema.new({
            id = id.from(_N, "AutoSnapshotAddOnRequest", "snapshotTimeOfDay"),
            type = "string",
            name = "snapshotTimeOfDay",
            target_id = prelude.String.id,
        }),
    },
})

M.StopInstanceOnIdleRequest = schema.new({
    id = id.from(_N, "StopInstanceOnIdleRequest"),
    type = "structure",
    members = {
        threshold = schema.new({
            id = id.from(_N, "StopInstanceOnIdleRequest", "threshold"),
            type = "string",
            name = "threshold",
            target_id = prelude.String.id,
        }),
        duration = schema.new({
            id = id.from(_N, "StopInstanceOnIdleRequest", "duration"),
            type = "string",
            name = "duration",
            target_id = prelude.String.id,
        }),
    },
})

M.AddOnRequest = schema.new({
    id = id.from(_N, "AddOnRequest"),
    type = "structure",
    members = {
        addOnType = schema.new({
            id = id.from(_N, "AddOnRequest", "addOnType"),
            type = "string",
            name = "addOnType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        autoSnapshotAddOnRequest = schema.new({
            id = id.from(_N, "AddOnRequest", "autoSnapshotAddOnRequest"),
            type = "structure",
            name = "autoSnapshotAddOnRequest",
            target_id = id.from(_N, "AutoSnapshotAddOnRequest"),
            target = M.AutoSnapshotAddOnRequest,
        }),
        stopInstanceOnIdleRequest = schema.new({
            id = id.from(_N, "AddOnRequest", "stopInstanceOnIdleRequest"),
            type = "structure",
            name = "stopInstanceOnIdleRequest",
            target_id = id.from(_N, "StopInstanceOnIdleRequest"),
            target = M.StopInstanceOnIdleRequest,
        }),
    },
})

M.ResourceLocation = schema.new({
    id = id.from(_N, "ResourceLocation"),
    type = "structure",
    members = {
        availabilityZone = schema.new({
            id = id.from(_N, "ResourceLocation", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
        }),
        regionName = schema.new({
            id = id.from(_N, "ResourceLocation", "regionName"),
            type = "string",
            name = "regionName",
            target_id = prelude.String.id,
        }),
    },
})

M.MonitoredResourceInfo = schema.new({
    id = id.from(_N, "MonitoredResourceInfo"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "MonitoredResourceInfo", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "MonitoredResourceInfo", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "MonitoredResourceInfo", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
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
        }),
        value = schema.new({
            id = id.from(_N, "Tag", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.Alarm = schema.new({
    id = id.from(_N, "Alarm"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Alarm", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Alarm", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Alarm", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "Alarm", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "Alarm", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "Alarm", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        monitoredResourceInfo = schema.new({
            id = id.from(_N, "Alarm", "monitoredResourceInfo"),
            type = "structure",
            name = "monitoredResourceInfo",
            target_id = id.from(_N, "MonitoredResourceInfo"),
            target = M.MonitoredResourceInfo,
        }),
        comparisonOperator = schema.new({
            id = id.from(_N, "Alarm", "comparisonOperator"),
            type = "string",
            name = "comparisonOperator",
            target_id = prelude.String.id,
        }),
        evaluationPeriods = schema.new({
            id = id.from(_N, "Alarm", "evaluationPeriods"),
            type = "integer",
            name = "evaluationPeriods",
            target_id = prelude.Integer.id,
        }),
        period = schema.new({
            id = id.from(_N, "Alarm", "period"),
            type = "integer",
            name = "period",
            target_id = prelude.Integer.id,
        }),
        threshold = schema.new({
            id = id.from(_N, "Alarm", "threshold"),
            type = "double",
            name = "threshold",
            target_id = prelude.Double.id,
        }),
        datapointsToAlarm = schema.new({
            id = id.from(_N, "Alarm", "datapointsToAlarm"),
            type = "integer",
            name = "datapointsToAlarm",
            target_id = prelude.Integer.id,
        }),
        treatMissingData = schema.new({
            id = id.from(_N, "Alarm", "treatMissingData"),
            type = "string",
            name = "treatMissingData",
            target_id = prelude.String.id,
        }),
        statistic = schema.new({
            id = id.from(_N, "Alarm", "statistic"),
            type = "string",
            name = "statistic",
            target_id = prelude.String.id,
        }),
        metricName = schema.new({
            id = id.from(_N, "Alarm", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "Alarm", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        unit = schema.new({
            id = id.from(_N, "Alarm", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
        }),
        contactProtocols = schema.new({
            id = id.from(_N, "Alarm", "contactProtocols"),
            type = "list",
            name = "contactProtocols",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        notificationTriggers = schema.new({
            id = id.from(_N, "Alarm", "notificationTriggers"),
            type = "list",
            name = "notificationTriggers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        notificationEnabled = schema.new({
            id = id.from(_N, "Alarm", "notificationEnabled"),
            type = "boolean",
            name = "notificationEnabled",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Alarm", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.AllocateStaticIpInput = schema.new({
    id = id.from(_N, "AllocateStaticIpInput"),
    type = "structure",
    members = {
        staticIpName = schema.new({
            id = id.from(_N, "AllocateStaticIpInput", "staticIpName"),
            type = "string",
            name = "staticIpName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Operation = schema.new({
    id = id.from(_N, "Operation"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Operation", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        resourceName = schema.new({
            id = id.from(_N, "Operation", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "Operation", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Operation", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "Operation", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        isTerminal = schema.new({
            id = id.from(_N, "Operation", "isTerminal"),
            type = "boolean",
            name = "isTerminal",
            target_id = prelude.Boolean.id,
        }),
        operationDetails = schema.new({
            id = id.from(_N, "Operation", "operationDetails"),
            type = "string",
            name = "operationDetails",
            target_id = prelude.String.id,
        }),
        operationType = schema.new({
            id = id.from(_N, "Operation", "operationType"),
            type = "string",
            name = "operationType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Operation", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusChangedAt = schema.new({
            id = id.from(_N, "Operation", "statusChangedAt"),
            type = "timestamp",
            name = "statusChangedAt",
            target_id = prelude.Timestamp.id,
        }),
        errorCode = schema.new({
            id = id.from(_N, "Operation", "errorCode"),
            type = "string",
            name = "errorCode",
            target_id = prelude.String.id,
        }),
        errorDetails = schema.new({
            id = id.from(_N, "Operation", "errorDetails"),
            type = "string",
            name = "errorDetails",
            target_id = prelude.String.id,
        }),
    },
})

M.AllocateStaticIpOutput = schema.new({
    id = id.from(_N, "AllocateStaticIpOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "AllocateStaticIpOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.InvalidInputException = schema.new({
    id = id.from(_N, "InvalidInputException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        code = schema.new({
            id = id.from(_N, "InvalidInputException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        docs = schema.new({
            id = id.from(_N, "InvalidInputException", "docs"),
            type = "string",
            name = "docs",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "InvalidInputException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        tip = schema.new({
            id = id.from(_N, "InvalidInputException", "tip"),
            type = "string",
            name = "tip",
            target_id = prelude.String.id,
        }),
    },
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        code = schema.new({
            id = id.from(_N, "NotFoundException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        docs = schema.new({
            id = id.from(_N, "NotFoundException", "docs"),
            type = "string",
            name = "docs",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "NotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        tip = schema.new({
            id = id.from(_N, "NotFoundException", "tip"),
            type = "string",
            name = "tip",
            target_id = prelude.String.id,
        }),
    },
})

M.OperationFailureException = schema.new({
    id = id.from(_N, "OperationFailureException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        code = schema.new({
            id = id.from(_N, "OperationFailureException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        docs = schema.new({
            id = id.from(_N, "OperationFailureException", "docs"),
            type = "string",
            name = "docs",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "OperationFailureException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        tip = schema.new({
            id = id.from(_N, "OperationFailureException", "tip"),
            type = "string",
            name = "tip",
            target_id = prelude.String.id,
        }),
    },
})

M.RegionSetupInProgressException = schema.new({
    id = id.from(_N, "RegionSetupInProgressException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        code = schema.new({
            id = id.from(_N, "RegionSetupInProgressException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        docs = schema.new({
            id = id.from(_N, "RegionSetupInProgressException", "docs"),
            type = "string",
            name = "docs",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "RegionSetupInProgressException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        tip = schema.new({
            id = id.from(_N, "RegionSetupInProgressException", "tip"),
            type = "string",
            name = "tip",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceException = schema.new({
    id = id.from(_N, "ServiceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        code = schema.new({
            id = id.from(_N, "ServiceException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        docs = schema.new({
            id = id.from(_N, "ServiceException", "docs"),
            type = "string",
            name = "docs",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ServiceException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        tip = schema.new({
            id = id.from(_N, "ServiceException", "tip"),
            type = "string",
            name = "tip",
            target_id = prelude.String.id,
        }),
    },
})

M.UnauthenticatedException = schema.new({
    id = id.from(_N, "UnauthenticatedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        code = schema.new({
            id = id.from(_N, "UnauthenticatedException", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        docs = schema.new({
            id = id.from(_N, "UnauthenticatedException", "docs"),
            type = "string",
            name = "docs",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "UnauthenticatedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        tip = schema.new({
            id = id.from(_N, "UnauthenticatedException", "tip"),
            type = "string",
            name = "tip",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachCertificateToDistributionInput = schema.new({
    id = id.from(_N, "AttachCertificateToDistributionInput"),
    type = "structure",
    members = {
        distributionName = schema.new({
            id = id.from(_N, "AttachCertificateToDistributionInput", "distributionName"),
            type = "string",
            name = "distributionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        certificateName = schema.new({
            id = id.from(_N, "AttachCertificateToDistributionInput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachCertificateToDistributionOutput = schema.new({
    id = id.from(_N, "AttachCertificateToDistributionOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "AttachCertificateToDistributionOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.AttachDiskInput = schema.new({
    id = id.from(_N, "AttachDiskInput"),
    type = "structure",
    members = {
        diskName = schema.new({
            id = id.from(_N, "AttachDiskInput", "diskName"),
            type = "string",
            name = "diskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instanceName = schema.new({
            id = id.from(_N, "AttachDiskInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        diskPath = schema.new({
            id = id.from(_N, "AttachDiskInput", "diskPath"),
            type = "string",
            name = "diskPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        autoMounting = schema.new({
            id = id.from(_N, "AttachDiskInput", "autoMounting"),
            type = "boolean",
            name = "autoMounting",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AttachDiskOutput = schema.new({
    id = id.from(_N, "AttachDiskOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "AttachDiskOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.AttachedDisk = schema.new({
    id = id.from(_N, "AttachedDisk"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "AttachedDisk", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        sizeInGb = schema.new({
            id = id.from(_N, "AttachedDisk", "sizeInGb"),
            type = "integer",
            name = "sizeInGb",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DiskMap = schema.new({
    id = id.from(_N, "DiskMap"),
    type = "structure",
    members = {
        originalDiskPath = schema.new({
            id = id.from(_N, "DiskMap", "originalDiskPath"),
            type = "string",
            name = "originalDiskPath",
            target_id = prelude.String.id,
        }),
        newDiskName = schema.new({
            id = id.from(_N, "DiskMap", "newDiskName"),
            type = "string",
            name = "newDiskName",
            target_id = prelude.String.id,
        }),
    },
})

M.AttachInstancesToLoadBalancerInput = schema.new({
    id = id.from(_N, "AttachInstancesToLoadBalancerInput"),
    type = "structure",
    members = {
        loadBalancerName = schema.new({
            id = id.from(_N, "AttachInstancesToLoadBalancerInput", "loadBalancerName"),
            type = "string",
            name = "loadBalancerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instanceNames = schema.new({
            id = id.from(_N, "AttachInstancesToLoadBalancerInput", "instanceNames"),
            type = "list",
            name = "instanceNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachInstancesToLoadBalancerOutput = schema.new({
    id = id.from(_N, "AttachInstancesToLoadBalancerOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "AttachInstancesToLoadBalancerOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.AttachLoadBalancerTlsCertificateInput = schema.new({
    id = id.from(_N, "AttachLoadBalancerTlsCertificateInput"),
    type = "structure",
    members = {
        loadBalancerName = schema.new({
            id = id.from(_N, "AttachLoadBalancerTlsCertificateInput", "loadBalancerName"),
            type = "string",
            name = "loadBalancerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        certificateName = schema.new({
            id = id.from(_N, "AttachLoadBalancerTlsCertificateInput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachLoadBalancerTlsCertificateOutput = schema.new({
    id = id.from(_N, "AttachLoadBalancerTlsCertificateOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "AttachLoadBalancerTlsCertificateOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.AttachStaticIpInput = schema.new({
    id = id.from(_N, "AttachStaticIpInput"),
    type = "structure",
    members = {
        staticIpName = schema.new({
            id = id.from(_N, "AttachStaticIpInput", "staticIpName"),
            type = "string",
            name = "staticIpName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instanceName = schema.new({
            id = id.from(_N, "AttachStaticIpInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AttachStaticIpOutput = schema.new({
    id = id.from(_N, "AttachStaticIpOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "AttachStaticIpOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.AutoSnapshotDetails = schema.new({
    id = id.from(_N, "AutoSnapshotDetails"),
    type = "structure",
    members = {
        date = schema.new({
            id = id.from(_N, "AutoSnapshotDetails", "date"),
            type = "string",
            name = "date",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "AutoSnapshotDetails", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "AutoSnapshotDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        fromAttachedDisks = schema.new({
            id = id.from(_N, "AutoSnapshotDetails", "fromAttachedDisks"),
            type = "list",
            name = "fromAttachedDisks",
            target_id = prelude.Document.id,
            list_member = M.AttachedDisk,
        }),
    },
})

M.AvailabilityZone = schema.new({
    id = id.from(_N, "AvailabilityZone"),
    type = "structure",
    members = {
        zoneName = schema.new({
            id = id.from(_N, "AvailabilityZone", "zoneName"),
            type = "string",
            name = "zoneName",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "AvailabilityZone", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
    },
})

M.Blueprint = schema.new({
    id = id.from(_N, "Blueprint"),
    type = "structure",
    members = {
        blueprintId = schema.new({
            id = id.from(_N, "Blueprint", "blueprintId"),
            type = "string",
            name = "blueprintId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Blueprint", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        group = schema.new({
            id = id.from(_N, "Blueprint", "group"),
            type = "string",
            name = "group",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Blueprint", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Blueprint", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isActive = schema.new({
            id = id.from(_N, "Blueprint", "isActive"),
            type = "boolean",
            name = "isActive",
            target_id = prelude.Boolean.id,
        }),
        minPower = schema.new({
            id = id.from(_N, "Blueprint", "minPower"),
            type = "integer",
            name = "minPower",
            target_id = prelude.Integer.id,
        }),
        version = schema.new({
            id = id.from(_N, "Blueprint", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        versionCode = schema.new({
            id = id.from(_N, "Blueprint", "versionCode"),
            type = "string",
            name = "versionCode",
            target_id = prelude.String.id,
        }),
        productUrl = schema.new({
            id = id.from(_N, "Blueprint", "productUrl"),
            type = "string",
            name = "productUrl",
            target_id = prelude.String.id,
        }),
        licenseUrl = schema.new({
            id = id.from(_N, "Blueprint", "licenseUrl"),
            type = "string",
            name = "licenseUrl",
            target_id = prelude.String.id,
        }),
        platform = schema.new({
            id = id.from(_N, "Blueprint", "platform"),
            type = "string",
            name = "platform",
            target_id = prelude.String.id,
        }),
        appCategory = schema.new({
            id = id.from(_N, "Blueprint", "appCategory"),
            type = "string",
            name = "appCategory",
            target_id = prelude.String.id,
        }),
    },
})

M.BucketAccessLogConfig = schema.new({
    id = id.from(_N, "BucketAccessLogConfig"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "BucketAccessLogConfig", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        destination = schema.new({
            id = id.from(_N, "BucketAccessLogConfig", "destination"),
            type = "string",
            name = "destination",
            target_id = prelude.String.id,
        }),
        prefix = schema.new({
            id = id.from(_N, "BucketAccessLogConfig", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.BucketCorsRule = schema.new({
    id = id.from(_N, "BucketCorsRule"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "BucketCorsRule", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        allowedMethods = schema.new({
            id = id.from(_N, "BucketCorsRule", "allowedMethods"),
            type = "list",
            name = "allowedMethods",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        allowedOrigins = schema.new({
            id = id.from(_N, "BucketCorsRule", "allowedOrigins"),
            type = "list",
            name = "allowedOrigins",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        allowedHeaders = schema.new({
            id = id.from(_N, "BucketCorsRule", "allowedHeaders"),
            type = "list",
            name = "allowedHeaders",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        exposeHeaders = schema.new({
            id = id.from(_N, "BucketCorsRule", "exposeHeaders"),
            type = "list",
            name = "exposeHeaders",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        maxAgeSeconds = schema.new({
            id = id.from(_N, "BucketCorsRule", "maxAgeSeconds"),
            type = "integer",
            name = "maxAgeSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BucketCorsConfig = schema.new({
    id = id.from(_N, "BucketCorsConfig"),
    type = "structure",
    members = {
        rules = schema.new({
            id = id.from(_N, "BucketCorsConfig", "rules"),
            type = "list",
            name = "rules",
            target_id = prelude.Document.id,
            list_member = M.BucketCorsRule,
        }),
    },
})

M.BucketState = schema.new({
    id = id.from(_N, "BucketState"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "BucketState", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "BucketState", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Bucket = schema.new({
    id = id.from(_N, "Bucket"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "Bucket", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        accessRules = schema.new({
            id = id.from(_N, "Bucket", "accessRules"),
            type = "structure",
            name = "accessRules",
            target_id = id.from(_N, "AccessRules"),
            target = M.AccessRules,
        }),
        arn = schema.new({
            id = id.from(_N, "Bucket", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        bundleId = schema.new({
            id = id.from(_N, "Bucket", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Bucket", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        url = schema.new({
            id = id.from(_N, "Bucket", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "Bucket", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        name = schema.new({
            id = id.from(_N, "Bucket", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "Bucket", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Bucket", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        objectVersioning = schema.new({
            id = id.from(_N, "Bucket", "objectVersioning"),
            type = "string",
            name = "objectVersioning",
            target_id = prelude.String.id,
        }),
        ableToUpdateBundle = schema.new({
            id = id.from(_N, "Bucket", "ableToUpdateBundle"),
            type = "boolean",
            name = "ableToUpdateBundle",
            target_id = prelude.Boolean.id,
        }),
        readonlyAccessAccounts = schema.new({
            id = id.from(_N, "Bucket", "readonlyAccessAccounts"),
            type = "list",
            name = "readonlyAccessAccounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        resourcesReceivingAccess = schema.new({
            id = id.from(_N, "Bucket", "resourcesReceivingAccess"),
            type = "list",
            name = "resourcesReceivingAccess",
            target_id = prelude.Document.id,
            list_member = M.ResourceReceivingAccess,
        }),
        state = schema.new({
            id = id.from(_N, "Bucket", "state"),
            type = "structure",
            name = "state",
            target_id = id.from(_N, "BucketState"),
            target = M.BucketState,
        }),
        accessLogConfig = schema.new({
            id = id.from(_N, "Bucket", "accessLogConfig"),
            type = "structure",
            name = "accessLogConfig",
            target_id = id.from(_N, "BucketAccessLogConfig"),
            target = M.BucketAccessLogConfig,
        }),
        cors = schema.new({
            id = id.from(_N, "Bucket", "cors"),
            type = "structure",
            name = "cors",
            target_id = id.from(_N, "BucketCorsConfig"),
            target = M.BucketCorsConfig,
        }),
    },
})

M.BucketBundle = schema.new({
    id = id.from(_N, "BucketBundle"),
    type = "structure",
    members = {
        bundleId = schema.new({
            id = id.from(_N, "BucketBundle", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "BucketBundle", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        price = schema.new({
            id = id.from(_N, "BucketBundle", "price"),
            type = "float",
            name = "price",
            target_id = prelude.Float.id,
        }),
        storagePerMonthInGb = schema.new({
            id = id.from(_N, "BucketBundle", "storagePerMonthInGb"),
            type = "integer",
            name = "storagePerMonthInGb",
            target_id = prelude.Integer.id,
        }),
        transferPerMonthInGb = schema.new({
            id = id.from(_N, "BucketBundle", "transferPerMonthInGb"),
            type = "integer",
            name = "transferPerMonthInGb",
            target_id = prelude.Integer.id,
        }),
        isActive = schema.new({
            id = id.from(_N, "BucketBundle", "isActive"),
            type = "boolean",
            name = "isActive",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.Bundle = schema.new({
    id = id.from(_N, "Bundle"),
    type = "structure",
    members = {
        price = schema.new({
            id = id.from(_N, "Bundle", "price"),
            type = "float",
            name = "price",
            target_id = prelude.Float.id,
        }),
        cpuCount = schema.new({
            id = id.from(_N, "Bundle", "cpuCount"),
            type = "integer",
            name = "cpuCount",
            target_id = prelude.Integer.id,
        }),
        diskSizeInGb = schema.new({
            id = id.from(_N, "Bundle", "diskSizeInGb"),
            type = "integer",
            name = "diskSizeInGb",
            target_id = prelude.Integer.id,
        }),
        bundleId = schema.new({
            id = id.from(_N, "Bundle", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
        }),
        instanceType = schema.new({
            id = id.from(_N, "Bundle", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
        }),
        isActive = schema.new({
            id = id.from(_N, "Bundle", "isActive"),
            type = "boolean",
            name = "isActive",
            target_id = prelude.Boolean.id,
        }),
        name = schema.new({
            id = id.from(_N, "Bundle", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        power = schema.new({
            id = id.from(_N, "Bundle", "power"),
            type = "integer",
            name = "power",
            target_id = prelude.Integer.id,
        }),
        ramSizeInGb = schema.new({
            id = id.from(_N, "Bundle", "ramSizeInGb"),
            type = "float",
            name = "ramSizeInGb",
            target_id = prelude.Float.id,
        }),
        transferPerMonthInGb = schema.new({
            id = id.from(_N, "Bundle", "transferPerMonthInGb"),
            type = "integer",
            name = "transferPerMonthInGb",
            target_id = prelude.Integer.id,
        }),
        supportedPlatforms = schema.new({
            id = id.from(_N, "Bundle", "supportedPlatforms"),
            type = "list",
            name = "supportedPlatforms",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        supportedAppCategories = schema.new({
            id = id.from(_N, "Bundle", "supportedAppCategories"),
            type = "list",
            name = "supportedAppCategories",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        publicIpv4AddressCount = schema.new({
            id = id.from(_N, "Bundle", "publicIpv4AddressCount"),
            type = "integer",
            name = "publicIpv4AddressCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CacheBehavior = schema.new({
    id = id.from(_N, "CacheBehavior"),
    type = "structure",
    members = {
        behavior = schema.new({
            id = id.from(_N, "CacheBehavior", "behavior"),
            type = "string",
            name = "behavior",
            target_id = prelude.String.id,
        }),
    },
})

M.CacheBehaviorPerPath = schema.new({
    id = id.from(_N, "CacheBehaviorPerPath"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "CacheBehaviorPerPath", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        behavior = schema.new({
            id = id.from(_N, "CacheBehaviorPerPath", "behavior"),
            type = "string",
            name = "behavior",
            target_id = prelude.String.id,
        }),
    },
})

M.CookieObject = schema.new({
    id = id.from(_N, "CookieObject"),
    type = "structure",
    members = {
        option = schema.new({
            id = id.from(_N, "CookieObject", "option"),
            type = "string",
            name = "option",
            target_id = prelude.String.id,
        }),
        cookiesAllowList = schema.new({
            id = id.from(_N, "CookieObject", "cookiesAllowList"),
            type = "list",
            name = "cookiesAllowList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.HeaderObject = schema.new({
    id = id.from(_N, "HeaderObject"),
    type = "structure",
    members = {
        option = schema.new({
            id = id.from(_N, "HeaderObject", "option"),
            type = "string",
            name = "option",
            target_id = prelude.String.id,
        }),
        headersAllowList = schema.new({
            id = id.from(_N, "HeaderObject", "headersAllowList"),
            type = "list",
            name = "headersAllowList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.QueryStringObject = schema.new({
    id = id.from(_N, "QueryStringObject"),
    type = "structure",
    members = {
        option = schema.new({
            id = id.from(_N, "QueryStringObject", "option"),
            type = "boolean",
            name = "option",
            target_id = prelude.Boolean.id,
        }),
        queryStringsAllowList = schema.new({
            id = id.from(_N, "QueryStringObject", "queryStringsAllowList"),
            type = "list",
            name = "queryStringsAllowList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CacheSettings = schema.new({
    id = id.from(_N, "CacheSettings"),
    type = "structure",
    members = {
        defaultTTL = schema.new({
            id = id.from(_N, "CacheSettings", "defaultTTL"),
            type = "long",
            name = "defaultTTL",
            target_id = prelude.Long.id,
        }),
        minimumTTL = schema.new({
            id = id.from(_N, "CacheSettings", "minimumTTL"),
            type = "long",
            name = "minimumTTL",
            target_id = prelude.Long.id,
        }),
        maximumTTL = schema.new({
            id = id.from(_N, "CacheSettings", "maximumTTL"),
            type = "long",
            name = "maximumTTL",
            target_id = prelude.Long.id,
        }),
        allowedHTTPMethods = schema.new({
            id = id.from(_N, "CacheSettings", "allowedHTTPMethods"),
            type = "string",
            name = "allowedHTTPMethods",
            target_id = prelude.String.id,
        }),
        cachedHTTPMethods = schema.new({
            id = id.from(_N, "CacheSettings", "cachedHTTPMethods"),
            type = "string",
            name = "cachedHTTPMethods",
            target_id = prelude.String.id,
        }),
        forwardedCookies = schema.new({
            id = id.from(_N, "CacheSettings", "forwardedCookies"),
            type = "structure",
            name = "forwardedCookies",
            target_id = id.from(_N, "CookieObject"),
            target = M.CookieObject,
        }),
        forwardedHeaders = schema.new({
            id = id.from(_N, "CacheSettings", "forwardedHeaders"),
            type = "structure",
            name = "forwardedHeaders",
            target_id = id.from(_N, "HeaderObject"),
            target = M.HeaderObject,
        }),
        forwardedQueryStrings = schema.new({
            id = id.from(_N, "CacheSettings", "forwardedQueryStrings"),
            type = "structure",
            name = "forwardedQueryStrings",
            target_id = id.from(_N, "QueryStringObject"),
            target = M.QueryStringObject,
        }),
    },
})

M.DnsRecordCreationState = schema.new({
    id = id.from(_N, "DnsRecordCreationState"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "DnsRecordCreationState", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "DnsRecordCreationState", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceRecord = schema.new({
    id = id.from(_N, "ResourceRecord"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ResourceRecord", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "ResourceRecord", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "ResourceRecord", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.DomainValidationRecord = schema.new({
    id = id.from(_N, "DomainValidationRecord"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "DomainValidationRecord", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        resourceRecord = schema.new({
            id = id.from(_N, "DomainValidationRecord", "resourceRecord"),
            type = "structure",
            name = "resourceRecord",
            target_id = id.from(_N, "ResourceRecord"),
            target = M.ResourceRecord,
        }),
        dnsRecordCreationState = schema.new({
            id = id.from(_N, "DomainValidationRecord", "dnsRecordCreationState"),
            type = "structure",
            name = "dnsRecordCreationState",
            target_id = id.from(_N, "DnsRecordCreationState"),
            target = M.DnsRecordCreationState,
        }),
        validationStatus = schema.new({
            id = id.from(_N, "DomainValidationRecord", "validationStatus"),
            type = "string",
            name = "validationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.RenewalSummary = schema.new({
    id = id.from(_N, "RenewalSummary"),
    type = "structure",
    members = {
        domainValidationRecords = schema.new({
            id = id.from(_N, "RenewalSummary", "domainValidationRecords"),
            type = "list",
            name = "domainValidationRecords",
            target_id = prelude.Document.id,
            list_member = M.DomainValidationRecord,
        }),
        renewalStatus = schema.new({
            id = id.from(_N, "RenewalSummary", "renewalStatus"),
            type = "string",
            name = "renewalStatus",
            target_id = prelude.String.id,
        }),
        renewalStatusReason = schema.new({
            id = id.from(_N, "RenewalSummary", "renewalStatusReason"),
            type = "string",
            name = "renewalStatusReason",
            target_id = prelude.String.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "RenewalSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.Certificate = schema.new({
    id = id.from(_N, "Certificate"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Certificate", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Certificate", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        domainName = schema.new({
            id = id.from(_N, "Certificate", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Certificate", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        serialNumber = schema.new({
            id = id.from(_N, "Certificate", "serialNumber"),
            type = "string",
            name = "serialNumber",
            target_id = prelude.String.id,
        }),
        subjectAlternativeNames = schema.new({
            id = id.from(_N, "Certificate", "subjectAlternativeNames"),
            type = "list",
            name = "subjectAlternativeNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        domainValidationRecords = schema.new({
            id = id.from(_N, "Certificate", "domainValidationRecords"),
            type = "list",
            name = "domainValidationRecords",
            target_id = prelude.Document.id,
            list_member = M.DomainValidationRecord,
        }),
        requestFailureReason = schema.new({
            id = id.from(_N, "Certificate", "requestFailureReason"),
            type = "string",
            name = "requestFailureReason",
            target_id = prelude.String.id,
        }),
        inUseResourceCount = schema.new({
            id = id.from(_N, "Certificate", "inUseResourceCount"),
            type = "integer",
            name = "inUseResourceCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        keyAlgorithm = schema.new({
            id = id.from(_N, "Certificate", "keyAlgorithm"),
            type = "string",
            name = "keyAlgorithm",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Certificate", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        issuedAt = schema.new({
            id = id.from(_N, "Certificate", "issuedAt"),
            type = "timestamp",
            name = "issuedAt",
            target_id = prelude.Timestamp.id,
        }),
        issuerCA = schema.new({
            id = id.from(_N, "Certificate", "issuerCA"),
            type = "string",
            name = "issuerCA",
            target_id = prelude.String.id,
        }),
        notBefore = schema.new({
            id = id.from(_N, "Certificate", "notBefore"),
            type = "timestamp",
            name = "notBefore",
            target_id = prelude.Timestamp.id,
        }),
        notAfter = schema.new({
            id = id.from(_N, "Certificate", "notAfter"),
            type = "timestamp",
            name = "notAfter",
            target_id = prelude.Timestamp.id,
        }),
        eligibleToRenew = schema.new({
            id = id.from(_N, "Certificate", "eligibleToRenew"),
            type = "string",
            name = "eligibleToRenew",
            target_id = prelude.String.id,
        }),
        renewalSummary = schema.new({
            id = id.from(_N, "Certificate", "renewalSummary"),
            type = "structure",
            name = "renewalSummary",
            target_id = id.from(_N, "RenewalSummary"),
            target = M.RenewalSummary,
        }),
        revokedAt = schema.new({
            id = id.from(_N, "Certificate", "revokedAt"),
            type = "timestamp",
            name = "revokedAt",
            target_id = prelude.Timestamp.id,
        }),
        revocationReason = schema.new({
            id = id.from(_N, "Certificate", "revocationReason"),
            type = "string",
            name = "revocationReason",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Certificate", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        supportCode = schema.new({
            id = id.from(_N, "Certificate", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
    },
})

M.CertificateSummary = schema.new({
    id = id.from(_N, "CertificateSummary"),
    type = "structure",
    members = {
        certificateArn = schema.new({
            id = id.from(_N, "CertificateSummary", "certificateArn"),
            type = "string",
            name = "certificateArn",
            target_id = prelude.String.id,
        }),
        certificateName = schema.new({
            id = id.from(_N, "CertificateSummary", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
        }),
        domainName = schema.new({
            id = id.from(_N, "CertificateSummary", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        certificateDetail = schema.new({
            id = id.from(_N, "CertificateSummary", "certificateDetail"),
            type = "structure",
            name = "certificateDetail",
            target_id = id.from(_N, "Certificate"),
            target = M.Certificate,
        }),
        tags = schema.new({
            id = id.from(_N, "CertificateSummary", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PortInfo = schema.new({
    id = id.from(_N, "PortInfo"),
    type = "structure",
    members = {
        fromPort = schema.new({
            id = id.from(_N, "PortInfo", "fromPort"),
            type = "integer",
            name = "fromPort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        toPort = schema.new({
            id = id.from(_N, "PortInfo", "toPort"),
            type = "integer",
            name = "toPort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "PortInfo", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
        }),
        cidrs = schema.new({
            id = id.from(_N, "PortInfo", "cidrs"),
            type = "list",
            name = "cidrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ipv6Cidrs = schema.new({
            id = id.from(_N, "PortInfo", "ipv6Cidrs"),
            type = "list",
            name = "ipv6Cidrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        cidrListAliases = schema.new({
            id = id.from(_N, "PortInfo", "cidrListAliases"),
            type = "list",
            name = "cidrListAliases",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CloseInstancePublicPortsInput = schema.new({
    id = id.from(_N, "CloseInstancePublicPortsInput"),
    type = "structure",
    members = {
        portInfo = schema.new({
            id = id.from(_N, "CloseInstancePublicPortsInput", "portInfo"),
            type = "structure",
            name = "portInfo",
            target_id = id.from(_N, "PortInfo"),
            target = M.PortInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instanceName = schema.new({
            id = id.from(_N, "CloseInstancePublicPortsInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CloseInstancePublicPortsOutput = schema.new({
    id = id.from(_N, "CloseInstancePublicPortsOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "CloseInstancePublicPortsOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.DestinationInfo = schema.new({
    id = id.from(_N, "DestinationInfo"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DestinationInfo", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        service = schema.new({
            id = id.from(_N, "DestinationInfo", "service"),
            type = "string",
            name = "service",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudFormationStackRecordSourceInfo = schema.new({
    id = id.from(_N, "CloudFormationStackRecordSourceInfo"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "CloudFormationStackRecordSourceInfo", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CloudFormationStackRecordSourceInfo", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CloudFormationStackRecordSourceInfo", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudFormationStackRecord = schema.new({
    id = id.from(_N, "CloudFormationStackRecord"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CloudFormationStackRecord", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "CloudFormationStackRecord", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CloudFormationStackRecord", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "CloudFormationStackRecord", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "CloudFormationStackRecord", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "CloudFormationStackRecord", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        sourceInfo = schema.new({
            id = id.from(_N, "CloudFormationStackRecord", "sourceInfo"),
            type = "list",
            name = "sourceInfo",
            target_id = prelude.Document.id,
            list_member = M.CloudFormationStackRecordSourceInfo,
        }),
        destinationInfo = schema.new({
            id = id.from(_N, "CloudFormationStackRecord", "destinationInfo"),
            type = "structure",
            name = "destinationInfo",
            target_id = id.from(_N, "DestinationInfo"),
            target = M.DestinationInfo,
        }),
    },
})

M.ContactMethod = schema.new({
    id = id.from(_N, "ContactMethod"),
    type = "structure",
    members = {
        contactEndpoint = schema.new({
            id = id.from(_N, "ContactMethod", "contactEndpoint"),
            type = "string",
            name = "contactEndpoint",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ContactMethod", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        protocol = schema.new({
            id = id.from(_N, "ContactMethod", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ContactMethod", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ContactMethod", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ContactMethod", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "ContactMethod", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "ContactMethod", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "ContactMethod", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ContactMethod", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.Container = schema.new({
    id = id.from(_N, "Container"),
    type = "structure",
    members = {
        image = schema.new({
            id = id.from(_N, "Container", "image"),
            type = "string",
            name = "image",
            target_id = prelude.String.id,
        }),
        command = schema.new({
            id = id.from(_N, "Container", "command"),
            type = "list",
            name = "command",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        environment = schema.new({
            id = id.from(_N, "Container", "environment"),
            type = "map",
            name = "environment",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ports = schema.new({
            id = id.from(_N, "Container", "ports"),
            type = "map",
            name = "ports",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ContainerImage = schema.new({
    id = id.from(_N, "ContainerImage"),
    type = "structure",
    members = {
        image = schema.new({
            id = id.from(_N, "ContainerImage", "image"),
            type = "string",
            name = "image",
            target_id = prelude.String.id,
        }),
        digest = schema.new({
            id = id.from(_N, "ContainerImage", "digest"),
            type = "string",
            name = "digest",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ContainerImage", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ContainerServiceHealthCheckConfig = schema.new({
    id = id.from(_N, "ContainerServiceHealthCheckConfig"),
    type = "structure",
    members = {
        healthyThreshold = schema.new({
            id = id.from(_N, "ContainerServiceHealthCheckConfig", "healthyThreshold"),
            type = "integer",
            name = "healthyThreshold",
            target_id = prelude.Integer.id,
        }),
        unhealthyThreshold = schema.new({
            id = id.from(_N, "ContainerServiceHealthCheckConfig", "unhealthyThreshold"),
            type = "integer",
            name = "unhealthyThreshold",
            target_id = prelude.Integer.id,
        }),
        timeoutSeconds = schema.new({
            id = id.from(_N, "ContainerServiceHealthCheckConfig", "timeoutSeconds"),
            type = "integer",
            name = "timeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        intervalSeconds = schema.new({
            id = id.from(_N, "ContainerServiceHealthCheckConfig", "intervalSeconds"),
            type = "integer",
            name = "intervalSeconds",
            target_id = prelude.Integer.id,
        }),
        path = schema.new({
            id = id.from(_N, "ContainerServiceHealthCheckConfig", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        successCodes = schema.new({
            id = id.from(_N, "ContainerServiceHealthCheckConfig", "successCodes"),
            type = "string",
            name = "successCodes",
            target_id = prelude.String.id,
        }),
    },
})

M.ContainerServiceEndpoint = schema.new({
    id = id.from(_N, "ContainerServiceEndpoint"),
    type = "structure",
    members = {
        containerName = schema.new({
            id = id.from(_N, "ContainerServiceEndpoint", "containerName"),
            type = "string",
            name = "containerName",
            target_id = prelude.String.id,
        }),
        containerPort = schema.new({
            id = id.from(_N, "ContainerServiceEndpoint", "containerPort"),
            type = "integer",
            name = "containerPort",
            target_id = prelude.Integer.id,
        }),
        healthCheck = schema.new({
            id = id.from(_N, "ContainerServiceEndpoint", "healthCheck"),
            type = "structure",
            name = "healthCheck",
            target_id = id.from(_N, "ContainerServiceHealthCheckConfig"),
            target = M.ContainerServiceHealthCheckConfig,
        }),
    },
})

M.ContainerServiceDeployment = schema.new({
    id = id.from(_N, "ContainerServiceDeployment"),
    type = "structure",
    members = {
        version = schema.new({
            id = id.from(_N, "ContainerServiceDeployment", "version"),
            type = "integer",
            name = "version",
            target_id = prelude.Integer.id,
        }),
        state = schema.new({
            id = id.from(_N, "ContainerServiceDeployment", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        containers = schema.new({
            id = id.from(_N, "ContainerServiceDeployment", "containers"),
            type = "map",
            name = "containers",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Container,
        }),
        publicEndpoint = schema.new({
            id = id.from(_N, "ContainerServiceDeployment", "publicEndpoint"),
            type = "structure",
            name = "publicEndpoint",
            target_id = id.from(_N, "ContainerServiceEndpoint"),
            target = M.ContainerServiceEndpoint,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ContainerServiceDeployment", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ContainerServiceECRImagePullerRole = schema.new({
    id = id.from(_N, "ContainerServiceECRImagePullerRole"),
    type = "structure",
    members = {
        isActive = schema.new({
            id = id.from(_N, "ContainerServiceECRImagePullerRole", "isActive"),
            type = "boolean",
            name = "isActive",
            target_id = prelude.Boolean.id,
        }),
        principalArn = schema.new({
            id = id.from(_N, "ContainerServiceECRImagePullerRole", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
        }),
    },
})

M.PrivateRegistryAccess = schema.new({
    id = id.from(_N, "PrivateRegistryAccess"),
    type = "structure",
    members = {
        ecrImagePullerRole = schema.new({
            id = id.from(_N, "PrivateRegistryAccess", "ecrImagePullerRole"),
            type = "structure",
            name = "ecrImagePullerRole",
            target_id = id.from(_N, "ContainerServiceECRImagePullerRole"),
            target = M.ContainerServiceECRImagePullerRole,
        }),
    },
})

M.ContainerServiceStateDetail = schema.new({
    id = id.from(_N, "ContainerServiceStateDetail"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "ContainerServiceStateDetail", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ContainerServiceStateDetail", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ContainerService = schema.new({
    id = id.from(_N, "ContainerService"),
    type = "structure",
    members = {
        containerServiceName = schema.new({
            id = id.from(_N, "ContainerService", "containerServiceName"),
            type = "string",
            name = "containerServiceName",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ContainerService", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ContainerService", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "ContainerService", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "ContainerService", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ContainerService", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        power = schema.new({
            id = id.from(_N, "ContainerService", "power"),
            type = "string",
            name = "power",
            target_id = prelude.String.id,
        }),
        powerId = schema.new({
            id = id.from(_N, "ContainerService", "powerId"),
            type = "string",
            name = "powerId",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "ContainerService", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        stateDetail = schema.new({
            id = id.from(_N, "ContainerService", "stateDetail"),
            type = "structure",
            name = "stateDetail",
            target_id = id.from(_N, "ContainerServiceStateDetail"),
            target = M.ContainerServiceStateDetail,
        }),
        scale = schema.new({
            id = id.from(_N, "ContainerService", "scale"),
            type = "integer",
            name = "scale",
            target_id = prelude.Integer.id,
        }),
        currentDeployment = schema.new({
            id = id.from(_N, "ContainerService", "currentDeployment"),
            type = "structure",
            name = "currentDeployment",
            target_id = id.from(_N, "ContainerServiceDeployment"),
            target = M.ContainerServiceDeployment,
        }),
        nextDeployment = schema.new({
            id = id.from(_N, "ContainerService", "nextDeployment"),
            type = "structure",
            name = "nextDeployment",
            target_id = id.from(_N, "ContainerServiceDeployment"),
            target = M.ContainerServiceDeployment,
        }),
        isDisabled = schema.new({
            id = id.from(_N, "ContainerService", "isDisabled"),
            type = "boolean",
            name = "isDisabled",
            target_id = prelude.Boolean.id,
        }),
        principalArn = schema.new({
            id = id.from(_N, "ContainerService", "principalArn"),
            type = "string",
            name = "principalArn",
            target_id = prelude.String.id,
        }),
        privateDomainName = schema.new({
            id = id.from(_N, "ContainerService", "privateDomainName"),
            type = "string",
            name = "privateDomainName",
            target_id = prelude.String.id,
        }),
        publicDomainNames = schema.new({
            id = id.from(_N, "ContainerService", "publicDomainNames"),
            type = "map",
            name = "publicDomainNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        url = schema.new({
            id = id.from(_N, "ContainerService", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
        }),
        privateRegistryAccess = schema.new({
            id = id.from(_N, "ContainerService", "privateRegistryAccess"),
            type = "structure",
            name = "privateRegistryAccess",
            target_id = id.from(_N, "PrivateRegistryAccess"),
            target = M.PrivateRegistryAccess,
        }),
    },
})

M.EndpointRequest = schema.new({
    id = id.from(_N, "EndpointRequest"),
    type = "structure",
    members = {
        containerName = schema.new({
            id = id.from(_N, "EndpointRequest", "containerName"),
            type = "string",
            name = "containerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        containerPort = schema.new({
            id = id.from(_N, "EndpointRequest", "containerPort"),
            type = "integer",
            name = "containerPort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        healthCheck = schema.new({
            id = id.from(_N, "EndpointRequest", "healthCheck"),
            type = "structure",
            name = "healthCheck",
            target_id = id.from(_N, "ContainerServiceHealthCheckConfig"),
            target = M.ContainerServiceHealthCheckConfig,
        }),
    },
})

M.ContainerServiceDeploymentRequest = schema.new({
    id = id.from(_N, "ContainerServiceDeploymentRequest"),
    type = "structure",
    members = {
        containers = schema.new({
            id = id.from(_N, "ContainerServiceDeploymentRequest", "containers"),
            type = "map",
            name = "containers",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Container,
        }),
        publicEndpoint = schema.new({
            id = id.from(_N, "ContainerServiceDeploymentRequest", "publicEndpoint"),
            type = "structure",
            name = "publicEndpoint",
            target_id = id.from(_N, "EndpointRequest"),
            target = M.EndpointRequest,
        }),
    },
})

M.ContainerServiceECRImagePullerRoleRequest = schema.new({
    id = id.from(_N, "ContainerServiceECRImagePullerRoleRequest"),
    type = "structure",
    members = {
        isActive = schema.new({
            id = id.from(_N, "ContainerServiceECRImagePullerRoleRequest", "isActive"),
            type = "boolean",
            name = "isActive",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ContainerServiceLogEvent = schema.new({
    id = id.from(_N, "ContainerServiceLogEvent"),
    type = "structure",
    members = {
        createdAt = schema.new({
            id = id.from(_N, "ContainerServiceLogEvent", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        message = schema.new({
            id = id.from(_N, "ContainerServiceLogEvent", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ContainerServicePower = schema.new({
    id = id.from(_N, "ContainerServicePower"),
    type = "structure",
    members = {
        powerId = schema.new({
            id = id.from(_N, "ContainerServicePower", "powerId"),
            type = "string",
            name = "powerId",
            target_id = prelude.String.id,
        }),
        price = schema.new({
            id = id.from(_N, "ContainerServicePower", "price"),
            type = "float",
            name = "price",
            target_id = prelude.Float.id,
        }),
        cpuCount = schema.new({
            id = id.from(_N, "ContainerServicePower", "cpuCount"),
            type = "float",
            name = "cpuCount",
            target_id = prelude.Float.id,
        }),
        ramSizeInGb = schema.new({
            id = id.from(_N, "ContainerServicePower", "ramSizeInGb"),
            type = "float",
            name = "ramSizeInGb",
            target_id = prelude.Float.id,
        }),
        name = schema.new({
            id = id.from(_N, "ContainerServicePower", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        isActive = schema.new({
            id = id.from(_N, "ContainerServicePower", "isActive"),
            type = "boolean",
            name = "isActive",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ContainerServiceRegistryLogin = schema.new({
    id = id.from(_N, "ContainerServiceRegistryLogin"),
    type = "structure",
    members = {
        username = schema.new({
            id = id.from(_N, "ContainerServiceRegistryLogin", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
        }),
        password = schema.new({
            id = id.from(_N, "ContainerServiceRegistryLogin", "password"),
            type = "string",
            name = "password",
            target_id = prelude.String.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "ContainerServiceRegistryLogin", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        registry = schema.new({
            id = id.from(_N, "ContainerServiceRegistryLogin", "registry"),
            type = "string",
            name = "registry",
            target_id = prelude.String.id,
        }),
    },
})

M.CopySnapshotInput = schema.new({
    id = id.from(_N, "CopySnapshotInput"),
    type = "structure",
    members = {
        sourceSnapshotName = schema.new({
            id = id.from(_N, "CopySnapshotInput", "sourceSnapshotName"),
            type = "string",
            name = "sourceSnapshotName",
            target_id = prelude.String.id,
        }),
        sourceResourceName = schema.new({
            id = id.from(_N, "CopySnapshotInput", "sourceResourceName"),
            type = "string",
            name = "sourceResourceName",
            target_id = prelude.String.id,
        }),
        restoreDate = schema.new({
            id = id.from(_N, "CopySnapshotInput", "restoreDate"),
            type = "string",
            name = "restoreDate",
            target_id = prelude.String.id,
        }),
        useLatestRestorableAutoSnapshot = schema.new({
            id = id.from(_N, "CopySnapshotInput", "useLatestRestorableAutoSnapshot"),
            type = "boolean",
            name = "useLatestRestorableAutoSnapshot",
            target_id = prelude.Boolean.id,
        }),
        targetSnapshotName = schema.new({
            id = id.from(_N, "CopySnapshotInput", "targetSnapshotName"),
            type = "string",
            name = "targetSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceRegion = schema.new({
            id = id.from(_N, "CopySnapshotInput", "sourceRegion"),
            type = "string",
            name = "sourceRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CopySnapshotOutput = schema.new({
    id = id.from(_N, "CopySnapshotOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CopySnapshotOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.TimePeriod = schema.new({
    id = id.from(_N, "TimePeriod"),
    type = "structure",
    members = {
        start = schema.new({
            id = id.from(_N, "TimePeriod", "start"),
            type = "timestamp",
            name = "start",
            target_id = prelude.Timestamp.id,
        }),
        end = schema.new({
            id = id.from(_N, "TimePeriod", "end"),
            type = "timestamp",
            name = "end",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.EstimateByTime = schema.new({
    id = id.from(_N, "EstimateByTime"),
    type = "structure",
    members = {
        usageCost = schema.new({
            id = id.from(_N, "EstimateByTime", "usageCost"),
            type = "double",
            name = "usageCost",
            target_id = prelude.Double.id,
        }),
        pricingUnit = schema.new({
            id = id.from(_N, "EstimateByTime", "pricingUnit"),
            type = "string",
            name = "pricingUnit",
            target_id = prelude.String.id,
        }),
        unit = schema.new({
            id = id.from(_N, "EstimateByTime", "unit"),
            type = "double",
            name = "unit",
            target_id = prelude.Double.id,
        }),
        currency = schema.new({
            id = id.from(_N, "EstimateByTime", "currency"),
            type = "string",
            name = "currency",
            target_id = prelude.String.id,
        }),
        timePeriod = schema.new({
            id = id.from(_N, "EstimateByTime", "timePeriod"),
            type = "structure",
            name = "timePeriod",
            target_id = id.from(_N, "TimePeriod"),
            target = M.TimePeriod,
        }),
    },
})

M.CostEstimate = schema.new({
    id = id.from(_N, "CostEstimate"),
    type = "structure",
    members = {
        usageType = schema.new({
            id = id.from(_N, "CostEstimate", "usageType"),
            type = "string",
            name = "usageType",
            target_id = prelude.String.id,
        }),
        resultsByTime = schema.new({
            id = id.from(_N, "CostEstimate", "resultsByTime"),
            type = "list",
            name = "resultsByTime",
            target_id = prelude.Document.id,
            list_member = M.EstimateByTime,
        }),
    },
})

M.CreateBucketInput = schema.new({
    id = id.from(_N, "CreateBucketInput"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "CreateBucketInput", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleId = schema.new({
            id = id.from(_N, "CreateBucketInput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateBucketInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        enableObjectVersioning = schema.new({
            id = id.from(_N, "CreateBucketInput", "enableObjectVersioning"),
            type = "boolean",
            name = "enableObjectVersioning",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateBucketOutput = schema.new({
    id = id.from(_N, "CreateBucketOutput"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "CreateBucketOutput", "bucket"),
            type = "structure",
            name = "bucket",
            target_id = id.from(_N, "Bucket"),
            target = M.Bucket,
        }),
        operations = schema.new({
            id = id.from(_N, "CreateBucketOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.CreateBucketAccessKeyInput = schema.new({
    id = id.from(_N, "CreateBucketAccessKeyInput"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "CreateBucketAccessKeyInput", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateBucketAccessKeyOutput = schema.new({
    id = id.from(_N, "CreateBucketAccessKeyOutput"),
    type = "structure",
    members = {
        accessKey = schema.new({
            id = id.from(_N, "CreateBucketAccessKeyOutput", "accessKey"),
            type = "structure",
            name = "accessKey",
            target_id = id.from(_N, "AccessKey"),
            target = M.AccessKey,
        }),
        operations = schema.new({
            id = id.from(_N, "CreateBucketAccessKeyOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.CreateCertificateInput = schema.new({
    id = id.from(_N, "CreateCertificateInput"),
    type = "structure",
    members = {
        certificateName = schema.new({
            id = id.from(_N, "CreateCertificateInput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainName = schema.new({
            id = id.from(_N, "CreateCertificateInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subjectAlternativeNames = schema.new({
            id = id.from(_N, "CreateCertificateInput", "subjectAlternativeNames"),
            type = "list",
            name = "subjectAlternativeNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateCertificateInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateCertificateOutput = schema.new({
    id = id.from(_N, "CreateCertificateOutput"),
    type = "structure",
    members = {
        certificate = schema.new({
            id = id.from(_N, "CreateCertificateOutput", "certificate"),
            type = "structure",
            name = "certificate",
            target_id = id.from(_N, "CertificateSummary"),
            target = M.CertificateSummary,
        }),
        operations = schema.new({
            id = id.from(_N, "CreateCertificateOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.InstanceEntry = schema.new({
    id = id.from(_N, "InstanceEntry"),
    type = "structure",
    members = {
        sourceName = schema.new({
            id = id.from(_N, "InstanceEntry", "sourceName"),
            type = "string",
            name = "sourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instanceType = schema.new({
            id = id.from(_N, "InstanceEntry", "instanceType"),
            type = "string",
            name = "instanceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portInfoSource = schema.new({
            id = id.from(_N, "InstanceEntry", "portInfoSource"),
            type = "string",
            name = "portInfoSource",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userData = schema.new({
            id = id.from(_N, "InstanceEntry", "userData"),
            type = "string",
            name = "userData",
            target_id = prelude.String.id,
        }),
        availabilityZone = schema.new({
            id = id.from(_N, "InstanceEntry", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateCloudFormationStackInput = schema.new({
    id = id.from(_N, "CreateCloudFormationStackInput"),
    type = "structure",
    members = {
        instances = schema.new({
            id = id.from(_N, "CreateCloudFormationStackInput", "instances"),
            type = "list",
            name = "instances",
            target_id = prelude.Document.id,
            list_member = M.InstanceEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateCloudFormationStackOutput = schema.new({
    id = id.from(_N, "CreateCloudFormationStackOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateCloudFormationStackOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.CreateContactMethodInput = schema.new({
    id = id.from(_N, "CreateContactMethodInput"),
    type = "structure",
    members = {
        protocol = schema.new({
            id = id.from(_N, "CreateContactMethodInput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        contactEndpoint = schema.new({
            id = id.from(_N, "CreateContactMethodInput", "contactEndpoint"),
            type = "string",
            name = "contactEndpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateContactMethodInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateContactMethodOutput = schema.new({
    id = id.from(_N, "CreateContactMethodOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateContactMethodOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.PrivateRegistryAccessRequest = schema.new({
    id = id.from(_N, "PrivateRegistryAccessRequest"),
    type = "structure",
    members = {
        ecrImagePullerRole = schema.new({
            id = id.from(_N, "PrivateRegistryAccessRequest", "ecrImagePullerRole"),
            type = "structure",
            name = "ecrImagePullerRole",
            target_id = id.from(_N, "ContainerServiceECRImagePullerRoleRequest"),
            target = M.ContainerServiceECRImagePullerRoleRequest,
        }),
    },
})

M.CreateContainerServiceInput = schema.new({
    id = id.from(_N, "CreateContainerServiceInput"),
    type = "structure",
    members = {
        serviceName = schema.new({
            id = id.from(_N, "CreateContainerServiceInput", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        power = schema.new({
            id = id.from(_N, "CreateContainerServiceInput", "power"),
            type = "string",
            name = "power",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        scale = schema.new({
            id = id.from(_N, "CreateContainerServiceInput", "scale"),
            type = "integer",
            name = "scale",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateContainerServiceInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        publicDomainNames = schema.new({
            id = id.from(_N, "CreateContainerServiceInput", "publicDomainNames"),
            type = "map",
            name = "publicDomainNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        deployment = schema.new({
            id = id.from(_N, "CreateContainerServiceInput", "deployment"),
            type = "structure",
            name = "deployment",
            target_id = id.from(_N, "ContainerServiceDeploymentRequest"),
            target = M.ContainerServiceDeploymentRequest,
        }),
        privateRegistryAccess = schema.new({
            id = id.from(_N, "CreateContainerServiceInput", "privateRegistryAccess"),
            type = "structure",
            name = "privateRegistryAccess",
            target_id = id.from(_N, "PrivateRegistryAccessRequest"),
            target = M.PrivateRegistryAccessRequest,
        }),
    },
})

M.CreateContainerServiceOutput = schema.new({
    id = id.from(_N, "CreateContainerServiceOutput"),
    type = "structure",
    members = {
        containerService = schema.new({
            id = id.from(_N, "CreateContainerServiceOutput", "containerService"),
            type = "structure",
            name = "containerService",
            target_id = id.from(_N, "ContainerService"),
            target = M.ContainerService,
        }),
    },
})

M.CreateContainerServiceDeploymentInput = schema.new({
    id = id.from(_N, "CreateContainerServiceDeploymentInput"),
    type = "structure",
    members = {
        serviceName = schema.new({
            id = id.from(_N, "CreateContainerServiceDeploymentInput", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        containers = schema.new({
            id = id.from(_N, "CreateContainerServiceDeploymentInput", "containers"),
            type = "map",
            name = "containers",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Container,
        }),
        publicEndpoint = schema.new({
            id = id.from(_N, "CreateContainerServiceDeploymentInput", "publicEndpoint"),
            type = "structure",
            name = "publicEndpoint",
            target_id = id.from(_N, "EndpointRequest"),
            target = M.EndpointRequest,
        }),
    },
})

M.CreateContainerServiceDeploymentOutput = schema.new({
    id = id.from(_N, "CreateContainerServiceDeploymentOutput"),
    type = "structure",
    members = {
        containerService = schema.new({
            id = id.from(_N, "CreateContainerServiceDeploymentOutput", "containerService"),
            type = "structure",
            name = "containerService",
            target_id = id.from(_N, "ContainerService"),
            target = M.ContainerService,
        }),
    },
})

M.CreateContainerServiceRegistryLoginInput = schema.new({
    id = id.from(_N, "CreateContainerServiceRegistryLoginInput"),
    type = "structure",
})

M.CreateContainerServiceRegistryLoginOutput = schema.new({
    id = id.from(_N, "CreateContainerServiceRegistryLoginOutput"),
    type = "structure",
    members = {
        registryLogin = schema.new({
            id = id.from(_N, "CreateContainerServiceRegistryLoginOutput", "registryLogin"),
            type = "structure",
            name = "registryLogin",
            target_id = id.from(_N, "ContainerServiceRegistryLogin"),
            target = M.ContainerServiceRegistryLogin,
        }),
    },
})

M.CreateDiskInput = schema.new({
    id = id.from(_N, "CreateDiskInput"),
    type = "structure",
    members = {
        diskName = schema.new({
            id = id.from(_N, "CreateDiskInput", "diskName"),
            type = "string",
            name = "diskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        availabilityZone = schema.new({
            id = id.from(_N, "CreateDiskInput", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sizeInGb = schema.new({
            id = id.from(_N, "CreateDiskInput", "sizeInGb"),
            type = "integer",
            name = "sizeInGb",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDiskInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        addOns = schema.new({
            id = id.from(_N, "CreateDiskInput", "addOns"),
            type = "list",
            name = "addOns",
            target_id = prelude.Document.id,
            list_member = M.AddOnRequest,
        }),
    },
})

M.CreateDiskOutput = schema.new({
    id = id.from(_N, "CreateDiskOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateDiskOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.CreateDiskFromSnapshotInput = schema.new({
    id = id.from(_N, "CreateDiskFromSnapshotInput"),
    type = "structure",
    members = {
        diskName = schema.new({
            id = id.from(_N, "CreateDiskFromSnapshotInput", "diskName"),
            type = "string",
            name = "diskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        diskSnapshotName = schema.new({
            id = id.from(_N, "CreateDiskFromSnapshotInput", "diskSnapshotName"),
            type = "string",
            name = "diskSnapshotName",
            target_id = prelude.String.id,
        }),
        availabilityZone = schema.new({
            id = id.from(_N, "CreateDiskFromSnapshotInput", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sizeInGb = schema.new({
            id = id.from(_N, "CreateDiskFromSnapshotInput", "sizeInGb"),
            type = "integer",
            name = "sizeInGb",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDiskFromSnapshotInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        addOns = schema.new({
            id = id.from(_N, "CreateDiskFromSnapshotInput", "addOns"),
            type = "list",
            name = "addOns",
            target_id = prelude.Document.id,
            list_member = M.AddOnRequest,
        }),
        sourceDiskName = schema.new({
            id = id.from(_N, "CreateDiskFromSnapshotInput", "sourceDiskName"),
            type = "string",
            name = "sourceDiskName",
            target_id = prelude.String.id,
        }),
        restoreDate = schema.new({
            id = id.from(_N, "CreateDiskFromSnapshotInput", "restoreDate"),
            type = "string",
            name = "restoreDate",
            target_id = prelude.String.id,
        }),
        useLatestRestorableAutoSnapshot = schema.new({
            id = id.from(_N, "CreateDiskFromSnapshotInput", "useLatestRestorableAutoSnapshot"),
            type = "boolean",
            name = "useLatestRestorableAutoSnapshot",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateDiskFromSnapshotOutput = schema.new({
    id = id.from(_N, "CreateDiskFromSnapshotOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateDiskFromSnapshotOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.CreateDiskSnapshotInput = schema.new({
    id = id.from(_N, "CreateDiskSnapshotInput"),
    type = "structure",
    members = {
        diskName = schema.new({
            id = id.from(_N, "CreateDiskSnapshotInput", "diskName"),
            type = "string",
            name = "diskName",
            target_id = prelude.String.id,
        }),
        diskSnapshotName = schema.new({
            id = id.from(_N, "CreateDiskSnapshotInput", "diskSnapshotName"),
            type = "string",
            name = "diskSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instanceName = schema.new({
            id = id.from(_N, "CreateDiskSnapshotInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDiskSnapshotInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateDiskSnapshotOutput = schema.new({
    id = id.from(_N, "CreateDiskSnapshotOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateDiskSnapshotOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.InputOrigin = schema.new({
    id = id.from(_N, "InputOrigin"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "InputOrigin", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        regionName = schema.new({
            id = id.from(_N, "InputOrigin", "regionName"),
            type = "string",
            name = "regionName",
            target_id = prelude.String.id,
        }),
        protocolPolicy = schema.new({
            id = id.from(_N, "InputOrigin", "protocolPolicy"),
            type = "string",
            name = "protocolPolicy",
            target_id = prelude.String.id,
        }),
        responseTimeout = schema.new({
            id = id.from(_N, "InputOrigin", "responseTimeout"),
            type = "integer",
            name = "responseTimeout",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateDistributionInput = schema.new({
    id = id.from(_N, "CreateDistributionInput"),
    type = "structure",
    members = {
        distributionName = schema.new({
            id = id.from(_N, "CreateDistributionInput", "distributionName"),
            type = "string",
            name = "distributionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        origin = schema.new({
            id = id.from(_N, "CreateDistributionInput", "origin"),
            type = "structure",
            name = "origin",
            target_id = id.from(_N, "InputOrigin"),
            target = M.InputOrigin,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        defaultCacheBehavior = schema.new({
            id = id.from(_N, "CreateDistributionInput", "defaultCacheBehavior"),
            type = "structure",
            name = "defaultCacheBehavior",
            target_id = id.from(_N, "CacheBehavior"),
            target = M.CacheBehavior,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cacheBehaviorSettings = schema.new({
            id = id.from(_N, "CreateDistributionInput", "cacheBehaviorSettings"),
            type = "structure",
            name = "cacheBehaviorSettings",
            target_id = id.from(_N, "CacheSettings"),
            target = M.CacheSettings,
        }),
        cacheBehaviors = schema.new({
            id = id.from(_N, "CreateDistributionInput", "cacheBehaviors"),
            type = "list",
            name = "cacheBehaviors",
            target_id = prelude.Document.id,
            list_member = M.CacheBehaviorPerPath,
        }),
        bundleId = schema.new({
            id = id.from(_N, "CreateDistributionInput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "CreateDistributionInput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDistributionInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        certificateName = schema.new({
            id = id.from(_N, "CreateDistributionInput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
        }),
        viewerMinimumTlsProtocolVersion = schema.new({
            id = id.from(_N, "CreateDistributionInput", "viewerMinimumTlsProtocolVersion"),
            type = "string",
            name = "viewerMinimumTlsProtocolVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.Origin = schema.new({
    id = id.from(_N, "Origin"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Origin", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "Origin", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        regionName = schema.new({
            id = id.from(_N, "Origin", "regionName"),
            type = "string",
            name = "regionName",
            target_id = prelude.String.id,
        }),
        protocolPolicy = schema.new({
            id = id.from(_N, "Origin", "protocolPolicy"),
            type = "string",
            name = "protocolPolicy",
            target_id = prelude.String.id,
        }),
        responseTimeout = schema.new({
            id = id.from(_N, "Origin", "responseTimeout"),
            type = "integer",
            name = "responseTimeout",
            target_id = prelude.Integer.id,
        }),
    },
})

M.LightsailDistribution = schema.new({
    id = id.from(_N, "LightsailDistribution"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "LightsailDistribution", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "LightsailDistribution", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "LightsailDistribution", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "LightsailDistribution", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "LightsailDistribution", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "LightsailDistribution", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        alternativeDomainNames = schema.new({
            id = id.from(_N, "LightsailDistribution", "alternativeDomainNames"),
            type = "list",
            name = "alternativeDomainNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "LightsailDistribution", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        isEnabled = schema.new({
            id = id.from(_N, "LightsailDistribution", "isEnabled"),
            type = "boolean",
            name = "isEnabled",
            target_id = prelude.Boolean.id,
        }),
        domainName = schema.new({
            id = id.from(_N, "LightsailDistribution", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        bundleId = schema.new({
            id = id.from(_N, "LightsailDistribution", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
        }),
        certificateName = schema.new({
            id = id.from(_N, "LightsailDistribution", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
        }),
        origin = schema.new({
            id = id.from(_N, "LightsailDistribution", "origin"),
            type = "structure",
            name = "origin",
            target_id = id.from(_N, "Origin"),
            target = M.Origin,
        }),
        originPublicDNS = schema.new({
            id = id.from(_N, "LightsailDistribution", "originPublicDNS"),
            type = "string",
            name = "originPublicDNS",
            target_id = prelude.String.id,
        }),
        defaultCacheBehavior = schema.new({
            id = id.from(_N, "LightsailDistribution", "defaultCacheBehavior"),
            type = "structure",
            name = "defaultCacheBehavior",
            target_id = id.from(_N, "CacheBehavior"),
            target = M.CacheBehavior,
        }),
        cacheBehaviorSettings = schema.new({
            id = id.from(_N, "LightsailDistribution", "cacheBehaviorSettings"),
            type = "structure",
            name = "cacheBehaviorSettings",
            target_id = id.from(_N, "CacheSettings"),
            target = M.CacheSettings,
        }),
        cacheBehaviors = schema.new({
            id = id.from(_N, "LightsailDistribution", "cacheBehaviors"),
            type = "list",
            name = "cacheBehaviors",
            target_id = prelude.Document.id,
            list_member = M.CacheBehaviorPerPath,
        }),
        ableToUpdateBundle = schema.new({
            id = id.from(_N, "LightsailDistribution", "ableToUpdateBundle"),
            type = "boolean",
            name = "ableToUpdateBundle",
            target_id = prelude.Boolean.id,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "LightsailDistribution", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "LightsailDistribution", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        viewerMinimumTlsProtocolVersion = schema.new({
            id = id.from(_N, "LightsailDistribution", "viewerMinimumTlsProtocolVersion"),
            type = "string",
            name = "viewerMinimumTlsProtocolVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDistributionOutput = schema.new({
    id = id.from(_N, "CreateDistributionOutput"),
    type = "structure",
    members = {
        distribution = schema.new({
            id = id.from(_N, "CreateDistributionOutput", "distribution"),
            type = "structure",
            name = "distribution",
            target_id = id.from(_N, "LightsailDistribution"),
            target = M.LightsailDistribution,
        }),
        operation = schema.new({
            id = id.from(_N, "CreateDistributionOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.CreateDomainInput = schema.new({
    id = id.from(_N, "CreateDomainInput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "CreateDomainInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateDomainInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateDomainOutput = schema.new({
    id = id.from(_N, "CreateDomainOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "CreateDomainOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.DomainEntry = schema.new({
    id = id.from(_N, "DomainEntry"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "DomainEntry", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "DomainEntry", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        target = schema.new({
            id = id.from(_N, "DomainEntry", "target"),
            type = "string",
            name = "target",
            target_id = prelude.String.id,
        }),
        isAlias = schema.new({
            id = id.from(_N, "DomainEntry", "isAlias"),
            type = "boolean",
            name = "isAlias",
            target_id = prelude.Boolean.id,
        }),
        type = schema.new({
            id = id.from(_N, "DomainEntry", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        options = schema.new({
            id = id.from(_N, "DomainEntry", "options"),
            type = "map",
            name = "options",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateDomainEntryInput = schema.new({
    id = id.from(_N, "CreateDomainEntryInput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "CreateDomainEntryInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainEntry = schema.new({
            id = id.from(_N, "CreateDomainEntryInput", "domainEntry"),
            type = "structure",
            name = "domainEntry",
            target_id = id.from(_N, "DomainEntry"),
            target = M.DomainEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateDomainEntryOutput = schema.new({
    id = id.from(_N, "CreateDomainEntryOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "CreateDomainEntryOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.CreateGUISessionAccessDetailsInput = schema.new({
    id = id.from(_N, "CreateGUISessionAccessDetailsInput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "CreateGUISessionAccessDetailsInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Session = schema.new({
    id = id.from(_N, "Session"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Session", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        url = schema.new({
            id = id.from(_N, "Session", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
        }),
        isPrimary = schema.new({
            id = id.from(_N, "Session", "isPrimary"),
            type = "boolean",
            name = "isPrimary",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateGUISessionAccessDetailsOutput = schema.new({
    id = id.from(_N, "CreateGUISessionAccessDetailsOutput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "CreateGUISessionAccessDetailsOutput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateGUISessionAccessDetailsOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        percentageComplete = schema.new({
            id = id.from(_N, "CreateGUISessionAccessDetailsOutput", "percentageComplete"),
            type = "integer",
            name = "percentageComplete",
            target_id = prelude.Integer.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "CreateGUISessionAccessDetailsOutput", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        sessions = schema.new({
            id = id.from(_N, "CreateGUISessionAccessDetailsOutput", "sessions"),
            type = "list",
            name = "sessions",
            target_id = prelude.Document.id,
            list_member = M.Session,
        }),
    },
})

M.CreateInstancesInput = schema.new({
    id = id.from(_N, "CreateInstancesInput"),
    type = "structure",
    members = {
        instanceNames = schema.new({
            id = id.from(_N, "CreateInstancesInput", "instanceNames"),
            type = "list",
            name = "instanceNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        availabilityZone = schema.new({
            id = id.from(_N, "CreateInstancesInput", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        customImageName = schema.new({
            id = id.from(_N, "CreateInstancesInput", "customImageName"),
            type = "string",
            name = "customImageName",
            target_id = prelude.String.id,
        }),
        blueprintId = schema.new({
            id = id.from(_N, "CreateInstancesInput", "blueprintId"),
            type = "string",
            name = "blueprintId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleId = schema.new({
            id = id.from(_N, "CreateInstancesInput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userData = schema.new({
            id = id.from(_N, "CreateInstancesInput", "userData"),
            type = "string",
            name = "userData",
            target_id = prelude.String.id,
        }),
        keyPairName = schema.new({
            id = id.from(_N, "CreateInstancesInput", "keyPairName"),
            type = "string",
            name = "keyPairName",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateInstancesInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        addOns = schema.new({
            id = id.from(_N, "CreateInstancesInput", "addOns"),
            type = "list",
            name = "addOns",
            target_id = prelude.Document.id,
            list_member = M.AddOnRequest,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "CreateInstancesInput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateInstancesOutput = schema.new({
    id = id.from(_N, "CreateInstancesOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateInstancesOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.CreateInstancesFromSnapshotInput = schema.new({
    id = id.from(_N, "CreateInstancesFromSnapshotInput"),
    type = "structure",
    members = {
        instanceNames = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "instanceNames"),
            type = "list",
            name = "instanceNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attachedDiskMapping = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "attachedDiskMapping"),
            type = "map",
            name = "attachedDiskMapping",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        availabilityZone = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instanceSnapshotName = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "instanceSnapshotName"),
            type = "string",
            name = "instanceSnapshotName",
            target_id = prelude.String.id,
        }),
        bundleId = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userData = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "userData"),
            type = "string",
            name = "userData",
            target_id = prelude.String.id,
        }),
        keyPairName = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "keyPairName"),
            type = "string",
            name = "keyPairName",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        addOns = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "addOns"),
            type = "list",
            name = "addOns",
            target_id = prelude.Document.id,
            list_member = M.AddOnRequest,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
        sourceInstanceName = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "sourceInstanceName"),
            type = "string",
            name = "sourceInstanceName",
            target_id = prelude.String.id,
        }),
        restoreDate = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "restoreDate"),
            type = "string",
            name = "restoreDate",
            target_id = prelude.String.id,
        }),
        useLatestRestorableAutoSnapshot = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotInput", "useLatestRestorableAutoSnapshot"),
            type = "boolean",
            name = "useLatestRestorableAutoSnapshot",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateInstancesFromSnapshotOutput = schema.new({
    id = id.from(_N, "CreateInstancesFromSnapshotOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateInstancesFromSnapshotOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.CreateInstanceSnapshotInput = schema.new({
    id = id.from(_N, "CreateInstanceSnapshotInput"),
    type = "structure",
    members = {
        instanceSnapshotName = schema.new({
            id = id.from(_N, "CreateInstanceSnapshotInput", "instanceSnapshotName"),
            type = "string",
            name = "instanceSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instanceName = schema.new({
            id = id.from(_N, "CreateInstanceSnapshotInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateInstanceSnapshotInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateInstanceSnapshotOutput = schema.new({
    id = id.from(_N, "CreateInstanceSnapshotOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateInstanceSnapshotOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.CreateKeyPairInput = schema.new({
    id = id.from(_N, "CreateKeyPairInput"),
    type = "structure",
    members = {
        keyPairName = schema.new({
            id = id.from(_N, "CreateKeyPairInput", "keyPairName"),
            type = "string",
            name = "keyPairName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateKeyPairInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.KeyPair = schema.new({
    id = id.from(_N, "KeyPair"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "KeyPair", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "KeyPair", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "KeyPair", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "KeyPair", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "KeyPair", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "KeyPair", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "KeyPair", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        fingerprint = schema.new({
            id = id.from(_N, "KeyPair", "fingerprint"),
            type = "string",
            name = "fingerprint",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateKeyPairOutput = schema.new({
    id = id.from(_N, "CreateKeyPairOutput"),
    type = "structure",
    members = {
        keyPair = schema.new({
            id = id.from(_N, "CreateKeyPairOutput", "keyPair"),
            type = "structure",
            name = "keyPair",
            target_id = id.from(_N, "KeyPair"),
            target = M.KeyPair,
        }),
        publicKeyBase64 = schema.new({
            id = id.from(_N, "CreateKeyPairOutput", "publicKeyBase64"),
            type = "string",
            name = "publicKeyBase64",
            target_id = prelude.String.id,
        }),
        privateKeyBase64 = schema.new({
            id = id.from(_N, "CreateKeyPairOutput", "privateKeyBase64"),
            type = "string",
            name = "privateKeyBase64",
            target_id = prelude.String.id,
        }),
        operation = schema.new({
            id = id.from(_N, "CreateKeyPairOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.CreateLoadBalancerInput = schema.new({
    id = id.from(_N, "CreateLoadBalancerInput"),
    type = "structure",
    members = {
        loadBalancerName = schema.new({
            id = id.from(_N, "CreateLoadBalancerInput", "loadBalancerName"),
            type = "string",
            name = "loadBalancerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instancePort = schema.new({
            id = id.from(_N, "CreateLoadBalancerInput", "instancePort"),
            type = "integer",
            name = "instancePort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        healthCheckPath = schema.new({
            id = id.from(_N, "CreateLoadBalancerInput", "healthCheckPath"),
            type = "string",
            name = "healthCheckPath",
            target_id = prelude.String.id,
        }),
        certificateName = schema.new({
            id = id.from(_N, "CreateLoadBalancerInput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
        }),
        certificateDomainName = schema.new({
            id = id.from(_N, "CreateLoadBalancerInput", "certificateDomainName"),
            type = "string",
            name = "certificateDomainName",
            target_id = prelude.String.id,
        }),
        certificateAlternativeNames = schema.new({
            id = id.from(_N, "CreateLoadBalancerInput", "certificateAlternativeNames"),
            type = "list",
            name = "certificateAlternativeNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateLoadBalancerInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "CreateLoadBalancerInput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
        tlsPolicyName = schema.new({
            id = id.from(_N, "CreateLoadBalancerInput", "tlsPolicyName"),
            type = "string",
            name = "tlsPolicyName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateLoadBalancerOutput = schema.new({
    id = id.from(_N, "CreateLoadBalancerOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateLoadBalancerOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.CreateLoadBalancerTlsCertificateInput = schema.new({
    id = id.from(_N, "CreateLoadBalancerTlsCertificateInput"),
    type = "structure",
    members = {
        loadBalancerName = schema.new({
            id = id.from(_N, "CreateLoadBalancerTlsCertificateInput", "loadBalancerName"),
            type = "string",
            name = "loadBalancerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        certificateName = schema.new({
            id = id.from(_N, "CreateLoadBalancerTlsCertificateInput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        certificateDomainName = schema.new({
            id = id.from(_N, "CreateLoadBalancerTlsCertificateInput", "certificateDomainName"),
            type = "string",
            name = "certificateDomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        certificateAlternativeNames = schema.new({
            id = id.from(_N, "CreateLoadBalancerTlsCertificateInput", "certificateAlternativeNames"),
            type = "list",
            name = "certificateAlternativeNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateLoadBalancerTlsCertificateInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateLoadBalancerTlsCertificateOutput = schema.new({
    id = id.from(_N, "CreateLoadBalancerTlsCertificateOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateLoadBalancerTlsCertificateOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.CreateRelationalDatabaseInput = schema.new({
    id = id.from(_N, "CreateRelationalDatabaseInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        availabilityZone = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseInput", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
        }),
        relationalDatabaseBlueprintId = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseInput", "relationalDatabaseBlueprintId"),
            type = "string",
            name = "relationalDatabaseBlueprintId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        relationalDatabaseBundleId = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseInput", "relationalDatabaseBundleId"),
            type = "string",
            name = "relationalDatabaseBundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        masterDatabaseName = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseInput", "masterDatabaseName"),
            type = "string",
            name = "masterDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        masterUsername = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseInput", "masterUsername"),
            type = "string",
            name = "masterUsername",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        masterUserPassword = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseInput", "masterUserPassword"),
            type = "string",
            name = "masterUserPassword",
            target_id = prelude.String.id,
        }),
        preferredBackupWindow = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseInput", "preferredBackupWindow"),
            type = "string",
            name = "preferredBackupWindow",
            target_id = prelude.String.id,
        }),
        preferredMaintenanceWindow = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseInput", "preferredMaintenanceWindow"),
            type = "string",
            name = "preferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        publiclyAccessible = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseInput", "publiclyAccessible"),
            type = "boolean",
            name = "publiclyAccessible",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateRelationalDatabaseOutput = schema.new({
    id = id.from(_N, "CreateRelationalDatabaseOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.CreateRelationalDatabaseFromSnapshotInput = schema.new({
    id = id.from(_N, "CreateRelationalDatabaseFromSnapshotInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseFromSnapshotInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        availabilityZone = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseFromSnapshotInput", "availabilityZone"),
            type = "string",
            name = "availabilityZone",
            target_id = prelude.String.id,
        }),
        publiclyAccessible = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseFromSnapshotInput", "publiclyAccessible"),
            type = "boolean",
            name = "publiclyAccessible",
            target_id = prelude.Boolean.id,
        }),
        relationalDatabaseSnapshotName = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseFromSnapshotInput", "relationalDatabaseSnapshotName"),
            type = "string",
            name = "relationalDatabaseSnapshotName",
            target_id = prelude.String.id,
        }),
        relationalDatabaseBundleId = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseFromSnapshotInput", "relationalDatabaseBundleId"),
            type = "string",
            name = "relationalDatabaseBundleId",
            target_id = prelude.String.id,
        }),
        sourceRelationalDatabaseName = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseFromSnapshotInput", "sourceRelationalDatabaseName"),
            type = "string",
            name = "sourceRelationalDatabaseName",
            target_id = prelude.String.id,
        }),
        restoreTime = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseFromSnapshotInput", "restoreTime"),
            type = "timestamp",
            name = "restoreTime",
            target_id = prelude.Timestamp.id,
        }),
        useLatestRestorableTime = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseFromSnapshotInput", "useLatestRestorableTime"),
            type = "boolean",
            name = "useLatestRestorableTime",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseFromSnapshotInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateRelationalDatabaseFromSnapshotOutput = schema.new({
    id = id.from(_N, "CreateRelationalDatabaseFromSnapshotOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseFromSnapshotOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.CreateRelationalDatabaseSnapshotInput = schema.new({
    id = id.from(_N, "CreateRelationalDatabaseSnapshotInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseSnapshotInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        relationalDatabaseSnapshotName = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseSnapshotInput", "relationalDatabaseSnapshotName"),
            type = "string",
            name = "relationalDatabaseSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseSnapshotInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.CreateRelationalDatabaseSnapshotOutput = schema.new({
    id = id.from(_N, "CreateRelationalDatabaseSnapshotOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "CreateRelationalDatabaseSnapshotOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteAlarmInput = schema.new({
    id = id.from(_N, "DeleteAlarmInput"),
    type = "structure",
    members = {
        alarmName = schema.new({
            id = id.from(_N, "DeleteAlarmInput", "alarmName"),
            type = "string",
            name = "alarmName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteAlarmOutput = schema.new({
    id = id.from(_N, "DeleteAlarmOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteAlarmOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteAutoSnapshotInput = schema.new({
    id = id.from(_N, "DeleteAutoSnapshotInput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "DeleteAutoSnapshotInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        date = schema.new({
            id = id.from(_N, "DeleteAutoSnapshotInput", "date"),
            type = "string",
            name = "date",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAutoSnapshotOutput = schema.new({
    id = id.from(_N, "DeleteAutoSnapshotOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteAutoSnapshotOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteBucketInput = schema.new({
    id = id.from(_N, "DeleteBucketInput"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "DeleteBucketInput", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        forceDelete = schema.new({
            id = id.from(_N, "DeleteBucketInput", "forceDelete"),
            type = "boolean",
            name = "forceDelete",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DeleteBucketOutput = schema.new({
    id = id.from(_N, "DeleteBucketOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteBucketOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteBucketAccessKeyInput = schema.new({
    id = id.from(_N, "DeleteBucketAccessKeyInput"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "DeleteBucketAccessKeyInput", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessKeyId = schema.new({
            id = id.from(_N, "DeleteBucketAccessKeyInput", "accessKeyId"),
            type = "string",
            name = "accessKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBucketAccessKeyOutput = schema.new({
    id = id.from(_N, "DeleteBucketAccessKeyOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteBucketAccessKeyOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteCertificateInput = schema.new({
    id = id.from(_N, "DeleteCertificateInput"),
    type = "structure",
    members = {
        certificateName = schema.new({
            id = id.from(_N, "DeleteCertificateInput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteCertificateOutput = schema.new({
    id = id.from(_N, "DeleteCertificateOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteCertificateOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteContactMethodInput = schema.new({
    id = id.from(_N, "DeleteContactMethodInput"),
    type = "structure",
    members = {
        protocol = schema.new({
            id = id.from(_N, "DeleteContactMethodInput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteContactMethodOutput = schema.new({
    id = id.from(_N, "DeleteContactMethodOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteContactMethodOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteContainerImageInput = schema.new({
    id = id.from(_N, "DeleteContainerImageInput"),
    type = "structure",
    members = {
        serviceName = schema.new({
            id = id.from(_N, "DeleteContainerImageInput", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        image = schema.new({
            id = id.from(_N, "DeleteContainerImageInput", "image"),
            type = "string",
            name = "image",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteContainerImageOutput = schema.new({
    id = id.from(_N, "DeleteContainerImageOutput"),
    type = "structure",
})

M.DeleteContainerServiceInput = schema.new({
    id = id.from(_N, "DeleteContainerServiceInput"),
    type = "structure",
    members = {
        serviceName = schema.new({
            id = id.from(_N, "DeleteContainerServiceInput", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteContainerServiceOutput = schema.new({
    id = id.from(_N, "DeleteContainerServiceOutput"),
    type = "structure",
})

M.DeleteDiskInput = schema.new({
    id = id.from(_N, "DeleteDiskInput"),
    type = "structure",
    members = {
        diskName = schema.new({
            id = id.from(_N, "DeleteDiskInput", "diskName"),
            type = "string",
            name = "diskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        forceDeleteAddOns = schema.new({
            id = id.from(_N, "DeleteDiskInput", "forceDeleteAddOns"),
            type = "boolean",
            name = "forceDeleteAddOns",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DeleteDiskOutput = schema.new({
    id = id.from(_N, "DeleteDiskOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteDiskOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteDiskSnapshotInput = schema.new({
    id = id.from(_N, "DeleteDiskSnapshotInput"),
    type = "structure",
    members = {
        diskSnapshotName = schema.new({
            id = id.from(_N, "DeleteDiskSnapshotInput", "diskSnapshotName"),
            type = "string",
            name = "diskSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDiskSnapshotOutput = schema.new({
    id = id.from(_N, "DeleteDiskSnapshotOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteDiskSnapshotOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteDistributionInput = schema.new({
    id = id.from(_N, "DeleteDistributionInput"),
    type = "structure",
    members = {
        distributionName = schema.new({
            id = id.from(_N, "DeleteDistributionInput", "distributionName"),
            type = "string",
            name = "distributionName",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDistributionOutput = schema.new({
    id = id.from(_N, "DeleteDistributionOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "DeleteDistributionOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.DeleteDomainInput = schema.new({
    id = id.from(_N, "DeleteDomainInput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "DeleteDomainInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDomainOutput = schema.new({
    id = id.from(_N, "DeleteDomainOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "DeleteDomainOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.DeleteDomainEntryInput = schema.new({
    id = id.from(_N, "DeleteDomainEntryInput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "DeleteDomainEntryInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainEntry = schema.new({
            id = id.from(_N, "DeleteDomainEntryInput", "domainEntry"),
            type = "structure",
            name = "domainEntry",
            target_id = id.from(_N, "DomainEntry"),
            target = M.DomainEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDomainEntryOutput = schema.new({
    id = id.from(_N, "DeleteDomainEntryOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "DeleteDomainEntryOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.DeleteInstanceInput = schema.new({
    id = id.from(_N, "DeleteInstanceInput"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "DeleteInstanceInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        forceDeleteAddOns = schema.new({
            id = id.from(_N, "DeleteInstanceInput", "forceDeleteAddOns"),
            type = "boolean",
            name = "forceDeleteAddOns",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DeleteInstanceOutput = schema.new({
    id = id.from(_N, "DeleteInstanceOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteInstanceOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteInstanceSnapshotInput = schema.new({
    id = id.from(_N, "DeleteInstanceSnapshotInput"),
    type = "structure",
    members = {
        instanceSnapshotName = schema.new({
            id = id.from(_N, "DeleteInstanceSnapshotInput", "instanceSnapshotName"),
            type = "string",
            name = "instanceSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteInstanceSnapshotOutput = schema.new({
    id = id.from(_N, "DeleteInstanceSnapshotOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteInstanceSnapshotOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteKeyPairInput = schema.new({
    id = id.from(_N, "DeleteKeyPairInput"),
    type = "structure",
    members = {
        keyPairName = schema.new({
            id = id.from(_N, "DeleteKeyPairInput", "keyPairName"),
            type = "string",
            name = "keyPairName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expectedFingerprint = schema.new({
            id = id.from(_N, "DeleteKeyPairInput", "expectedFingerprint"),
            type = "string",
            name = "expectedFingerprint",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteKeyPairOutput = schema.new({
    id = id.from(_N, "DeleteKeyPairOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "DeleteKeyPairOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.DeleteKnownHostKeysInput = schema.new({
    id = id.from(_N, "DeleteKnownHostKeysInput"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "DeleteKnownHostKeysInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteKnownHostKeysOutput = schema.new({
    id = id.from(_N, "DeleteKnownHostKeysOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteKnownHostKeysOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteLoadBalancerInput = schema.new({
    id = id.from(_N, "DeleteLoadBalancerInput"),
    type = "structure",
    members = {
        loadBalancerName = schema.new({
            id = id.from(_N, "DeleteLoadBalancerInput", "loadBalancerName"),
            type = "string",
            name = "loadBalancerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLoadBalancerOutput = schema.new({
    id = id.from(_N, "DeleteLoadBalancerOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteLoadBalancerOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteLoadBalancerTlsCertificateInput = schema.new({
    id = id.from(_N, "DeleteLoadBalancerTlsCertificateInput"),
    type = "structure",
    members = {
        loadBalancerName = schema.new({
            id = id.from(_N, "DeleteLoadBalancerTlsCertificateInput", "loadBalancerName"),
            type = "string",
            name = "loadBalancerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        certificateName = schema.new({
            id = id.from(_N, "DeleteLoadBalancerTlsCertificateInput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        force = schema.new({
            id = id.from(_N, "DeleteLoadBalancerTlsCertificateInput", "force"),
            type = "boolean",
            name = "force",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DeleteLoadBalancerTlsCertificateOutput = schema.new({
    id = id.from(_N, "DeleteLoadBalancerTlsCertificateOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteLoadBalancerTlsCertificateOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteRelationalDatabaseInput = schema.new({
    id = id.from(_N, "DeleteRelationalDatabaseInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "DeleteRelationalDatabaseInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        skipFinalSnapshot = schema.new({
            id = id.from(_N, "DeleteRelationalDatabaseInput", "skipFinalSnapshot"),
            type = "boolean",
            name = "skipFinalSnapshot",
            target_id = prelude.Boolean.id,
        }),
        finalRelationalDatabaseSnapshotName = schema.new({
            id = id.from(_N, "DeleteRelationalDatabaseInput", "finalRelationalDatabaseSnapshotName"),
            type = "string",
            name = "finalRelationalDatabaseSnapshotName",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteRelationalDatabaseOutput = schema.new({
    id = id.from(_N, "DeleteRelationalDatabaseOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteRelationalDatabaseOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DeleteRelationalDatabaseSnapshotInput = schema.new({
    id = id.from(_N, "DeleteRelationalDatabaseSnapshotInput"),
    type = "structure",
    members = {
        relationalDatabaseSnapshotName = schema.new({
            id = id.from(_N, "DeleteRelationalDatabaseSnapshotInput", "relationalDatabaseSnapshotName"),
            type = "string",
            name = "relationalDatabaseSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRelationalDatabaseSnapshotOutput = schema.new({
    id = id.from(_N, "DeleteRelationalDatabaseSnapshotOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DeleteRelationalDatabaseSnapshotOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DetachCertificateFromDistributionInput = schema.new({
    id = id.from(_N, "DetachCertificateFromDistributionInput"),
    type = "structure",
    members = {
        distributionName = schema.new({
            id = id.from(_N, "DetachCertificateFromDistributionInput", "distributionName"),
            type = "string",
            name = "distributionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachCertificateFromDistributionOutput = schema.new({
    id = id.from(_N, "DetachCertificateFromDistributionOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "DetachCertificateFromDistributionOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.DetachDiskInput = schema.new({
    id = id.from(_N, "DetachDiskInput"),
    type = "structure",
    members = {
        diskName = schema.new({
            id = id.from(_N, "DetachDiskInput", "diskName"),
            type = "string",
            name = "diskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachDiskOutput = schema.new({
    id = id.from(_N, "DetachDiskOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DetachDiskOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DetachInstancesFromLoadBalancerInput = schema.new({
    id = id.from(_N, "DetachInstancesFromLoadBalancerInput"),
    type = "structure",
    members = {
        loadBalancerName = schema.new({
            id = id.from(_N, "DetachInstancesFromLoadBalancerInput", "loadBalancerName"),
            type = "string",
            name = "loadBalancerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instanceNames = schema.new({
            id = id.from(_N, "DetachInstancesFromLoadBalancerInput", "instanceNames"),
            type = "list",
            name = "instanceNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachInstancesFromLoadBalancerOutput = schema.new({
    id = id.from(_N, "DetachInstancesFromLoadBalancerOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DetachInstancesFromLoadBalancerOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DetachStaticIpInput = schema.new({
    id = id.from(_N, "DetachStaticIpInput"),
    type = "structure",
    members = {
        staticIpName = schema.new({
            id = id.from(_N, "DetachStaticIpInput", "staticIpName"),
            type = "string",
            name = "staticIpName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DetachStaticIpOutput = schema.new({
    id = id.from(_N, "DetachStaticIpOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DetachStaticIpOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.DisableAddOnInput = schema.new({
    id = id.from(_N, "DisableAddOnInput"),
    type = "structure",
    members = {
        addOnType = schema.new({
            id = id.from(_N, "DisableAddOnInput", "addOnType"),
            type = "string",
            name = "addOnType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceName = schema.new({
            id = id.from(_N, "DisableAddOnInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisableAddOnOutput = schema.new({
    id = id.from(_N, "DisableAddOnOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "DisableAddOnOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.Disk = schema.new({
    id = id.from(_N, "Disk"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Disk", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Disk", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "Disk", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Disk", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "Disk", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "Disk", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Disk", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        addOns = schema.new({
            id = id.from(_N, "Disk", "addOns"),
            type = "list",
            name = "addOns",
            target_id = prelude.Document.id,
            list_member = M.AddOn,
        }),
        sizeInGb = schema.new({
            id = id.from(_N, "Disk", "sizeInGb"),
            type = "integer",
            name = "sizeInGb",
            target_id = prelude.Integer.id,
        }),
        isSystemDisk = schema.new({
            id = id.from(_N, "Disk", "isSystemDisk"),
            type = "boolean",
            name = "isSystemDisk",
            target_id = prelude.Boolean.id,
        }),
        iops = schema.new({
            id = id.from(_N, "Disk", "iops"),
            type = "integer",
            name = "iops",
            target_id = prelude.Integer.id,
        }),
        path = schema.new({
            id = id.from(_N, "Disk", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "Disk", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        attachedTo = schema.new({
            id = id.from(_N, "Disk", "attachedTo"),
            type = "string",
            name = "attachedTo",
            target_id = prelude.String.id,
        }),
        isAttached = schema.new({
            id = id.from(_N, "Disk", "isAttached"),
            type = "boolean",
            name = "isAttached",
            target_id = prelude.Boolean.id,
        }),
        attachmentState = schema.new({
            id = id.from(_N, "Disk", "attachmentState"),
            type = "string",
            name = "attachmentState",
            target_id = prelude.String.id,
        }),
        gbInUse = schema.new({
            id = id.from(_N, "Disk", "gbInUse"),
            type = "integer",
            name = "gbInUse",
            target_id = prelude.Integer.id,
        }),
        autoMountStatus = schema.new({
            id = id.from(_N, "Disk", "autoMountStatus"),
            type = "string",
            name = "autoMountStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.DiskInfo = schema.new({
    id = id.from(_N, "DiskInfo"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DiskInfo", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "DiskInfo", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
        sizeInGb = schema.new({
            id = id.from(_N, "DiskInfo", "sizeInGb"),
            type = "integer",
            name = "sizeInGb",
            target_id = prelude.Integer.id,
        }),
        isSystemDisk = schema.new({
            id = id.from(_N, "DiskInfo", "isSystemDisk"),
            type = "boolean",
            name = "isSystemDisk",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DiskSnapshot = schema.new({
    id = id.from(_N, "DiskSnapshot"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DiskSnapshot", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "DiskSnapshot", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "DiskSnapshot", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "DiskSnapshot", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "DiskSnapshot", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "DiskSnapshot", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "DiskSnapshot", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        sizeInGb = schema.new({
            id = id.from(_N, "DiskSnapshot", "sizeInGb"),
            type = "integer",
            name = "sizeInGb",
            target_id = prelude.Integer.id,
        }),
        state = schema.new({
            id = id.from(_N, "DiskSnapshot", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        progress = schema.new({
            id = id.from(_N, "DiskSnapshot", "progress"),
            type = "string",
            name = "progress",
            target_id = prelude.String.id,
        }),
        fromDiskName = schema.new({
            id = id.from(_N, "DiskSnapshot", "fromDiskName"),
            type = "string",
            name = "fromDiskName",
            target_id = prelude.String.id,
        }),
        fromDiskArn = schema.new({
            id = id.from(_N, "DiskSnapshot", "fromDiskArn"),
            type = "string",
            name = "fromDiskArn",
            target_id = prelude.String.id,
        }),
        fromInstanceName = schema.new({
            id = id.from(_N, "DiskSnapshot", "fromInstanceName"),
            type = "string",
            name = "fromInstanceName",
            target_id = prelude.String.id,
        }),
        fromInstanceArn = schema.new({
            id = id.from(_N, "DiskSnapshot", "fromInstanceArn"),
            type = "string",
            name = "fromInstanceArn",
            target_id = prelude.String.id,
        }),
        isFromAutoSnapshot = schema.new({
            id = id.from(_N, "DiskSnapshot", "isFromAutoSnapshot"),
            type = "boolean",
            name = "isFromAutoSnapshot",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DiskSnapshotInfo = schema.new({
    id = id.from(_N, "DiskSnapshotInfo"),
    type = "structure",
    members = {
        sizeInGb = schema.new({
            id = id.from(_N, "DiskSnapshotInfo", "sizeInGb"),
            type = "integer",
            name = "sizeInGb",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DistributionBundle = schema.new({
    id = id.from(_N, "DistributionBundle"),
    type = "structure",
    members = {
        bundleId = schema.new({
            id = id.from(_N, "DistributionBundle", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "DistributionBundle", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        price = schema.new({
            id = id.from(_N, "DistributionBundle", "price"),
            type = "float",
            name = "price",
            target_id = prelude.Float.id,
        }),
        transferPerMonthInGb = schema.new({
            id = id.from(_N, "DistributionBundle", "transferPerMonthInGb"),
            type = "integer",
            name = "transferPerMonthInGb",
            target_id = prelude.Integer.id,
        }),
        isActive = schema.new({
            id = id.from(_N, "DistributionBundle", "isActive"),
            type = "boolean",
            name = "isActive",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.NameServersUpdateState = schema.new({
    id = id.from(_N, "NameServersUpdateState"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "NameServersUpdateState", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "NameServersUpdateState", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.R53HostedZoneDeletionState = schema.new({
    id = id.from(_N, "R53HostedZoneDeletionState"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "R53HostedZoneDeletionState", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "R53HostedZoneDeletionState", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RegisteredDomainDelegationInfo = schema.new({
    id = id.from(_N, "RegisteredDomainDelegationInfo"),
    type = "structure",
    members = {
        nameServersUpdateState = schema.new({
            id = id.from(_N, "RegisteredDomainDelegationInfo", "nameServersUpdateState"),
            type = "structure",
            name = "nameServersUpdateState",
            target_id = id.from(_N, "NameServersUpdateState"),
            target = M.NameServersUpdateState,
        }),
        r53HostedZoneDeletionState = schema.new({
            id = id.from(_N, "RegisteredDomainDelegationInfo", "r53HostedZoneDeletionState"),
            type = "structure",
            name = "r53HostedZoneDeletionState",
            target_id = id.from(_N, "R53HostedZoneDeletionState"),
            target = M.R53HostedZoneDeletionState,
        }),
    },
})

M.Domain = schema.new({
    id = id.from(_N, "Domain"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Domain", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Domain", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "Domain", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Domain", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "Domain", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "Domain", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Domain", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        domainEntries = schema.new({
            id = id.from(_N, "Domain", "domainEntries"),
            type = "list",
            name = "domainEntries",
            target_id = prelude.Document.id,
            list_member = M.DomainEntry,
        }),
        registeredDomainDelegationInfo = schema.new({
            id = id.from(_N, "Domain", "registeredDomainDelegationInfo"),
            type = "structure",
            name = "registeredDomainDelegationInfo",
            target_id = id.from(_N, "RegisteredDomainDelegationInfo"),
            target = M.RegisteredDomainDelegationInfo,
        }),
    },
})

M.DownloadDefaultKeyPairInput = schema.new({
    id = id.from(_N, "DownloadDefaultKeyPairInput"),
    type = "structure",
})

M.DownloadDefaultKeyPairOutput = schema.new({
    id = id.from(_N, "DownloadDefaultKeyPairOutput"),
    type = "structure",
    members = {
        publicKeyBase64 = schema.new({
            id = id.from(_N, "DownloadDefaultKeyPairOutput", "publicKeyBase64"),
            type = "string",
            name = "publicKeyBase64",
            target_id = prelude.String.id,
        }),
        privateKeyBase64 = schema.new({
            id = id.from(_N, "DownloadDefaultKeyPairOutput", "privateKeyBase64"),
            type = "string",
            name = "privateKeyBase64",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "DownloadDefaultKeyPairOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.EnableAddOnInput = schema.new({
    id = id.from(_N, "EnableAddOnInput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "EnableAddOnInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        addOnRequest = schema.new({
            id = id.from(_N, "EnableAddOnInput", "addOnRequest"),
            type = "structure",
            name = "addOnRequest",
            target_id = id.from(_N, "AddOnRequest"),
            target = M.AddOnRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnableAddOnOutput = schema.new({
    id = id.from(_N, "EnableAddOnOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "EnableAddOnOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.ExportSnapshotInput = schema.new({
    id = id.from(_N, "ExportSnapshotInput"),
    type = "structure",
    members = {
        sourceSnapshotName = schema.new({
            id = id.from(_N, "ExportSnapshotInput", "sourceSnapshotName"),
            type = "string",
            name = "sourceSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExportSnapshotOutput = schema.new({
    id = id.from(_N, "ExportSnapshotOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "ExportSnapshotOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.InstanceSnapshotInfo = schema.new({
    id = id.from(_N, "InstanceSnapshotInfo"),
    type = "structure",
    members = {
        fromBundleId = schema.new({
            id = id.from(_N, "InstanceSnapshotInfo", "fromBundleId"),
            type = "string",
            name = "fromBundleId",
            target_id = prelude.String.id,
        }),
        fromBlueprintId = schema.new({
            id = id.from(_N, "InstanceSnapshotInfo", "fromBlueprintId"),
            type = "string",
            name = "fromBlueprintId",
            target_id = prelude.String.id,
        }),
        fromDiskInfo = schema.new({
            id = id.from(_N, "InstanceSnapshotInfo", "fromDiskInfo"),
            type = "list",
            name = "fromDiskInfo",
            target_id = prelude.Document.id,
            list_member = M.DiskInfo,
        }),
    },
})

M.ExportSnapshotRecordSourceInfo = schema.new({
    id = id.from(_N, "ExportSnapshotRecordSourceInfo"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "ExportSnapshotRecordSourceInfo", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ExportSnapshotRecordSourceInfo", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        name = schema.new({
            id = id.from(_N, "ExportSnapshotRecordSourceInfo", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ExportSnapshotRecordSourceInfo", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        fromResourceName = schema.new({
            id = id.from(_N, "ExportSnapshotRecordSourceInfo", "fromResourceName"),
            type = "string",
            name = "fromResourceName",
            target_id = prelude.String.id,
        }),
        fromResourceArn = schema.new({
            id = id.from(_N, "ExportSnapshotRecordSourceInfo", "fromResourceArn"),
            type = "string",
            name = "fromResourceArn",
            target_id = prelude.String.id,
        }),
        instanceSnapshotInfo = schema.new({
            id = id.from(_N, "ExportSnapshotRecordSourceInfo", "instanceSnapshotInfo"),
            type = "structure",
            name = "instanceSnapshotInfo",
            target_id = id.from(_N, "InstanceSnapshotInfo"),
            target = M.InstanceSnapshotInfo,
        }),
        diskSnapshotInfo = schema.new({
            id = id.from(_N, "ExportSnapshotRecordSourceInfo", "diskSnapshotInfo"),
            type = "structure",
            name = "diskSnapshotInfo",
            target_id = id.from(_N, "DiskSnapshotInfo"),
            target = M.DiskSnapshotInfo,
        }),
    },
})

M.ExportSnapshotRecord = schema.new({
    id = id.from(_N, "ExportSnapshotRecord"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ExportSnapshotRecord", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "ExportSnapshotRecord", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "ExportSnapshotRecord", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "ExportSnapshotRecord", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "ExportSnapshotRecord", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "ExportSnapshotRecord", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        sourceInfo = schema.new({
            id = id.from(_N, "ExportSnapshotRecord", "sourceInfo"),
            type = "structure",
            name = "sourceInfo",
            target_id = id.from(_N, "ExportSnapshotRecordSourceInfo"),
            target = M.ExportSnapshotRecordSourceInfo,
        }),
        destinationInfo = schema.new({
            id = id.from(_N, "ExportSnapshotRecord", "destinationInfo"),
            type = "structure",
            name = "destinationInfo",
            target_id = id.from(_N, "DestinationInfo"),
            target = M.DestinationInfo,
        }),
    },
})

M.GetActiveNamesInput = schema.new({
    id = id.from(_N, "GetActiveNamesInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetActiveNamesInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetActiveNamesOutput = schema.new({
    id = id.from(_N, "GetActiveNamesOutput"),
    type = "structure",
    members = {
        activeNames = schema.new({
            id = id.from(_N, "GetActiveNamesOutput", "activeNames"),
            type = "list",
            name = "activeNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetActiveNamesOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAlarmsInput = schema.new({
    id = id.from(_N, "GetAlarmsInput"),
    type = "structure",
    members = {
        alarmName = schema.new({
            id = id.from(_N, "GetAlarmsInput", "alarmName"),
            type = "string",
            name = "alarmName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "alarmName" },
            },
        }),
        pageToken = schema.new({
            id = id.from(_N, "GetAlarmsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "pageToken" },
            },
        }),
        monitoredResourceName = schema.new({
            id = id.from(_N, "GetAlarmsInput", "monitoredResourceName"),
            type = "string",
            name = "monitoredResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "monitoredResourceName" },
            },
        }),
    },
})

M.GetAlarmsOutput = schema.new({
    id = id.from(_N, "GetAlarmsOutput"),
    type = "structure",
    members = {
        alarms = schema.new({
            id = id.from(_N, "GetAlarmsOutput", "alarms"),
            type = "list",
            name = "alarms",
            target_id = prelude.Document.id,
            list_member = M.Alarm,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetAlarmsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAutoSnapshotsInput = schema.new({
    id = id.from(_N, "GetAutoSnapshotsInput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "GetAutoSnapshotsInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAutoSnapshotsOutput = schema.new({
    id = id.from(_N, "GetAutoSnapshotsOutput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "GetAutoSnapshotsOutput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "GetAutoSnapshotsOutput", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        autoSnapshots = schema.new({
            id = id.from(_N, "GetAutoSnapshotsOutput", "autoSnapshots"),
            type = "list",
            name = "autoSnapshots",
            target_id = prelude.Document.id,
            list_member = M.AutoSnapshotDetails,
        }),
    },
})

M.GetBlueprintsInput = schema.new({
    id = id.from(_N, "GetBlueprintsInput"),
    type = "structure",
    members = {
        includeInactive = schema.new({
            id = id.from(_N, "GetBlueprintsInput", "includeInactive"),
            type = "boolean",
            name = "includeInactive",
            target_id = prelude.Boolean.id,
        }),
        pageToken = schema.new({
            id = id.from(_N, "GetBlueprintsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
        appCategory = schema.new({
            id = id.from(_N, "GetBlueprintsInput", "appCategory"),
            type = "string",
            name = "appCategory",
            target_id = prelude.String.id,
        }),
    },
})

M.GetBlueprintsOutput = schema.new({
    id = id.from(_N, "GetBlueprintsOutput"),
    type = "structure",
    members = {
        blueprints = schema.new({
            id = id.from(_N, "GetBlueprintsOutput", "blueprints"),
            type = "list",
            name = "blueprints",
            target_id = prelude.Document.id,
            list_member = M.Blueprint,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetBlueprintsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetBucketAccessKeysInput = schema.new({
    id = id.from(_N, "GetBucketAccessKeysInput"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "GetBucketAccessKeysInput", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetBucketAccessKeysOutput = schema.new({
    id = id.from(_N, "GetBucketAccessKeysOutput"),
    type = "structure",
    members = {
        accessKeys = schema.new({
            id = id.from(_N, "GetBucketAccessKeysOutput", "accessKeys"),
            type = "list",
            name = "accessKeys",
            target_id = prelude.Document.id,
            list_member = M.AccessKey,
        }),
    },
})

M.GetBucketBundlesInput = schema.new({
    id = id.from(_N, "GetBucketBundlesInput"),
    type = "structure",
    members = {
        includeInactive = schema.new({
            id = id.from(_N, "GetBucketBundlesInput", "includeInactive"),
            type = "boolean",
            name = "includeInactive",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetBucketBundlesOutput = schema.new({
    id = id.from(_N, "GetBucketBundlesOutput"),
    type = "structure",
    members = {
        bundles = schema.new({
            id = id.from(_N, "GetBucketBundlesOutput", "bundles"),
            type = "list",
            name = "bundles",
            target_id = prelude.Document.id,
            list_member = M.BucketBundle,
        }),
    },
})

M.GetBucketMetricDataInput = schema.new({
    id = id.from(_N, "GetBucketMetricDataInput"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "GetBucketMetricDataInput", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metricName = schema.new({
            id = id.from(_N, "GetBucketMetricDataInput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "GetBucketMetricDataInput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "GetBucketMetricDataInput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        period = schema.new({
            id = id.from(_N, "GetBucketMetricDataInput", "period"),
            type = "integer",
            name = "period",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statistics = schema.new({
            id = id.from(_N, "GetBucketMetricDataInput", "statistics"),
            type = "list",
            name = "statistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        unit = schema.new({
            id = id.from(_N, "GetBucketMetricDataInput", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetricDatapoint = schema.new({
    id = id.from(_N, "MetricDatapoint"),
    type = "structure",
    members = {
        average = schema.new({
            id = id.from(_N, "MetricDatapoint", "average"),
            type = "double",
            name = "average",
            target_id = prelude.Double.id,
        }),
        maximum = schema.new({
            id = id.from(_N, "MetricDatapoint", "maximum"),
            type = "double",
            name = "maximum",
            target_id = prelude.Double.id,
        }),
        minimum = schema.new({
            id = id.from(_N, "MetricDatapoint", "minimum"),
            type = "double",
            name = "minimum",
            target_id = prelude.Double.id,
        }),
        sampleCount = schema.new({
            id = id.from(_N, "MetricDatapoint", "sampleCount"),
            type = "double",
            name = "sampleCount",
            target_id = prelude.Double.id,
        }),
        sum = schema.new({
            id = id.from(_N, "MetricDatapoint", "sum"),
            type = "double",
            name = "sum",
            target_id = prelude.Double.id,
        }),
        timestamp = schema.new({
            id = id.from(_N, "MetricDatapoint", "timestamp"),
            type = "timestamp",
            name = "timestamp",
            target_id = prelude.Timestamp.id,
        }),
        unit = schema.new({
            id = id.from(_N, "MetricDatapoint", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
        }),
    },
})

M.GetBucketMetricDataOutput = schema.new({
    id = id.from(_N, "GetBucketMetricDataOutput"),
    type = "structure",
    members = {
        metricName = schema.new({
            id = id.from(_N, "GetBucketMetricDataOutput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
        }),
        metricData = schema.new({
            id = id.from(_N, "GetBucketMetricDataOutput", "metricData"),
            type = "list",
            name = "metricData",
            target_id = prelude.Document.id,
            list_member = M.MetricDatapoint,
        }),
    },
})

M.GetBucketsInput = schema.new({
    id = id.from(_N, "GetBucketsInput"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "GetBucketsInput", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
        }),
        pageToken = schema.new({
            id = id.from(_N, "GetBucketsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
        includeConnectedResources = schema.new({
            id = id.from(_N, "GetBucketsInput", "includeConnectedResources"),
            type = "boolean",
            name = "includeConnectedResources",
            target_id = prelude.Boolean.id,
        }),
        includeCors = schema.new({
            id = id.from(_N, "GetBucketsInput", "includeCors"),
            type = "boolean",
            name = "includeCors",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetBucketsOutput = schema.new({
    id = id.from(_N, "GetBucketsOutput"),
    type = "structure",
    members = {
        buckets = schema.new({
            id = id.from(_N, "GetBucketsOutput", "buckets"),
            type = "list",
            name = "buckets",
            target_id = prelude.Document.id,
            list_member = M.Bucket,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetBucketsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
        accountLevelBpaSync = schema.new({
            id = id.from(_N, "GetBucketsOutput", "accountLevelBpaSync"),
            type = "structure",
            name = "accountLevelBpaSync",
            target_id = id.from(_N, "AccountLevelBpaSync"),
            target = M.AccountLevelBpaSync,
        }),
    },
})

M.GetBundlesInput = schema.new({
    id = id.from(_N, "GetBundlesInput"),
    type = "structure",
    members = {
        includeInactive = schema.new({
            id = id.from(_N, "GetBundlesInput", "includeInactive"),
            type = "boolean",
            name = "includeInactive",
            target_id = prelude.Boolean.id,
        }),
        pageToken = schema.new({
            id = id.from(_N, "GetBundlesInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
        appCategory = schema.new({
            id = id.from(_N, "GetBundlesInput", "appCategory"),
            type = "string",
            name = "appCategory",
            target_id = prelude.String.id,
        }),
    },
})

M.GetBundlesOutput = schema.new({
    id = id.from(_N, "GetBundlesOutput"),
    type = "structure",
    members = {
        bundles = schema.new({
            id = id.from(_N, "GetBundlesOutput", "bundles"),
            type = "list",
            name = "bundles",
            target_id = prelude.Document.id,
            list_member = M.Bundle,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetBundlesOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCertificatesInput = schema.new({
    id = id.from(_N, "GetCertificatesInput"),
    type = "structure",
    members = {
        certificateStatuses = schema.new({
            id = id.from(_N, "GetCertificatesInput", "certificateStatuses"),
            type = "list",
            name = "certificateStatuses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        includeCertificateDetails = schema.new({
            id = id.from(_N, "GetCertificatesInput", "includeCertificateDetails"),
            type = "boolean",
            name = "includeCertificateDetails",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        certificateName = schema.new({
            id = id.from(_N, "GetCertificatesInput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
        }),
        pageToken = schema.new({
            id = id.from(_N, "GetCertificatesInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCertificatesOutput = schema.new({
    id = id.from(_N, "GetCertificatesOutput"),
    type = "structure",
    members = {
        certificates = schema.new({
            id = id.from(_N, "GetCertificatesOutput", "certificates"),
            type = "list",
            name = "certificates",
            target_id = prelude.Document.id,
            list_member = M.CertificateSummary,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetCertificatesOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCloudFormationStackRecordsInput = schema.new({
    id = id.from(_N, "GetCloudFormationStackRecordsInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetCloudFormationStackRecordsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCloudFormationStackRecordsOutput = schema.new({
    id = id.from(_N, "GetCloudFormationStackRecordsOutput"),
    type = "structure",
    members = {
        cloudFormationStackRecords = schema.new({
            id = id.from(_N, "GetCloudFormationStackRecordsOutput", "cloudFormationStackRecords"),
            type = "list",
            name = "cloudFormationStackRecords",
            target_id = prelude.Document.id,
            list_member = M.CloudFormationStackRecord,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetCloudFormationStackRecordsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetContactMethodsInput = schema.new({
    id = id.from(_N, "GetContactMethodsInput"),
    type = "structure",
    members = {
        protocols = schema.new({
            id = id.from(_N, "GetContactMethodsInput", "protocols"),
            type = "list",
            name = "protocols",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.HTTP_QUERY] = { name = "protocols" },
            },
        }),
    },
})

M.GetContactMethodsOutput = schema.new({
    id = id.from(_N, "GetContactMethodsOutput"),
    type = "structure",
    members = {
        contactMethods = schema.new({
            id = id.from(_N, "GetContactMethodsOutput", "contactMethods"),
            type = "list",
            name = "contactMethods",
            target_id = prelude.Document.id,
            list_member = M.ContactMethod,
        }),
    },
})

M.GetContainerAPIMetadataInput = schema.new({
    id = id.from(_N, "GetContainerAPIMetadataInput"),
    type = "structure",
})

M.GetContainerAPIMetadataOutput = schema.new({
    id = id.from(_N, "GetContainerAPIMetadataOutput"),
    type = "structure",
    members = {
        metadata = schema.new({
            id = id.from(_N, "GetContainerAPIMetadataOutput", "metadata"),
            type = "list",
            name = "metadata",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
    },
})

M.GetContainerImagesInput = schema.new({
    id = id.from(_N, "GetContainerImagesInput"),
    type = "structure",
    members = {
        serviceName = schema.new({
            id = id.from(_N, "GetContainerImagesInput", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetContainerImagesOutput = schema.new({
    id = id.from(_N, "GetContainerImagesOutput"),
    type = "structure",
    members = {
        containerImages = schema.new({
            id = id.from(_N, "GetContainerImagesOutput", "containerImages"),
            type = "list",
            name = "containerImages",
            target_id = prelude.Document.id,
            list_member = M.ContainerImage,
        }),
    },
})

M.GetContainerLogInput = schema.new({
    id = id.from(_N, "GetContainerLogInput"),
    type = "structure",
    members = {
        serviceName = schema.new({
            id = id.from(_N, "GetContainerLogInput", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        containerName = schema.new({
            id = id.from(_N, "GetContainerLogInput", "containerName"),
            type = "string",
            name = "containerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "GetContainerLogInput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startTime" },
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "GetContainerLogInput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "endTime" },
            },
        }),
        filterPattern = schema.new({
            id = id.from(_N, "GetContainerLogInput", "filterPattern"),
            type = "string",
            name = "filterPattern",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "filterPattern" },
            },
        }),
        pageToken = schema.new({
            id = id.from(_N, "GetContainerLogInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "pageToken" },
            },
        }),
    },
})

M.GetContainerLogOutput = schema.new({
    id = id.from(_N, "GetContainerLogOutput"),
    type = "structure",
    members = {
        logEvents = schema.new({
            id = id.from(_N, "GetContainerLogOutput", "logEvents"),
            type = "list",
            name = "logEvents",
            target_id = prelude.Document.id,
            list_member = M.ContainerServiceLogEvent,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetContainerLogOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetContainerServiceDeploymentsInput = schema.new({
    id = id.from(_N, "GetContainerServiceDeploymentsInput"),
    type = "structure",
    members = {
        serviceName = schema.new({
            id = id.from(_N, "GetContainerServiceDeploymentsInput", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetContainerServiceDeploymentsOutput = schema.new({
    id = id.from(_N, "GetContainerServiceDeploymentsOutput"),
    type = "structure",
    members = {
        deployments = schema.new({
            id = id.from(_N, "GetContainerServiceDeploymentsOutput", "deployments"),
            type = "list",
            name = "deployments",
            target_id = prelude.Document.id,
            list_member = M.ContainerServiceDeployment,
        }),
    },
})

M.GetContainerServiceMetricDataInput = schema.new({
    id = id.from(_N, "GetContainerServiceMetricDataInput"),
    type = "structure",
    members = {
        serviceName = schema.new({
            id = id.from(_N, "GetContainerServiceMetricDataInput", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        metricName = schema.new({
            id = id.from(_N, "GetContainerServiceMetricDataInput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "metricName" },
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "GetContainerServiceMetricDataInput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "startTime" },
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "GetContainerServiceMetricDataInput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "endTime" },
            },
        }),
        period = schema.new({
            id = id.from(_N, "GetContainerServiceMetricDataInput", "period"),
            type = "integer",
            name = "period",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "period" },
            },
        }),
        statistics = schema.new({
            id = id.from(_N, "GetContainerServiceMetricDataInput", "statistics"),
            type = "list",
            name = "statistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "statistics" },
            },
        }),
    },
})

M.GetContainerServiceMetricDataOutput = schema.new({
    id = id.from(_N, "GetContainerServiceMetricDataOutput"),
    type = "structure",
    members = {
        metricName = schema.new({
            id = id.from(_N, "GetContainerServiceMetricDataOutput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
        }),
        metricData = schema.new({
            id = id.from(_N, "GetContainerServiceMetricDataOutput", "metricData"),
            type = "list",
            name = "metricData",
            target_id = prelude.Document.id,
            list_member = M.MetricDatapoint,
        }),
    },
})

M.GetContainerServicePowersInput = schema.new({
    id = id.from(_N, "GetContainerServicePowersInput"),
    type = "structure",
})

M.GetContainerServicePowersOutput = schema.new({
    id = id.from(_N, "GetContainerServicePowersOutput"),
    type = "structure",
    members = {
        powers = schema.new({
            id = id.from(_N, "GetContainerServicePowersOutput", "powers"),
            type = "list",
            name = "powers",
            target_id = prelude.Document.id,
            list_member = M.ContainerServicePower,
        }),
    },
})

M.GetContainerServicesInput = schema.new({
    id = id.from(_N, "GetContainerServicesInput"),
    type = "structure",
    members = {
        serviceName = schema.new({
            id = id.from(_N, "GetContainerServicesInput", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "serviceName" },
            },
        }),
    },
})

M.GetContainerServicesOutput = schema.new({
    id = id.from(_N, "GetContainerServicesOutput"),
    type = "structure",
    members = {
        containerServices = schema.new({
            id = id.from(_N, "GetContainerServicesOutput", "containerServices"),
            type = "list",
            name = "containerServices",
            target_id = prelude.Document.id,
            list_member = M.ContainerService,
        }),
    },
})

M.GetCostEstimateInput = schema.new({
    id = id.from(_N, "GetCostEstimateInput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "GetCostEstimateInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "GetCostEstimateInput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "GetCostEstimateInput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceBudgetEstimate = schema.new({
    id = id.from(_N, "ResourceBudgetEstimate"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "ResourceBudgetEstimate", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceBudgetEstimate", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        costEstimates = schema.new({
            id = id.from(_N, "ResourceBudgetEstimate", "costEstimates"),
            type = "list",
            name = "costEstimates",
            target_id = prelude.Document.id,
            list_member = M.CostEstimate,
        }),
        startTime = schema.new({
            id = id.from(_N, "ResourceBudgetEstimate", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "ResourceBudgetEstimate", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetCostEstimateOutput = schema.new({
    id = id.from(_N, "GetCostEstimateOutput"),
    type = "structure",
    members = {
        resourcesBudgetEstimate = schema.new({
            id = id.from(_N, "GetCostEstimateOutput", "resourcesBudgetEstimate"),
            type = "list",
            name = "resourcesBudgetEstimate",
            target_id = prelude.Document.id,
            list_member = M.ResourceBudgetEstimate,
        }),
    },
})

M.GetDiskInput = schema.new({
    id = id.from(_N, "GetDiskInput"),
    type = "structure",
    members = {
        diskName = schema.new({
            id = id.from(_N, "GetDiskInput", "diskName"),
            type = "string",
            name = "diskName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDiskOutput = schema.new({
    id = id.from(_N, "GetDiskOutput"),
    type = "structure",
    members = {
        disk = schema.new({
            id = id.from(_N, "GetDiskOutput", "disk"),
            type = "structure",
            name = "disk",
            target_id = id.from(_N, "Disk"),
            target = M.Disk,
        }),
    },
})

M.GetDisksInput = schema.new({
    id = id.from(_N, "GetDisksInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetDisksInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDisksOutput = schema.new({
    id = id.from(_N, "GetDisksOutput"),
    type = "structure",
    members = {
        disks = schema.new({
            id = id.from(_N, "GetDisksOutput", "disks"),
            type = "list",
            name = "disks",
            target_id = prelude.Document.id,
            list_member = M.Disk,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetDisksOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDiskSnapshotInput = schema.new({
    id = id.from(_N, "GetDiskSnapshotInput"),
    type = "structure",
    members = {
        diskSnapshotName = schema.new({
            id = id.from(_N, "GetDiskSnapshotInput", "diskSnapshotName"),
            type = "string",
            name = "diskSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDiskSnapshotOutput = schema.new({
    id = id.from(_N, "GetDiskSnapshotOutput"),
    type = "structure",
    members = {
        diskSnapshot = schema.new({
            id = id.from(_N, "GetDiskSnapshotOutput", "diskSnapshot"),
            type = "structure",
            name = "diskSnapshot",
            target_id = id.from(_N, "DiskSnapshot"),
            target = M.DiskSnapshot,
        }),
    },
})

M.GetDiskSnapshotsInput = schema.new({
    id = id.from(_N, "GetDiskSnapshotsInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetDiskSnapshotsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDiskSnapshotsOutput = schema.new({
    id = id.from(_N, "GetDiskSnapshotsOutput"),
    type = "structure",
    members = {
        diskSnapshots = schema.new({
            id = id.from(_N, "GetDiskSnapshotsOutput", "diskSnapshots"),
            type = "list",
            name = "diskSnapshots",
            target_id = prelude.Document.id,
            list_member = M.DiskSnapshot,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetDiskSnapshotsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDistributionBundlesInput = schema.new({
    id = id.from(_N, "GetDistributionBundlesInput"),
    type = "structure",
})

M.GetDistributionBundlesOutput = schema.new({
    id = id.from(_N, "GetDistributionBundlesOutput"),
    type = "structure",
    members = {
        bundles = schema.new({
            id = id.from(_N, "GetDistributionBundlesOutput", "bundles"),
            type = "list",
            name = "bundles",
            target_id = prelude.Document.id,
            list_member = M.DistributionBundle,
        }),
    },
})

M.GetDistributionLatestCacheResetInput = schema.new({
    id = id.from(_N, "GetDistributionLatestCacheResetInput"),
    type = "structure",
    members = {
        distributionName = schema.new({
            id = id.from(_N, "GetDistributionLatestCacheResetInput", "distributionName"),
            type = "string",
            name = "distributionName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDistributionLatestCacheResetOutput = schema.new({
    id = id.from(_N, "GetDistributionLatestCacheResetOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "GetDistributionLatestCacheResetOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createTime = schema.new({
            id = id.from(_N, "GetDistributionLatestCacheResetOutput", "createTime"),
            type = "timestamp",
            name = "createTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetDistributionMetricDataInput = schema.new({
    id = id.from(_N, "GetDistributionMetricDataInput"),
    type = "structure",
    members = {
        distributionName = schema.new({
            id = id.from(_N, "GetDistributionMetricDataInput", "distributionName"),
            type = "string",
            name = "distributionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metricName = schema.new({
            id = id.from(_N, "GetDistributionMetricDataInput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "GetDistributionMetricDataInput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "GetDistributionMetricDataInput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        period = schema.new({
            id = id.from(_N, "GetDistributionMetricDataInput", "period"),
            type = "integer",
            name = "period",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        unit = schema.new({
            id = id.from(_N, "GetDistributionMetricDataInput", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statistics = schema.new({
            id = id.from(_N, "GetDistributionMetricDataInput", "statistics"),
            type = "list",
            name = "statistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDistributionMetricDataOutput = schema.new({
    id = id.from(_N, "GetDistributionMetricDataOutput"),
    type = "structure",
    members = {
        metricName = schema.new({
            id = id.from(_N, "GetDistributionMetricDataOutput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
        }),
        metricData = schema.new({
            id = id.from(_N, "GetDistributionMetricDataOutput", "metricData"),
            type = "list",
            name = "metricData",
            target_id = prelude.Document.id,
            list_member = M.MetricDatapoint,
        }),
    },
})

M.GetDistributionsInput = schema.new({
    id = id.from(_N, "GetDistributionsInput"),
    type = "structure",
    members = {
        distributionName = schema.new({
            id = id.from(_N, "GetDistributionsInput", "distributionName"),
            type = "string",
            name = "distributionName",
            target_id = prelude.String.id,
        }),
        pageToken = schema.new({
            id = id.from(_N, "GetDistributionsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDistributionsOutput = schema.new({
    id = id.from(_N, "GetDistributionsOutput"),
    type = "structure",
    members = {
        distributions = schema.new({
            id = id.from(_N, "GetDistributionsOutput", "distributions"),
            type = "list",
            name = "distributions",
            target_id = prelude.Document.id,
            list_member = M.LightsailDistribution,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetDistributionsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDomainInput = schema.new({
    id = id.from(_N, "GetDomainInput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "GetDomainInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDomainOutput = schema.new({
    id = id.from(_N, "GetDomainOutput"),
    type = "structure",
    members = {
        domain = schema.new({
            id = id.from(_N, "GetDomainOutput", "domain"),
            type = "structure",
            name = "domain",
            target_id = id.from(_N, "Domain"),
            target = M.Domain,
        }),
    },
})

M.GetDomainsInput = schema.new({
    id = id.from(_N, "GetDomainsInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetDomainsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDomainsOutput = schema.new({
    id = id.from(_N, "GetDomainsOutput"),
    type = "structure",
    members = {
        domains = schema.new({
            id = id.from(_N, "GetDomainsOutput", "domains"),
            type = "list",
            name = "domains",
            target_id = prelude.Document.id,
            list_member = M.Domain,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetDomainsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetExportSnapshotRecordsInput = schema.new({
    id = id.from(_N, "GetExportSnapshotRecordsInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetExportSnapshotRecordsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetExportSnapshotRecordsOutput = schema.new({
    id = id.from(_N, "GetExportSnapshotRecordsOutput"),
    type = "structure",
    members = {
        exportSnapshotRecords = schema.new({
            id = id.from(_N, "GetExportSnapshotRecordsOutput", "exportSnapshotRecords"),
            type = "list",
            name = "exportSnapshotRecords",
            target_id = prelude.Document.id,
            list_member = M.ExportSnapshotRecord,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetExportSnapshotRecordsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInstanceInput = schema.new({
    id = id.from(_N, "GetInstanceInput"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "GetInstanceInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InstanceHardware = schema.new({
    id = id.from(_N, "InstanceHardware"),
    type = "structure",
    members = {
        cpuCount = schema.new({
            id = id.from(_N, "InstanceHardware", "cpuCount"),
            type = "integer",
            name = "cpuCount",
            target_id = prelude.Integer.id,
        }),
        disks = schema.new({
            id = id.from(_N, "InstanceHardware", "disks"),
            type = "list",
            name = "disks",
            target_id = prelude.Document.id,
            list_member = M.Disk,
        }),
        ramSizeInGb = schema.new({
            id = id.from(_N, "InstanceHardware", "ramSizeInGb"),
            type = "float",
            name = "ramSizeInGb",
            target_id = prelude.Float.id,
        }),
    },
})

M.InstanceMetadataOptions = schema.new({
    id = id.from(_N, "InstanceMetadataOptions"),
    type = "structure",
    members = {
        state = schema.new({
            id = id.from(_N, "InstanceMetadataOptions", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        httpTokens = schema.new({
            id = id.from(_N, "InstanceMetadataOptions", "httpTokens"),
            type = "string",
            name = "httpTokens",
            target_id = prelude.String.id,
        }),
        httpEndpoint = schema.new({
            id = id.from(_N, "InstanceMetadataOptions", "httpEndpoint"),
            type = "string",
            name = "httpEndpoint",
            target_id = prelude.String.id,
        }),
        httpPutResponseHopLimit = schema.new({
            id = id.from(_N, "InstanceMetadataOptions", "httpPutResponseHopLimit"),
            type = "integer",
            name = "httpPutResponseHopLimit",
            target_id = prelude.Integer.id,
        }),
        httpProtocolIpv6 = schema.new({
            id = id.from(_N, "InstanceMetadataOptions", "httpProtocolIpv6"),
            type = "string",
            name = "httpProtocolIpv6",
            target_id = prelude.String.id,
        }),
    },
})

M.MonthlyTransfer = schema.new({
    id = id.from(_N, "MonthlyTransfer"),
    type = "structure",
    members = {
        gbPerMonthAllocated = schema.new({
            id = id.from(_N, "MonthlyTransfer", "gbPerMonthAllocated"),
            type = "integer",
            name = "gbPerMonthAllocated",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InstancePortInfo = schema.new({
    id = id.from(_N, "InstancePortInfo"),
    type = "structure",
    members = {
        fromPort = schema.new({
            id = id.from(_N, "InstancePortInfo", "fromPort"),
            type = "integer",
            name = "fromPort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        toPort = schema.new({
            id = id.from(_N, "InstancePortInfo", "toPort"),
            type = "integer",
            name = "toPort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "InstancePortInfo", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
        }),
        accessFrom = schema.new({
            id = id.from(_N, "InstancePortInfo", "accessFrom"),
            type = "string",
            name = "accessFrom",
            target_id = prelude.String.id,
        }),
        accessType = schema.new({
            id = id.from(_N, "InstancePortInfo", "accessType"),
            type = "string",
            name = "accessType",
            target_id = prelude.String.id,
        }),
        commonName = schema.new({
            id = id.from(_N, "InstancePortInfo", "commonName"),
            type = "string",
            name = "commonName",
            target_id = prelude.String.id,
        }),
        accessDirection = schema.new({
            id = id.from(_N, "InstancePortInfo", "accessDirection"),
            type = "string",
            name = "accessDirection",
            target_id = prelude.String.id,
        }),
        cidrs = schema.new({
            id = id.from(_N, "InstancePortInfo", "cidrs"),
            type = "list",
            name = "cidrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ipv6Cidrs = schema.new({
            id = id.from(_N, "InstancePortInfo", "ipv6Cidrs"),
            type = "list",
            name = "ipv6Cidrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        cidrListAliases = schema.new({
            id = id.from(_N, "InstancePortInfo", "cidrListAliases"),
            type = "list",
            name = "cidrListAliases",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.InstanceNetworking = schema.new({
    id = id.from(_N, "InstanceNetworking"),
    type = "structure",
    members = {
        monthlyTransfer = schema.new({
            id = id.from(_N, "InstanceNetworking", "monthlyTransfer"),
            type = "structure",
            name = "monthlyTransfer",
            target_id = id.from(_N, "MonthlyTransfer"),
            target = M.MonthlyTransfer,
        }),
        ports = schema.new({
            id = id.from(_N, "InstanceNetworking", "ports"),
            type = "list",
            name = "ports",
            target_id = prelude.Document.id,
            list_member = M.InstancePortInfo,
        }),
    },
})

M.InstanceState = schema.new({
    id = id.from(_N, "InstanceState"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "InstanceState", "code"),
            type = "integer",
            name = "code",
            target_id = prelude.Integer.id,
        }),
        name = schema.new({
            id = id.from(_N, "InstanceState", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.Instance = schema.new({
    id = id.from(_N, "Instance"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Instance", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "Instance", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "Instance", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Instance", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "Instance", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "Instance", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "Instance", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        blueprintId = schema.new({
            id = id.from(_N, "Instance", "blueprintId"),
            type = "string",
            name = "blueprintId",
            target_id = prelude.String.id,
        }),
        blueprintName = schema.new({
            id = id.from(_N, "Instance", "blueprintName"),
            type = "string",
            name = "blueprintName",
            target_id = prelude.String.id,
        }),
        bundleId = schema.new({
            id = id.from(_N, "Instance", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
        }),
        addOns = schema.new({
            id = id.from(_N, "Instance", "addOns"),
            type = "list",
            name = "addOns",
            target_id = prelude.Document.id,
            list_member = M.AddOn,
        }),
        isStaticIp = schema.new({
            id = id.from(_N, "Instance", "isStaticIp"),
            type = "boolean",
            name = "isStaticIp",
            target_id = prelude.Boolean.id,
        }),
        privateIpAddress = schema.new({
            id = id.from(_N, "Instance", "privateIpAddress"),
            type = "string",
            name = "privateIpAddress",
            target_id = prelude.String.id,
        }),
        publicIpAddress = schema.new({
            id = id.from(_N, "Instance", "publicIpAddress"),
            type = "string",
            name = "publicIpAddress",
            target_id = prelude.String.id,
        }),
        ipv6Addresses = schema.new({
            id = id.from(_N, "Instance", "ipv6Addresses"),
            type = "list",
            name = "ipv6Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "Instance", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
        hardware = schema.new({
            id = id.from(_N, "Instance", "hardware"),
            type = "structure",
            name = "hardware",
            target_id = id.from(_N, "InstanceHardware"),
            target = M.InstanceHardware,
        }),
        networking = schema.new({
            id = id.from(_N, "Instance", "networking"),
            type = "structure",
            name = "networking",
            target_id = id.from(_N, "InstanceNetworking"),
            target = M.InstanceNetworking,
        }),
        state = schema.new({
            id = id.from(_N, "Instance", "state"),
            type = "structure",
            name = "state",
            target_id = id.from(_N, "InstanceState"),
            target = M.InstanceState,
        }),
        username = schema.new({
            id = id.from(_N, "Instance", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
        }),
        sshKeyName = schema.new({
            id = id.from(_N, "Instance", "sshKeyName"),
            type = "string",
            name = "sshKeyName",
            target_id = prelude.String.id,
        }),
        metadataOptions = schema.new({
            id = id.from(_N, "Instance", "metadataOptions"),
            type = "structure",
            name = "metadataOptions",
            target_id = id.from(_N, "InstanceMetadataOptions"),
            target = M.InstanceMetadataOptions,
        }),
    },
})

M.GetInstanceOutput = schema.new({
    id = id.from(_N, "GetInstanceOutput"),
    type = "structure",
    members = {
        instance = schema.new({
            id = id.from(_N, "GetInstanceOutput", "instance"),
            type = "structure",
            name = "instance",
            target_id = id.from(_N, "Instance"),
            target = M.Instance,
        }),
    },
})

M.GetInstanceAccessDetailsInput = schema.new({
    id = id.from(_N, "GetInstanceAccessDetailsInput"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "GetInstanceAccessDetailsInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "GetInstanceAccessDetailsInput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
        }),
    },
})

M.HostKeyAttributes = schema.new({
    id = id.from(_N, "HostKeyAttributes"),
    type = "structure",
    members = {
        algorithm = schema.new({
            id = id.from(_N, "HostKeyAttributes", "algorithm"),
            type = "string",
            name = "algorithm",
            target_id = prelude.String.id,
        }),
        publicKey = schema.new({
            id = id.from(_N, "HostKeyAttributes", "publicKey"),
            type = "string",
            name = "publicKey",
            target_id = prelude.String.id,
        }),
        witnessedAt = schema.new({
            id = id.from(_N, "HostKeyAttributes", "witnessedAt"),
            type = "timestamp",
            name = "witnessedAt",
            target_id = prelude.Timestamp.id,
        }),
        fingerprintSHA1 = schema.new({
            id = id.from(_N, "HostKeyAttributes", "fingerprintSHA1"),
            type = "string",
            name = "fingerprintSHA1",
            target_id = prelude.String.id,
        }),
        fingerprintSHA256 = schema.new({
            id = id.from(_N, "HostKeyAttributes", "fingerprintSHA256"),
            type = "string",
            name = "fingerprintSHA256",
            target_id = prelude.String.id,
        }),
        notValidBefore = schema.new({
            id = id.from(_N, "HostKeyAttributes", "notValidBefore"),
            type = "timestamp",
            name = "notValidBefore",
            target_id = prelude.Timestamp.id,
        }),
        notValidAfter = schema.new({
            id = id.from(_N, "HostKeyAttributes", "notValidAfter"),
            type = "timestamp",
            name = "notValidAfter",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.PasswordData = schema.new({
    id = id.from(_N, "PasswordData"),
    type = "structure",
    members = {
        ciphertext = schema.new({
            id = id.from(_N, "PasswordData", "ciphertext"),
            type = "string",
            name = "ciphertext",
            target_id = prelude.String.id,
        }),
        keyPairName = schema.new({
            id = id.from(_N, "PasswordData", "keyPairName"),
            type = "string",
            name = "keyPairName",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceAccessDetails = schema.new({
    id = id.from(_N, "InstanceAccessDetails"),
    type = "structure",
    members = {
        certKey = schema.new({
            id = id.from(_N, "InstanceAccessDetails", "certKey"),
            type = "string",
            name = "certKey",
            target_id = prelude.String.id,
        }),
        expiresAt = schema.new({
            id = id.from(_N, "InstanceAccessDetails", "expiresAt"),
            type = "timestamp",
            name = "expiresAt",
            target_id = prelude.Timestamp.id,
        }),
        ipAddress = schema.new({
            id = id.from(_N, "InstanceAccessDetails", "ipAddress"),
            type = "string",
            name = "ipAddress",
            target_id = prelude.String.id,
        }),
        ipv6Addresses = schema.new({
            id = id.from(_N, "InstanceAccessDetails", "ipv6Addresses"),
            type = "list",
            name = "ipv6Addresses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        password = schema.new({
            id = id.from(_N, "InstanceAccessDetails", "password"),
            type = "string",
            name = "password",
            target_id = prelude.String.id,
        }),
        passwordData = schema.new({
            id = id.from(_N, "InstanceAccessDetails", "passwordData"),
            type = "structure",
            name = "passwordData",
            target_id = id.from(_N, "PasswordData"),
            target = M.PasswordData,
        }),
        privateKey = schema.new({
            id = id.from(_N, "InstanceAccessDetails", "privateKey"),
            type = "string",
            name = "privateKey",
            target_id = prelude.String.id,
        }),
        protocol = schema.new({
            id = id.from(_N, "InstanceAccessDetails", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
        }),
        instanceName = schema.new({
            id = id.from(_N, "InstanceAccessDetails", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
        }),
        username = schema.new({
            id = id.from(_N, "InstanceAccessDetails", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
        }),
        hostKeys = schema.new({
            id = id.from(_N, "InstanceAccessDetails", "hostKeys"),
            type = "list",
            name = "hostKeys",
            target_id = prelude.Document.id,
            list_member = M.HostKeyAttributes,
        }),
    },
})

M.GetInstanceAccessDetailsOutput = schema.new({
    id = id.from(_N, "GetInstanceAccessDetailsOutput"),
    type = "structure",
    members = {
        accessDetails = schema.new({
            id = id.from(_N, "GetInstanceAccessDetailsOutput", "accessDetails"),
            type = "structure",
            name = "accessDetails",
            target_id = id.from(_N, "InstanceAccessDetails"),
            target = M.InstanceAccessDetails,
        }),
    },
})

M.GetInstanceMetricDataInput = schema.new({
    id = id.from(_N, "GetInstanceMetricDataInput"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "GetInstanceMetricDataInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metricName = schema.new({
            id = id.from(_N, "GetInstanceMetricDataInput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        period = schema.new({
            id = id.from(_N, "GetInstanceMetricDataInput", "period"),
            type = "integer",
            name = "period",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "GetInstanceMetricDataInput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "GetInstanceMetricDataInput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        unit = schema.new({
            id = id.from(_N, "GetInstanceMetricDataInput", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statistics = schema.new({
            id = id.from(_N, "GetInstanceMetricDataInput", "statistics"),
            type = "list",
            name = "statistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetInstanceMetricDataOutput = schema.new({
    id = id.from(_N, "GetInstanceMetricDataOutput"),
    type = "structure",
    members = {
        metricName = schema.new({
            id = id.from(_N, "GetInstanceMetricDataOutput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
        }),
        metricData = schema.new({
            id = id.from(_N, "GetInstanceMetricDataOutput", "metricData"),
            type = "list",
            name = "metricData",
            target_id = prelude.Document.id,
            list_member = M.MetricDatapoint,
        }),
    },
})

M.GetInstancePortStatesInput = schema.new({
    id = id.from(_N, "GetInstancePortStatesInput"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "GetInstancePortStatesInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InstancePortState = schema.new({
    id = id.from(_N, "InstancePortState"),
    type = "structure",
    members = {
        fromPort = schema.new({
            id = id.from(_N, "InstancePortState", "fromPort"),
            type = "integer",
            name = "fromPort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        toPort = schema.new({
            id = id.from(_N, "InstancePortState", "toPort"),
            type = "integer",
            name = "toPort",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "InstancePortState", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "InstancePortState", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        cidrs = schema.new({
            id = id.from(_N, "InstancePortState", "cidrs"),
            type = "list",
            name = "cidrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ipv6Cidrs = schema.new({
            id = id.from(_N, "InstancePortState", "ipv6Cidrs"),
            type = "list",
            name = "ipv6Cidrs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        cidrListAliases = schema.new({
            id = id.from(_N, "InstancePortState", "cidrListAliases"),
            type = "list",
            name = "cidrListAliases",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetInstancePortStatesOutput = schema.new({
    id = id.from(_N, "GetInstancePortStatesOutput"),
    type = "structure",
    members = {
        portStates = schema.new({
            id = id.from(_N, "GetInstancePortStatesOutput", "portStates"),
            type = "list",
            name = "portStates",
            target_id = prelude.Document.id,
            list_member = M.InstancePortState,
        }),
    },
})

M.GetInstancesInput = schema.new({
    id = id.from(_N, "GetInstancesInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetInstancesInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInstancesOutput = schema.new({
    id = id.from(_N, "GetInstancesOutput"),
    type = "structure",
    members = {
        instances = schema.new({
            id = id.from(_N, "GetInstancesOutput", "instances"),
            type = "list",
            name = "instances",
            target_id = prelude.Document.id,
            list_member = M.Instance,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetInstancesOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInstanceSnapshotInput = schema.new({
    id = id.from(_N, "GetInstanceSnapshotInput"),
    type = "structure",
    members = {
        instanceSnapshotName = schema.new({
            id = id.from(_N, "GetInstanceSnapshotInput", "instanceSnapshotName"),
            type = "string",
            name = "instanceSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InstanceSnapshot = schema.new({
    id = id.from(_N, "InstanceSnapshot"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "InstanceSnapshot", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "InstanceSnapshot", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "InstanceSnapshot", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "InstanceSnapshot", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "InstanceSnapshot", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "InstanceSnapshot", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "InstanceSnapshot", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        state = schema.new({
            id = id.from(_N, "InstanceSnapshot", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        progress = schema.new({
            id = id.from(_N, "InstanceSnapshot", "progress"),
            type = "string",
            name = "progress",
            target_id = prelude.String.id,
        }),
        fromAttachedDisks = schema.new({
            id = id.from(_N, "InstanceSnapshot", "fromAttachedDisks"),
            type = "list",
            name = "fromAttachedDisks",
            target_id = prelude.Document.id,
            list_member = M.Disk,
        }),
        fromInstanceName = schema.new({
            id = id.from(_N, "InstanceSnapshot", "fromInstanceName"),
            type = "string",
            name = "fromInstanceName",
            target_id = prelude.String.id,
        }),
        fromInstanceArn = schema.new({
            id = id.from(_N, "InstanceSnapshot", "fromInstanceArn"),
            type = "string",
            name = "fromInstanceArn",
            target_id = prelude.String.id,
        }),
        fromBlueprintId = schema.new({
            id = id.from(_N, "InstanceSnapshot", "fromBlueprintId"),
            type = "string",
            name = "fromBlueprintId",
            target_id = prelude.String.id,
        }),
        fromBundleId = schema.new({
            id = id.from(_N, "InstanceSnapshot", "fromBundleId"),
            type = "string",
            name = "fromBundleId",
            target_id = prelude.String.id,
        }),
        isFromAutoSnapshot = schema.new({
            id = id.from(_N, "InstanceSnapshot", "isFromAutoSnapshot"),
            type = "boolean",
            name = "isFromAutoSnapshot",
            target_id = prelude.Boolean.id,
        }),
        sizeInGb = schema.new({
            id = id.from(_N, "InstanceSnapshot", "sizeInGb"),
            type = "integer",
            name = "sizeInGb",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetInstanceSnapshotOutput = schema.new({
    id = id.from(_N, "GetInstanceSnapshotOutput"),
    type = "structure",
    members = {
        instanceSnapshot = schema.new({
            id = id.from(_N, "GetInstanceSnapshotOutput", "instanceSnapshot"),
            type = "structure",
            name = "instanceSnapshot",
            target_id = id.from(_N, "InstanceSnapshot"),
            target = M.InstanceSnapshot,
        }),
    },
})

M.GetInstanceSnapshotsInput = schema.new({
    id = id.from(_N, "GetInstanceSnapshotsInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetInstanceSnapshotsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInstanceSnapshotsOutput = schema.new({
    id = id.from(_N, "GetInstanceSnapshotsOutput"),
    type = "structure",
    members = {
        instanceSnapshots = schema.new({
            id = id.from(_N, "GetInstanceSnapshotsOutput", "instanceSnapshots"),
            type = "list",
            name = "instanceSnapshots",
            target_id = prelude.Document.id,
            list_member = M.InstanceSnapshot,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetInstanceSnapshotsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetInstanceStateInput = schema.new({
    id = id.from(_N, "GetInstanceStateInput"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "GetInstanceStateInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetInstanceStateOutput = schema.new({
    id = id.from(_N, "GetInstanceStateOutput"),
    type = "structure",
    members = {
        state = schema.new({
            id = id.from(_N, "GetInstanceStateOutput", "state"),
            type = "structure",
            name = "state",
            target_id = id.from(_N, "InstanceState"),
            target = M.InstanceState,
        }),
    },
})

M.GetKeyPairInput = schema.new({
    id = id.from(_N, "GetKeyPairInput"),
    type = "structure",
    members = {
        keyPairName = schema.new({
            id = id.from(_N, "GetKeyPairInput", "keyPairName"),
            type = "string",
            name = "keyPairName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetKeyPairOutput = schema.new({
    id = id.from(_N, "GetKeyPairOutput"),
    type = "structure",
    members = {
        keyPair = schema.new({
            id = id.from(_N, "GetKeyPairOutput", "keyPair"),
            type = "structure",
            name = "keyPair",
            target_id = id.from(_N, "KeyPair"),
            target = M.KeyPair,
        }),
    },
})

M.GetKeyPairsInput = schema.new({
    id = id.from(_N, "GetKeyPairsInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetKeyPairsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
        includeDefaultKeyPair = schema.new({
            id = id.from(_N, "GetKeyPairsInput", "includeDefaultKeyPair"),
            type = "boolean",
            name = "includeDefaultKeyPair",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetKeyPairsOutput = schema.new({
    id = id.from(_N, "GetKeyPairsOutput"),
    type = "structure",
    members = {
        keyPairs = schema.new({
            id = id.from(_N, "GetKeyPairsOutput", "keyPairs"),
            type = "list",
            name = "keyPairs",
            target_id = prelude.Document.id,
            list_member = M.KeyPair,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetKeyPairsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetLoadBalancerInput = schema.new({
    id = id.from(_N, "GetLoadBalancerInput"),
    type = "structure",
    members = {
        loadBalancerName = schema.new({
            id = id.from(_N, "GetLoadBalancerInput", "loadBalancerName"),
            type = "string",
            name = "loadBalancerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InstanceHealthSummary = schema.new({
    id = id.from(_N, "InstanceHealthSummary"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "InstanceHealthSummary", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
        }),
        instanceHealth = schema.new({
            id = id.from(_N, "InstanceHealthSummary", "instanceHealth"),
            type = "string",
            name = "instanceHealth",
            target_id = prelude.String.id,
        }),
        instanceHealthReason = schema.new({
            id = id.from(_N, "InstanceHealthSummary", "instanceHealthReason"),
            type = "string",
            name = "instanceHealthReason",
            target_id = prelude.String.id,
        }),
    },
})

M.LoadBalancerTlsCertificateSummary = schema.new({
    id = id.from(_N, "LoadBalancerTlsCertificateSummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        isAttached = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateSummary", "isAttached"),
            type = "boolean",
            name = "isAttached",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.LoadBalancer = schema.new({
    id = id.from(_N, "LoadBalancer"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "LoadBalancer", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "LoadBalancer", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "LoadBalancer", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "LoadBalancer", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "LoadBalancer", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "LoadBalancer", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "LoadBalancer", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        dnsName = schema.new({
            id = id.from(_N, "LoadBalancer", "dnsName"),
            type = "string",
            name = "dnsName",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "LoadBalancer", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        protocol = schema.new({
            id = id.from(_N, "LoadBalancer", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
        }),
        publicPorts = schema.new({
            id = id.from(_N, "LoadBalancer", "publicPorts"),
            type = "list",
            name = "publicPorts",
            target_id = prelude.Document.id,
            list_member = prelude.Integer,
        }),
        healthCheckPath = schema.new({
            id = id.from(_N, "LoadBalancer", "healthCheckPath"),
            type = "string",
            name = "healthCheckPath",
            target_id = prelude.String.id,
        }),
        instancePort = schema.new({
            id = id.from(_N, "LoadBalancer", "instancePort"),
            type = "integer",
            name = "instancePort",
            target_id = prelude.Integer.id,
        }),
        instanceHealthSummary = schema.new({
            id = id.from(_N, "LoadBalancer", "instanceHealthSummary"),
            type = "list",
            name = "instanceHealthSummary",
            target_id = prelude.Document.id,
            list_member = M.InstanceHealthSummary,
        }),
        tlsCertificateSummaries = schema.new({
            id = id.from(_N, "LoadBalancer", "tlsCertificateSummaries"),
            type = "list",
            name = "tlsCertificateSummaries",
            target_id = prelude.Document.id,
            list_member = M.LoadBalancerTlsCertificateSummary,
        }),
        configurationOptions = schema.new({
            id = id.from(_N, "LoadBalancer", "configurationOptions"),
            type = "map",
            name = "configurationOptions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "LoadBalancer", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
        httpsRedirectionEnabled = schema.new({
            id = id.from(_N, "LoadBalancer", "httpsRedirectionEnabled"),
            type = "boolean",
            name = "httpsRedirectionEnabled",
            target_id = prelude.Boolean.id,
        }),
        tlsPolicyName = schema.new({
            id = id.from(_N, "LoadBalancer", "tlsPolicyName"),
            type = "string",
            name = "tlsPolicyName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetLoadBalancerOutput = schema.new({
    id = id.from(_N, "GetLoadBalancerOutput"),
    type = "structure",
    members = {
        loadBalancer = schema.new({
            id = id.from(_N, "GetLoadBalancerOutput", "loadBalancer"),
            type = "structure",
            name = "loadBalancer",
            target_id = id.from(_N, "LoadBalancer"),
            target = M.LoadBalancer,
        }),
    },
})

M.GetLoadBalancerMetricDataInput = schema.new({
    id = id.from(_N, "GetLoadBalancerMetricDataInput"),
    type = "structure",
    members = {
        loadBalancerName = schema.new({
            id = id.from(_N, "GetLoadBalancerMetricDataInput", "loadBalancerName"),
            type = "string",
            name = "loadBalancerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metricName = schema.new({
            id = id.from(_N, "GetLoadBalancerMetricDataInput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        period = schema.new({
            id = id.from(_N, "GetLoadBalancerMetricDataInput", "period"),
            type = "integer",
            name = "period",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "GetLoadBalancerMetricDataInput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "GetLoadBalancerMetricDataInput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        unit = schema.new({
            id = id.from(_N, "GetLoadBalancerMetricDataInput", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statistics = schema.new({
            id = id.from(_N, "GetLoadBalancerMetricDataInput", "statistics"),
            type = "list",
            name = "statistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetLoadBalancerMetricDataOutput = schema.new({
    id = id.from(_N, "GetLoadBalancerMetricDataOutput"),
    type = "structure",
    members = {
        metricName = schema.new({
            id = id.from(_N, "GetLoadBalancerMetricDataOutput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
        }),
        metricData = schema.new({
            id = id.from(_N, "GetLoadBalancerMetricDataOutput", "metricData"),
            type = "list",
            name = "metricData",
            target_id = prelude.Document.id,
            list_member = M.MetricDatapoint,
        }),
    },
})

M.GetLoadBalancersInput = schema.new({
    id = id.from(_N, "GetLoadBalancersInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetLoadBalancersInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetLoadBalancersOutput = schema.new({
    id = id.from(_N, "GetLoadBalancersOutput"),
    type = "structure",
    members = {
        loadBalancers = schema.new({
            id = id.from(_N, "GetLoadBalancersOutput", "loadBalancers"),
            type = "list",
            name = "loadBalancers",
            target_id = prelude.Document.id,
            list_member = M.LoadBalancer,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetLoadBalancersOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetLoadBalancerTlsCertificatesInput = schema.new({
    id = id.from(_N, "GetLoadBalancerTlsCertificatesInput"),
    type = "structure",
    members = {
        loadBalancerName = schema.new({
            id = id.from(_N, "GetLoadBalancerTlsCertificatesInput", "loadBalancerName"),
            type = "string",
            name = "loadBalancerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LoadBalancerTlsCertificateDnsRecordCreationState = schema.new({
    id = id.from(_N, "LoadBalancerTlsCertificateDnsRecordCreationState"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateDnsRecordCreationState", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateDnsRecordCreationState", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.LoadBalancerTlsCertificateDomainValidationRecord = schema.new({
    id = id.from(_N, "LoadBalancerTlsCertificateDomainValidationRecord"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateDomainValidationRecord", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateDomainValidationRecord", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateDomainValidationRecord", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        validationStatus = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateDomainValidationRecord", "validationStatus"),
            type = "string",
            name = "validationStatus",
            target_id = prelude.String.id,
        }),
        domainName = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateDomainValidationRecord", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        dnsRecordCreationState = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateDomainValidationRecord", "dnsRecordCreationState"),
            type = "structure",
            name = "dnsRecordCreationState",
            target_id = id.from(_N, "LoadBalancerTlsCertificateDnsRecordCreationState"),
            target = M.LoadBalancerTlsCertificateDnsRecordCreationState,
        }),
    },
})

M.LoadBalancerTlsCertificateDomainValidationOption = schema.new({
    id = id.from(_N, "LoadBalancerTlsCertificateDomainValidationOption"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateDomainValidationOption", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        validationStatus = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateDomainValidationOption", "validationStatus"),
            type = "string",
            name = "validationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.LoadBalancerTlsCertificateRenewalSummary = schema.new({
    id = id.from(_N, "LoadBalancerTlsCertificateRenewalSummary"),
    type = "structure",
    members = {
        renewalStatus = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateRenewalSummary", "renewalStatus"),
            type = "string",
            name = "renewalStatus",
            target_id = prelude.String.id,
        }),
        domainValidationOptions = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificateRenewalSummary", "domainValidationOptions"),
            type = "list",
            name = "domainValidationOptions",
            target_id = prelude.Document.id,
            list_member = M.LoadBalancerTlsCertificateDomainValidationOption,
        }),
    },
})

M.LoadBalancerTlsCertificate = schema.new({
    id = id.from(_N, "LoadBalancerTlsCertificate"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        loadBalancerName = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "loadBalancerName"),
            type = "string",
            name = "loadBalancerName",
            target_id = prelude.String.id,
        }),
        isAttached = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "isAttached"),
            type = "boolean",
            name = "isAttached",
            target_id = prelude.Boolean.id,
        }),
        status = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        domainName = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        domainValidationRecords = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "domainValidationRecords"),
            type = "list",
            name = "domainValidationRecords",
            target_id = prelude.Document.id,
            list_member = M.LoadBalancerTlsCertificateDomainValidationRecord,
        }),
        failureReason = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        issuedAt = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "issuedAt"),
            type = "timestamp",
            name = "issuedAt",
            target_id = prelude.Timestamp.id,
        }),
        issuer = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
        }),
        keyAlgorithm = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "keyAlgorithm"),
            type = "string",
            name = "keyAlgorithm",
            target_id = prelude.String.id,
        }),
        notAfter = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "notAfter"),
            type = "timestamp",
            name = "notAfter",
            target_id = prelude.Timestamp.id,
        }),
        notBefore = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "notBefore"),
            type = "timestamp",
            name = "notBefore",
            target_id = prelude.Timestamp.id,
        }),
        renewalSummary = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "renewalSummary"),
            type = "structure",
            name = "renewalSummary",
            target_id = id.from(_N, "LoadBalancerTlsCertificateRenewalSummary"),
            target = M.LoadBalancerTlsCertificateRenewalSummary,
        }),
        revocationReason = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "revocationReason"),
            type = "string",
            name = "revocationReason",
            target_id = prelude.String.id,
        }),
        revokedAt = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "revokedAt"),
            type = "timestamp",
            name = "revokedAt",
            target_id = prelude.Timestamp.id,
        }),
        serial = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "serial"),
            type = "string",
            name = "serial",
            target_id = prelude.String.id,
        }),
        signatureAlgorithm = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "signatureAlgorithm"),
            type = "string",
            name = "signatureAlgorithm",
            target_id = prelude.String.id,
        }),
        subject = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "subject"),
            type = "string",
            name = "subject",
            target_id = prelude.String.id,
        }),
        subjectAlternativeNames = schema.new({
            id = id.from(_N, "LoadBalancerTlsCertificate", "subjectAlternativeNames"),
            type = "list",
            name = "subjectAlternativeNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetLoadBalancerTlsCertificatesOutput = schema.new({
    id = id.from(_N, "GetLoadBalancerTlsCertificatesOutput"),
    type = "structure",
    members = {
        tlsCertificates = schema.new({
            id = id.from(_N, "GetLoadBalancerTlsCertificatesOutput", "tlsCertificates"),
            type = "list",
            name = "tlsCertificates",
            target_id = prelude.Document.id,
            list_member = M.LoadBalancerTlsCertificate,
        }),
    },
})

M.GetLoadBalancerTlsPoliciesInput = schema.new({
    id = id.from(_N, "GetLoadBalancerTlsPoliciesInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetLoadBalancerTlsPoliciesInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.LoadBalancerTlsPolicy = schema.new({
    id = id.from(_N, "LoadBalancerTlsPolicy"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "LoadBalancerTlsPolicy", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        isDefault = schema.new({
            id = id.from(_N, "LoadBalancerTlsPolicy", "isDefault"),
            type = "boolean",
            name = "isDefault",
            target_id = prelude.Boolean.id,
        }),
        description = schema.new({
            id = id.from(_N, "LoadBalancerTlsPolicy", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        protocols = schema.new({
            id = id.from(_N, "LoadBalancerTlsPolicy", "protocols"),
            type = "list",
            name = "protocols",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ciphers = schema.new({
            id = id.from(_N, "LoadBalancerTlsPolicy", "ciphers"),
            type = "list",
            name = "ciphers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetLoadBalancerTlsPoliciesOutput = schema.new({
    id = id.from(_N, "GetLoadBalancerTlsPoliciesOutput"),
    type = "structure",
    members = {
        tlsPolicies = schema.new({
            id = id.from(_N, "GetLoadBalancerTlsPoliciesOutput", "tlsPolicies"),
            type = "list",
            name = "tlsPolicies",
            target_id = prelude.Document.id,
            list_member = M.LoadBalancerTlsPolicy,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetLoadBalancerTlsPoliciesOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetOperationInput = schema.new({
    id = id.from(_N, "GetOperationInput"),
    type = "structure",
    members = {
        operationId = schema.new({
            id = id.from(_N, "GetOperationInput", "operationId"),
            type = "string",
            name = "operationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetOperationOutput = schema.new({
    id = id.from(_N, "GetOperationOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "GetOperationOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.GetOperationsInput = schema.new({
    id = id.from(_N, "GetOperationsInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetOperationsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetOperationsOutput = schema.new({
    id = id.from(_N, "GetOperationsOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "GetOperationsOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetOperationsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetOperationsForResourceInput = schema.new({
    id = id.from(_N, "GetOperationsForResourceInput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "GetOperationsForResourceInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pageToken = schema.new({
            id = id.from(_N, "GetOperationsForResourceInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetOperationsForResourceOutput = schema.new({
    id = id.from(_N, "GetOperationsForResourceOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "GetOperationsForResourceOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
        nextPageCount = schema.new({
            id = id.from(_N, "GetOperationsForResourceOutput", "nextPageCount"),
            type = "string",
            name = "nextPageCount",
            target_id = prelude.String.id,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetOperationsForResourceOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRegionsInput = schema.new({
    id = id.from(_N, "GetRegionsInput"),
    type = "structure",
    members = {
        includeAvailabilityZones = schema.new({
            id = id.from(_N, "GetRegionsInput", "includeAvailabilityZones"),
            type = "boolean",
            name = "includeAvailabilityZones",
            target_id = prelude.Boolean.id,
        }),
        includeRelationalDatabaseAvailabilityZones = schema.new({
            id = id.from(_N, "GetRegionsInput", "includeRelationalDatabaseAvailabilityZones"),
            type = "boolean",
            name = "includeRelationalDatabaseAvailabilityZones",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.Region = schema.new({
    id = id.from(_N, "Region"),
    type = "structure",
    members = {
        continentCode = schema.new({
            id = id.from(_N, "Region", "continentCode"),
            type = "string",
            name = "continentCode",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Region", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        displayName = schema.new({
            id = id.from(_N, "Region", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Region", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        availabilityZones = schema.new({
            id = id.from(_N, "Region", "availabilityZones"),
            type = "list",
            name = "availabilityZones",
            target_id = prelude.Document.id,
            list_member = M.AvailabilityZone,
        }),
        relationalDatabaseAvailabilityZones = schema.new({
            id = id.from(_N, "Region", "relationalDatabaseAvailabilityZones"),
            type = "list",
            name = "relationalDatabaseAvailabilityZones",
            target_id = prelude.Document.id,
            list_member = M.AvailabilityZone,
        }),
    },
})

M.GetRegionsOutput = schema.new({
    id = id.from(_N, "GetRegionsOutput"),
    type = "structure",
    members = {
        regions = schema.new({
            id = id.from(_N, "GetRegionsOutput", "regions"),
            type = "list",
            name = "regions",
            target_id = prelude.Document.id,
            list_member = M.Region,
        }),
    },
})

M.GetRelationalDatabaseInput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "GetRelationalDatabaseInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RelationalDatabaseHardware = schema.new({
    id = id.from(_N, "RelationalDatabaseHardware"),
    type = "structure",
    members = {
        cpuCount = schema.new({
            id = id.from(_N, "RelationalDatabaseHardware", "cpuCount"),
            type = "integer",
            name = "cpuCount",
            target_id = prelude.Integer.id,
        }),
        diskSizeInGb = schema.new({
            id = id.from(_N, "RelationalDatabaseHardware", "diskSizeInGb"),
            type = "integer",
            name = "diskSizeInGb",
            target_id = prelude.Integer.id,
        }),
        ramSizeInGb = schema.new({
            id = id.from(_N, "RelationalDatabaseHardware", "ramSizeInGb"),
            type = "float",
            name = "ramSizeInGb",
            target_id = prelude.Float.id,
        }),
    },
})

M.RelationalDatabaseEndpoint = schema.new({
    id = id.from(_N, "RelationalDatabaseEndpoint"),
    type = "structure",
    members = {
        port = schema.new({
            id = id.from(_N, "RelationalDatabaseEndpoint", "port"),
            type = "integer",
            name = "port",
            target_id = prelude.Integer.id,
        }),
        address = schema.new({
            id = id.from(_N, "RelationalDatabaseEndpoint", "address"),
            type = "string",
            name = "address",
            target_id = prelude.String.id,
        }),
    },
})

M.PendingMaintenanceAction = schema.new({
    id = id.from(_N, "PendingMaintenanceAction"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        currentApplyDate = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "currentApplyDate"),
            type = "timestamp",
            name = "currentApplyDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.PendingModifiedRelationalDatabaseValues = schema.new({
    id = id.from(_N, "PendingModifiedRelationalDatabaseValues"),
    type = "structure",
    members = {
        masterUserPassword = schema.new({
            id = id.from(_N, "PendingModifiedRelationalDatabaseValues", "masterUserPassword"),
            type = "string",
            name = "masterUserPassword",
            target_id = prelude.String.id,
        }),
        engineVersion = schema.new({
            id = id.from(_N, "PendingModifiedRelationalDatabaseValues", "engineVersion"),
            type = "string",
            name = "engineVersion",
            target_id = prelude.String.id,
        }),
        backupRetentionEnabled = schema.new({
            id = id.from(_N, "PendingModifiedRelationalDatabaseValues", "backupRetentionEnabled"),
            type = "boolean",
            name = "backupRetentionEnabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.RelationalDatabase = schema.new({
    id = id.from(_N, "RelationalDatabase"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "RelationalDatabase", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "RelationalDatabase", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "RelationalDatabase", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "RelationalDatabase", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "RelationalDatabase", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "RelationalDatabase", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "RelationalDatabase", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        relationalDatabaseBlueprintId = schema.new({
            id = id.from(_N, "RelationalDatabase", "relationalDatabaseBlueprintId"),
            type = "string",
            name = "relationalDatabaseBlueprintId",
            target_id = prelude.String.id,
        }),
        relationalDatabaseBundleId = schema.new({
            id = id.from(_N, "RelationalDatabase", "relationalDatabaseBundleId"),
            type = "string",
            name = "relationalDatabaseBundleId",
            target_id = prelude.String.id,
        }),
        masterDatabaseName = schema.new({
            id = id.from(_N, "RelationalDatabase", "masterDatabaseName"),
            type = "string",
            name = "masterDatabaseName",
            target_id = prelude.String.id,
        }),
        hardware = schema.new({
            id = id.from(_N, "RelationalDatabase", "hardware"),
            type = "structure",
            name = "hardware",
            target_id = id.from(_N, "RelationalDatabaseHardware"),
            target = M.RelationalDatabaseHardware,
        }),
        state = schema.new({
            id = id.from(_N, "RelationalDatabase", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        secondaryAvailabilityZone = schema.new({
            id = id.from(_N, "RelationalDatabase", "secondaryAvailabilityZone"),
            type = "string",
            name = "secondaryAvailabilityZone",
            target_id = prelude.String.id,
        }),
        backupRetentionEnabled = schema.new({
            id = id.from(_N, "RelationalDatabase", "backupRetentionEnabled"),
            type = "boolean",
            name = "backupRetentionEnabled",
            target_id = prelude.Boolean.id,
        }),
        pendingModifiedValues = schema.new({
            id = id.from(_N, "RelationalDatabase", "pendingModifiedValues"),
            type = "structure",
            name = "pendingModifiedValues",
            target_id = id.from(_N, "PendingModifiedRelationalDatabaseValues"),
            target = M.PendingModifiedRelationalDatabaseValues,
        }),
        engine = schema.new({
            id = id.from(_N, "RelationalDatabase", "engine"),
            type = "string",
            name = "engine",
            target_id = prelude.String.id,
        }),
        engineVersion = schema.new({
            id = id.from(_N, "RelationalDatabase", "engineVersion"),
            type = "string",
            name = "engineVersion",
            target_id = prelude.String.id,
        }),
        latestRestorableTime = schema.new({
            id = id.from(_N, "RelationalDatabase", "latestRestorableTime"),
            type = "timestamp",
            name = "latestRestorableTime",
            target_id = prelude.Timestamp.id,
        }),
        masterUsername = schema.new({
            id = id.from(_N, "RelationalDatabase", "masterUsername"),
            type = "string",
            name = "masterUsername",
            target_id = prelude.String.id,
        }),
        parameterApplyStatus = schema.new({
            id = id.from(_N, "RelationalDatabase", "parameterApplyStatus"),
            type = "string",
            name = "parameterApplyStatus",
            target_id = prelude.String.id,
        }),
        preferredBackupWindow = schema.new({
            id = id.from(_N, "RelationalDatabase", "preferredBackupWindow"),
            type = "string",
            name = "preferredBackupWindow",
            target_id = prelude.String.id,
        }),
        preferredMaintenanceWindow = schema.new({
            id = id.from(_N, "RelationalDatabase", "preferredMaintenanceWindow"),
            type = "string",
            name = "preferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        publiclyAccessible = schema.new({
            id = id.from(_N, "RelationalDatabase", "publiclyAccessible"),
            type = "boolean",
            name = "publiclyAccessible",
            target_id = prelude.Boolean.id,
        }),
        masterEndpoint = schema.new({
            id = id.from(_N, "RelationalDatabase", "masterEndpoint"),
            type = "structure",
            name = "masterEndpoint",
            target_id = id.from(_N, "RelationalDatabaseEndpoint"),
            target = M.RelationalDatabaseEndpoint,
        }),
        pendingMaintenanceActions = schema.new({
            id = id.from(_N, "RelationalDatabase", "pendingMaintenanceActions"),
            type = "list",
            name = "pendingMaintenanceActions",
            target_id = prelude.Document.id,
            list_member = M.PendingMaintenanceAction,
        }),
        caCertificateIdentifier = schema.new({
            id = id.from(_N, "RelationalDatabase", "caCertificateIdentifier"),
            type = "string",
            name = "caCertificateIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabaseOutput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseOutput"),
    type = "structure",
    members = {
        relationalDatabase = schema.new({
            id = id.from(_N, "GetRelationalDatabaseOutput", "relationalDatabase"),
            type = "structure",
            name = "relationalDatabase",
            target_id = id.from(_N, "RelationalDatabase"),
            target = M.RelationalDatabase,
        }),
    },
})

M.GetRelationalDatabaseBlueprintsInput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseBlueprintsInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseBlueprintsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RelationalDatabaseBlueprint = schema.new({
    id = id.from(_N, "RelationalDatabaseBlueprint"),
    type = "structure",
    members = {
        blueprintId = schema.new({
            id = id.from(_N, "RelationalDatabaseBlueprint", "blueprintId"),
            type = "string",
            name = "blueprintId",
            target_id = prelude.String.id,
        }),
        engine = schema.new({
            id = id.from(_N, "RelationalDatabaseBlueprint", "engine"),
            type = "string",
            name = "engine",
            target_id = prelude.String.id,
        }),
        engineVersion = schema.new({
            id = id.from(_N, "RelationalDatabaseBlueprint", "engineVersion"),
            type = "string",
            name = "engineVersion",
            target_id = prelude.String.id,
        }),
        engineDescription = schema.new({
            id = id.from(_N, "RelationalDatabaseBlueprint", "engineDescription"),
            type = "string",
            name = "engineDescription",
            target_id = prelude.String.id,
        }),
        engineVersionDescription = schema.new({
            id = id.from(_N, "RelationalDatabaseBlueprint", "engineVersionDescription"),
            type = "string",
            name = "engineVersionDescription",
            target_id = prelude.String.id,
        }),
        isEngineDefault = schema.new({
            id = id.from(_N, "RelationalDatabaseBlueprint", "isEngineDefault"),
            type = "boolean",
            name = "isEngineDefault",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetRelationalDatabaseBlueprintsOutput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseBlueprintsOutput"),
    type = "structure",
    members = {
        blueprints = schema.new({
            id = id.from(_N, "GetRelationalDatabaseBlueprintsOutput", "blueprints"),
            type = "list",
            name = "blueprints",
            target_id = prelude.Document.id,
            list_member = M.RelationalDatabaseBlueprint,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseBlueprintsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabaseBundlesInput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseBundlesInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseBundlesInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
        includeInactive = schema.new({
            id = id.from(_N, "GetRelationalDatabaseBundlesInput", "includeInactive"),
            type = "boolean",
            name = "includeInactive",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.RelationalDatabaseBundle = schema.new({
    id = id.from(_N, "RelationalDatabaseBundle"),
    type = "structure",
    members = {
        bundleId = schema.new({
            id = id.from(_N, "RelationalDatabaseBundle", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "RelationalDatabaseBundle", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        price = schema.new({
            id = id.from(_N, "RelationalDatabaseBundle", "price"),
            type = "float",
            name = "price",
            target_id = prelude.Float.id,
        }),
        ramSizeInGb = schema.new({
            id = id.from(_N, "RelationalDatabaseBundle", "ramSizeInGb"),
            type = "float",
            name = "ramSizeInGb",
            target_id = prelude.Float.id,
        }),
        diskSizeInGb = schema.new({
            id = id.from(_N, "RelationalDatabaseBundle", "diskSizeInGb"),
            type = "integer",
            name = "diskSizeInGb",
            target_id = prelude.Integer.id,
        }),
        transferPerMonthInGb = schema.new({
            id = id.from(_N, "RelationalDatabaseBundle", "transferPerMonthInGb"),
            type = "integer",
            name = "transferPerMonthInGb",
            target_id = prelude.Integer.id,
        }),
        cpuCount = schema.new({
            id = id.from(_N, "RelationalDatabaseBundle", "cpuCount"),
            type = "integer",
            name = "cpuCount",
            target_id = prelude.Integer.id,
        }),
        isEncrypted = schema.new({
            id = id.from(_N, "RelationalDatabaseBundle", "isEncrypted"),
            type = "boolean",
            name = "isEncrypted",
            target_id = prelude.Boolean.id,
        }),
        isActive = schema.new({
            id = id.from(_N, "RelationalDatabaseBundle", "isActive"),
            type = "boolean",
            name = "isActive",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetRelationalDatabaseBundlesOutput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseBundlesOutput"),
    type = "structure",
    members = {
        bundles = schema.new({
            id = id.from(_N, "GetRelationalDatabaseBundlesOutput", "bundles"),
            type = "list",
            name = "bundles",
            target_id = prelude.Document.id,
            list_member = M.RelationalDatabaseBundle,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseBundlesOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabaseEventsInput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseEventsInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "GetRelationalDatabaseEventsInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        durationInMinutes = schema.new({
            id = id.from(_N, "GetRelationalDatabaseEventsInput", "durationInMinutes"),
            type = "integer",
            name = "durationInMinutes",
            target_id = prelude.Integer.id,
        }),
        pageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseEventsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RelationalDatabaseEvent = schema.new({
    id = id.from(_N, "RelationalDatabaseEvent"),
    type = "structure",
    members = {
        resource = schema.new({
            id = id.from(_N, "RelationalDatabaseEvent", "resource"),
            type = "string",
            name = "resource",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "RelationalDatabaseEvent", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        message = schema.new({
            id = id.from(_N, "RelationalDatabaseEvent", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        eventCategories = schema.new({
            id = id.from(_N, "RelationalDatabaseEvent", "eventCategories"),
            type = "list",
            name = "eventCategories",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetRelationalDatabaseEventsOutput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseEventsOutput"),
    type = "structure",
    members = {
        relationalDatabaseEvents = schema.new({
            id = id.from(_N, "GetRelationalDatabaseEventsOutput", "relationalDatabaseEvents"),
            type = "list",
            name = "relationalDatabaseEvents",
            target_id = prelude.Document.id,
            list_member = M.RelationalDatabaseEvent,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseEventsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabaseLogEventsInput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseLogEventsInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "GetRelationalDatabaseLogEventsInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logStreamName = schema.new({
            id = id.from(_N, "GetRelationalDatabaseLogEventsInput", "logStreamName"),
            type = "string",
            name = "logStreamName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "GetRelationalDatabaseLogEventsInput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
        }),
        endTime = schema.new({
            id = id.from(_N, "GetRelationalDatabaseLogEventsInput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
        }),
        startFromHead = schema.new({
            id = id.from(_N, "GetRelationalDatabaseLogEventsInput", "startFromHead"),
            type = "boolean",
            name = "startFromHead",
            target_id = prelude.Boolean.id,
        }),
        pageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseLogEventsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.LogEvent = schema.new({
    id = id.from(_N, "LogEvent"),
    type = "structure",
    members = {
        createdAt = schema.new({
            id = id.from(_N, "LogEvent", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        message = schema.new({
            id = id.from(_N, "LogEvent", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabaseLogEventsOutput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseLogEventsOutput"),
    type = "structure",
    members = {
        resourceLogEvents = schema.new({
            id = id.from(_N, "GetRelationalDatabaseLogEventsOutput", "resourceLogEvents"),
            type = "list",
            name = "resourceLogEvents",
            target_id = prelude.Document.id,
            list_member = M.LogEvent,
        }),
        nextBackwardToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseLogEventsOutput", "nextBackwardToken"),
            type = "string",
            name = "nextBackwardToken",
            target_id = prelude.String.id,
        }),
        nextForwardToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseLogEventsOutput", "nextForwardToken"),
            type = "string",
            name = "nextForwardToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabaseLogStreamsInput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseLogStreamsInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "GetRelationalDatabaseLogStreamsInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRelationalDatabaseLogStreamsOutput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseLogStreamsOutput"),
    type = "structure",
    members = {
        logStreams = schema.new({
            id = id.from(_N, "GetRelationalDatabaseLogStreamsOutput", "logStreams"),
            type = "list",
            name = "logStreams",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetRelationalDatabaseMasterUserPasswordInput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseMasterUserPasswordInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMasterUserPasswordInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        passwordVersion = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMasterUserPasswordInput", "passwordVersion"),
            type = "string",
            name = "passwordVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabaseMasterUserPasswordOutput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseMasterUserPasswordOutput"),
    type = "structure",
    members = {
        masterUserPassword = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMasterUserPasswordOutput", "masterUserPassword"),
            type = "string",
            name = "masterUserPassword",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMasterUserPasswordOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetRelationalDatabaseMetricDataInput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseMetricDataInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMetricDataInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metricName = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMetricDataInput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        period = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMetricDataInput", "period"),
            type = "integer",
            name = "period",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        startTime = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMetricDataInput", "startTime"),
            type = "timestamp",
            name = "startTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMetricDataInput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        unit = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMetricDataInput", "unit"),
            type = "string",
            name = "unit",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statistics = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMetricDataInput", "statistics"),
            type = "list",
            name = "statistics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRelationalDatabaseMetricDataOutput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseMetricDataOutput"),
    type = "structure",
    members = {
        metricName = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMetricDataOutput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
        }),
        metricData = schema.new({
            id = id.from(_N, "GetRelationalDatabaseMetricDataOutput", "metricData"),
            type = "list",
            name = "metricData",
            target_id = prelude.Document.id,
            list_member = M.MetricDatapoint,
        }),
    },
})

M.GetRelationalDatabaseParametersInput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseParametersInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "GetRelationalDatabaseParametersInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseParametersInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RelationalDatabaseParameter = schema.new({
    id = id.from(_N, "RelationalDatabaseParameter"),
    type = "structure",
    members = {
        allowedValues = schema.new({
            id = id.from(_N, "RelationalDatabaseParameter", "allowedValues"),
            type = "string",
            name = "allowedValues",
            target_id = prelude.String.id,
        }),
        applyMethod = schema.new({
            id = id.from(_N, "RelationalDatabaseParameter", "applyMethod"),
            type = "string",
            name = "applyMethod",
            target_id = prelude.String.id,
        }),
        applyType = schema.new({
            id = id.from(_N, "RelationalDatabaseParameter", "applyType"),
            type = "string",
            name = "applyType",
            target_id = prelude.String.id,
        }),
        dataType = schema.new({
            id = id.from(_N, "RelationalDatabaseParameter", "dataType"),
            type = "string",
            name = "dataType",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "RelationalDatabaseParameter", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        isModifiable = schema.new({
            id = id.from(_N, "RelationalDatabaseParameter", "isModifiable"),
            type = "boolean",
            name = "isModifiable",
            target_id = prelude.Boolean.id,
        }),
        parameterName = schema.new({
            id = id.from(_N, "RelationalDatabaseParameter", "parameterName"),
            type = "string",
            name = "parameterName",
            target_id = prelude.String.id,
        }),
        parameterValue = schema.new({
            id = id.from(_N, "RelationalDatabaseParameter", "parameterValue"),
            type = "string",
            name = "parameterValue",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabaseParametersOutput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseParametersOutput"),
    type = "structure",
    members = {
        parameters = schema.new({
            id = id.from(_N, "GetRelationalDatabaseParametersOutput", "parameters"),
            type = "list",
            name = "parameters",
            target_id = prelude.Document.id,
            list_member = M.RelationalDatabaseParameter,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseParametersOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabasesInput = schema.new({
    id = id.from(_N, "GetRelationalDatabasesInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabasesInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabasesOutput = schema.new({
    id = id.from(_N, "GetRelationalDatabasesOutput"),
    type = "structure",
    members = {
        relationalDatabases = schema.new({
            id = id.from(_N, "GetRelationalDatabasesOutput", "relationalDatabases"),
            type = "list",
            name = "relationalDatabases",
            target_id = prelude.Document.id,
            list_member = M.RelationalDatabase,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabasesOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabaseSnapshotInput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseSnapshotInput"),
    type = "structure",
    members = {
        relationalDatabaseSnapshotName = schema.new({
            id = id.from(_N, "GetRelationalDatabaseSnapshotInput", "relationalDatabaseSnapshotName"),
            type = "string",
            name = "relationalDatabaseSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RelationalDatabaseSnapshot = schema.new({
    id = id.from(_N, "RelationalDatabaseSnapshot"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        engine = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "engine"),
            type = "string",
            name = "engine",
            target_id = prelude.String.id,
        }),
        engineVersion = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "engineVersion"),
            type = "string",
            name = "engineVersion",
            target_id = prelude.String.id,
        }),
        sizeInGb = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "sizeInGb"),
            type = "integer",
            name = "sizeInGb",
            target_id = prelude.Integer.id,
        }),
        state = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        fromRelationalDatabaseName = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "fromRelationalDatabaseName"),
            type = "string",
            name = "fromRelationalDatabaseName",
            target_id = prelude.String.id,
        }),
        fromRelationalDatabaseArn = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "fromRelationalDatabaseArn"),
            type = "string",
            name = "fromRelationalDatabaseArn",
            target_id = prelude.String.id,
        }),
        fromRelationalDatabaseBundleId = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "fromRelationalDatabaseBundleId"),
            type = "string",
            name = "fromRelationalDatabaseBundleId",
            target_id = prelude.String.id,
        }),
        fromRelationalDatabaseBlueprintId = schema.new({
            id = id.from(_N, "RelationalDatabaseSnapshot", "fromRelationalDatabaseBlueprintId"),
            type = "string",
            name = "fromRelationalDatabaseBlueprintId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabaseSnapshotOutput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseSnapshotOutput"),
    type = "structure",
    members = {
        relationalDatabaseSnapshot = schema.new({
            id = id.from(_N, "GetRelationalDatabaseSnapshotOutput", "relationalDatabaseSnapshot"),
            type = "structure",
            name = "relationalDatabaseSnapshot",
            target_id = id.from(_N, "RelationalDatabaseSnapshot"),
            target = M.RelationalDatabaseSnapshot,
        }),
    },
})

M.GetRelationalDatabaseSnapshotsInput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseSnapshotsInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseSnapshotsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRelationalDatabaseSnapshotsOutput = schema.new({
    id = id.from(_N, "GetRelationalDatabaseSnapshotsOutput"),
    type = "structure",
    members = {
        relationalDatabaseSnapshots = schema.new({
            id = id.from(_N, "GetRelationalDatabaseSnapshotsOutput", "relationalDatabaseSnapshots"),
            type = "list",
            name = "relationalDatabaseSnapshots",
            target_id = prelude.Document.id,
            list_member = M.RelationalDatabaseSnapshot,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetRelationalDatabaseSnapshotsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSetupHistoryInput = schema.new({
    id = id.from(_N, "GetSetupHistoryInput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "GetSetupHistoryInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pageToken = schema.new({
            id = id.from(_N, "GetSetupHistoryInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SetupExecutionDetails = schema.new({
    id = id.from(_N, "SetupExecutionDetails"),
    type = "structure",
    members = {
        command = schema.new({
            id = id.from(_N, "SetupExecutionDetails", "command"),
            type = "string",
            name = "command",
            target_id = prelude.String.id,
        }),
        dateTime = schema.new({
            id = id.from(_N, "SetupExecutionDetails", "dateTime"),
            type = "timestamp",
            name = "dateTime",
            target_id = prelude.Timestamp.id,
        }),
        name = schema.new({
            id = id.from(_N, "SetupExecutionDetails", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "SetupExecutionDetails", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        standardError = schema.new({
            id = id.from(_N, "SetupExecutionDetails", "standardError"),
            type = "string",
            name = "standardError",
            target_id = prelude.String.id,
        }),
        standardOutput = schema.new({
            id = id.from(_N, "SetupExecutionDetails", "standardOutput"),
            type = "string",
            name = "standardOutput",
            target_id = prelude.String.id,
        }),
        version = schema.new({
            id = id.from(_N, "SetupExecutionDetails", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
    },
})

M.SetupRequest = schema.new({
    id = id.from(_N, "SetupRequest"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "SetupRequest", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
        }),
        domainNames = schema.new({
            id = id.from(_N, "SetupRequest", "domainNames"),
            type = "list",
            name = "domainNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        certificateProvider = schema.new({
            id = id.from(_N, "SetupRequest", "certificateProvider"),
            type = "string",
            name = "certificateProvider",
            target_id = prelude.String.id,
        }),
    },
})

M.SetupHistoryResource = schema.new({
    id = id.from(_N, "SetupHistoryResource"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "SetupHistoryResource", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "SetupHistoryResource", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "SetupHistoryResource", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "SetupHistoryResource", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "SetupHistoryResource", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.SetupHistory = schema.new({
    id = id.from(_N, "SetupHistory"),
    type = "structure",
    members = {
        operationId = schema.new({
            id = id.from(_N, "SetupHistory", "operationId"),
            type = "string",
            name = "operationId",
            target_id = prelude.String.id,
        }),
        request = schema.new({
            id = id.from(_N, "SetupHistory", "request"),
            type = "structure",
            name = "request",
            target_id = id.from(_N, "SetupRequest"),
            target = M.SetupRequest,
        }),
        resource = schema.new({
            id = id.from(_N, "SetupHistory", "resource"),
            type = "structure",
            name = "resource",
            target_id = id.from(_N, "SetupHistoryResource"),
            target = M.SetupHistoryResource,
        }),
        executionDetails = schema.new({
            id = id.from(_N, "SetupHistory", "executionDetails"),
            type = "list",
            name = "executionDetails",
            target_id = prelude.Document.id,
            list_member = M.SetupExecutionDetails,
        }),
        status = schema.new({
            id = id.from(_N, "SetupHistory", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSetupHistoryOutput = schema.new({
    id = id.from(_N, "GetSetupHistoryOutput"),
    type = "structure",
    members = {
        setupHistory = schema.new({
            id = id.from(_N, "GetSetupHistoryOutput", "setupHistory"),
            type = "list",
            name = "setupHistory",
            target_id = prelude.Document.id,
            list_member = M.SetupHistory,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetSetupHistoryOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetStaticIpInput = schema.new({
    id = id.from(_N, "GetStaticIpInput"),
    type = "structure",
    members = {
        staticIpName = schema.new({
            id = id.from(_N, "GetStaticIpInput", "staticIpName"),
            type = "string",
            name = "staticIpName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StaticIp = schema.new({
    id = id.from(_N, "StaticIp"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "StaticIp", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "StaticIp", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        supportCode = schema.new({
            id = id.from(_N, "StaticIp", "supportCode"),
            type = "string",
            name = "supportCode",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "StaticIp", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        location = schema.new({
            id = id.from(_N, "StaticIp", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
        }),
        resourceType = schema.new({
            id = id.from(_N, "StaticIp", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        ipAddress = schema.new({
            id = id.from(_N, "StaticIp", "ipAddress"),
            type = "string",
            name = "ipAddress",
            target_id = prelude.String.id,
        }),
        attachedTo = schema.new({
            id = id.from(_N, "StaticIp", "attachedTo"),
            type = "string",
            name = "attachedTo",
            target_id = prelude.String.id,
        }),
        isAttached = schema.new({
            id = id.from(_N, "StaticIp", "isAttached"),
            type = "boolean",
            name = "isAttached",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetStaticIpOutput = schema.new({
    id = id.from(_N, "GetStaticIpOutput"),
    type = "structure",
    members = {
        staticIp = schema.new({
            id = id.from(_N, "GetStaticIpOutput", "staticIp"),
            type = "structure",
            name = "staticIp",
            target_id = id.from(_N, "StaticIp"),
            target = M.StaticIp,
        }),
    },
})

M.GetStaticIpsInput = schema.new({
    id = id.from(_N, "GetStaticIpsInput"),
    type = "structure",
    members = {
        pageToken = schema.new({
            id = id.from(_N, "GetStaticIpsInput", "pageToken"),
            type = "string",
            name = "pageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetStaticIpsOutput = schema.new({
    id = id.from(_N, "GetStaticIpsOutput"),
    type = "structure",
    members = {
        staticIps = schema.new({
            id = id.from(_N, "GetStaticIpsOutput", "staticIps"),
            type = "list",
            name = "staticIps",
            target_id = prelude.Document.id,
            list_member = M.StaticIp,
        }),
        nextPageToken = schema.new({
            id = id.from(_N, "GetStaticIpsOutput", "nextPageToken"),
            type = "string",
            name = "nextPageToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportKeyPairInput = schema.new({
    id = id.from(_N, "ImportKeyPairInput"),
    type = "structure",
    members = {
        keyPairName = schema.new({
            id = id.from(_N, "ImportKeyPairInput", "keyPairName"),
            type = "string",
            name = "keyPairName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        publicKeyBase64 = schema.new({
            id = id.from(_N, "ImportKeyPairInput", "publicKeyBase64"),
            type = "string",
            name = "publicKeyBase64",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ImportKeyPairOutput = schema.new({
    id = id.from(_N, "ImportKeyPairOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "ImportKeyPairOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.IsVpcPeeredInput = schema.new({
    id = id.from(_N, "IsVpcPeeredInput"),
    type = "structure",
})

M.IsVpcPeeredOutput = schema.new({
    id = id.from(_N, "IsVpcPeeredOutput"),
    type = "structure",
    members = {
        isPeered = schema.new({
            id = id.from(_N, "IsVpcPeeredOutput", "isPeered"),
            type = "boolean",
            name = "isPeered",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.OpenInstancePublicPortsInput = schema.new({
    id = id.from(_N, "OpenInstancePublicPortsInput"),
    type = "structure",
    members = {
        portInfo = schema.new({
            id = id.from(_N, "OpenInstancePublicPortsInput", "portInfo"),
            type = "structure",
            name = "portInfo",
            target_id = id.from(_N, "PortInfo"),
            target = M.PortInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instanceName = schema.new({
            id = id.from(_N, "OpenInstancePublicPortsInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OpenInstancePublicPortsOutput = schema.new({
    id = id.from(_N, "OpenInstancePublicPortsOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "OpenInstancePublicPortsOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.PeerVpcInput = schema.new({
    id = id.from(_N, "PeerVpcInput"),
    type = "structure",
})

M.PeerVpcOutput = schema.new({
    id = id.from(_N, "PeerVpcOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "PeerVpcOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.PutAlarmInput = schema.new({
    id = id.from(_N, "PutAlarmInput"),
    type = "structure",
    members = {
        alarmName = schema.new({
            id = id.from(_N, "PutAlarmInput", "alarmName"),
            type = "string",
            name = "alarmName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        metricName = schema.new({
            id = id.from(_N, "PutAlarmInput", "metricName"),
            type = "string",
            name = "metricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        monitoredResourceName = schema.new({
            id = id.from(_N, "PutAlarmInput", "monitoredResourceName"),
            type = "string",
            name = "monitoredResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comparisonOperator = schema.new({
            id = id.from(_N, "PutAlarmInput", "comparisonOperator"),
            type = "string",
            name = "comparisonOperator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        threshold = schema.new({
            id = id.from(_N, "PutAlarmInput", "threshold"),
            type = "double",
            name = "threshold",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluationPeriods = schema.new({
            id = id.from(_N, "PutAlarmInput", "evaluationPeriods"),
            type = "integer",
            name = "evaluationPeriods",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        datapointsToAlarm = schema.new({
            id = id.from(_N, "PutAlarmInput", "datapointsToAlarm"),
            type = "integer",
            name = "datapointsToAlarm",
            target_id = prelude.Integer.id,
        }),
        treatMissingData = schema.new({
            id = id.from(_N, "PutAlarmInput", "treatMissingData"),
            type = "string",
            name = "treatMissingData",
            target_id = prelude.String.id,
        }),
        contactProtocols = schema.new({
            id = id.from(_N, "PutAlarmInput", "contactProtocols"),
            type = "list",
            name = "contactProtocols",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        notificationTriggers = schema.new({
            id = id.from(_N, "PutAlarmInput", "notificationTriggers"),
            type = "list",
            name = "notificationTriggers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        notificationEnabled = schema.new({
            id = id.from(_N, "PutAlarmInput", "notificationEnabled"),
            type = "boolean",
            name = "notificationEnabled",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "PutAlarmInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.PutAlarmOutput = schema.new({
    id = id.from(_N, "PutAlarmOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "PutAlarmOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.PutInstancePublicPortsInput = schema.new({
    id = id.from(_N, "PutInstancePublicPortsInput"),
    type = "structure",
    members = {
        portInfos = schema.new({
            id = id.from(_N, "PutInstancePublicPortsInput", "portInfos"),
            type = "list",
            name = "portInfos",
            target_id = prelude.Document.id,
            list_member = M.PortInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        instanceName = schema.new({
            id = id.from(_N, "PutInstancePublicPortsInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutInstancePublicPortsOutput = schema.new({
    id = id.from(_N, "PutInstancePublicPortsOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "PutInstancePublicPortsOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.RebootInstanceInput = schema.new({
    id = id.from(_N, "RebootInstanceInput"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "RebootInstanceInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RebootInstanceOutput = schema.new({
    id = id.from(_N, "RebootInstanceOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "RebootInstanceOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.RebootRelationalDatabaseInput = schema.new({
    id = id.from(_N, "RebootRelationalDatabaseInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "RebootRelationalDatabaseInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RebootRelationalDatabaseOutput = schema.new({
    id = id.from(_N, "RebootRelationalDatabaseOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "RebootRelationalDatabaseOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.RegisterContainerImageInput = schema.new({
    id = id.from(_N, "RegisterContainerImageInput"),
    type = "structure",
    members = {
        serviceName = schema.new({
            id = id.from(_N, "RegisterContainerImageInput", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        label = schema.new({
            id = id.from(_N, "RegisterContainerImageInput", "label"),
            type = "string",
            name = "label",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        digest = schema.new({
            id = id.from(_N, "RegisterContainerImageInput", "digest"),
            type = "string",
            name = "digest",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegisterContainerImageOutput = schema.new({
    id = id.from(_N, "RegisterContainerImageOutput"),
    type = "structure",
    members = {
        containerImage = schema.new({
            id = id.from(_N, "RegisterContainerImageOutput", "containerImage"),
            type = "structure",
            name = "containerImage",
            target_id = id.from(_N, "ContainerImage"),
            target = M.ContainerImage,
        }),
    },
})

M.ReleaseStaticIpInput = schema.new({
    id = id.from(_N, "ReleaseStaticIpInput"),
    type = "structure",
    members = {
        staticIpName = schema.new({
            id = id.from(_N, "ReleaseStaticIpInput", "staticIpName"),
            type = "string",
            name = "staticIpName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReleaseStaticIpOutput = schema.new({
    id = id.from(_N, "ReleaseStaticIpOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "ReleaseStaticIpOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.ResetDistributionCacheInput = schema.new({
    id = id.from(_N, "ResetDistributionCacheInput"),
    type = "structure",
    members = {
        distributionName = schema.new({
            id = id.from(_N, "ResetDistributionCacheInput", "distributionName"),
            type = "string",
            name = "distributionName",
            target_id = prelude.String.id,
        }),
    },
})

M.ResetDistributionCacheOutput = schema.new({
    id = id.from(_N, "ResetDistributionCacheOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ResetDistributionCacheOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createTime = schema.new({
            id = id.from(_N, "ResetDistributionCacheOutput", "createTime"),
            type = "timestamp",
            name = "createTime",
            target_id = prelude.Timestamp.id,
        }),
        operation = schema.new({
            id = id.from(_N, "ResetDistributionCacheOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.SendContactMethodVerificationInput = schema.new({
    id = id.from(_N, "SendContactMethodVerificationInput"),
    type = "structure",
    members = {
        protocol = schema.new({
            id = id.from(_N, "SendContactMethodVerificationInput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SendContactMethodVerificationOutput = schema.new({
    id = id.from(_N, "SendContactMethodVerificationOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "SendContactMethodVerificationOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.SetIpAddressTypeInput = schema.new({
    id = id.from(_N, "SetIpAddressTypeInput"),
    type = "structure",
    members = {
        resourceType = schema.new({
            id = id.from(_N, "SetIpAddressTypeInput", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceName = schema.new({
            id = id.from(_N, "SetIpAddressTypeInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "SetIpAddressTypeInput", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        acceptBundleUpdate = schema.new({
            id = id.from(_N, "SetIpAddressTypeInput", "acceptBundleUpdate"),
            type = "boolean",
            name = "acceptBundleUpdate",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.SetIpAddressTypeOutput = schema.new({
    id = id.from(_N, "SetIpAddressTypeOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "SetIpAddressTypeOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.SetResourceAccessForBucketInput = schema.new({
    id = id.from(_N, "SetResourceAccessForBucketInput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "SetResourceAccessForBucketInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bucketName = schema.new({
            id = id.from(_N, "SetResourceAccessForBucketInput", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        access = schema.new({
            id = id.from(_N, "SetResourceAccessForBucketInput", "access"),
            type = "string",
            name = "access",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetResourceAccessForBucketOutput = schema.new({
    id = id.from(_N, "SetResourceAccessForBucketOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "SetResourceAccessForBucketOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.SetupInstanceHttpsInput = schema.new({
    id = id.from(_N, "SetupInstanceHttpsInput"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "SetupInstanceHttpsInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        emailAddress = schema.new({
            id = id.from(_N, "SetupInstanceHttpsInput", "emailAddress"),
            type = "string",
            name = "emailAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainNames = schema.new({
            id = id.from(_N, "SetupInstanceHttpsInput", "domainNames"),
            type = "list",
            name = "domainNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        certificateProvider = schema.new({
            id = id.from(_N, "SetupInstanceHttpsInput", "certificateProvider"),
            type = "string",
            name = "certificateProvider",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetupInstanceHttpsOutput = schema.new({
    id = id.from(_N, "SetupInstanceHttpsOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "SetupInstanceHttpsOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.StartGUISessionInput = schema.new({
    id = id.from(_N, "StartGUISessionInput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "StartGUISessionInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartGUISessionOutput = schema.new({
    id = id.from(_N, "StartGUISessionOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "StartGUISessionOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.StartInstanceInput = schema.new({
    id = id.from(_N, "StartInstanceInput"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "StartInstanceInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartInstanceOutput = schema.new({
    id = id.from(_N, "StartInstanceOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "StartInstanceOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.StartRelationalDatabaseInput = schema.new({
    id = id.from(_N, "StartRelationalDatabaseInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "StartRelationalDatabaseInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartRelationalDatabaseOutput = schema.new({
    id = id.from(_N, "StartRelationalDatabaseOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "StartRelationalDatabaseOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.StopGUISessionInput = schema.new({
    id = id.from(_N, "StopGUISessionInput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "StopGUISessionInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopGUISessionOutput = schema.new({
    id = id.from(_N, "StopGUISessionOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "StopGUISessionOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.StopInstanceInput = schema.new({
    id = id.from(_N, "StopInstanceInput"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "StopInstanceInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        force = schema.new({
            id = id.from(_N, "StopInstanceInput", "force"),
            type = "boolean",
            name = "force",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.StopInstanceOutput = schema.new({
    id = id.from(_N, "StopInstanceOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "StopInstanceOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.StopRelationalDatabaseInput = schema.new({
    id = id.from(_N, "StopRelationalDatabaseInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "StopRelationalDatabaseInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        relationalDatabaseSnapshotName = schema.new({
            id = id.from(_N, "StopRelationalDatabaseInput", "relationalDatabaseSnapshotName"),
            type = "string",
            name = "relationalDatabaseSnapshotName",
            target_id = prelude.String.id,
        }),
    },
})

M.StopRelationalDatabaseOutput = schema.new({
    id = id.from(_N, "StopRelationalDatabaseOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "StopRelationalDatabaseOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
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
    members = {
        operations = schema.new({
            id = id.from(_N, "TagResourceOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.TestAlarmInput = schema.new({
    id = id.from(_N, "TestAlarmInput"),
    type = "structure",
    members = {
        alarmName = schema.new({
            id = id.from(_N, "TestAlarmInput", "alarmName"),
            type = "string",
            name = "alarmName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        state = schema.new({
            id = id.from(_N, "TestAlarmInput", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "state" },
            },
        }),
    },
})

M.TestAlarmOutput = schema.new({
    id = id.from(_N, "TestAlarmOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "TestAlarmOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.UnpeerVpcInput = schema.new({
    id = id.from(_N, "UnpeerVpcInput"),
    type = "structure",
})

M.UnpeerVpcOutput = schema.new({
    id = id.from(_N, "UnpeerVpcOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "UnpeerVpcOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        resourceName = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
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
    members = {
        operations = schema.new({
            id = id.from(_N, "UntagResourceOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.UpdateBucketInput = schema.new({
    id = id.from(_N, "UpdateBucketInput"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "UpdateBucketInput", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessRules = schema.new({
            id = id.from(_N, "UpdateBucketInput", "accessRules"),
            type = "structure",
            name = "accessRules",
            target_id = id.from(_N, "AccessRules"),
            target = M.AccessRules,
        }),
        versioning = schema.new({
            id = id.from(_N, "UpdateBucketInput", "versioning"),
            type = "string",
            name = "versioning",
            target_id = prelude.String.id,
        }),
        readonlyAccessAccounts = schema.new({
            id = id.from(_N, "UpdateBucketInput", "readonlyAccessAccounts"),
            type = "list",
            name = "readonlyAccessAccounts",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        accessLogConfig = schema.new({
            id = id.from(_N, "UpdateBucketInput", "accessLogConfig"),
            type = "structure",
            name = "accessLogConfig",
            target_id = id.from(_N, "BucketAccessLogConfig"),
            target = M.BucketAccessLogConfig,
        }),
        cors = schema.new({
            id = id.from(_N, "UpdateBucketInput", "cors"),
            type = "structure",
            name = "cors",
            target_id = id.from(_N, "BucketCorsConfig"),
            target = M.BucketCorsConfig,
        }),
    },
})

M.UpdateBucketOutput = schema.new({
    id = id.from(_N, "UpdateBucketOutput"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "UpdateBucketOutput", "bucket"),
            type = "structure",
            name = "bucket",
            target_id = id.from(_N, "Bucket"),
            target = M.Bucket,
        }),
        operations = schema.new({
            id = id.from(_N, "UpdateBucketOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.UpdateBucketBundleInput = schema.new({
    id = id.from(_N, "UpdateBucketBundleInput"),
    type = "structure",
    members = {
        bucketName = schema.new({
            id = id.from(_N, "UpdateBucketBundleInput", "bucketName"),
            type = "string",
            name = "bucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleId = schema.new({
            id = id.from(_N, "UpdateBucketBundleInput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateBucketBundleOutput = schema.new({
    id = id.from(_N, "UpdateBucketBundleOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "UpdateBucketBundleOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.UpdateContainerServiceInput = schema.new({
    id = id.from(_N, "UpdateContainerServiceInput"),
    type = "structure",
    members = {
        serviceName = schema.new({
            id = id.from(_N, "UpdateContainerServiceInput", "serviceName"),
            type = "string",
            name = "serviceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        power = schema.new({
            id = id.from(_N, "UpdateContainerServiceInput", "power"),
            type = "string",
            name = "power",
            target_id = prelude.String.id,
        }),
        scale = schema.new({
            id = id.from(_N, "UpdateContainerServiceInput", "scale"),
            type = "integer",
            name = "scale",
            target_id = prelude.Integer.id,
        }),
        isDisabled = schema.new({
            id = id.from(_N, "UpdateContainerServiceInput", "isDisabled"),
            type = "boolean",
            name = "isDisabled",
            target_id = prelude.Boolean.id,
        }),
        publicDomainNames = schema.new({
            id = id.from(_N, "UpdateContainerServiceInput", "publicDomainNames"),
            type = "map",
            name = "publicDomainNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        privateRegistryAccess = schema.new({
            id = id.from(_N, "UpdateContainerServiceInput", "privateRegistryAccess"),
            type = "structure",
            name = "privateRegistryAccess",
            target_id = id.from(_N, "PrivateRegistryAccessRequest"),
            target = M.PrivateRegistryAccessRequest,
        }),
    },
})

M.UpdateContainerServiceOutput = schema.new({
    id = id.from(_N, "UpdateContainerServiceOutput"),
    type = "structure",
    members = {
        containerService = schema.new({
            id = id.from(_N, "UpdateContainerServiceOutput", "containerService"),
            type = "structure",
            name = "containerService",
            target_id = id.from(_N, "ContainerService"),
            target = M.ContainerService,
        }),
    },
})

M.UpdateDistributionInput = schema.new({
    id = id.from(_N, "UpdateDistributionInput"),
    type = "structure",
    members = {
        distributionName = schema.new({
            id = id.from(_N, "UpdateDistributionInput", "distributionName"),
            type = "string",
            name = "distributionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        origin = schema.new({
            id = id.from(_N, "UpdateDistributionInput", "origin"),
            type = "structure",
            name = "origin",
            target_id = id.from(_N, "InputOrigin"),
            target = M.InputOrigin,
        }),
        defaultCacheBehavior = schema.new({
            id = id.from(_N, "UpdateDistributionInput", "defaultCacheBehavior"),
            type = "structure",
            name = "defaultCacheBehavior",
            target_id = id.from(_N, "CacheBehavior"),
            target = M.CacheBehavior,
        }),
        cacheBehaviorSettings = schema.new({
            id = id.from(_N, "UpdateDistributionInput", "cacheBehaviorSettings"),
            type = "structure",
            name = "cacheBehaviorSettings",
            target_id = id.from(_N, "CacheSettings"),
            target = M.CacheSettings,
        }),
        cacheBehaviors = schema.new({
            id = id.from(_N, "UpdateDistributionInput", "cacheBehaviors"),
            type = "list",
            name = "cacheBehaviors",
            target_id = prelude.Document.id,
            list_member = M.CacheBehaviorPerPath,
        }),
        isEnabled = schema.new({
            id = id.from(_N, "UpdateDistributionInput", "isEnabled"),
            type = "boolean",
            name = "isEnabled",
            target_id = prelude.Boolean.id,
        }),
        viewerMinimumTlsProtocolVersion = schema.new({
            id = id.from(_N, "UpdateDistributionInput", "viewerMinimumTlsProtocolVersion"),
            type = "string",
            name = "viewerMinimumTlsProtocolVersion",
            target_id = prelude.String.id,
        }),
        certificateName = schema.new({
            id = id.from(_N, "UpdateDistributionInput", "certificateName"),
            type = "string",
            name = "certificateName",
            target_id = prelude.String.id,
        }),
        useDefaultCertificate = schema.new({
            id = id.from(_N, "UpdateDistributionInput", "useDefaultCertificate"),
            type = "boolean",
            name = "useDefaultCertificate",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateDistributionOutput = schema.new({
    id = id.from(_N, "UpdateDistributionOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "UpdateDistributionOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.UpdateDistributionBundleInput = schema.new({
    id = id.from(_N, "UpdateDistributionBundleInput"),
    type = "structure",
    members = {
        distributionName = schema.new({
            id = id.from(_N, "UpdateDistributionBundleInput", "distributionName"),
            type = "string",
            name = "distributionName",
            target_id = prelude.String.id,
        }),
        bundleId = schema.new({
            id = id.from(_N, "UpdateDistributionBundleInput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateDistributionBundleOutput = schema.new({
    id = id.from(_N, "UpdateDistributionBundleOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "UpdateDistributionBundleOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.UpdateDomainEntryInput = schema.new({
    id = id.from(_N, "UpdateDomainEntryInput"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "UpdateDomainEntryInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainEntry = schema.new({
            id = id.from(_N, "UpdateDomainEntryInput", "domainEntry"),
            type = "structure",
            name = "domainEntry",
            target_id = id.from(_N, "DomainEntry"),
            target = M.DomainEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateDomainEntryOutput = schema.new({
    id = id.from(_N, "UpdateDomainEntryOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "UpdateDomainEntryOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.UpdateInstanceMetadataOptionsInput = schema.new({
    id = id.from(_N, "UpdateInstanceMetadataOptionsInput"),
    type = "structure",
    members = {
        instanceName = schema.new({
            id = id.from(_N, "UpdateInstanceMetadataOptionsInput", "instanceName"),
            type = "string",
            name = "instanceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        httpTokens = schema.new({
            id = id.from(_N, "UpdateInstanceMetadataOptionsInput", "httpTokens"),
            type = "string",
            name = "httpTokens",
            target_id = prelude.String.id,
        }),
        httpEndpoint = schema.new({
            id = id.from(_N, "UpdateInstanceMetadataOptionsInput", "httpEndpoint"),
            type = "string",
            name = "httpEndpoint",
            target_id = prelude.String.id,
        }),
        httpPutResponseHopLimit = schema.new({
            id = id.from(_N, "UpdateInstanceMetadataOptionsInput", "httpPutResponseHopLimit"),
            type = "integer",
            name = "httpPutResponseHopLimit",
            target_id = prelude.Integer.id,
        }),
        httpProtocolIpv6 = schema.new({
            id = id.from(_N, "UpdateInstanceMetadataOptionsInput", "httpProtocolIpv6"),
            type = "string",
            name = "httpProtocolIpv6",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateInstanceMetadataOptionsOutput = schema.new({
    id = id.from(_N, "UpdateInstanceMetadataOptionsOutput"),
    type = "structure",
    members = {
        operation = schema.new({
            id = id.from(_N, "UpdateInstanceMetadataOptionsOutput", "operation"),
            type = "structure",
            name = "operation",
            target_id = id.from(_N, "Operation"),
            target = M.Operation,
        }),
    },
})

M.UpdateLoadBalancerAttributeInput = schema.new({
    id = id.from(_N, "UpdateLoadBalancerAttributeInput"),
    type = "structure",
    members = {
        loadBalancerName = schema.new({
            id = id.from(_N, "UpdateLoadBalancerAttributeInput", "loadBalancerName"),
            type = "string",
            name = "loadBalancerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attributeName = schema.new({
            id = id.from(_N, "UpdateLoadBalancerAttributeInput", "attributeName"),
            type = "string",
            name = "attributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attributeValue = schema.new({
            id = id.from(_N, "UpdateLoadBalancerAttributeInput", "attributeValue"),
            type = "string",
            name = "attributeValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateLoadBalancerAttributeOutput = schema.new({
    id = id.from(_N, "UpdateLoadBalancerAttributeOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "UpdateLoadBalancerAttributeOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.UpdateRelationalDatabaseInput = schema.new({
    id = id.from(_N, "UpdateRelationalDatabaseInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        masterUserPassword = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseInput", "masterUserPassword"),
            type = "string",
            name = "masterUserPassword",
            target_id = prelude.String.id,
        }),
        rotateMasterUserPassword = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseInput", "rotateMasterUserPassword"),
            type = "boolean",
            name = "rotateMasterUserPassword",
            target_id = prelude.Boolean.id,
        }),
        preferredBackupWindow = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseInput", "preferredBackupWindow"),
            type = "string",
            name = "preferredBackupWindow",
            target_id = prelude.String.id,
        }),
        preferredMaintenanceWindow = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseInput", "preferredMaintenanceWindow"),
            type = "string",
            name = "preferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        enableBackupRetention = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseInput", "enableBackupRetention"),
            type = "boolean",
            name = "enableBackupRetention",
            target_id = prelude.Boolean.id,
        }),
        disableBackupRetention = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseInput", "disableBackupRetention"),
            type = "boolean",
            name = "disableBackupRetention",
            target_id = prelude.Boolean.id,
        }),
        publiclyAccessible = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseInput", "publiclyAccessible"),
            type = "boolean",
            name = "publiclyAccessible",
            target_id = prelude.Boolean.id,
        }),
        applyImmediately = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseInput", "applyImmediately"),
            type = "boolean",
            name = "applyImmediately",
            target_id = prelude.Boolean.id,
        }),
        caCertificateIdentifier = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseInput", "caCertificateIdentifier"),
            type = "string",
            name = "caCertificateIdentifier",
            target_id = prelude.String.id,
        }),
        relationalDatabaseBlueprintId = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseInput", "relationalDatabaseBlueprintId"),
            type = "string",
            name = "relationalDatabaseBlueprintId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRelationalDatabaseOutput = schema.new({
    id = id.from(_N, "UpdateRelationalDatabaseOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

M.UpdateRelationalDatabaseParametersInput = schema.new({
    id = id.from(_N, "UpdateRelationalDatabaseParametersInput"),
    type = "structure",
    members = {
        relationalDatabaseName = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseParametersInput", "relationalDatabaseName"),
            type = "string",
            name = "relationalDatabaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parameters = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseParametersInput", "parameters"),
            type = "list",
            name = "parameters",
            target_id = prelude.Document.id,
            list_member = M.RelationalDatabaseParameter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRelationalDatabaseParametersOutput = schema.new({
    id = id.from(_N, "UpdateRelationalDatabaseParametersOutput"),
    type = "structure",
    members = {
        operations = schema.new({
            id = id.from(_N, "UpdateRelationalDatabaseParametersOutput", "operations"),
            type = "list",
            name = "operations",
            target_id = prelude.Document.id,
            list_member = M.Operation,
        }),
    },
})

return M
