local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.devicefarm"

local M = {}

M.TrialMinutes = schema.new({
    id = id.from(_N, "TrialMinutes"),
    type = "structure",
    members = {
        total = schema.new({
            id = id.from(_N, "TrialMinutes", "total"),
            type = "double",
            name = "total",
            target_id = prelude.Double.id,
        }),
        remaining = schema.new({
            id = id.from(_N, "TrialMinutes", "remaining"),
            type = "double",
            name = "remaining",
            target_id = prelude.Double.id,
        }),
    },
})

M.AccountSettings = schema.new({
    id = id.from(_N, "AccountSettings"),
    type = "structure",
    members = {
        awsAccountNumber = schema.new({
            id = id.from(_N, "AccountSettings", "awsAccountNumber"),
            type = "string",
            name = "awsAccountNumber",
            target_id = prelude.String.id,
        }),
        unmeteredDevices = schema.new({
            id = id.from(_N, "AccountSettings", "unmeteredDevices"),
            type = "map",
            name = "unmeteredDevices",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Integer,
        }),
        unmeteredRemoteAccessDevices = schema.new({
            id = id.from(_N, "AccountSettings", "unmeteredRemoteAccessDevices"),
            type = "map",
            name = "unmeteredRemoteAccessDevices",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Integer,
        }),
        maxJobTimeoutMinutes = schema.new({
            id = id.from(_N, "AccountSettings", "maxJobTimeoutMinutes"),
            type = "integer",
            name = "maxJobTimeoutMinutes",
            target_id = prelude.Integer.id,
        }),
        trialMinutes = schema.new({
            id = id.from(_N, "AccountSettings", "trialMinutes"),
            type = "structure",
            name = "trialMinutes",
            target_id = id.from(_N, "TrialMinutes"),
            target = M.TrialMinutes,
        }),
        maxSlots = schema.new({
            id = id.from(_N, "AccountSettings", "maxSlots"),
            type = "map",
            name = "maxSlots",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Integer,
        }),
        defaultJobTimeoutMinutes = schema.new({
            id = id.from(_N, "AccountSettings", "defaultJobTimeoutMinutes"),
            type = "integer",
            name = "defaultJobTimeoutMinutes",
            target_id = prelude.Integer.id,
        }),
        skipAppResign = schema.new({
            id = id.from(_N, "AccountSettings", "skipAppResign"),
            type = "boolean",
            name = "skipAppResign",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ArgumentException = schema.new({
    id = id.from(_N, "ArgumentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ArgumentException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Artifact = schema.new({
    id = id.from(_N, "Artifact"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Artifact", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Artifact", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Artifact", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        extension = schema.new({
            id = id.from(_N, "Artifact", "extension"),
            type = "string",
            name = "extension",
            target_id = prelude.String.id,
        }),
        url = schema.new({
            id = id.from(_N, "Artifact", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
        }),
    },
})

M.CannotDeleteException = schema.new({
    id = id.from(_N, "CannotDeleteException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CannotDeleteException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Counters = schema.new({
    id = id.from(_N, "Counters"),
    type = "structure",
    members = {
        total = schema.new({
            id = id.from(_N, "Counters", "total"),
            type = "integer",
            name = "total",
            target_id = prelude.Integer.id,
        }),
        passed = schema.new({
            id = id.from(_N, "Counters", "passed"),
            type = "integer",
            name = "passed",
            target_id = prelude.Integer.id,
        }),
        failed = schema.new({
            id = id.from(_N, "Counters", "failed"),
            type = "integer",
            name = "failed",
            target_id = prelude.Integer.id,
        }),
        warned = schema.new({
            id = id.from(_N, "Counters", "warned"),
            type = "integer",
            name = "warned",
            target_id = prelude.Integer.id,
        }),
        errored = schema.new({
            id = id.from(_N, "Counters", "errored"),
            type = "integer",
            name = "errored",
            target_id = prelude.Integer.id,
        }),
        stopped = schema.new({
            id = id.from(_N, "Counters", "stopped"),
            type = "integer",
            name = "stopped",
            target_id = prelude.Integer.id,
        }),
        skipped = schema.new({
            id = id.from(_N, "Counters", "skipped"),
            type = "integer",
            name = "skipped",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CPU = schema.new({
    id = id.from(_N, "CPU"),
    type = "structure",
    members = {
        frequency = schema.new({
            id = id.from(_N, "CPU", "frequency"),
            type = "string",
            name = "frequency",
            target_id = prelude.String.id,
        }),
        architecture = schema.new({
            id = id.from(_N, "CPU", "architecture"),
            type = "string",
            name = "architecture",
            target_id = prelude.String.id,
        }),
        clock = schema.new({
            id = id.from(_N, "CPU", "clock"),
            type = "double",
            name = "clock",
            target_id = prelude.Double.id,
        }),
    },
})

M.Rule = schema.new({
    id = id.from(_N, "Rule"),
    type = "structure",
    members = {
        attribute = schema.new({
            id = id.from(_N, "Rule", "attribute"),
            type = "string",
            name = "attribute",
            target_id = prelude.String.id,
        }),
        operator = schema.new({
            id = id.from(_N, "Rule", "operator"),
            type = "string",
            name = "operator",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "Rule", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDevicePoolInput = schema.new({
    id = id.from(_N, "CreateDevicePoolInput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "CreateDevicePoolInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateDevicePoolInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateDevicePoolInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        rules = schema.new({
            id = id.from(_N, "CreateDevicePoolInput", "rules"),
            type = "list",
            name = "rules",
            target_id = prelude.Document.id,
            list_member = M.Rule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxDevices = schema.new({
            id = id.from(_N, "CreateDevicePoolInput", "maxDevices"),
            type = "integer",
            name = "maxDevices",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DevicePool = schema.new({
    id = id.from(_N, "DevicePool"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DevicePool", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "DevicePool", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "DevicePool", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "DevicePool", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        rules = schema.new({
            id = id.from(_N, "DevicePool", "rules"),
            type = "list",
            name = "rules",
            target_id = prelude.Document.id,
            list_member = M.Rule,
        }),
        maxDevices = schema.new({
            id = id.from(_N, "DevicePool", "maxDevices"),
            type = "integer",
            name = "maxDevices",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateDevicePoolOutput = schema.new({
    id = id.from(_N, "CreateDevicePoolOutput"),
    type = "structure",
    members = {
        devicePool = schema.new({
            id = id.from(_N, "CreateDevicePoolOutput", "devicePool"),
            type = "structure",
            name = "devicePool",
            target_id = id.from(_N, "DevicePool"),
            target = M.DevicePool,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "NotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceAccountException = schema.new({
    id = id.from(_N, "ServiceAccountException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceAccountException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateInstanceProfileInput = schema.new({
    id = id.from(_N, "CreateInstanceProfileInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        packageCleanup = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "packageCleanup"),
            type = "boolean",
            name = "packageCleanup",
            target_id = prelude.Boolean.id,
        }),
        excludeAppPackagesFromCleanup = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "excludeAppPackagesFromCleanup"),
            type = "list",
            name = "excludeAppPackagesFromCleanup",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        rebootAfterUse = schema.new({
            id = id.from(_N, "CreateInstanceProfileInput", "rebootAfterUse"),
            type = "boolean",
            name = "rebootAfterUse",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.InstanceProfile = schema.new({
    id = id.from(_N, "InstanceProfile"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "InstanceProfile", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        packageCleanup = schema.new({
            id = id.from(_N, "InstanceProfile", "packageCleanup"),
            type = "boolean",
            name = "packageCleanup",
            target_id = prelude.Boolean.id,
        }),
        excludeAppPackagesFromCleanup = schema.new({
            id = id.from(_N, "InstanceProfile", "excludeAppPackagesFromCleanup"),
            type = "list",
            name = "excludeAppPackagesFromCleanup",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        rebootAfterUse = schema.new({
            id = id.from(_N, "InstanceProfile", "rebootAfterUse"),
            type = "boolean",
            name = "rebootAfterUse",
            target_id = prelude.Boolean.id,
        }),
        name = schema.new({
            id = id.from(_N, "InstanceProfile", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "InstanceProfile", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateInstanceProfileOutput = schema.new({
    id = id.from(_N, "CreateInstanceProfileOutput"),
    type = "structure",
    members = {
        instanceProfile = schema.new({
            id = id.from(_N, "CreateInstanceProfileOutput", "instanceProfile"),
            type = "structure",
            name = "instanceProfile",
            target_id = id.from(_N, "InstanceProfile"),
            target = M.InstanceProfile,
        }),
    },
})

M.CreateNetworkProfileInput = schema.new({
    id = id.from(_N, "CreateNetworkProfileInput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "CreateNetworkProfileInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateNetworkProfileInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateNetworkProfileInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "CreateNetworkProfileInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        uplinkBandwidthBits = schema.new({
            id = id.from(_N, "CreateNetworkProfileInput", "uplinkBandwidthBits"),
            type = "long",
            name = "uplinkBandwidthBits",
            target_id = prelude.Long.id,
        }),
        downlinkBandwidthBits = schema.new({
            id = id.from(_N, "CreateNetworkProfileInput", "downlinkBandwidthBits"),
            type = "long",
            name = "downlinkBandwidthBits",
            target_id = prelude.Long.id,
        }),
        uplinkDelayMs = schema.new({
            id = id.from(_N, "CreateNetworkProfileInput", "uplinkDelayMs"),
            type = "long",
            name = "uplinkDelayMs",
            target_id = prelude.Long.id,
        }),
        downlinkDelayMs = schema.new({
            id = id.from(_N, "CreateNetworkProfileInput", "downlinkDelayMs"),
            type = "long",
            name = "downlinkDelayMs",
            target_id = prelude.Long.id,
        }),
        uplinkJitterMs = schema.new({
            id = id.from(_N, "CreateNetworkProfileInput", "uplinkJitterMs"),
            type = "long",
            name = "uplinkJitterMs",
            target_id = prelude.Long.id,
        }),
        downlinkJitterMs = schema.new({
            id = id.from(_N, "CreateNetworkProfileInput", "downlinkJitterMs"),
            type = "long",
            name = "downlinkJitterMs",
            target_id = prelude.Long.id,
        }),
        uplinkLossPercent = schema.new({
            id = id.from(_N, "CreateNetworkProfileInput", "uplinkLossPercent"),
            type = "integer",
            name = "uplinkLossPercent",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        downlinkLossPercent = schema.new({
            id = id.from(_N, "CreateNetworkProfileInput", "downlinkLossPercent"),
            type = "integer",
            name = "downlinkLossPercent",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.NetworkProfile = schema.new({
    id = id.from(_N, "NetworkProfile"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "NetworkProfile", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "NetworkProfile", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "NetworkProfile", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "NetworkProfile", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        uplinkBandwidthBits = schema.new({
            id = id.from(_N, "NetworkProfile", "uplinkBandwidthBits"),
            type = "long",
            name = "uplinkBandwidthBits",
            target_id = prelude.Long.id,
        }),
        downlinkBandwidthBits = schema.new({
            id = id.from(_N, "NetworkProfile", "downlinkBandwidthBits"),
            type = "long",
            name = "downlinkBandwidthBits",
            target_id = prelude.Long.id,
        }),
        uplinkDelayMs = schema.new({
            id = id.from(_N, "NetworkProfile", "uplinkDelayMs"),
            type = "long",
            name = "uplinkDelayMs",
            target_id = prelude.Long.id,
        }),
        downlinkDelayMs = schema.new({
            id = id.from(_N, "NetworkProfile", "downlinkDelayMs"),
            type = "long",
            name = "downlinkDelayMs",
            target_id = prelude.Long.id,
        }),
        uplinkJitterMs = schema.new({
            id = id.from(_N, "NetworkProfile", "uplinkJitterMs"),
            type = "long",
            name = "uplinkJitterMs",
            target_id = prelude.Long.id,
        }),
        downlinkJitterMs = schema.new({
            id = id.from(_N, "NetworkProfile", "downlinkJitterMs"),
            type = "long",
            name = "downlinkJitterMs",
            target_id = prelude.Long.id,
        }),
        uplinkLossPercent = schema.new({
            id = id.from(_N, "NetworkProfile", "uplinkLossPercent"),
            type = "integer",
            name = "uplinkLossPercent",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        downlinkLossPercent = schema.new({
            id = id.from(_N, "NetworkProfile", "downlinkLossPercent"),
            type = "integer",
            name = "downlinkLossPercent",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CreateNetworkProfileOutput = schema.new({
    id = id.from(_N, "CreateNetworkProfileOutput"),
    type = "structure",
    members = {
        networkProfile = schema.new({
            id = id.from(_N, "CreateNetworkProfileOutput", "networkProfile"),
            type = "structure",
            name = "networkProfile",
            target_id = id.from(_N, "NetworkProfile"),
            target = M.NetworkProfile,
        }),
    },
})

M.EnvironmentVariable = schema.new({
    id = id.from(_N, "EnvironmentVariable"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "EnvironmentVariable", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "EnvironmentVariable", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VpcConfig = schema.new({
    id = id.from(_N, "VpcConfig"),
    type = "structure",
    members = {
        securityGroupIds = schema.new({
            id = id.from(_N, "VpcConfig", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subnetIds = schema.new({
            id = id.from(_N, "VpcConfig", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcId = schema.new({
            id = id.from(_N, "VpcConfig", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateProjectInput = schema.new({
    id = id.from(_N, "CreateProjectInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateProjectInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        defaultJobTimeoutMinutes = schema.new({
            id = id.from(_N, "CreateProjectInput", "defaultJobTimeoutMinutes"),
            type = "integer",
            name = "defaultJobTimeoutMinutes",
            target_id = prelude.Integer.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "CreateProjectInput", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "CreateProjectInput", "environmentVariables"),
            type = "list",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            list_member = M.EnvironmentVariable,
        }),
        executionRoleArn = schema.new({
            id = id.from(_N, "CreateProjectInput", "executionRoleArn"),
            type = "string",
            name = "executionRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Project = schema.new({
    id = id.from(_N, "Project"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Project", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Project", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        defaultJobTimeoutMinutes = schema.new({
            id = id.from(_N, "Project", "defaultJobTimeoutMinutes"),
            type = "integer",
            name = "defaultJobTimeoutMinutes",
            target_id = prelude.Integer.id,
        }),
        created = schema.new({
            id = id.from(_N, "Project", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "Project", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "Project", "environmentVariables"),
            type = "list",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            list_member = M.EnvironmentVariable,
        }),
        executionRoleArn = schema.new({
            id = id.from(_N, "Project", "executionRoleArn"),
            type = "string",
            name = "executionRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateProjectOutput = schema.new({
    id = id.from(_N, "CreateProjectOutput"),
    type = "structure",
    members = {
        project = schema.new({
            id = id.from(_N, "CreateProjectOutput", "project"),
            type = "structure",
            name = "project",
            target_id = id.from(_N, "Project"),
            target = M.Project,
        }),
    },
})

M.TagOperationException = schema.new({
    id = id.from(_N, "TagOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TagOperationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceName = schema.new({
            id = id.from(_N, "TagOperationException", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
        }),
    },
})

M.DeviceProxy = schema.new({
    id = id.from(_N, "DeviceProxy"),
    type = "structure",
    members = {
        host = schema.new({
            id = id.from(_N, "DeviceProxy", "host"),
            type = "string",
            name = "host",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        port = schema.new({
            id = id.from(_N, "DeviceProxy", "port"),
            type = "integer",
            name = "port",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 3128 },
            },
        }),
    },
})

M.CreateRemoteAccessSessionConfiguration = schema.new({
    id = id.from(_N, "CreateRemoteAccessSessionConfiguration"),
    type = "structure",
    members = {
        auxiliaryApps = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionConfiguration", "auxiliaryApps"),
            type = "list",
            name = "auxiliaryApps",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        billingMethod = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionConfiguration", "billingMethod"),
            type = "string",
            name = "billingMethod",
            target_id = prelude.String.id,
        }),
        vpceConfigurationArns = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionConfiguration", "vpceConfigurationArns"),
            type = "list",
            name = "vpceConfigurationArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        deviceProxy = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionConfiguration", "deviceProxy"),
            type = "structure",
            name = "deviceProxy",
            target_id = id.from(_N, "DeviceProxy"),
            target = M.DeviceProxy,
        }),
    },
})

M.CreateRemoteAccessSessionInput = schema.new({
    id = id.from(_N, "CreateRemoteAccessSessionInput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        deviceArn = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionInput", "deviceArn"),
            type = "string",
            name = "deviceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appArn = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionInput", "appArn"),
            type = "string",
            name = "appArn",
            target_id = prelude.String.id,
        }),
        instanceArn = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionInput", "instanceArn"),
            type = "string",
            name = "instanceArn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        configuration = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionInput", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "CreateRemoteAccessSessionConfiguration"),
            target = M.CreateRemoteAccessSessionConfiguration,
        }),
        interactionMode = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionInput", "interactionMode"),
            type = "string",
            name = "interactionMode",
            target_id = prelude.String.id,
        }),
        skipAppResign = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionInput", "skipAppResign"),
            type = "boolean",
            name = "skipAppResign",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DeviceInstance = schema.new({
    id = id.from(_N, "DeviceInstance"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeviceInstance", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        deviceArn = schema.new({
            id = id.from(_N, "DeviceInstance", "deviceArn"),
            type = "string",
            name = "deviceArn",
            target_id = prelude.String.id,
        }),
        labels = schema.new({
            id = id.from(_N, "DeviceInstance", "labels"),
            type = "list",
            name = "labels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        status = schema.new({
            id = id.from(_N, "DeviceInstance", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        udid = schema.new({
            id = id.from(_N, "DeviceInstance", "udid"),
            type = "string",
            name = "udid",
            target_id = prelude.String.id,
        }),
        instanceProfile = schema.new({
            id = id.from(_N, "DeviceInstance", "instanceProfile"),
            type = "structure",
            name = "instanceProfile",
            target_id = id.from(_N, "InstanceProfile"),
            target = M.InstanceProfile,
        }),
    },
})

M.Resolution = schema.new({
    id = id.from(_N, "Resolution"),
    type = "structure",
    members = {
        width = schema.new({
            id = id.from(_N, "Resolution", "width"),
            type = "integer",
            name = "width",
            target_id = prelude.Integer.id,
        }),
        height = schema.new({
            id = id.from(_N, "Resolution", "height"),
            type = "integer",
            name = "height",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Device = schema.new({
    id = id.from(_N, "Device"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Device", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Device", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        manufacturer = schema.new({
            id = id.from(_N, "Device", "manufacturer"),
            type = "string",
            name = "manufacturer",
            target_id = prelude.String.id,
        }),
        model = schema.new({
            id = id.from(_N, "Device", "model"),
            type = "string",
            name = "model",
            target_id = prelude.String.id,
        }),
        modelId = schema.new({
            id = id.from(_N, "Device", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
        }),
        formFactor = schema.new({
            id = id.from(_N, "Device", "formFactor"),
            type = "string",
            name = "formFactor",
            target_id = prelude.String.id,
        }),
        platform = schema.new({
            id = id.from(_N, "Device", "platform"),
            type = "string",
            name = "platform",
            target_id = prelude.String.id,
        }),
        os = schema.new({
            id = id.from(_N, "Device", "os"),
            type = "string",
            name = "os",
            target_id = prelude.String.id,
        }),
        cpu = schema.new({
            id = id.from(_N, "Device", "cpu"),
            type = "structure",
            name = "cpu",
            target_id = id.from(_N, "CPU"),
            target = M.CPU,
        }),
        resolution = schema.new({
            id = id.from(_N, "Device", "resolution"),
            type = "structure",
            name = "resolution",
            target_id = id.from(_N, "Resolution"),
            target = M.Resolution,
        }),
        heapSize = schema.new({
            id = id.from(_N, "Device", "heapSize"),
            type = "long",
            name = "heapSize",
            target_id = prelude.Long.id,
        }),
        memory = schema.new({
            id = id.from(_N, "Device", "memory"),
            type = "long",
            name = "memory",
            target_id = prelude.Long.id,
        }),
        image = schema.new({
            id = id.from(_N, "Device", "image"),
            type = "string",
            name = "image",
            target_id = prelude.String.id,
        }),
        carrier = schema.new({
            id = id.from(_N, "Device", "carrier"),
            type = "string",
            name = "carrier",
            target_id = prelude.String.id,
        }),
        radio = schema.new({
            id = id.from(_N, "Device", "radio"),
            type = "string",
            name = "radio",
            target_id = prelude.String.id,
        }),
        remoteAccessEnabled = schema.new({
            id = id.from(_N, "Device", "remoteAccessEnabled"),
            type = "boolean",
            name = "remoteAccessEnabled",
            target_id = prelude.Boolean.id,
        }),
        remoteDebugEnabled = schema.new({
            id = id.from(_N, "Device", "remoteDebugEnabled"),
            type = "boolean",
            name = "remoteDebugEnabled",
            target_id = prelude.Boolean.id,
        }),
        fleetType = schema.new({
            id = id.from(_N, "Device", "fleetType"),
            type = "string",
            name = "fleetType",
            target_id = prelude.String.id,
        }),
        fleetName = schema.new({
            id = id.from(_N, "Device", "fleetName"),
            type = "string",
            name = "fleetName",
            target_id = prelude.String.id,
        }),
        instances = schema.new({
            id = id.from(_N, "Device", "instances"),
            type = "list",
            name = "instances",
            target_id = prelude.Document.id,
            list_member = M.DeviceInstance,
        }),
        availability = schema.new({
            id = id.from(_N, "Device", "availability"),
            type = "string",
            name = "availability",
            target_id = prelude.String.id,
        }),
    },
})

M.DeviceMinutes = schema.new({
    id = id.from(_N, "DeviceMinutes"),
    type = "structure",
    members = {
        total = schema.new({
            id = id.from(_N, "DeviceMinutes", "total"),
            type = "double",
            name = "total",
            target_id = prelude.Double.id,
        }),
        metered = schema.new({
            id = id.from(_N, "DeviceMinutes", "metered"),
            type = "double",
            name = "metered",
            target_id = prelude.Double.id,
        }),
        unmetered = schema.new({
            id = id.from(_N, "DeviceMinutes", "unmetered"),
            type = "double",
            name = "unmetered",
            target_id = prelude.Double.id,
        }),
    },
})

M.RemoteAccessEndpoints = schema.new({
    id = id.from(_N, "RemoteAccessEndpoints"),
    type = "structure",
    members = {
        remoteDriverEndpoint = schema.new({
            id = id.from(_N, "RemoteAccessEndpoints", "remoteDriverEndpoint"),
            type = "string",
            name = "remoteDriverEndpoint",
            target_id = prelude.String.id,
        }),
        interactiveEndpoint = schema.new({
            id = id.from(_N, "RemoteAccessEndpoints", "interactiveEndpoint"),
            type = "string",
            name = "interactiveEndpoint",
            target_id = prelude.String.id,
        }),
    },
})

M.RemoteAccessSession = schema.new({
    id = id.from(_N, "RemoteAccessSession"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "RemoteAccessSession", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "RemoteAccessSession", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        created = schema.new({
            id = id.from(_N, "RemoteAccessSession", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "RemoteAccessSession", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        result = schema.new({
            id = id.from(_N, "RemoteAccessSession", "result"),
            type = "string",
            name = "result",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "RemoteAccessSession", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        started = schema.new({
            id = id.from(_N, "RemoteAccessSession", "started"),
            type = "timestamp",
            name = "started",
            target_id = prelude.Timestamp.id,
        }),
        stopped = schema.new({
            id = id.from(_N, "RemoteAccessSession", "stopped"),
            type = "timestamp",
            name = "stopped",
            target_id = prelude.Timestamp.id,
        }),
        device = schema.new({
            id = id.from(_N, "RemoteAccessSession", "device"),
            type = "structure",
            name = "device",
            target_id = id.from(_N, "Device"),
            target = M.Device,
        }),
        instanceArn = schema.new({
            id = id.from(_N, "RemoteAccessSession", "instanceArn"),
            type = "string",
            name = "instanceArn",
            target_id = prelude.String.id,
        }),
        billingMethod = schema.new({
            id = id.from(_N, "RemoteAccessSession", "billingMethod"),
            type = "string",
            name = "billingMethod",
            target_id = prelude.String.id,
        }),
        deviceMinutes = schema.new({
            id = id.from(_N, "RemoteAccessSession", "deviceMinutes"),
            type = "structure",
            name = "deviceMinutes",
            target_id = id.from(_N, "DeviceMinutes"),
            target = M.DeviceMinutes,
        }),
        endpoint = schema.new({
            id = id.from(_N, "RemoteAccessSession", "endpoint"),
            type = "string",
            name = "endpoint",
            target_id = prelude.String.id,
        }),
        deviceUdid = schema.new({
            id = id.from(_N, "RemoteAccessSession", "deviceUdid"),
            type = "string",
            name = "deviceUdid",
            target_id = prelude.String.id,
        }),
        interactionMode = schema.new({
            id = id.from(_N, "RemoteAccessSession", "interactionMode"),
            type = "string",
            name = "interactionMode",
            target_id = prelude.String.id,
        }),
        skipAppResign = schema.new({
            id = id.from(_N, "RemoteAccessSession", "skipAppResign"),
            type = "boolean",
            name = "skipAppResign",
            target_id = prelude.Boolean.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "RemoteAccessSession", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        deviceProxy = schema.new({
            id = id.from(_N, "RemoteAccessSession", "deviceProxy"),
            type = "structure",
            name = "deviceProxy",
            target_id = id.from(_N, "DeviceProxy"),
            target = M.DeviceProxy,
        }),
        appUpload = schema.new({
            id = id.from(_N, "RemoteAccessSession", "appUpload"),
            type = "string",
            name = "appUpload",
            target_id = prelude.String.id,
        }),
        endpoints = schema.new({
            id = id.from(_N, "RemoteAccessSession", "endpoints"),
            type = "structure",
            name = "endpoints",
            target_id = id.from(_N, "RemoteAccessEndpoints"),
            target = M.RemoteAccessEndpoints,
        }),
    },
})

M.CreateRemoteAccessSessionOutput = schema.new({
    id = id.from(_N, "CreateRemoteAccessSessionOutput"),
    type = "structure",
    members = {
        remoteAccessSession = schema.new({
            id = id.from(_N, "CreateRemoteAccessSessionOutput", "remoteAccessSession"),
            type = "structure",
            name = "remoteAccessSession",
            target_id = id.from(_N, "RemoteAccessSession"),
            target = M.RemoteAccessSession,
        }),
    },
})

M.TestGridVpcConfig = schema.new({
    id = id.from(_N, "TestGridVpcConfig"),
    type = "structure",
    members = {
        securityGroupIds = schema.new({
            id = id.from(_N, "TestGridVpcConfig", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subnetIds = schema.new({
            id = id.from(_N, "TestGridVpcConfig", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcId = schema.new({
            id = id.from(_N, "TestGridVpcConfig", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateTestGridProjectInput = schema.new({
    id = id.from(_N, "CreateTestGridProjectInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateTestGridProjectInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateTestGridProjectInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "CreateTestGridProjectInput", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "TestGridVpcConfig"),
            target = M.TestGridVpcConfig,
        }),
    },
})

M.TestGridProject = schema.new({
    id = id.from(_N, "TestGridProject"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "TestGridProject", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "TestGridProject", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "TestGridProject", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "TestGridProject", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "TestGridVpcConfig"),
            target = M.TestGridVpcConfig,
        }),
        created = schema.new({
            id = id.from(_N, "TestGridProject", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateTestGridProjectOutput = schema.new({
    id = id.from(_N, "CreateTestGridProjectOutput"),
    type = "structure",
    members = {
        testGridProject = schema.new({
            id = id.from(_N, "CreateTestGridProjectOutput", "testGridProject"),
            type = "structure",
            name = "testGridProject",
            target_id = id.from(_N, "TestGridProject"),
            target = M.TestGridProject,
        }),
    },
})

M.InternalServiceException = schema.new({
    id = id.from(_N, "InternalServiceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServiceException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTestGridUrlInput = schema.new({
    id = id.from(_N, "CreateTestGridUrlInput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "CreateTestGridUrlInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expiresInSeconds = schema.new({
            id = id.from(_N, "CreateTestGridUrlInput", "expiresInSeconds"),
            type = "integer",
            name = "expiresInSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateTestGridUrlOutput = schema.new({
    id = id.from(_N, "CreateTestGridUrlOutput"),
    type = "structure",
    members = {
        url = schema.new({
            id = id.from(_N, "CreateTestGridUrlOutput", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
        }),
        expires = schema.new({
            id = id.from(_N, "CreateTestGridUrlOutput", "expires"),
            type = "timestamp",
            name = "expires",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateUploadInput = schema.new({
    id = id.from(_N, "CreateUploadInput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "CreateUploadInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateUploadInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "CreateUploadInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        contentType = schema.new({
            id = id.from(_N, "CreateUploadInput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
        }),
    },
})

M.Upload = schema.new({
    id = id.from(_N, "Upload"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Upload", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Upload", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        created = schema.new({
            id = id.from(_N, "Upload", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        type = schema.new({
            id = id.from(_N, "Upload", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Upload", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        url = schema.new({
            id = id.from(_N, "Upload", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
        }),
        metadata = schema.new({
            id = id.from(_N, "Upload", "metadata"),
            type = "string",
            name = "metadata",
            target_id = prelude.String.id,
        }),
        contentType = schema.new({
            id = id.from(_N, "Upload", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "Upload", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "Upload", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateUploadOutput = schema.new({
    id = id.from(_N, "CreateUploadOutput"),
    type = "structure",
    members = {
        upload = schema.new({
            id = id.from(_N, "CreateUploadOutput", "upload"),
            type = "structure",
            name = "upload",
            target_id = id.from(_N, "Upload"),
            target = M.Upload,
        }),
    },
})

M.CreateVPCEConfigurationInput = schema.new({
    id = id.from(_N, "CreateVPCEConfigurationInput"),
    type = "structure",
    members = {
        vpceConfigurationName = schema.new({
            id = id.from(_N, "CreateVPCEConfigurationInput", "vpceConfigurationName"),
            type = "string",
            name = "vpceConfigurationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpceServiceName = schema.new({
            id = id.from(_N, "CreateVPCEConfigurationInput", "vpceServiceName"),
            type = "string",
            name = "vpceServiceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceDnsName = schema.new({
            id = id.from(_N, "CreateVPCEConfigurationInput", "serviceDnsName"),
            type = "string",
            name = "serviceDnsName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpceConfigurationDescription = schema.new({
            id = id.from(_N, "CreateVPCEConfigurationInput", "vpceConfigurationDescription"),
            type = "string",
            name = "vpceConfigurationDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.VPCEConfiguration = schema.new({
    id = id.from(_N, "VPCEConfiguration"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "VPCEConfiguration", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        vpceConfigurationName = schema.new({
            id = id.from(_N, "VPCEConfiguration", "vpceConfigurationName"),
            type = "string",
            name = "vpceConfigurationName",
            target_id = prelude.String.id,
        }),
        vpceServiceName = schema.new({
            id = id.from(_N, "VPCEConfiguration", "vpceServiceName"),
            type = "string",
            name = "vpceServiceName",
            target_id = prelude.String.id,
        }),
        serviceDnsName = schema.new({
            id = id.from(_N, "VPCEConfiguration", "serviceDnsName"),
            type = "string",
            name = "serviceDnsName",
            target_id = prelude.String.id,
        }),
        vpceConfigurationDescription = schema.new({
            id = id.from(_N, "VPCEConfiguration", "vpceConfigurationDescription"),
            type = "string",
            name = "vpceConfigurationDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateVPCEConfigurationOutput = schema.new({
    id = id.from(_N, "CreateVPCEConfigurationOutput"),
    type = "structure",
    members = {
        vpceConfiguration = schema.new({
            id = id.from(_N, "CreateVPCEConfigurationOutput", "vpceConfiguration"),
            type = "structure",
            name = "vpceConfiguration",
            target_id = id.from(_N, "VPCEConfiguration"),
            target = M.VPCEConfiguration,
        }),
    },
})

M.CustomerArtifactPaths = schema.new({
    id = id.from(_N, "CustomerArtifactPaths"),
    type = "structure",
    members = {
        iosPaths = schema.new({
            id = id.from(_N, "CustomerArtifactPaths", "iosPaths"),
            type = "list",
            name = "iosPaths",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        androidPaths = schema.new({
            id = id.from(_N, "CustomerArtifactPaths", "androidPaths"),
            type = "list",
            name = "androidPaths",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        deviceHostPaths = schema.new({
            id = id.from(_N, "CustomerArtifactPaths", "deviceHostPaths"),
            type = "list",
            name = "deviceHostPaths",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DeleteDevicePoolInput = schema.new({
    id = id.from(_N, "DeleteDevicePoolInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteDevicePoolInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDevicePoolOutput = schema.new({
    id = id.from(_N, "DeleteDevicePoolOutput"),
    type = "structure",
})

M.DeleteInstanceProfileInput = schema.new({
    id = id.from(_N, "DeleteInstanceProfileInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteInstanceProfileInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteInstanceProfileOutput = schema.new({
    id = id.from(_N, "DeleteInstanceProfileOutput"),
    type = "structure",
})

M.DeleteNetworkProfileInput = schema.new({
    id = id.from(_N, "DeleteNetworkProfileInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteNetworkProfileInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteNetworkProfileOutput = schema.new({
    id = id.from(_N, "DeleteNetworkProfileOutput"),
    type = "structure",
})

M.DeleteProjectInput = schema.new({
    id = id.from(_N, "DeleteProjectInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteProjectInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteProjectOutput = schema.new({
    id = id.from(_N, "DeleteProjectOutput"),
    type = "structure",
})

M.DeleteRemoteAccessSessionInput = schema.new({
    id = id.from(_N, "DeleteRemoteAccessSessionInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteRemoteAccessSessionInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRemoteAccessSessionOutput = schema.new({
    id = id.from(_N, "DeleteRemoteAccessSessionOutput"),
    type = "structure",
})

M.DeleteRunInput = schema.new({
    id = id.from(_N, "DeleteRunInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteRunInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRunOutput = schema.new({
    id = id.from(_N, "DeleteRunOutput"),
    type = "structure",
})

M.DeleteTestGridProjectInput = schema.new({
    id = id.from(_N, "DeleteTestGridProjectInput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "DeleteTestGridProjectInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteTestGridProjectOutput = schema.new({
    id = id.from(_N, "DeleteTestGridProjectOutput"),
    type = "structure",
})

M.DeleteUploadInput = schema.new({
    id = id.from(_N, "DeleteUploadInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteUploadInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteUploadOutput = schema.new({
    id = id.from(_N, "DeleteUploadOutput"),
    type = "structure",
})

M.DeleteVPCEConfigurationInput = schema.new({
    id = id.from(_N, "DeleteVPCEConfigurationInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "DeleteVPCEConfigurationInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVPCEConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteVPCEConfigurationOutput"),
    type = "structure",
})

M.InvalidOperationException = schema.new({
    id = id.from(_N, "InvalidOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidOperationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAccountSettingsInput = schema.new({
    id = id.from(_N, "GetAccountSettingsInput"),
    type = "structure",
})

M.GetAccountSettingsOutput = schema.new({
    id = id.from(_N, "GetAccountSettingsOutput"),
    type = "structure",
    members = {
        accountSettings = schema.new({
            id = id.from(_N, "GetAccountSettingsOutput", "accountSettings"),
            type = "structure",
            name = "accountSettings",
            target_id = id.from(_N, "AccountSettings"),
            target = M.AccountSettings,
        }),
    },
})

M.GetDeviceInput = schema.new({
    id = id.from(_N, "GetDeviceInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetDeviceInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDeviceOutput = schema.new({
    id = id.from(_N, "GetDeviceOutput"),
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

M.GetDeviceInstanceInput = schema.new({
    id = id.from(_N, "GetDeviceInstanceInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetDeviceInstanceInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDeviceInstanceOutput = schema.new({
    id = id.from(_N, "GetDeviceInstanceOutput"),
    type = "structure",
    members = {
        deviceInstance = schema.new({
            id = id.from(_N, "GetDeviceInstanceOutput", "deviceInstance"),
            type = "structure",
            name = "deviceInstance",
            target_id = id.from(_N, "DeviceInstance"),
            target = M.DeviceInstance,
        }),
    },
})

M.GetDevicePoolInput = schema.new({
    id = id.from(_N, "GetDevicePoolInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetDevicePoolInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDevicePoolOutput = schema.new({
    id = id.from(_N, "GetDevicePoolOutput"),
    type = "structure",
    members = {
        devicePool = schema.new({
            id = id.from(_N, "GetDevicePoolOutput", "devicePool"),
            type = "structure",
            name = "devicePool",
            target_id = id.from(_N, "DevicePool"),
            target = M.DevicePool,
        }),
    },
})

M.Location = schema.new({
    id = id.from(_N, "Location"),
    type = "structure",
    members = {
        latitude = schema.new({
            id = id.from(_N, "Location", "latitude"),
            type = "double",
            name = "latitude",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        longitude = schema.new({
            id = id.from(_N, "Location", "longitude"),
            type = "double",
            name = "longitude",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Radios = schema.new({
    id = id.from(_N, "Radios"),
    type = "structure",
    members = {
        wifi = schema.new({
            id = id.from(_N, "Radios", "wifi"),
            type = "boolean",
            name = "wifi",
            target_id = prelude.Boolean.id,
        }),
        bluetooth = schema.new({
            id = id.from(_N, "Radios", "bluetooth"),
            type = "boolean",
            name = "bluetooth",
            target_id = prelude.Boolean.id,
        }),
        nfc = schema.new({
            id = id.from(_N, "Radios", "nfc"),
            type = "boolean",
            name = "nfc",
            target_id = prelude.Boolean.id,
        }),
        gps = schema.new({
            id = id.from(_N, "Radios", "gps"),
            type = "boolean",
            name = "gps",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ScheduleRunConfiguration = schema.new({
    id = id.from(_N, "ScheduleRunConfiguration"),
    type = "structure",
    members = {
        extraDataPackageArn = schema.new({
            id = id.from(_N, "ScheduleRunConfiguration", "extraDataPackageArn"),
            type = "string",
            name = "extraDataPackageArn",
            target_id = prelude.String.id,
        }),
        networkProfileArn = schema.new({
            id = id.from(_N, "ScheduleRunConfiguration", "networkProfileArn"),
            type = "string",
            name = "networkProfileArn",
            target_id = prelude.String.id,
        }),
        locale = schema.new({
            id = id.from(_N, "ScheduleRunConfiguration", "locale"),
            type = "string",
            name = "locale",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "ScheduleRunConfiguration", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        vpceConfigurationArns = schema.new({
            id = id.from(_N, "ScheduleRunConfiguration", "vpceConfigurationArns"),
            type = "list",
            name = "vpceConfigurationArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        deviceProxy = schema.new({
            id = id.from(_N, "ScheduleRunConfiguration", "deviceProxy"),
            type = "structure",
            name = "deviceProxy",
            target_id = id.from(_N, "DeviceProxy"),
            target = M.DeviceProxy,
        }),
        customerArtifactPaths = schema.new({
            id = id.from(_N, "ScheduleRunConfiguration", "customerArtifactPaths"),
            type = "structure",
            name = "customerArtifactPaths",
            target_id = id.from(_N, "CustomerArtifactPaths"),
            target = M.CustomerArtifactPaths,
        }),
        radios = schema.new({
            id = id.from(_N, "ScheduleRunConfiguration", "radios"),
            type = "structure",
            name = "radios",
            target_id = id.from(_N, "Radios"),
            target = M.Radios,
        }),
        auxiliaryApps = schema.new({
            id = id.from(_N, "ScheduleRunConfiguration", "auxiliaryApps"),
            type = "list",
            name = "auxiliaryApps",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        billingMethod = schema.new({
            id = id.from(_N, "ScheduleRunConfiguration", "billingMethod"),
            type = "string",
            name = "billingMethod",
            target_id = prelude.String.id,
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "ScheduleRunConfiguration", "environmentVariables"),
            type = "list",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            list_member = M.EnvironmentVariable,
        }),
        executionRoleArn = schema.new({
            id = id.from(_N, "ScheduleRunConfiguration", "executionRoleArn"),
            type = "string",
            name = "executionRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ScheduleRunTest = schema.new({
    id = id.from(_N, "ScheduleRunTest"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ScheduleRunTest", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        testPackageArn = schema.new({
            id = id.from(_N, "ScheduleRunTest", "testPackageArn"),
            type = "string",
            name = "testPackageArn",
            target_id = prelude.String.id,
        }),
        testSpecArn = schema.new({
            id = id.from(_N, "ScheduleRunTest", "testSpecArn"),
            type = "string",
            name = "testSpecArn",
            target_id = prelude.String.id,
        }),
        filter = schema.new({
            id = id.from(_N, "ScheduleRunTest", "filter"),
            type = "string",
            name = "filter",
            target_id = prelude.String.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "ScheduleRunTest", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetDevicePoolCompatibilityInput = schema.new({
    id = id.from(_N, "GetDevicePoolCompatibilityInput"),
    type = "structure",
    members = {
        devicePoolArn = schema.new({
            id = id.from(_N, "GetDevicePoolCompatibilityInput", "devicePoolArn"),
            type = "string",
            name = "devicePoolArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appArn = schema.new({
            id = id.from(_N, "GetDevicePoolCompatibilityInput", "appArn"),
            type = "string",
            name = "appArn",
            target_id = prelude.String.id,
        }),
        testType = schema.new({
            id = id.from(_N, "GetDevicePoolCompatibilityInput", "testType"),
            type = "string",
            name = "testType",
            target_id = prelude.String.id,
        }),
        test = schema.new({
            id = id.from(_N, "GetDevicePoolCompatibilityInput", "test"),
            type = "structure",
            name = "test",
            target_id = id.from(_N, "ScheduleRunTest"),
            target = M.ScheduleRunTest,
        }),
        configuration = schema.new({
            id = id.from(_N, "GetDevicePoolCompatibilityInput", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "ScheduleRunConfiguration"),
            target = M.ScheduleRunConfiguration,
        }),
        projectArn = schema.new({
            id = id.from(_N, "GetDevicePoolCompatibilityInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
        }),
    },
})

M.IncompatibilityMessage = schema.new({
    id = id.from(_N, "IncompatibilityMessage"),
    type = "structure",
    members = {
        message = schema.new({
            id = id.from(_N, "IncompatibilityMessage", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "IncompatibilityMessage", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.DevicePoolCompatibilityResult = schema.new({
    id = id.from(_N, "DevicePoolCompatibilityResult"),
    type = "structure",
    members = {
        device = schema.new({
            id = id.from(_N, "DevicePoolCompatibilityResult", "device"),
            type = "structure",
            name = "device",
            target_id = id.from(_N, "Device"),
            target = M.Device,
        }),
        compatible = schema.new({
            id = id.from(_N, "DevicePoolCompatibilityResult", "compatible"),
            type = "boolean",
            name = "compatible",
            target_id = prelude.Boolean.id,
        }),
        incompatibilityMessages = schema.new({
            id = id.from(_N, "DevicePoolCompatibilityResult", "incompatibilityMessages"),
            type = "list",
            name = "incompatibilityMessages",
            target_id = prelude.Document.id,
            list_member = M.IncompatibilityMessage,
        }),
    },
})

M.GetDevicePoolCompatibilityOutput = schema.new({
    id = id.from(_N, "GetDevicePoolCompatibilityOutput"),
    type = "structure",
    members = {
        compatibleDevices = schema.new({
            id = id.from(_N, "GetDevicePoolCompatibilityOutput", "compatibleDevices"),
            type = "list",
            name = "compatibleDevices",
            target_id = prelude.Document.id,
            list_member = M.DevicePoolCompatibilityResult,
        }),
        incompatibleDevices = schema.new({
            id = id.from(_N, "GetDevicePoolCompatibilityOutput", "incompatibleDevices"),
            type = "list",
            name = "incompatibleDevices",
            target_id = prelude.Document.id,
            list_member = M.DevicePoolCompatibilityResult,
        }),
    },
})

M.GetInstanceProfileInput = schema.new({
    id = id.from(_N, "GetInstanceProfileInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetInstanceProfileInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetInstanceProfileOutput = schema.new({
    id = id.from(_N, "GetInstanceProfileOutput"),
    type = "structure",
    members = {
        instanceProfile = schema.new({
            id = id.from(_N, "GetInstanceProfileOutput", "instanceProfile"),
            type = "structure",
            name = "instanceProfile",
            target_id = id.from(_N, "InstanceProfile"),
            target = M.InstanceProfile,
        }),
    },
})

M.GetJobInput = schema.new({
    id = id.from(_N, "GetJobInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetJobInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Job = schema.new({
    id = id.from(_N, "Job"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Job", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Job", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Job", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        created = schema.new({
            id = id.from(_N, "Job", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "Job", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        result = schema.new({
            id = id.from(_N, "Job", "result"),
            type = "string",
            name = "result",
            target_id = prelude.String.id,
        }),
        started = schema.new({
            id = id.from(_N, "Job", "started"),
            type = "timestamp",
            name = "started",
            target_id = prelude.Timestamp.id,
        }),
        stopped = schema.new({
            id = id.from(_N, "Job", "stopped"),
            type = "timestamp",
            name = "stopped",
            target_id = prelude.Timestamp.id,
        }),
        counters = schema.new({
            id = id.from(_N, "Job", "counters"),
            type = "structure",
            name = "counters",
            target_id = id.from(_N, "Counters"),
            target = M.Counters,
        }),
        message = schema.new({
            id = id.from(_N, "Job", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        device = schema.new({
            id = id.from(_N, "Job", "device"),
            type = "structure",
            name = "device",
            target_id = id.from(_N, "Device"),
            target = M.Device,
        }),
        instanceArn = schema.new({
            id = id.from(_N, "Job", "instanceArn"),
            type = "string",
            name = "instanceArn",
            target_id = prelude.String.id,
        }),
        deviceMinutes = schema.new({
            id = id.from(_N, "Job", "deviceMinutes"),
            type = "structure",
            name = "deviceMinutes",
            target_id = id.from(_N, "DeviceMinutes"),
            target = M.DeviceMinutes,
        }),
        videoEndpoint = schema.new({
            id = id.from(_N, "Job", "videoEndpoint"),
            type = "string",
            name = "videoEndpoint",
            target_id = prelude.String.id,
        }),
        videoCapture = schema.new({
            id = id.from(_N, "Job", "videoCapture"),
            type = "boolean",
            name = "videoCapture",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GetJobOutput = schema.new({
    id = id.from(_N, "GetJobOutput"),
    type = "structure",
    members = {
        job = schema.new({
            id = id.from(_N, "GetJobOutput", "job"),
            type = "structure",
            name = "job",
            target_id = id.from(_N, "Job"),
            target = M.Job,
        }),
    },
})

M.GetNetworkProfileInput = schema.new({
    id = id.from(_N, "GetNetworkProfileInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetNetworkProfileInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetNetworkProfileOutput = schema.new({
    id = id.from(_N, "GetNetworkProfileOutput"),
    type = "structure",
    members = {
        networkProfile = schema.new({
            id = id.from(_N, "GetNetworkProfileOutput", "networkProfile"),
            type = "structure",
            name = "networkProfile",
            target_id = id.from(_N, "NetworkProfile"),
            target = M.NetworkProfile,
        }),
    },
})

M.GetOfferingStatusInput = schema.new({
    id = id.from(_N, "GetOfferingStatusInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "GetOfferingStatusInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MonetaryAmount = schema.new({
    id = id.from(_N, "MonetaryAmount"),
    type = "structure",
    members = {
        amount = schema.new({
            id = id.from(_N, "MonetaryAmount", "amount"),
            type = "double",
            name = "amount",
            target_id = prelude.Double.id,
        }),
        currencyCode = schema.new({
            id = id.from(_N, "MonetaryAmount", "currencyCode"),
            type = "string",
            name = "currencyCode",
            target_id = prelude.String.id,
        }),
    },
})

M.RecurringCharge = schema.new({
    id = id.from(_N, "RecurringCharge"),
    type = "structure",
    members = {
        cost = schema.new({
            id = id.from(_N, "RecurringCharge", "cost"),
            type = "structure",
            name = "cost",
            target_id = id.from(_N, "MonetaryAmount"),
            target = M.MonetaryAmount,
        }),
        frequency = schema.new({
            id = id.from(_N, "RecurringCharge", "frequency"),
            type = "string",
            name = "frequency",
            target_id = prelude.String.id,
        }),
    },
})

M.Offering = schema.new({
    id = id.from(_N, "Offering"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Offering", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Offering", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Offering", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        platform = schema.new({
            id = id.from(_N, "Offering", "platform"),
            type = "string",
            name = "platform",
            target_id = prelude.String.id,
        }),
        recurringCharges = schema.new({
            id = id.from(_N, "Offering", "recurringCharges"),
            type = "list",
            name = "recurringCharges",
            target_id = prelude.Document.id,
            list_member = M.RecurringCharge,
        }),
    },
})

M.OfferingStatus = schema.new({
    id = id.from(_N, "OfferingStatus"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "OfferingStatus", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        offering = schema.new({
            id = id.from(_N, "OfferingStatus", "offering"),
            type = "structure",
            name = "offering",
            target_id = id.from(_N, "Offering"),
            target = M.Offering,
        }),
        quantity = schema.new({
            id = id.from(_N, "OfferingStatus", "quantity"),
            type = "integer",
            name = "quantity",
            target_id = prelude.Integer.id,
        }),
        effectiveOn = schema.new({
            id = id.from(_N, "OfferingStatus", "effectiveOn"),
            type = "timestamp",
            name = "effectiveOn",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetOfferingStatusOutput = schema.new({
    id = id.from(_N, "GetOfferingStatusOutput"),
    type = "structure",
    members = {
        current = schema.new({
            id = id.from(_N, "GetOfferingStatusOutput", "current"),
            type = "map",
            name = "current",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.OfferingStatus,
        }),
        nextPeriod = schema.new({
            id = id.from(_N, "GetOfferingStatusOutput", "nextPeriod"),
            type = "map",
            name = "nextPeriod",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.OfferingStatus,
        }),
        nextToken = schema.new({
            id = id.from(_N, "GetOfferingStatusOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NotEligibleException = schema.new({
    id = id.from(_N, "NotEligibleException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NotEligibleException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetProjectInput = schema.new({
    id = id.from(_N, "GetProjectInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetProjectInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetProjectOutput = schema.new({
    id = id.from(_N, "GetProjectOutput"),
    type = "structure",
    members = {
        project = schema.new({
            id = id.from(_N, "GetProjectOutput", "project"),
            type = "structure",
            name = "project",
            target_id = id.from(_N, "Project"),
            target = M.Project,
        }),
    },
})

M.GetRemoteAccessSessionInput = schema.new({
    id = id.from(_N, "GetRemoteAccessSessionInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetRemoteAccessSessionInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRemoteAccessSessionOutput = schema.new({
    id = id.from(_N, "GetRemoteAccessSessionOutput"),
    type = "structure",
    members = {
        remoteAccessSession = schema.new({
            id = id.from(_N, "GetRemoteAccessSessionOutput", "remoteAccessSession"),
            type = "structure",
            name = "remoteAccessSession",
            target_id = id.from(_N, "RemoteAccessSession"),
            target = M.RemoteAccessSession,
        }),
    },
})

M.GetRunInput = schema.new({
    id = id.from(_N, "GetRunInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetRunInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeviceFilter = schema.new({
    id = id.from(_N, "DeviceFilter"),
    type = "structure",
    members = {
        attribute = schema.new({
            id = id.from(_N, "DeviceFilter", "attribute"),
            type = "string",
            name = "attribute",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operator = schema.new({
            id = id.from(_N, "DeviceFilter", "operator"),
            type = "string",
            name = "operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        values = schema.new({
            id = id.from(_N, "DeviceFilter", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeviceSelectionResult = schema.new({
    id = id.from(_N, "DeviceSelectionResult"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "DeviceSelectionResult", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.DeviceFilter,
        }),
        matchedDevicesCount = schema.new({
            id = id.from(_N, "DeviceSelectionResult", "matchedDevicesCount"),
            type = "integer",
            name = "matchedDevicesCount",
            target_id = prelude.Integer.id,
        }),
        maxDevices = schema.new({
            id = id.from(_N, "DeviceSelectionResult", "maxDevices"),
            type = "integer",
            name = "maxDevices",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Run = schema.new({
    id = id.from(_N, "Run"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Run", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Run", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Run", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        platform = schema.new({
            id = id.from(_N, "Run", "platform"),
            type = "string",
            name = "platform",
            target_id = prelude.String.id,
        }),
        created = schema.new({
            id = id.from(_N, "Run", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "Run", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        result = schema.new({
            id = id.from(_N, "Run", "result"),
            type = "string",
            name = "result",
            target_id = prelude.String.id,
        }),
        started = schema.new({
            id = id.from(_N, "Run", "started"),
            type = "timestamp",
            name = "started",
            target_id = prelude.Timestamp.id,
        }),
        stopped = schema.new({
            id = id.from(_N, "Run", "stopped"),
            type = "timestamp",
            name = "stopped",
            target_id = prelude.Timestamp.id,
        }),
        counters = schema.new({
            id = id.from(_N, "Run", "counters"),
            type = "structure",
            name = "counters",
            target_id = id.from(_N, "Counters"),
            target = M.Counters,
        }),
        message = schema.new({
            id = id.from(_N, "Run", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        totalJobs = schema.new({
            id = id.from(_N, "Run", "totalJobs"),
            type = "integer",
            name = "totalJobs",
            target_id = prelude.Integer.id,
        }),
        completedJobs = schema.new({
            id = id.from(_N, "Run", "completedJobs"),
            type = "integer",
            name = "completedJobs",
            target_id = prelude.Integer.id,
        }),
        billingMethod = schema.new({
            id = id.from(_N, "Run", "billingMethod"),
            type = "string",
            name = "billingMethod",
            target_id = prelude.String.id,
        }),
        deviceMinutes = schema.new({
            id = id.from(_N, "Run", "deviceMinutes"),
            type = "structure",
            name = "deviceMinutes",
            target_id = id.from(_N, "DeviceMinutes"),
            target = M.DeviceMinutes,
        }),
        networkProfile = schema.new({
            id = id.from(_N, "Run", "networkProfile"),
            type = "structure",
            name = "networkProfile",
            target_id = id.from(_N, "NetworkProfile"),
            target = M.NetworkProfile,
        }),
        deviceProxy = schema.new({
            id = id.from(_N, "Run", "deviceProxy"),
            type = "structure",
            name = "deviceProxy",
            target_id = id.from(_N, "DeviceProxy"),
            target = M.DeviceProxy,
        }),
        parsingResultUrl = schema.new({
            id = id.from(_N, "Run", "parsingResultUrl"),
            type = "string",
            name = "parsingResultUrl",
            target_id = prelude.String.id,
        }),
        resultCode = schema.new({
            id = id.from(_N, "Run", "resultCode"),
            type = "string",
            name = "resultCode",
            target_id = prelude.String.id,
        }),
        seed = schema.new({
            id = id.from(_N, "Run", "seed"),
            type = "integer",
            name = "seed",
            target_id = prelude.Integer.id,
        }),
        appUpload = schema.new({
            id = id.from(_N, "Run", "appUpload"),
            type = "string",
            name = "appUpload",
            target_id = prelude.String.id,
        }),
        eventCount = schema.new({
            id = id.from(_N, "Run", "eventCount"),
            type = "integer",
            name = "eventCount",
            target_id = prelude.Integer.id,
        }),
        jobTimeoutMinutes = schema.new({
            id = id.from(_N, "Run", "jobTimeoutMinutes"),
            type = "integer",
            name = "jobTimeoutMinutes",
            target_id = prelude.Integer.id,
        }),
        devicePoolArn = schema.new({
            id = id.from(_N, "Run", "devicePoolArn"),
            type = "string",
            name = "devicePoolArn",
            target_id = prelude.String.id,
        }),
        locale = schema.new({
            id = id.from(_N, "Run", "locale"),
            type = "string",
            name = "locale",
            target_id = prelude.String.id,
        }),
        radios = schema.new({
            id = id.from(_N, "Run", "radios"),
            type = "structure",
            name = "radios",
            target_id = id.from(_N, "Radios"),
            target = M.Radios,
        }),
        location = schema.new({
            id = id.from(_N, "Run", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "Location"),
            target = M.Location,
        }),
        customerArtifactPaths = schema.new({
            id = id.from(_N, "Run", "customerArtifactPaths"),
            type = "structure",
            name = "customerArtifactPaths",
            target_id = id.from(_N, "CustomerArtifactPaths"),
            target = M.CustomerArtifactPaths,
        }),
        webUrl = schema.new({
            id = id.from(_N, "Run", "webUrl"),
            type = "string",
            name = "webUrl",
            target_id = prelude.String.id,
        }),
        skipAppResign = schema.new({
            id = id.from(_N, "Run", "skipAppResign"),
            type = "boolean",
            name = "skipAppResign",
            target_id = prelude.Boolean.id,
        }),
        testSpecArn = schema.new({
            id = id.from(_N, "Run", "testSpecArn"),
            type = "string",
            name = "testSpecArn",
            target_id = prelude.String.id,
        }),
        deviceSelectionResult = schema.new({
            id = id.from(_N, "Run", "deviceSelectionResult"),
            type = "structure",
            name = "deviceSelectionResult",
            target_id = id.from(_N, "DeviceSelectionResult"),
            target = M.DeviceSelectionResult,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "Run", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        executionRoleArn = schema.new({
            id = id.from(_N, "Run", "executionRoleArn"),
            type = "string",
            name = "executionRoleArn",
            target_id = prelude.String.id,
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "Run", "environmentVariables"),
            type = "list",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            list_member = M.EnvironmentVariable,
        }),
    },
})

M.GetRunOutput = schema.new({
    id = id.from(_N, "GetRunOutput"),
    type = "structure",
    members = {
        run = schema.new({
            id = id.from(_N, "GetRunOutput", "run"),
            type = "structure",
            name = "run",
            target_id = id.from(_N, "Run"),
            target = M.Run,
        }),
    },
})

M.GetSuiteInput = schema.new({
    id = id.from(_N, "GetSuiteInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetSuiteInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Suite = schema.new({
    id = id.from(_N, "Suite"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Suite", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Suite", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Suite", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        created = schema.new({
            id = id.from(_N, "Suite", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "Suite", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        result = schema.new({
            id = id.from(_N, "Suite", "result"),
            type = "string",
            name = "result",
            target_id = prelude.String.id,
        }),
        started = schema.new({
            id = id.from(_N, "Suite", "started"),
            type = "timestamp",
            name = "started",
            target_id = prelude.Timestamp.id,
        }),
        stopped = schema.new({
            id = id.from(_N, "Suite", "stopped"),
            type = "timestamp",
            name = "stopped",
            target_id = prelude.Timestamp.id,
        }),
        counters = schema.new({
            id = id.from(_N, "Suite", "counters"),
            type = "structure",
            name = "counters",
            target_id = id.from(_N, "Counters"),
            target = M.Counters,
        }),
        message = schema.new({
            id = id.from(_N, "Suite", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        deviceMinutes = schema.new({
            id = id.from(_N, "Suite", "deviceMinutes"),
            type = "structure",
            name = "deviceMinutes",
            target_id = id.from(_N, "DeviceMinutes"),
            target = M.DeviceMinutes,
        }),
    },
})

M.GetSuiteOutput = schema.new({
    id = id.from(_N, "GetSuiteOutput"),
    type = "structure",
    members = {
        suite = schema.new({
            id = id.from(_N, "GetSuiteOutput", "suite"),
            type = "structure",
            name = "suite",
            target_id = id.from(_N, "Suite"),
            target = M.Suite,
        }),
    },
})

M.GetTestInput = schema.new({
    id = id.from(_N, "GetTestInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetTestInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Test = schema.new({
    id = id.from(_N, "Test"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Test", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Test", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Test", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        created = schema.new({
            id = id.from(_N, "Test", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "Test", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        result = schema.new({
            id = id.from(_N, "Test", "result"),
            type = "string",
            name = "result",
            target_id = prelude.String.id,
        }),
        started = schema.new({
            id = id.from(_N, "Test", "started"),
            type = "timestamp",
            name = "started",
            target_id = prelude.Timestamp.id,
        }),
        stopped = schema.new({
            id = id.from(_N, "Test", "stopped"),
            type = "timestamp",
            name = "stopped",
            target_id = prelude.Timestamp.id,
        }),
        counters = schema.new({
            id = id.from(_N, "Test", "counters"),
            type = "structure",
            name = "counters",
            target_id = id.from(_N, "Counters"),
            target = M.Counters,
        }),
        message = schema.new({
            id = id.from(_N, "Test", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        deviceMinutes = schema.new({
            id = id.from(_N, "Test", "deviceMinutes"),
            type = "structure",
            name = "deviceMinutes",
            target_id = id.from(_N, "DeviceMinutes"),
            target = M.DeviceMinutes,
        }),
    },
})

M.GetTestOutput = schema.new({
    id = id.from(_N, "GetTestOutput"),
    type = "structure",
    members = {
        test = schema.new({
            id = id.from(_N, "GetTestOutput", "test"),
            type = "structure",
            name = "test",
            target_id = id.from(_N, "Test"),
            target = M.Test,
        }),
    },
})

M.GetTestGridProjectInput = schema.new({
    id = id.from(_N, "GetTestGridProjectInput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "GetTestGridProjectInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetTestGridProjectOutput = schema.new({
    id = id.from(_N, "GetTestGridProjectOutput"),
    type = "structure",
    members = {
        testGridProject = schema.new({
            id = id.from(_N, "GetTestGridProjectOutput", "testGridProject"),
            type = "structure",
            name = "testGridProject",
            target_id = id.from(_N, "TestGridProject"),
            target = M.TestGridProject,
        }),
    },
})

M.GetTestGridSessionInput = schema.new({
    id = id.from(_N, "GetTestGridSessionInput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "GetTestGridSessionInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
        }),
        sessionId = schema.new({
            id = id.from(_N, "GetTestGridSessionInput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
        sessionArn = schema.new({
            id = id.from(_N, "GetTestGridSessionInput", "sessionArn"),
            type = "string",
            name = "sessionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.TestGridSession = schema.new({
    id = id.from(_N, "TestGridSession"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "TestGridSession", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "TestGridSession", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        created = schema.new({
            id = id.from(_N, "TestGridSession", "created"),
            type = "timestamp",
            name = "created",
            target_id = prelude.Timestamp.id,
        }),
        ended = schema.new({
            id = id.from(_N, "TestGridSession", "ended"),
            type = "timestamp",
            name = "ended",
            target_id = prelude.Timestamp.id,
        }),
        billingMinutes = schema.new({
            id = id.from(_N, "TestGridSession", "billingMinutes"),
            type = "double",
            name = "billingMinutes",
            target_id = prelude.Double.id,
        }),
        seleniumProperties = schema.new({
            id = id.from(_N, "TestGridSession", "seleniumProperties"),
            type = "string",
            name = "seleniumProperties",
            target_id = prelude.String.id,
        }),
    },
})

M.GetTestGridSessionOutput = schema.new({
    id = id.from(_N, "GetTestGridSessionOutput"),
    type = "structure",
    members = {
        testGridSession = schema.new({
            id = id.from(_N, "GetTestGridSessionOutput", "testGridSession"),
            type = "structure",
            name = "testGridSession",
            target_id = id.from(_N, "TestGridSession"),
            target = M.TestGridSession,
        }),
    },
})

M.GetUploadInput = schema.new({
    id = id.from(_N, "GetUploadInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetUploadInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetUploadOutput = schema.new({
    id = id.from(_N, "GetUploadOutput"),
    type = "structure",
    members = {
        upload = schema.new({
            id = id.from(_N, "GetUploadOutput", "upload"),
            type = "structure",
            name = "upload",
            target_id = id.from(_N, "Upload"),
            target = M.Upload,
        }),
    },
})

M.GetVPCEConfigurationInput = schema.new({
    id = id.from(_N, "GetVPCEConfigurationInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GetVPCEConfigurationInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetVPCEConfigurationOutput = schema.new({
    id = id.from(_N, "GetVPCEConfigurationOutput"),
    type = "structure",
    members = {
        vpceConfiguration = schema.new({
            id = id.from(_N, "GetVPCEConfigurationOutput", "vpceConfiguration"),
            type = "structure",
            name = "vpceConfiguration",
            target_id = id.from(_N, "VPCEConfiguration"),
            target = M.VPCEConfiguration,
        }),
    },
})

M.InstallToRemoteAccessSessionInput = schema.new({
    id = id.from(_N, "InstallToRemoteAccessSessionInput"),
    type = "structure",
    members = {
        remoteAccessSessionArn = schema.new({
            id = id.from(_N, "InstallToRemoteAccessSessionInput", "remoteAccessSessionArn"),
            type = "string",
            name = "remoteAccessSessionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appArn = schema.new({
            id = id.from(_N, "InstallToRemoteAccessSessionInput", "appArn"),
            type = "string",
            name = "appArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InstallToRemoteAccessSessionOutput = schema.new({
    id = id.from(_N, "InstallToRemoteAccessSessionOutput"),
    type = "structure",
    members = {
        appUpload = schema.new({
            id = id.from(_N, "InstallToRemoteAccessSessionOutput", "appUpload"),
            type = "structure",
            name = "appUpload",
            target_id = id.from(_N, "Upload"),
            target = M.Upload,
        }),
    },
})

M.ListArtifactsInput = schema.new({
    id = id.from(_N, "ListArtifactsInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListArtifactsInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "ListArtifactsInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListArtifactsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListArtifactsOutput = schema.new({
    id = id.from(_N, "ListArtifactsOutput"),
    type = "structure",
    members = {
        artifacts = schema.new({
            id = id.from(_N, "ListArtifactsOutput", "artifacts"),
            type = "list",
            name = "artifacts",
            target_id = prelude.Document.id,
            list_member = M.Artifact,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListArtifactsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDeviceInstancesInput = schema.new({
    id = id.from(_N, "ListDeviceInstancesInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListDeviceInstancesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDeviceInstancesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDeviceInstancesOutput = schema.new({
    id = id.from(_N, "ListDeviceInstancesOutput"),
    type = "structure",
    members = {
        deviceInstances = schema.new({
            id = id.from(_N, "ListDeviceInstancesOutput", "deviceInstances"),
            type = "list",
            name = "deviceInstances",
            target_id = prelude.Document.id,
            list_member = M.DeviceInstance,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDeviceInstancesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDevicePoolsInput = schema.new({
    id = id.from(_N, "ListDevicePoolsInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListDevicePoolsInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "ListDevicePoolsInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDevicePoolsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDevicePoolsOutput = schema.new({
    id = id.from(_N, "ListDevicePoolsOutput"),
    type = "structure",
    members = {
        devicePools = schema.new({
            id = id.from(_N, "ListDevicePoolsOutput", "devicePools"),
            type = "list",
            name = "devicePools",
            target_id = prelude.Document.id,
            list_member = M.DevicePool,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDevicePoolsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDevicesInput = schema.new({
    id = id.from(_N, "ListDevicesInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListDevicesInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDevicesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        filters = schema.new({
            id = id.from(_N, "ListDevicesInput", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.DeviceFilter,
        }),
    },
})

M.ListDevicesOutput = schema.new({
    id = id.from(_N, "ListDevicesOutput"),
    type = "structure",
    members = {
        devices = schema.new({
            id = id.from(_N, "ListDevicesOutput", "devices"),
            type = "list",
            name = "devices",
            target_id = prelude.Document.id,
            list_member = M.Device,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDevicesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInstanceProfilesInput = schema.new({
    id = id.from(_N, "ListInstanceProfilesInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListInstanceProfilesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListInstanceProfilesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInstanceProfilesOutput = schema.new({
    id = id.from(_N, "ListInstanceProfilesOutput"),
    type = "structure",
    members = {
        instanceProfiles = schema.new({
            id = id.from(_N, "ListInstanceProfilesOutput", "instanceProfiles"),
            type = "list",
            name = "instanceProfiles",
            target_id = prelude.Document.id,
            list_member = M.InstanceProfile,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListInstanceProfilesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListJobsInput = schema.new({
    id = id.from(_N, "ListJobsInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListJobsInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListJobsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListJobsOutput = schema.new({
    id = id.from(_N, "ListJobsOutput"),
    type = "structure",
    members = {
        jobs = schema.new({
            id = id.from(_N, "ListJobsOutput", "jobs"),
            type = "list",
            name = "jobs",
            target_id = prelude.Document.id,
            list_member = M.Job,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListJobsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkProfilesInput = schema.new({
    id = id.from(_N, "ListNetworkProfilesInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListNetworkProfilesInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "ListNetworkProfilesInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkProfilesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNetworkProfilesOutput = schema.new({
    id = id.from(_N, "ListNetworkProfilesOutput"),
    type = "structure",
    members = {
        networkProfiles = schema.new({
            id = id.from(_N, "ListNetworkProfilesOutput", "networkProfiles"),
            type = "list",
            name = "networkProfiles",
            target_id = prelude.Document.id,
            list_member = M.NetworkProfile,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNetworkProfilesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOfferingPromotionsInput = schema.new({
    id = id.from(_N, "ListOfferingPromotionsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListOfferingPromotionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferingPromotion = schema.new({
    id = id.from(_N, "OfferingPromotion"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "OfferingPromotion", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "OfferingPromotion", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOfferingPromotionsOutput = schema.new({
    id = id.from(_N, "ListOfferingPromotionsOutput"),
    type = "structure",
    members = {
        offeringPromotions = schema.new({
            id = id.from(_N, "ListOfferingPromotionsOutput", "offeringPromotions"),
            type = "list",
            name = "offeringPromotions",
            target_id = prelude.Document.id,
            list_member = M.OfferingPromotion,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListOfferingPromotionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOfferingsInput = schema.new({
    id = id.from(_N, "ListOfferingsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListOfferingsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOfferingsOutput = schema.new({
    id = id.from(_N, "ListOfferingsOutput"),
    type = "structure",
    members = {
        offerings = schema.new({
            id = id.from(_N, "ListOfferingsOutput", "offerings"),
            type = "list",
            name = "offerings",
            target_id = prelude.Document.id,
            list_member = M.Offering,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListOfferingsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOfferingTransactionsInput = schema.new({
    id = id.from(_N, "ListOfferingTransactionsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListOfferingTransactionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.OfferingTransaction = schema.new({
    id = id.from(_N, "OfferingTransaction"),
    type = "structure",
    members = {
        offeringStatus = schema.new({
            id = id.from(_N, "OfferingTransaction", "offeringStatus"),
            type = "structure",
            name = "offeringStatus",
            target_id = id.from(_N, "OfferingStatus"),
            target = M.OfferingStatus,
        }),
        transactionId = schema.new({
            id = id.from(_N, "OfferingTransaction", "transactionId"),
            type = "string",
            name = "transactionId",
            target_id = prelude.String.id,
        }),
        offeringPromotionId = schema.new({
            id = id.from(_N, "OfferingTransaction", "offeringPromotionId"),
            type = "string",
            name = "offeringPromotionId",
            target_id = prelude.String.id,
        }),
        createdOn = schema.new({
            id = id.from(_N, "OfferingTransaction", "createdOn"),
            type = "timestamp",
            name = "createdOn",
            target_id = prelude.Timestamp.id,
        }),
        cost = schema.new({
            id = id.from(_N, "OfferingTransaction", "cost"),
            type = "structure",
            name = "cost",
            target_id = id.from(_N, "MonetaryAmount"),
            target = M.MonetaryAmount,
        }),
    },
})

M.ListOfferingTransactionsOutput = schema.new({
    id = id.from(_N, "ListOfferingTransactionsOutput"),
    type = "structure",
    members = {
        offeringTransactions = schema.new({
            id = id.from(_N, "ListOfferingTransactionsOutput", "offeringTransactions"),
            type = "list",
            name = "offeringTransactions",
            target_id = prelude.Document.id,
            list_member = M.OfferingTransaction,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListOfferingTransactionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProjectsInput = schema.new({
    id = id.from(_N, "ListProjectsInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListProjectsInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListProjectsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListProjectsOutput = schema.new({
    id = id.from(_N, "ListProjectsOutput"),
    type = "structure",
    members = {
        projects = schema.new({
            id = id.from(_N, "ListProjectsOutput", "projects"),
            type = "list",
            name = "projects",
            target_id = prelude.Document.id,
            list_member = M.Project,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListProjectsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRemoteAccessSessionsInput = schema.new({
    id = id.from(_N, "ListRemoteAccessSessionsInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListRemoteAccessSessionsInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRemoteAccessSessionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRemoteAccessSessionsOutput = schema.new({
    id = id.from(_N, "ListRemoteAccessSessionsOutput"),
    type = "structure",
    members = {
        remoteAccessSessions = schema.new({
            id = id.from(_N, "ListRemoteAccessSessionsOutput", "remoteAccessSessions"),
            type = "list",
            name = "remoteAccessSessions",
            target_id = prelude.Document.id,
            list_member = M.RemoteAccessSession,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRemoteAccessSessionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRunsInput = schema.new({
    id = id.from(_N, "ListRunsInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListRunsInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRunsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRunsOutput = schema.new({
    id = id.from(_N, "ListRunsOutput"),
    type = "structure",
    members = {
        runs = schema.new({
            id = id.from(_N, "ListRunsOutput", "runs"),
            type = "list",
            name = "runs",
            target_id = prelude.Document.id,
            list_member = M.Run,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRunsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSamplesInput = schema.new({
    id = id.from(_N, "ListSamplesInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListSamplesInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSamplesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Sample = schema.new({
    id = id.from(_N, "Sample"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Sample", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "Sample", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        url = schema.new({
            id = id.from(_N, "Sample", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSamplesOutput = schema.new({
    id = id.from(_N, "ListSamplesOutput"),
    type = "structure",
    members = {
        samples = schema.new({
            id = id.from(_N, "ListSamplesOutput", "samples"),
            type = "list",
            name = "samples",
            target_id = prelude.Document.id,
            list_member = M.Sample,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSamplesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSuitesInput = schema.new({
    id = id.from(_N, "ListSuitesInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListSuitesInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSuitesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListSuitesOutput = schema.new({
    id = id.from(_N, "ListSuitesOutput"),
    type = "structure",
    members = {
        suites = schema.new({
            id = id.from(_N, "ListSuitesOutput", "suites"),
            type = "list",
            name = "suites",
            target_id = prelude.Document.id,
            list_member = M.Suite,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListSuitesOutput", "nextToken"),
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
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
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

M.ListTestGridProjectsInput = schema.new({
    id = id.from(_N, "ListTestGridProjectsInput"),
    type = "structure",
    members = {
        maxResult = schema.new({
            id = id.from(_N, "ListTestGridProjectsInput", "maxResult"),
            type = "integer",
            name = "maxResult",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTestGridProjectsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTestGridProjectsOutput = schema.new({
    id = id.from(_N, "ListTestGridProjectsOutput"),
    type = "structure",
    members = {
        testGridProjects = schema.new({
            id = id.from(_N, "ListTestGridProjectsOutput", "testGridProjects"),
            type = "list",
            name = "testGridProjects",
            target_id = prelude.Document.id,
            list_member = M.TestGridProject,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTestGridProjectsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTestGridSessionActionsInput = schema.new({
    id = id.from(_N, "ListTestGridSessionActionsInput"),
    type = "structure",
    members = {
        sessionArn = schema.new({
            id = id.from(_N, "ListTestGridSessionActionsInput", "sessionArn"),
            type = "string",
            name = "sessionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResult = schema.new({
            id = id.from(_N, "ListTestGridSessionActionsInput", "maxResult"),
            type = "integer",
            name = "maxResult",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTestGridSessionActionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TestGridSessionAction = schema.new({
    id = id.from(_N, "TestGridSessionAction"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "TestGridSessionAction", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
        }),
        started = schema.new({
            id = id.from(_N, "TestGridSessionAction", "started"),
            type = "timestamp",
            name = "started",
            target_id = prelude.Timestamp.id,
        }),
        duration = schema.new({
            id = id.from(_N, "TestGridSessionAction", "duration"),
            type = "long",
            name = "duration",
            target_id = prelude.Long.id,
        }),
        statusCode = schema.new({
            id = id.from(_N, "TestGridSessionAction", "statusCode"),
            type = "string",
            name = "statusCode",
            target_id = prelude.String.id,
        }),
        requestMethod = schema.new({
            id = id.from(_N, "TestGridSessionAction", "requestMethod"),
            type = "string",
            name = "requestMethod",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTestGridSessionActionsOutput = schema.new({
    id = id.from(_N, "ListTestGridSessionActionsOutput"),
    type = "structure",
    members = {
        actions = schema.new({
            id = id.from(_N, "ListTestGridSessionActionsOutput", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.TestGridSessionAction,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTestGridSessionActionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTestGridSessionArtifactsInput = schema.new({
    id = id.from(_N, "ListTestGridSessionArtifactsInput"),
    type = "structure",
    members = {
        sessionArn = schema.new({
            id = id.from(_N, "ListTestGridSessionArtifactsInput", "sessionArn"),
            type = "string",
            name = "sessionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "ListTestGridSessionArtifactsInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        maxResult = schema.new({
            id = id.from(_N, "ListTestGridSessionArtifactsInput", "maxResult"),
            type = "integer",
            name = "maxResult",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTestGridSessionArtifactsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TestGridSessionArtifact = schema.new({
    id = id.from(_N, "TestGridSessionArtifact"),
    type = "structure",
    members = {
        filename = schema.new({
            id = id.from(_N, "TestGridSessionArtifact", "filename"),
            type = "string",
            name = "filename",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "TestGridSessionArtifact", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        url = schema.new({
            id = id.from(_N, "TestGridSessionArtifact", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTestGridSessionArtifactsOutput = schema.new({
    id = id.from(_N, "ListTestGridSessionArtifactsOutput"),
    type = "structure",
    members = {
        artifacts = schema.new({
            id = id.from(_N, "ListTestGridSessionArtifactsOutput", "artifacts"),
            type = "list",
            name = "artifacts",
            target_id = prelude.Document.id,
            list_member = M.TestGridSessionArtifact,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTestGridSessionArtifactsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTestGridSessionsInput = schema.new({
    id = id.from(_N, "ListTestGridSessionsInput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "ListTestGridSessionsInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ListTestGridSessionsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        creationTimeAfter = schema.new({
            id = id.from(_N, "ListTestGridSessionsInput", "creationTimeAfter"),
            type = "timestamp",
            name = "creationTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
        creationTimeBefore = schema.new({
            id = id.from(_N, "ListTestGridSessionsInput", "creationTimeBefore"),
            type = "timestamp",
            name = "creationTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        endTimeAfter = schema.new({
            id = id.from(_N, "ListTestGridSessionsInput", "endTimeAfter"),
            type = "timestamp",
            name = "endTimeAfter",
            target_id = prelude.Timestamp.id,
        }),
        endTimeBefore = schema.new({
            id = id.from(_N, "ListTestGridSessionsInput", "endTimeBefore"),
            type = "timestamp",
            name = "endTimeBefore",
            target_id = prelude.Timestamp.id,
        }),
        maxResult = schema.new({
            id = id.from(_N, "ListTestGridSessionsInput", "maxResult"),
            type = "integer",
            name = "maxResult",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTestGridSessionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTestGridSessionsOutput = schema.new({
    id = id.from(_N, "ListTestGridSessionsOutput"),
    type = "structure",
    members = {
        testGridSessions = schema.new({
            id = id.from(_N, "ListTestGridSessionsOutput", "testGridSessions"),
            type = "list",
            name = "testGridSessions",
            target_id = prelude.Document.id,
            list_member = M.TestGridSession,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTestGridSessionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTestsInput = schema.new({
    id = id.from(_N, "ListTestsInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListTestsInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTestsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTestsOutput = schema.new({
    id = id.from(_N, "ListTestsOutput"),
    type = "structure",
    members = {
        tests = schema.new({
            id = id.from(_N, "ListTestsOutput", "tests"),
            type = "list",
            name = "tests",
            target_id = prelude.Document.id,
            list_member = M.Test,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTestsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUniqueProblemsInput = schema.new({
    id = id.from(_N, "ListUniqueProblemsInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListUniqueProblemsInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListUniqueProblemsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ProblemDetail = schema.new({
    id = id.from(_N, "ProblemDetail"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ProblemDetail", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ProblemDetail", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.Problem = schema.new({
    id = id.from(_N, "Problem"),
    type = "structure",
    members = {
        run = schema.new({
            id = id.from(_N, "Problem", "run"),
            type = "structure",
            name = "run",
            target_id = id.from(_N, "ProblemDetail"),
            target = M.ProblemDetail,
        }),
        job = schema.new({
            id = id.from(_N, "Problem", "job"),
            type = "structure",
            name = "job",
            target_id = id.from(_N, "ProblemDetail"),
            target = M.ProblemDetail,
        }),
        suite = schema.new({
            id = id.from(_N, "Problem", "suite"),
            type = "structure",
            name = "suite",
            target_id = id.from(_N, "ProblemDetail"),
            target = M.ProblemDetail,
        }),
        test = schema.new({
            id = id.from(_N, "Problem", "test"),
            type = "structure",
            name = "test",
            target_id = id.from(_N, "ProblemDetail"),
            target = M.ProblemDetail,
        }),
        device = schema.new({
            id = id.from(_N, "Problem", "device"),
            type = "structure",
            name = "device",
            target_id = id.from(_N, "Device"),
            target = M.Device,
        }),
        result = schema.new({
            id = id.from(_N, "Problem", "result"),
            type = "string",
            name = "result",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "Problem", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UniqueProblem = schema.new({
    id = id.from(_N, "UniqueProblem"),
    type = "structure",
    members = {
        message = schema.new({
            id = id.from(_N, "UniqueProblem", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        problems = schema.new({
            id = id.from(_N, "UniqueProblem", "problems"),
            type = "list",
            name = "problems",
            target_id = prelude.Document.id,
            list_member = M.Problem,
        }),
    },
})

M.ListUniqueProblemsOutput = schema.new({
    id = id.from(_N, "ListUniqueProblemsOutput"),
    type = "structure",
    members = {
        uniqueProblems = schema.new({
            id = id.from(_N, "ListUniqueProblemsOutput", "uniqueProblems"),
            type = "map",
            name = "uniqueProblems",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListUniqueProblemsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUploadsInput = schema.new({
    id = id.from(_N, "ListUploadsInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "ListUploadsInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "ListUploadsInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListUploadsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListUploadsOutput = schema.new({
    id = id.from(_N, "ListUploadsOutput"),
    type = "structure",
    members = {
        uploads = schema.new({
            id = id.from(_N, "ListUploadsOutput", "uploads"),
            type = "list",
            name = "uploads",
            target_id = prelude.Document.id,
            list_member = M.Upload,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListUploadsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVPCEConfigurationsInput = schema.new({
    id = id.from(_N, "ListVPCEConfigurationsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListVPCEConfigurationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListVPCEConfigurationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListVPCEConfigurationsOutput = schema.new({
    id = id.from(_N, "ListVPCEConfigurationsOutput"),
    type = "structure",
    members = {
        vpceConfigurations = schema.new({
            id = id.from(_N, "ListVPCEConfigurationsOutput", "vpceConfigurations"),
            type = "list",
            name = "vpceConfigurations",
            target_id = prelude.Document.id,
            list_member = M.VPCEConfiguration,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListVPCEConfigurationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PurchaseOfferingInput = schema.new({
    id = id.from(_N, "PurchaseOfferingInput"),
    type = "structure",
    members = {
        offeringId = schema.new({
            id = id.from(_N, "PurchaseOfferingInput", "offeringId"),
            type = "string",
            name = "offeringId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        quantity = schema.new({
            id = id.from(_N, "PurchaseOfferingInput", "quantity"),
            type = "integer",
            name = "quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        offeringPromotionId = schema.new({
            id = id.from(_N, "PurchaseOfferingInput", "offeringPromotionId"),
            type = "string",
            name = "offeringPromotionId",
            target_id = prelude.String.id,
        }),
    },
})

M.PurchaseOfferingOutput = schema.new({
    id = id.from(_N, "PurchaseOfferingOutput"),
    type = "structure",
    members = {
        offeringTransaction = schema.new({
            id = id.from(_N, "PurchaseOfferingOutput", "offeringTransaction"),
            type = "structure",
            name = "offeringTransaction",
            target_id = id.from(_N, "OfferingTransaction"),
            target = M.OfferingTransaction,
        }),
    },
})

M.RenewOfferingInput = schema.new({
    id = id.from(_N, "RenewOfferingInput"),
    type = "structure",
    members = {
        offeringId = schema.new({
            id = id.from(_N, "RenewOfferingInput", "offeringId"),
            type = "string",
            name = "offeringId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        quantity = schema.new({
            id = id.from(_N, "RenewOfferingInput", "quantity"),
            type = "integer",
            name = "quantity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RenewOfferingOutput = schema.new({
    id = id.from(_N, "RenewOfferingOutput"),
    type = "structure",
    members = {
        offeringTransaction = schema.new({
            id = id.from(_N, "RenewOfferingOutput", "offeringTransaction"),
            type = "structure",
            name = "offeringTransaction",
            target_id = id.from(_N, "OfferingTransaction"),
            target = M.OfferingTransaction,
        }),
    },
})

M.IdempotencyException = schema.new({
    id = id.from(_N, "IdempotencyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "IdempotencyException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeviceSelectionConfiguration = schema.new({
    id = id.from(_N, "DeviceSelectionConfiguration"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "DeviceSelectionConfiguration", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.DeviceFilter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxDevices = schema.new({
            id = id.from(_N, "DeviceSelectionConfiguration", "maxDevices"),
            type = "integer",
            name = "maxDevices",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExecutionConfiguration = schema.new({
    id = id.from(_N, "ExecutionConfiguration"),
    type = "structure",
    members = {
        jobTimeoutMinutes = schema.new({
            id = id.from(_N, "ExecutionConfiguration", "jobTimeoutMinutes"),
            type = "integer",
            name = "jobTimeoutMinutes",
            target_id = prelude.Integer.id,
        }),
        accountsCleanup = schema.new({
            id = id.from(_N, "ExecutionConfiguration", "accountsCleanup"),
            type = "boolean",
            name = "accountsCleanup",
            target_id = prelude.Boolean.id,
        }),
        appPackagesCleanup = schema.new({
            id = id.from(_N, "ExecutionConfiguration", "appPackagesCleanup"),
            type = "boolean",
            name = "appPackagesCleanup",
            target_id = prelude.Boolean.id,
        }),
        videoCapture = schema.new({
            id = id.from(_N, "ExecutionConfiguration", "videoCapture"),
            type = "boolean",
            name = "videoCapture",
            target_id = prelude.Boolean.id,
        }),
        skipAppResign = schema.new({
            id = id.from(_N, "ExecutionConfiguration", "skipAppResign"),
            type = "boolean",
            name = "skipAppResign",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ScheduleRunInput = schema.new({
    id = id.from(_N, "ScheduleRunInput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "ScheduleRunInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        appArn = schema.new({
            id = id.from(_N, "ScheduleRunInput", "appArn"),
            type = "string",
            name = "appArn",
            target_id = prelude.String.id,
        }),
        devicePoolArn = schema.new({
            id = id.from(_N, "ScheduleRunInput", "devicePoolArn"),
            type = "string",
            name = "devicePoolArn",
            target_id = prelude.String.id,
        }),
        deviceSelectionConfiguration = schema.new({
            id = id.from(_N, "ScheduleRunInput", "deviceSelectionConfiguration"),
            type = "structure",
            name = "deviceSelectionConfiguration",
            target_id = id.from(_N, "DeviceSelectionConfiguration"),
            target = M.DeviceSelectionConfiguration,
        }),
        name = schema.new({
            id = id.from(_N, "ScheduleRunInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        test = schema.new({
            id = id.from(_N, "ScheduleRunInput", "test"),
            type = "structure",
            name = "test",
            target_id = id.from(_N, "ScheduleRunTest"),
            target = M.ScheduleRunTest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configuration = schema.new({
            id = id.from(_N, "ScheduleRunInput", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "ScheduleRunConfiguration"),
            target = M.ScheduleRunConfiguration,
        }),
        executionConfiguration = schema.new({
            id = id.from(_N, "ScheduleRunInput", "executionConfiguration"),
            type = "structure",
            name = "executionConfiguration",
            target_id = id.from(_N, "ExecutionConfiguration"),
            target = M.ExecutionConfiguration,
        }),
    },
})

M.ScheduleRunOutput = schema.new({
    id = id.from(_N, "ScheduleRunOutput"),
    type = "structure",
    members = {
        run = schema.new({
            id = id.from(_N, "ScheduleRunOutput", "run"),
            type = "structure",
            name = "run",
            target_id = id.from(_N, "Run"),
            target = M.Run,
        }),
    },
})

M.StopJobInput = schema.new({
    id = id.from(_N, "StopJobInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "StopJobInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopJobOutput = schema.new({
    id = id.from(_N, "StopJobOutput"),
    type = "structure",
    members = {
        job = schema.new({
            id = id.from(_N, "StopJobOutput", "job"),
            type = "structure",
            name = "job",
            target_id = id.from(_N, "Job"),
            target = M.Job,
        }),
    },
})

M.StopRemoteAccessSessionInput = schema.new({
    id = id.from(_N, "StopRemoteAccessSessionInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "StopRemoteAccessSessionInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopRemoteAccessSessionOutput = schema.new({
    id = id.from(_N, "StopRemoteAccessSessionOutput"),
    type = "structure",
    members = {
        remoteAccessSession = schema.new({
            id = id.from(_N, "StopRemoteAccessSessionOutput", "remoteAccessSession"),
            type = "structure",
            name = "remoteAccessSession",
            target_id = id.from(_N, "RemoteAccessSession"),
            target = M.RemoteAccessSession,
        }),
    },
})

M.StopRunInput = schema.new({
    id = id.from(_N, "StopRunInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "StopRunInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopRunOutput = schema.new({
    id = id.from(_N, "StopRunOutput"),
    type = "structure",
    members = {
        run = schema.new({
            id = id.from(_N, "StopRunOutput", "run"),
            type = "structure",
            name = "run",
            target_id = id.from(_N, "Run"),
            target = M.Run,
        }),
    },
})

M.TagPolicyException = schema.new({
    id = id.from(_N, "TagPolicyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TagPolicyException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        resourceName = schema.new({
            id = id.from(_N, "TagPolicyException", "resourceName"),
            type = "string",
            name = "resourceName",
            target_id = prelude.String.id,
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
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateDeviceInstanceInput = schema.new({
    id = id.from(_N, "UpdateDeviceInstanceInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateDeviceInstanceInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        profileArn = schema.new({
            id = id.from(_N, "UpdateDeviceInstanceInput", "profileArn"),
            type = "string",
            name = "profileArn",
            target_id = prelude.String.id,
        }),
        labels = schema.new({
            id = id.from(_N, "UpdateDeviceInstanceInput", "labels"),
            type = "list",
            name = "labels",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateDeviceInstanceOutput = schema.new({
    id = id.from(_N, "UpdateDeviceInstanceOutput"),
    type = "structure",
    members = {
        deviceInstance = schema.new({
            id = id.from(_N, "UpdateDeviceInstanceOutput", "deviceInstance"),
            type = "structure",
            name = "deviceInstance",
            target_id = id.from(_N, "DeviceInstance"),
            target = M.DeviceInstance,
        }),
    },
})

M.UpdateDevicePoolInput = schema.new({
    id = id.from(_N, "UpdateDevicePoolInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateDevicePoolInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateDevicePoolInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateDevicePoolInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        rules = schema.new({
            id = id.from(_N, "UpdateDevicePoolInput", "rules"),
            type = "list",
            name = "rules",
            target_id = prelude.Document.id,
            list_member = M.Rule,
        }),
        maxDevices = schema.new({
            id = id.from(_N, "UpdateDevicePoolInput", "maxDevices"),
            type = "integer",
            name = "maxDevices",
            target_id = prelude.Integer.id,
        }),
        clearMaxDevices = schema.new({
            id = id.from(_N, "UpdateDevicePoolInput", "clearMaxDevices"),
            type = "boolean",
            name = "clearMaxDevices",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateDevicePoolOutput = schema.new({
    id = id.from(_N, "UpdateDevicePoolOutput"),
    type = "structure",
    members = {
        devicePool = schema.new({
            id = id.from(_N, "UpdateDevicePoolOutput", "devicePool"),
            type = "structure",
            name = "devicePool",
            target_id = id.from(_N, "DevicePool"),
            target = M.DevicePool,
        }),
    },
})

M.UpdateInstanceProfileInput = schema.new({
    id = id.from(_N, "UpdateInstanceProfileInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateInstanceProfileInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateInstanceProfileInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateInstanceProfileInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        packageCleanup = schema.new({
            id = id.from(_N, "UpdateInstanceProfileInput", "packageCleanup"),
            type = "boolean",
            name = "packageCleanup",
            target_id = prelude.Boolean.id,
        }),
        excludeAppPackagesFromCleanup = schema.new({
            id = id.from(_N, "UpdateInstanceProfileInput", "excludeAppPackagesFromCleanup"),
            type = "list",
            name = "excludeAppPackagesFromCleanup",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        rebootAfterUse = schema.new({
            id = id.from(_N, "UpdateInstanceProfileInput", "rebootAfterUse"),
            type = "boolean",
            name = "rebootAfterUse",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateInstanceProfileOutput = schema.new({
    id = id.from(_N, "UpdateInstanceProfileOutput"),
    type = "structure",
    members = {
        instanceProfile = schema.new({
            id = id.from(_N, "UpdateInstanceProfileOutput", "instanceProfile"),
            type = "structure",
            name = "instanceProfile",
            target_id = id.from(_N, "InstanceProfile"),
            target = M.InstanceProfile,
        }),
    },
})

M.UpdateNetworkProfileInput = schema.new({
    id = id.from(_N, "UpdateNetworkProfileInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateNetworkProfileInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateNetworkProfileInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateNetworkProfileInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "UpdateNetworkProfileInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        uplinkBandwidthBits = schema.new({
            id = id.from(_N, "UpdateNetworkProfileInput", "uplinkBandwidthBits"),
            type = "long",
            name = "uplinkBandwidthBits",
            target_id = prelude.Long.id,
        }),
        downlinkBandwidthBits = schema.new({
            id = id.from(_N, "UpdateNetworkProfileInput", "downlinkBandwidthBits"),
            type = "long",
            name = "downlinkBandwidthBits",
            target_id = prelude.Long.id,
        }),
        uplinkDelayMs = schema.new({
            id = id.from(_N, "UpdateNetworkProfileInput", "uplinkDelayMs"),
            type = "long",
            name = "uplinkDelayMs",
            target_id = prelude.Long.id,
        }),
        downlinkDelayMs = schema.new({
            id = id.from(_N, "UpdateNetworkProfileInput", "downlinkDelayMs"),
            type = "long",
            name = "downlinkDelayMs",
            target_id = prelude.Long.id,
        }),
        uplinkJitterMs = schema.new({
            id = id.from(_N, "UpdateNetworkProfileInput", "uplinkJitterMs"),
            type = "long",
            name = "uplinkJitterMs",
            target_id = prelude.Long.id,
        }),
        downlinkJitterMs = schema.new({
            id = id.from(_N, "UpdateNetworkProfileInput", "downlinkJitterMs"),
            type = "long",
            name = "downlinkJitterMs",
            target_id = prelude.Long.id,
        }),
        uplinkLossPercent = schema.new({
            id = id.from(_N, "UpdateNetworkProfileInput", "uplinkLossPercent"),
            type = "integer",
            name = "uplinkLossPercent",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        downlinkLossPercent = schema.new({
            id = id.from(_N, "UpdateNetworkProfileInput", "downlinkLossPercent"),
            type = "integer",
            name = "downlinkLossPercent",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.UpdateNetworkProfileOutput = schema.new({
    id = id.from(_N, "UpdateNetworkProfileOutput"),
    type = "structure",
    members = {
        networkProfile = schema.new({
            id = id.from(_N, "UpdateNetworkProfileOutput", "networkProfile"),
            type = "structure",
            name = "networkProfile",
            target_id = id.from(_N, "NetworkProfile"),
            target = M.NetworkProfile,
        }),
    },
})

M.UpdateProjectInput = schema.new({
    id = id.from(_N, "UpdateProjectInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateProjectInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateProjectInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        defaultJobTimeoutMinutes = schema.new({
            id = id.from(_N, "UpdateProjectInput", "defaultJobTimeoutMinutes"),
            type = "integer",
            name = "defaultJobTimeoutMinutes",
            target_id = prelude.Integer.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "UpdateProjectInput", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "UpdateProjectInput", "environmentVariables"),
            type = "list",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            list_member = M.EnvironmentVariable,
        }),
        executionRoleArn = schema.new({
            id = id.from(_N, "UpdateProjectInput", "executionRoleArn"),
            type = "string",
            name = "executionRoleArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateProjectOutput = schema.new({
    id = id.from(_N, "UpdateProjectOutput"),
    type = "structure",
    members = {
        project = schema.new({
            id = id.from(_N, "UpdateProjectOutput", "project"),
            type = "structure",
            name = "project",
            target_id = id.from(_N, "Project"),
            target = M.Project,
        }),
    },
})

M.UpdateTestGridProjectInput = schema.new({
    id = id.from(_N, "UpdateTestGridProjectInput"),
    type = "structure",
    members = {
        projectArn = schema.new({
            id = id.from(_N, "UpdateTestGridProjectInput", "projectArn"),
            type = "string",
            name = "projectArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateTestGridProjectInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateTestGridProjectInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "UpdateTestGridProjectInput", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "TestGridVpcConfig"),
            target = M.TestGridVpcConfig,
        }),
    },
})

M.UpdateTestGridProjectOutput = schema.new({
    id = id.from(_N, "UpdateTestGridProjectOutput"),
    type = "structure",
    members = {
        testGridProject = schema.new({
            id = id.from(_N, "UpdateTestGridProjectOutput", "testGridProject"),
            type = "structure",
            name = "testGridProject",
            target_id = id.from(_N, "TestGridProject"),
            target = M.TestGridProject,
        }),
    },
})

M.UpdateUploadInput = schema.new({
    id = id.from(_N, "UpdateUploadInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateUploadInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateUploadInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        contentType = schema.new({
            id = id.from(_N, "UpdateUploadInput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
        }),
        editContent = schema.new({
            id = id.from(_N, "UpdateUploadInput", "editContent"),
            type = "boolean",
            name = "editContent",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateUploadOutput = schema.new({
    id = id.from(_N, "UpdateUploadOutput"),
    type = "structure",
    members = {
        upload = schema.new({
            id = id.from(_N, "UpdateUploadOutput", "upload"),
            type = "structure",
            name = "upload",
            target_id = id.from(_N, "Upload"),
            target = M.Upload,
        }),
    },
})

M.UpdateVPCEConfigurationInput = schema.new({
    id = id.from(_N, "UpdateVPCEConfigurationInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UpdateVPCEConfigurationInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpceConfigurationName = schema.new({
            id = id.from(_N, "UpdateVPCEConfigurationInput", "vpceConfigurationName"),
            type = "string",
            name = "vpceConfigurationName",
            target_id = prelude.String.id,
        }),
        vpceServiceName = schema.new({
            id = id.from(_N, "UpdateVPCEConfigurationInput", "vpceServiceName"),
            type = "string",
            name = "vpceServiceName",
            target_id = prelude.String.id,
        }),
        serviceDnsName = schema.new({
            id = id.from(_N, "UpdateVPCEConfigurationInput", "serviceDnsName"),
            type = "string",
            name = "serviceDnsName",
            target_id = prelude.String.id,
        }),
        vpceConfigurationDescription = schema.new({
            id = id.from(_N, "UpdateVPCEConfigurationInput", "vpceConfigurationDescription"),
            type = "string",
            name = "vpceConfigurationDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateVPCEConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateVPCEConfigurationOutput"),
    type = "structure",
    members = {
        vpceConfiguration = schema.new({
            id = id.from(_N, "UpdateVPCEConfigurationOutput", "vpceConfiguration"),
            type = "structure",
            name = "vpceConfiguration",
            target_id = id.from(_N, "VPCEConfiguration"),
            target = M.VPCEConfiguration,
        }),
    },
})

return M
