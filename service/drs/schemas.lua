local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.drs"

local M = {}

M.TagsMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.StagingSourceServersList = schema.new({ type = "list", list_member = M.StagingSourceServer })

M.LaunchActions = schema.new({ type = "list", list_member = M.LaunchAction })

M.Accounts = schema.new({ type = "list", list_member = M.Account })

M.LaunchActionParameters = schema.new({ type = "map", map_key = prelude.String, map_value = M.LaunchActionParameter })

M.TagKeys = schema.new({ type = "list", list_member = prelude.String })

M.JobsList = schema.new({ type = "list", list_member = M.Job })

M.JobLogs = schema.new({ type = "list", list_member = M.JobLog })

M.LaunchConfigurationTemplateIDs = schema.new({ type = "list", list_member = prelude.String })

M.LaunchConfigurationTemplates = schema.new({ type = "list", list_member = M.LaunchConfigurationTemplate })

M.DescribeRecoveryInstancesItems = schema.new({ type = "list", list_member = M.RecoveryInstance })

M.StartFailbackRequestRecoveryInstanceIDs = schema.new({ type = "list", list_member = prelude.String })

M.RecoveryInstancesForTerminationRequest = schema.new({ type = "list", list_member = prelude.String })

M.ReplicationConfigurationTemplateIDs = schema.new({ type = "list", list_member = prelude.String })

M.ReplicationConfigurationTemplates = schema.new({ type = "list", list_member = M.ReplicationConfigurationTemplate })

M.ReplicationServersSecurityGroupsIDs = schema.new({ type = "list", list_member = prelude.String })

M.PITPolicy = schema.new({ type = "list", list_member = M.PITPolicyRule })

M.SourceNetworksList = schema.new({ type = "list", list_member = M.SourceNetwork })

M.StartSourceNetworkRecoveryRequestNetworkEntries = schema.new({ type = "list", list_member = M.StartSourceNetworkRecoveryRequestNetworkEntry })

M.SourceServersList = schema.new({ type = "list", list_member = M.SourceServer })

M.RecoverySnapshotsList = schema.new({ type = "list", list_member = M.RecoverySnapshot })

M.ReplicationConfigurationReplicatedDisks = schema.new({ type = "list", list_member = M.ReplicationConfigurationReplicatedDisk })

M.StartRecoveryRequestSourceServers = schema.new({ type = "list", list_member = M.StartRecoveryRequestSourceServer })

M.LaunchActionIds = schema.new({ type = "list", list_member = prelude.String })

M.DescribeJobsRequestFiltersJobIDs = schema.new({ type = "list", list_member = prelude.String })

M.RecoveryInstanceIDs = schema.new({ type = "list", list_member = prelude.String })

M.SourceServerIDs = schema.new({ type = "list", list_member = prelude.String })

M.ParticipatingServers = schema.new({ type = "list", list_member = M.ParticipatingServer })

M.ParticipatingResources = schema.new({ type = "list", list_member = M.ParticipatingResource })

M.DescribeSourceNetworksRequestFiltersIDs = schema.new({ type = "list", list_member = prelude.String })

M.DescribeSourceServersRequestFiltersIDs = schema.new({ type = "list", list_member = prelude.String })

M.AccountIDs = schema.new({ type = "list", list_member = prelude.String })

M.DataReplicationInfoReplicatedDisks = schema.new({ type = "list", list_member = M.DataReplicationInfoReplicatedDisk })

M.NetworkInterfaces = schema.new({ type = "list", list_member = M.NetworkInterface })

M.Disks = schema.new({ type = "list", list_member = M.Disk })

M.Cpus = schema.new({ type = "list", list_member = M.CPU })

M.EbsSnapshotsList = schema.new({ type = "list", list_member = prelude.String })

M.DataReplicationInitiationSteps = schema.new({ type = "list", list_member = M.DataReplicationInitiationStep })

M.RecoveryInstanceDataReplicationInfoReplicatedDisks = schema.new({ type = "list", list_member = M.RecoveryInstanceDataReplicationInfoReplicatedDisk })

M.RecoveryInstanceDisks = schema.new({ type = "list", list_member = M.RecoveryInstanceDisk })

M.IPsList = schema.new({ type = "list", list_member = prelude.String })

M.VolumeToConversionMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ConversionMap })

M.VolumeToSizeMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Long })

M.VolumeToProductCodes = schema.new({ type = "map", map_key = prelude.String, map_value = M.ProductCodes })

M.RecoveryInstanceDataReplicationInitiationSteps = schema.new({ type = "list", list_member = M.RecoveryInstanceDataReplicationInitiationStep })

M.LaunchActionRuns = schema.new({ type = "list", list_member = M.LaunchActionRun })

M.ConversionMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ProductCodes = schema.new({ type = "list", list_member = M.ProductCode })

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

M.Account = schema.new({
    id = id.from(_N, "Account"),
    type = "structure",
    members = {
        accountID = schema.new({
            id = id.from(_N, "Account", "accountID"),
            type = "string",
            name = "accountID",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateSourceNetworkStackInput = schema.new({
    id = id.from(_N, "AssociateSourceNetworkStackRequest"),
    type = "structure",
    members = {
        sourceNetworkID = schema.new({
            id = id.from(_N, "AssociateSourceNetworkStackInput", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cfnStackName = schema.new({
            id = id.from(_N, "AssociateSourceNetworkStackInput", "cfnStackName"),
            type = "string",
            name = "cfnStackName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ParticipatingResourceID = schema.new({
    id = id.from(_N, "ParticipatingResourceID"),
    type = "union",
    members = {
        sourceNetworkID = schema.new({
            id = id.from(_N, "ParticipatingResourceID", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
        }),
    },
})

M.ParticipatingResource = schema.new({
    id = id.from(_N, "ParticipatingResource"),
    type = "structure",
    members = {
        participatingResourceID = schema.new({
            id = id.from(_N, "ParticipatingResource", "participatingResourceID"),
            type = "union",
            name = "participatingResourceID",
            target_id = id.from(_N, "ParticipatingResourceID"),
            target = M.ParticipatingResourceID,
        }),
        launchStatus = schema.new({
            id = id.from(_N, "ParticipatingResource", "launchStatus"),
            type = "string",
            name = "launchStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchActionParameter = schema.new({
    id = id.from(_N, "LaunchActionParameter"),
    type = "structure",
    members = {
        value = schema.new({
            id = id.from(_N, "LaunchActionParameter", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "LaunchActionParameter", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchAction = schema.new({
    id = id.from(_N, "LaunchAction"),
    type = "structure",
    members = {
        actionId = schema.new({
            id = id.from(_N, "LaunchAction", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
        }),
        actionCode = schema.new({
            id = id.from(_N, "LaunchAction", "actionCode"),
            type = "string",
            name = "actionCode",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "LaunchAction", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "LaunchAction", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        active = schema.new({
            id = id.from(_N, "LaunchAction", "active"),
            type = "boolean",
            name = "active",
            target_id = prelude.Boolean.id,
        }),
        order = schema.new({
            id = id.from(_N, "LaunchAction", "order"),
            type = "integer",
            name = "order",
            target_id = prelude.Integer.id,
        }),
        actionVersion = schema.new({
            id = id.from(_N, "LaunchAction", "actionVersion"),
            type = "string",
            name = "actionVersion",
            target_id = prelude.String.id,
        }),
        optional = schema.new({
            id = id.from(_N, "LaunchAction", "optional"),
            type = "boolean",
            name = "optional",
            target_id = prelude.Boolean.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "LaunchAction", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.LaunchActionParameter,
        }),
        description = schema.new({
            id = id.from(_N, "LaunchAction", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "LaunchAction", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchActionRun = schema.new({
    id = id.from(_N, "LaunchActionRun"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "LaunchActionRun", "action"),
            type = "structure",
            name = "action",
            target_id = id.from(_N, "LaunchAction"),
            target = M.LaunchAction,
        }),
        runId = schema.new({
            id = id.from(_N, "LaunchActionRun", "runId"),
            type = "string",
            name = "runId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "LaunchActionRun", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "LaunchActionRun", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchActionsStatus = schema.new({
    id = id.from(_N, "LaunchActionsStatus"),
    type = "structure",
    members = {
        ssmAgentDiscoveryDatetime = schema.new({
            id = id.from(_N, "LaunchActionsStatus", "ssmAgentDiscoveryDatetime"),
            type = "string",
            name = "ssmAgentDiscoveryDatetime",
            target_id = prelude.String.id,
        }),
        runs = schema.new({
            id = id.from(_N, "LaunchActionsStatus", "runs"),
            type = "list",
            name = "runs",
            target_id = prelude.Document.id,
            list_member = M.LaunchActionRun,
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
        }),
        recoveryInstanceID = schema.new({
            id = id.from(_N, "ParticipatingServer", "recoveryInstanceID"),
            type = "string",
            name = "recoveryInstanceID",
            target_id = prelude.String.id,
        }),
        launchStatus = schema.new({
            id = id.from(_N, "ParticipatingServer", "launchStatus"),
            type = "string",
            name = "launchStatus",
            target_id = prelude.String.id,
        }),
        launchActionsStatus = schema.new({
            id = id.from(_N, "ParticipatingServer", "launchActionsStatus"),
            type = "structure",
            name = "launchActionsStatus",
            target_id = id.from(_N, "LaunchActionsStatus"),
            target = M.LaunchActionsStatus,
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
        participatingResources = schema.new({
            id = id.from(_N, "Job", "participatingResources"),
            type = "list",
            name = "participatingResources",
            target_id = prelude.Document.id,
            list_member = M.ParticipatingResource,
        }),
    },
})

M.AssociateSourceNetworkStackOutput = schema.new({
    id = id.from(_N, "AssociateSourceNetworkStackResponse"),
    type = "structure",
    members = {
        job = schema.new({
            id = id.from(_N, "AssociateSourceNetworkStackOutput", "job"),
            type = "structure",
            name = "job",
            target_id = id.from(_N, "Job"),
            target = M.Job,
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

M.ProductCode = schema.new({
    id = id.from(_N, "ProductCode"),
    type = "structure",
    members = {
        productCodeId = schema.new({
            id = id.from(_N, "ProductCode", "productCodeId"),
            type = "string",
            name = "productCodeId",
            target_id = prelude.String.id,
        }),
        productCodeMode = schema.new({
            id = id.from(_N, "ProductCode", "productCodeMode"),
            type = "string",
            name = "productCodeMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ConversionProperties = schema.new({
    id = id.from(_N, "ConversionProperties"),
    type = "structure",
    members = {
        volumeToConversionMap = schema.new({
            id = id.from(_N, "ConversionProperties", "volumeToConversionMap"),
            type = "map",
            name = "volumeToConversionMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String }),
        }),
        rootVolumeName = schema.new({
            id = id.from(_N, "ConversionProperties", "rootVolumeName"),
            type = "string",
            name = "rootVolumeName",
            target_id = prelude.String.id,
        }),
        forceUefi = schema.new({
            id = id.from(_N, "ConversionProperties", "forceUefi"),
            type = "boolean",
            name = "forceUefi",
            target_id = prelude.Boolean.id,
        }),
        dataTimestamp = schema.new({
            id = id.from(_N, "ConversionProperties", "dataTimestamp"),
            type = "string",
            name = "dataTimestamp",
            target_id = prelude.String.id,
        }),
        volumeToVolumeSize = schema.new({
            id = id.from(_N, "ConversionProperties", "volumeToVolumeSize"),
            type = "map",
            name = "volumeToVolumeSize",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Long,
        }),
        volumeToProductCodes = schema.new({
            id = id.from(_N, "ConversionProperties", "volumeToProductCodes"),
            type = "map",
            name = "volumeToProductCodes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.ProductCode }),
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

M.CreateExtendedSourceServerInput = schema.new({
    id = id.from(_N, "CreateExtendedSourceServerRequest"),
    type = "structure",
    members = {
        sourceServerArn = schema.new({
            id = id.from(_N, "CreateExtendedSourceServerInput", "sourceServerArn"),
            type = "string",
            name = "sourceServerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateExtendedSourceServerInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
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
        volumeStatus = schema.new({
            id = id.from(_N, "DataReplicationInfoReplicatedDisk", "volumeStatus"),
            type = "string",
            name = "volumeStatus",
            target_id = prelude.String.id,
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
        stagingAvailabilityZone = schema.new({
            id = id.from(_N, "DataReplicationInfo", "stagingAvailabilityZone"),
            type = "string",
            name = "stagingAvailabilityZone",
            target_id = prelude.String.id,
        }),
        stagingOutpostArn = schema.new({
            id = id.from(_N, "DataReplicationInfo", "stagingOutpostArn"),
            type = "string",
            name = "stagingOutpostArn",
            target_id = prelude.String.id,
        }),
    },
})

M.LifeCycleLastLaunchInitiated = schema.new({
    id = id.from(_N, "LifeCycleLastLaunchInitiated"),
    type = "structure",
    members = {
        apiCallDateTime = schema.new({
            id = id.from(_N, "LifeCycleLastLaunchInitiated", "apiCallDateTime"),
            type = "string",
            name = "apiCallDateTime",
            target_id = prelude.String.id,
        }),
        jobID = schema.new({
            id = id.from(_N, "LifeCycleLastLaunchInitiated", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "LifeCycleLastLaunchInitiated", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.LifeCycleLastLaunch = schema.new({
    id = id.from(_N, "LifeCycleLastLaunch"),
    type = "structure",
    members = {
        initiated = schema.new({
            id = id.from(_N, "LifeCycleLastLaunch", "initiated"),
            type = "structure",
            name = "initiated",
            target_id = id.from(_N, "LifeCycleLastLaunchInitiated"),
            target = M.LifeCycleLastLaunchInitiated,
        }),
        status = schema.new({
            id = id.from(_N, "LifeCycleLastLaunch", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
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
        lastLaunch = schema.new({
            id = id.from(_N, "LifeCycle", "lastLaunch"),
            type = "structure",
            name = "lastLaunch",
            target_id = id.from(_N, "LifeCycleLastLaunch"),
            target = M.LifeCycleLastLaunch,
        }),
    },
})

M.SourceCloudProperties = schema.new({
    id = id.from(_N, "SourceCloudProperties"),
    type = "structure",
    members = {
        originAccountID = schema.new({
            id = id.from(_N, "SourceCloudProperties", "originAccountID"),
            type = "string",
            name = "originAccountID",
            target_id = prelude.String.id,
        }),
        originRegion = schema.new({
            id = id.from(_N, "SourceCloudProperties", "originRegion"),
            type = "string",
            name = "originRegion",
            target_id = prelude.String.id,
        }),
        originAvailabilityZone = schema.new({
            id = id.from(_N, "SourceCloudProperties", "originAvailabilityZone"),
            type = "string",
            name = "originAvailabilityZone",
            target_id = prelude.String.id,
        }),
        sourceOutpostArn = schema.new({
            id = id.from(_N, "SourceCloudProperties", "sourceOutpostArn"),
            type = "string",
            name = "sourceOutpostArn",
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
        supportsNitroInstances = schema.new({
            id = id.from(_N, "SourceProperties", "supportsNitroInstances"),
            type = "boolean",
            name = "supportsNitroInstances",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.StagingArea = schema.new({
    id = id.from(_N, "StagingArea"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "StagingArea", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        stagingAccountID = schema.new({
            id = id.from(_N, "StagingArea", "stagingAccountID"),
            type = "string",
            name = "stagingAccountID",
            target_id = prelude.String.id,
        }),
        stagingSourceServerArn = schema.new({
            id = id.from(_N, "StagingArea", "stagingSourceServerArn"),
            type = "string",
            name = "stagingSourceServerArn",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "StagingArea", "errorMessage"),
            type = "string",
            name = "errorMessage",
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
        tags = schema.new({
            id = id.from(_N, "SourceServer", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        recoveryInstanceId = schema.new({
            id = id.from(_N, "SourceServer", "recoveryInstanceId"),
            type = "string",
            name = "recoveryInstanceId",
            target_id = prelude.String.id,
        }),
        lastLaunchResult = schema.new({
            id = id.from(_N, "SourceServer", "lastLaunchResult"),
            type = "string",
            name = "lastLaunchResult",
            target_id = prelude.String.id,
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
        stagingArea = schema.new({
            id = id.from(_N, "SourceServer", "stagingArea"),
            type = "structure",
            name = "stagingArea",
            target_id = id.from(_N, "StagingArea"),
            target = M.StagingArea,
        }),
        sourceCloudProperties = schema.new({
            id = id.from(_N, "SourceServer", "sourceCloudProperties"),
            type = "structure",
            name = "sourceCloudProperties",
            target_id = id.from(_N, "SourceCloudProperties"),
            target = M.SourceCloudProperties,
        }),
        replicationDirection = schema.new({
            id = id.from(_N, "SourceServer", "replicationDirection"),
            type = "string",
            name = "replicationDirection",
            target_id = prelude.String.id,
        }),
        reversedDirectionSourceServerArn = schema.new({
            id = id.from(_N, "SourceServer", "reversedDirectionSourceServerArn"),
            type = "string",
            name = "reversedDirectionSourceServerArn",
            target_id = prelude.String.id,
        }),
        sourceNetworkID = schema.new({
            id = id.from(_N, "SourceServer", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
        }),
        agentVersion = schema.new({
            id = id.from(_N, "SourceServer", "agentVersion"),
            type = "string",
            name = "agentVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateExtendedSourceServerOutput = schema.new({
    id = id.from(_N, "CreateExtendedSourceServerResponse"),
    type = "structure",
    members = {
        sourceServer = schema.new({
            id = id.from(_N, "CreateExtendedSourceServerOutput", "sourceServer"),
            type = "structure",
            name = "sourceServer",
            target_id = id.from(_N, "SourceServer"),
            target = M.SourceServer,
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

M.CreateLaunchConfigurationTemplateInput = schema.new({
    id = id.from(_N, "CreateLaunchConfigurationTemplateRequest"),
    type = "structure",
    members = {
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
        exportBucketArn = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "exportBucketArn"),
            type = "string",
            name = "exportBucketArn",
            target_id = prelude.String.id,
        }),
        postLaunchEnabled = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "postLaunchEnabled"),
            type = "boolean",
            name = "postLaunchEnabled",
            target_id = prelude.Boolean.id,
        }),
        launchIntoSourceInstance = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateInput", "launchIntoSourceInstance"),
            type = "boolean",
            name = "launchIntoSourceInstance",
            target_id = prelude.Boolean.id,
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
        }),
        arn = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "arn"),
            type = "string",
            name = "arn",
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
        exportBucketArn = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "exportBucketArn"),
            type = "string",
            name = "exportBucketArn",
            target_id = prelude.String.id,
        }),
        postLaunchEnabled = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "postLaunchEnabled"),
            type = "boolean",
            name = "postLaunchEnabled",
            target_id = prelude.Boolean.id,
        }),
        launchIntoSourceInstance = schema.new({
            id = id.from(_N, "LaunchConfigurationTemplate", "launchIntoSourceInstance"),
            type = "boolean",
            name = "launchIntoSourceInstance",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CreateLaunchConfigurationTemplateOutput = schema.new({
    id = id.from(_N, "CreateLaunchConfigurationTemplateResponse"),
    type = "structure",
    members = {
        launchConfigurationTemplate = schema.new({
            id = id.from(_N, "CreateLaunchConfigurationTemplateOutput", "launchConfigurationTemplate"),
            type = "structure",
            name = "launchConfigurationTemplate",
            target_id = id.from(_N, "LaunchConfigurationTemplate"),
            target = M.LaunchConfigurationTemplate,
        }),
    },
})

M.PITPolicyRule = schema.new({
    id = id.from(_N, "PITPolicyRule"),
    type = "structure",
    members = {
        ruleID = schema.new({
            id = id.from(_N, "PITPolicyRule", "ruleID"),
            type = "long",
            name = "ruleID",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        units = schema.new({
            id = id.from(_N, "PITPolicyRule", "units"),
            type = "string",
            name = "units",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        interval = schema.new({
            id = id.from(_N, "PITPolicyRule", "interval"),
            type = "integer",
            name = "interval",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        retentionDuration = schema.new({
            id = id.from(_N, "PITPolicyRule", "retentionDuration"),
            type = "integer",
            name = "retentionDuration",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        enabled = schema.new({
            id = id.from(_N, "PITPolicyRule", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
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
        }),
        useDedicatedReplicationServer = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "useDedicatedReplicationServer"),
            type = "boolean",
            name = "useDedicatedReplicationServer",
            target_id = prelude.Boolean.id,
        }),
        defaultLargeStagingDiskType = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "defaultLargeStagingDiskType"),
            type = "string",
            name = "defaultLargeStagingDiskType",
            target_id = prelude.String.id,
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
        }),
        createPublicIP = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "createPublicIP"),
            type = "boolean",
            name = "createPublicIP",
            target_id = prelude.Boolean.id,
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
        pitPolicy = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "pitPolicy"),
            type = "list",
            name = "pitPolicy",
            target_id = prelude.Document.id,
            list_member = M.PITPolicyRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        autoReplicateNewDisks = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "autoReplicateNewDisks"),
            type = "boolean",
            name = "autoReplicateNewDisks",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateInput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
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
        tags = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        pitPolicy = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "pitPolicy"),
            type = "list",
            name = "pitPolicy",
            target_id = prelude.Document.id,
            list_member = M.PITPolicyRule,
        }),
        autoReplicateNewDisks = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "autoReplicateNewDisks"),
            type = "boolean",
            name = "autoReplicateNewDisks",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "CreateReplicationConfigurationTemplateOutput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSourceNetworkInput = schema.new({
    id = id.from(_N, "CreateSourceNetworkRequest"),
    type = "structure",
    members = {
        vpcID = schema.new({
            id = id.from(_N, "CreateSourceNetworkInput", "vpcID"),
            type = "string",
            name = "vpcID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        originAccountID = schema.new({
            id = id.from(_N, "CreateSourceNetworkInput", "originAccountID"),
            type = "string",
            name = "originAccountID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        originRegion = schema.new({
            id = id.from(_N, "CreateSourceNetworkInput", "originRegion"),
            type = "string",
            name = "originRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateSourceNetworkInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateSourceNetworkOutput = schema.new({
    id = id.from(_N, "CreateSourceNetworkResponse"),
    type = "structure",
    members = {
        sourceNetworkID = schema.new({
            id = id.from(_N, "CreateSourceNetworkOutput", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
        }),
    },
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
    },
})

M.DeleteJobOutput = schema.new({
    id = id.from(_N, "DeleteJobResponse"),
    type = "structure",
})

M.DeleteLaunchActionInput = schema.new({
    id = id.from(_N, "DeleteLaunchActionRequest"),
    type = "structure",
    members = {
        resourceId = schema.new({
            id = id.from(_N, "DeleteLaunchActionInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionId = schema.new({
            id = id.from(_N, "DeleteLaunchActionInput", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLaunchActionOutput = schema.new({
    id = id.from(_N, "DeleteLaunchActionResponse"),
    type = "structure",
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

M.DeleteRecoveryInstanceInput = schema.new({
    id = id.from(_N, "DeleteRecoveryInstanceRequest"),
    type = "structure",
    members = {
        recoveryInstanceID = schema.new({
            id = id.from(_N, "DeleteRecoveryInstanceInput", "recoveryInstanceID"),
            type = "string",
            name = "recoveryInstanceID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRecoveryInstanceOutput = prelude.Unit

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

M.DeleteSourceNetworkInput = schema.new({
    id = id.from(_N, "DeleteSourceNetworkRequest"),
    type = "structure",
    members = {
        sourceNetworkID = schema.new({
            id = id.from(_N, "DeleteSourceNetworkInput", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSourceNetworkOutput = schema.new({
    id = id.from(_N, "DeleteSourceNetworkResponse"),
    type = "structure",
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
    },
})

M.DeleteSourceServerOutput = schema.new({
    id = id.from(_N, "DeleteSourceServerResponse"),
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
    },
})

M.SourceNetworkData = schema.new({
    id = id.from(_N, "SourceNetworkData"),
    type = "structure",
    members = {
        sourceNetworkID = schema.new({
            id = id.from(_N, "SourceNetworkData", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
        }),
        sourceVpc = schema.new({
            id = id.from(_N, "SourceNetworkData", "sourceVpc"),
            type = "string",
            name = "sourceVpc",
            target_id = prelude.String.id,
        }),
        targetVpc = schema.new({
            id = id.from(_N, "SourceNetworkData", "targetVpc"),
            type = "string",
            name = "targetVpc",
            target_id = prelude.String.id,
        }),
        stackName = schema.new({
            id = id.from(_N, "SourceNetworkData", "stackName"),
            type = "string",
            name = "stackName",
            target_id = prelude.String.id,
        }),
    },
})

M.EventResourceData = schema.new({
    id = id.from(_N, "EventResourceData"),
    type = "union",
    members = {
        sourceNetworkData = schema.new({
            id = id.from(_N, "EventResourceData", "sourceNetworkData"),
            type = "structure",
            name = "sourceNetworkData",
            target_id = id.from(_N, "SourceNetworkData"),
            target = M.SourceNetworkData,
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
        conversionProperties = schema.new({
            id = id.from(_N, "JobLogEventData", "conversionProperties"),
            type = "structure",
            name = "conversionProperties",
            target_id = id.from(_N, "ConversionProperties"),
            target = M.ConversionProperties,
        }),
        eventResourceData = schema.new({
            id = id.from(_N, "JobLogEventData", "eventResourceData"),
            type = "union",
            name = "eventResourceData",
            target_id = id.from(_N, "EventResourceData"),
            target = M.EventResourceData,
        }),
        attemptCount = schema.new({
            id = id.from(_N, "JobLogEventData", "attemptCount"),
            type = "long",
            name = "attemptCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        maxAttemptsCount = schema.new({
            id = id.from(_N, "JobLogEventData", "maxAttemptsCount"),
            type = "long",
            name = "maxAttemptsCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
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

M.DescribeRecoveryInstancesRequestFilters = schema.new({
    id = id.from(_N, "DescribeRecoveryInstancesRequestFilters"),
    type = "structure",
    members = {
        recoveryInstanceIDs = schema.new({
            id = id.from(_N, "DescribeRecoveryInstancesRequestFilters", "recoveryInstanceIDs"),
            type = "list",
            name = "recoveryInstanceIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        sourceServerIDs = schema.new({
            id = id.from(_N, "DescribeRecoveryInstancesRequestFilters", "sourceServerIDs"),
            type = "list",
            name = "sourceServerIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeRecoveryInstancesInput = schema.new({
    id = id.from(_N, "DescribeRecoveryInstancesRequest"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "DescribeRecoveryInstancesInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "DescribeRecoveryInstancesRequestFilters"),
            target = M.DescribeRecoveryInstancesRequestFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeRecoveryInstancesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeRecoveryInstancesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RecoveryInstanceDataReplicationError = schema.new({
    id = id.from(_N, "RecoveryInstanceDataReplicationError"),
    type = "structure",
    members = {
        error = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationError", "error"),
            type = "string",
            name = "error",
            target_id = prelude.String.id,
        }),
        rawError = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationError", "rawError"),
            type = "string",
            name = "rawError",
            target_id = prelude.String.id,
        }),
    },
})

M.RecoveryInstanceDataReplicationInitiationStep = schema.new({
    id = id.from(_N, "RecoveryInstanceDataReplicationInitiationStep"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInitiationStep", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInitiationStep", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.RecoveryInstanceDataReplicationInitiation = schema.new({
    id = id.from(_N, "RecoveryInstanceDataReplicationInitiation"),
    type = "structure",
    members = {
        startDateTime = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInitiation", "startDateTime"),
            type = "string",
            name = "startDateTime",
            target_id = prelude.String.id,
        }),
        steps = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInitiation", "steps"),
            type = "list",
            name = "steps",
            target_id = prelude.Document.id,
            list_member = M.RecoveryInstanceDataReplicationInitiationStep,
        }),
    },
})

M.RecoveryInstanceDataReplicationInfoReplicatedDisk = schema.new({
    id = id.from(_N, "RecoveryInstanceDataReplicationInfoReplicatedDisk"),
    type = "structure",
    members = {
        deviceName = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfoReplicatedDisk", "deviceName"),
            type = "string",
            name = "deviceName",
            target_id = prelude.String.id,
        }),
        totalStorageBytes = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfoReplicatedDisk", "totalStorageBytes"),
            type = "long",
            name = "totalStorageBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        replicatedStorageBytes = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfoReplicatedDisk", "replicatedStorageBytes"),
            type = "long",
            name = "replicatedStorageBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        rescannedStorageBytes = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfoReplicatedDisk", "rescannedStorageBytes"),
            type = "long",
            name = "rescannedStorageBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        backloggedStorageBytes = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfoReplicatedDisk", "backloggedStorageBytes"),
            type = "long",
            name = "backloggedStorageBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RecoveryInstanceDataReplicationInfo = schema.new({
    id = id.from(_N, "RecoveryInstanceDataReplicationInfo"),
    type = "structure",
    members = {
        lagDuration = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfo", "lagDuration"),
            type = "string",
            name = "lagDuration",
            target_id = prelude.String.id,
        }),
        etaDateTime = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfo", "etaDateTime"),
            type = "string",
            name = "etaDateTime",
            target_id = prelude.String.id,
        }),
        replicatedDisks = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfo", "replicatedDisks"),
            type = "list",
            name = "replicatedDisks",
            target_id = prelude.Document.id,
            list_member = M.RecoveryInstanceDataReplicationInfoReplicatedDisk,
        }),
        dataReplicationState = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfo", "dataReplicationState"),
            type = "string",
            name = "dataReplicationState",
            target_id = prelude.String.id,
        }),
        dataReplicationInitiation = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfo", "dataReplicationInitiation"),
            type = "structure",
            name = "dataReplicationInitiation",
            target_id = id.from(_N, "RecoveryInstanceDataReplicationInitiation"),
            target = M.RecoveryInstanceDataReplicationInitiation,
        }),
        dataReplicationError = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfo", "dataReplicationError"),
            type = "structure",
            name = "dataReplicationError",
            target_id = id.from(_N, "RecoveryInstanceDataReplicationError"),
            target = M.RecoveryInstanceDataReplicationError,
        }),
        stagingAvailabilityZone = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfo", "stagingAvailabilityZone"),
            type = "string",
            name = "stagingAvailabilityZone",
            target_id = prelude.String.id,
        }),
        stagingOutpostArn = schema.new({
            id = id.from(_N, "RecoveryInstanceDataReplicationInfo", "stagingOutpostArn"),
            type = "string",
            name = "stagingOutpostArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RecoveryInstanceFailback = schema.new({
    id = id.from(_N, "RecoveryInstanceFailback"),
    type = "structure",
    members = {
        failbackClientID = schema.new({
            id = id.from(_N, "RecoveryInstanceFailback", "failbackClientID"),
            type = "string",
            name = "failbackClientID",
            target_id = prelude.String.id,
        }),
        failbackJobID = schema.new({
            id = id.from(_N, "RecoveryInstanceFailback", "failbackJobID"),
            type = "string",
            name = "failbackJobID",
            target_id = prelude.String.id,
        }),
        failbackInitiationTime = schema.new({
            id = id.from(_N, "RecoveryInstanceFailback", "failbackInitiationTime"),
            type = "string",
            name = "failbackInitiationTime",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "RecoveryInstanceFailback", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        agentLastSeenByServiceDateTime = schema.new({
            id = id.from(_N, "RecoveryInstanceFailback", "agentLastSeenByServiceDateTime"),
            type = "string",
            name = "agentLastSeenByServiceDateTime",
            target_id = prelude.String.id,
        }),
        failbackClientLastSeenByServiceDateTime = schema.new({
            id = id.from(_N, "RecoveryInstanceFailback", "failbackClientLastSeenByServiceDateTime"),
            type = "string",
            name = "failbackClientLastSeenByServiceDateTime",
            target_id = prelude.String.id,
        }),
        failbackToOriginalServer = schema.new({
            id = id.from(_N, "RecoveryInstanceFailback", "failbackToOriginalServer"),
            type = "boolean",
            name = "failbackToOriginalServer",
            target_id = prelude.Boolean.id,
        }),
        firstByteDateTime = schema.new({
            id = id.from(_N, "RecoveryInstanceFailback", "firstByteDateTime"),
            type = "string",
            name = "firstByteDateTime",
            target_id = prelude.String.id,
        }),
        elapsedReplicationDuration = schema.new({
            id = id.from(_N, "RecoveryInstanceFailback", "elapsedReplicationDuration"),
            type = "string",
            name = "elapsedReplicationDuration",
            target_id = prelude.String.id,
        }),
        failbackLaunchType = schema.new({
            id = id.from(_N, "RecoveryInstanceFailback", "failbackLaunchType"),
            type = "string",
            name = "failbackLaunchType",
            target_id = prelude.String.id,
        }),
    },
})

M.RecoveryInstanceDisk = schema.new({
    id = id.from(_N, "RecoveryInstanceDisk"),
    type = "structure",
    members = {
        internalDeviceName = schema.new({
            id = id.from(_N, "RecoveryInstanceDisk", "internalDeviceName"),
            type = "string",
            name = "internalDeviceName",
            target_id = prelude.String.id,
        }),
        bytes = schema.new({
            id = id.from(_N, "RecoveryInstanceDisk", "bytes"),
            type = "long",
            name = "bytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ebsVolumeID = schema.new({
            id = id.from(_N, "RecoveryInstanceDisk", "ebsVolumeID"),
            type = "string",
            name = "ebsVolumeID",
            target_id = prelude.String.id,
        }),
    },
})

M.RecoveryInstanceProperties = schema.new({
    id = id.from(_N, "RecoveryInstanceProperties"),
    type = "structure",
    members = {
        lastUpdatedDateTime = schema.new({
            id = id.from(_N, "RecoveryInstanceProperties", "lastUpdatedDateTime"),
            type = "string",
            name = "lastUpdatedDateTime",
            target_id = prelude.String.id,
        }),
        identificationHints = schema.new({
            id = id.from(_N, "RecoveryInstanceProperties", "identificationHints"),
            type = "structure",
            name = "identificationHints",
            target_id = id.from(_N, "IdentificationHints"),
            target = M.IdentificationHints,
        }),
        networkInterfaces = schema.new({
            id = id.from(_N, "RecoveryInstanceProperties", "networkInterfaces"),
            type = "list",
            name = "networkInterfaces",
            target_id = prelude.Document.id,
            list_member = M.NetworkInterface,
        }),
        disks = schema.new({
            id = id.from(_N, "RecoveryInstanceProperties", "disks"),
            type = "list",
            name = "disks",
            target_id = prelude.Document.id,
            list_member = M.RecoveryInstanceDisk,
        }),
        cpus = schema.new({
            id = id.from(_N, "RecoveryInstanceProperties", "cpus"),
            type = "list",
            name = "cpus",
            target_id = prelude.Document.id,
            list_member = M.CPU,
        }),
        ramBytes = schema.new({
            id = id.from(_N, "RecoveryInstanceProperties", "ramBytes"),
            type = "long",
            name = "ramBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        os = schema.new({
            id = id.from(_N, "RecoveryInstanceProperties", "os"),
            type = "structure",
            name = "os",
            target_id = id.from(_N, "OS"),
            target = M.OS,
        }),
    },
})

M.RecoveryInstance = schema.new({
    id = id.from(_N, "RecoveryInstance"),
    type = "structure",
    members = {
        ec2InstanceID = schema.new({
            id = id.from(_N, "RecoveryInstance", "ec2InstanceID"),
            type = "string",
            name = "ec2InstanceID",
            target_id = prelude.String.id,
        }),
        ec2InstanceState = schema.new({
            id = id.from(_N, "RecoveryInstance", "ec2InstanceState"),
            type = "string",
            name = "ec2InstanceState",
            target_id = prelude.String.id,
        }),
        jobID = schema.new({
            id = id.from(_N, "RecoveryInstance", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        recoveryInstanceID = schema.new({
            id = id.from(_N, "RecoveryInstance", "recoveryInstanceID"),
            type = "string",
            name = "recoveryInstanceID",
            target_id = prelude.String.id,
        }),
        sourceServerID = schema.new({
            id = id.from(_N, "RecoveryInstance", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "RecoveryInstance", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "RecoveryInstance", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        failback = schema.new({
            id = id.from(_N, "RecoveryInstance", "failback"),
            type = "structure",
            name = "failback",
            target_id = id.from(_N, "RecoveryInstanceFailback"),
            target = M.RecoveryInstanceFailback,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "RecoveryInstance", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "RecoveryInstanceDataReplicationInfo"),
            target = M.RecoveryInstanceDataReplicationInfo,
        }),
        recoveryInstanceProperties = schema.new({
            id = id.from(_N, "RecoveryInstance", "recoveryInstanceProperties"),
            type = "structure",
            name = "recoveryInstanceProperties",
            target_id = id.from(_N, "RecoveryInstanceProperties"),
            target = M.RecoveryInstanceProperties,
        }),
        pointInTimeSnapshotDateTime = schema.new({
            id = id.from(_N, "RecoveryInstance", "pointInTimeSnapshotDateTime"),
            type = "string",
            name = "pointInTimeSnapshotDateTime",
            target_id = prelude.String.id,
        }),
        isDrill = schema.new({
            id = id.from(_N, "RecoveryInstance", "isDrill"),
            type = "boolean",
            name = "isDrill",
            target_id = prelude.Boolean.id,
        }),
        originEnvironment = schema.new({
            id = id.from(_N, "RecoveryInstance", "originEnvironment"),
            type = "string",
            name = "originEnvironment",
            target_id = prelude.String.id,
        }),
        originAvailabilityZone = schema.new({
            id = id.from(_N, "RecoveryInstance", "originAvailabilityZone"),
            type = "string",
            name = "originAvailabilityZone",
            target_id = prelude.String.id,
        }),
        agentVersion = schema.new({
            id = id.from(_N, "RecoveryInstance", "agentVersion"),
            type = "string",
            name = "agentVersion",
            target_id = prelude.String.id,
        }),
        sourceOutpostArn = schema.new({
            id = id.from(_N, "RecoveryInstance", "sourceOutpostArn"),
            type = "string",
            name = "sourceOutpostArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRecoveryInstancesOutput = schema.new({
    id = id.from(_N, "DescribeRecoveryInstancesResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "DescribeRecoveryInstancesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        items = schema.new({
            id = id.from(_N, "DescribeRecoveryInstancesOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.RecoveryInstance,
        }),
    },
})

M.DescribeRecoverySnapshotsRequestFilters = schema.new({
    id = id.from(_N, "DescribeRecoverySnapshotsRequestFilters"),
    type = "structure",
    members = {
        fromDateTime = schema.new({
            id = id.from(_N, "DescribeRecoverySnapshotsRequestFilters", "fromDateTime"),
            type = "string",
            name = "fromDateTime",
            target_id = prelude.String.id,
        }),
        toDateTime = schema.new({
            id = id.from(_N, "DescribeRecoverySnapshotsRequestFilters", "toDateTime"),
            type = "string",
            name = "toDateTime",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeRecoverySnapshotsInput = schema.new({
    id = id.from(_N, "DescribeRecoverySnapshotsRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "DescribeRecoverySnapshotsInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "DescribeRecoverySnapshotsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "DescribeRecoverySnapshotsRequestFilters"),
            target = M.DescribeRecoverySnapshotsRequestFilters,
        }),
        order = schema.new({
            id = id.from(_N, "DescribeRecoverySnapshotsInput", "order"),
            type = "string",
            name = "order",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeRecoverySnapshotsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeRecoverySnapshotsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RecoverySnapshot = schema.new({
    id = id.from(_N, "RecoverySnapshot"),
    type = "structure",
    members = {
        snapshotID = schema.new({
            id = id.from(_N, "RecoverySnapshot", "snapshotID"),
            type = "string",
            name = "snapshotID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceServerID = schema.new({
            id = id.from(_N, "RecoverySnapshot", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        expectedTimestamp = schema.new({
            id = id.from(_N, "RecoverySnapshot", "expectedTimestamp"),
            type = "string",
            name = "expectedTimestamp",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timestamp = schema.new({
            id = id.from(_N, "RecoverySnapshot", "timestamp"),
            type = "string",
            name = "timestamp",
            target_id = prelude.String.id,
        }),
        ebsSnapshots = schema.new({
            id = id.from(_N, "RecoverySnapshot", "ebsSnapshots"),
            type = "list",
            name = "ebsSnapshots",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeRecoverySnapshotsOutput = schema.new({
    id = id.from(_N, "DescribeRecoverySnapshotsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "DescribeRecoverySnapshotsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.RecoverySnapshot,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeRecoverySnapshotsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
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
        tags = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        pitPolicy = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "pitPolicy"),
            type = "list",
            name = "pitPolicy",
            target_id = prelude.Document.id,
            list_member = M.PITPolicyRule,
        }),
        autoReplicateNewDisks = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "autoReplicateNewDisks"),
            type = "boolean",
            name = "autoReplicateNewDisks",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "ReplicationConfigurationTemplate", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
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

M.DescribeSourceNetworksRequestFilters = schema.new({
    id = id.from(_N, "DescribeSourceNetworksRequestFilters"),
    type = "structure",
    members = {
        sourceNetworkIDs = schema.new({
            id = id.from(_N, "DescribeSourceNetworksRequestFilters", "sourceNetworkIDs"),
            type = "list",
            name = "sourceNetworkIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        originAccountID = schema.new({
            id = id.from(_N, "DescribeSourceNetworksRequestFilters", "originAccountID"),
            type = "string",
            name = "originAccountID",
            target_id = prelude.String.id,
        }),
        originRegion = schema.new({
            id = id.from(_N, "DescribeSourceNetworksRequestFilters", "originRegion"),
            type = "string",
            name = "originRegion",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSourceNetworksInput = schema.new({
    id = id.from(_N, "DescribeSourceNetworksRequest"),
    type = "structure",
    members = {
        filters = schema.new({
            id = id.from(_N, "DescribeSourceNetworksInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "DescribeSourceNetworksRequestFilters"),
            target = M.DescribeSourceNetworksRequestFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "DescribeSourceNetworksInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeSourceNetworksInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RecoveryLifeCycle = schema.new({
    id = id.from(_N, "RecoveryLifeCycle"),
    type = "structure",
    members = {
        apiCallDateTime = schema.new({
            id = id.from(_N, "RecoveryLifeCycle", "apiCallDateTime"),
            type = "timestamp",
            name = "apiCallDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        jobID = schema.new({
            id = id.from(_N, "RecoveryLifeCycle", "jobID"),
            type = "string",
            name = "jobID",
            target_id = prelude.String.id,
        }),
        lastRecoveryResult = schema.new({
            id = id.from(_N, "RecoveryLifeCycle", "lastRecoveryResult"),
            type = "string",
            name = "lastRecoveryResult",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceNetwork = schema.new({
    id = id.from(_N, "SourceNetwork"),
    type = "structure",
    members = {
        sourceNetworkID = schema.new({
            id = id.from(_N, "SourceNetwork", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
        }),
        sourceVpcID = schema.new({
            id = id.from(_N, "SourceNetwork", "sourceVpcID"),
            type = "string",
            name = "sourceVpcID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "SourceNetwork", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "SourceNetwork", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        replicationStatus = schema.new({
            id = id.from(_N, "SourceNetwork", "replicationStatus"),
            type = "string",
            name = "replicationStatus",
            target_id = prelude.String.id,
        }),
        replicationStatusDetails = schema.new({
            id = id.from(_N, "SourceNetwork", "replicationStatusDetails"),
            type = "string",
            name = "replicationStatusDetails",
            target_id = prelude.String.id,
        }),
        cfnStackName = schema.new({
            id = id.from(_N, "SourceNetwork", "cfnStackName"),
            type = "string",
            name = "cfnStackName",
            target_id = prelude.String.id,
        }),
        sourceRegion = schema.new({
            id = id.from(_N, "SourceNetwork", "sourceRegion"),
            type = "string",
            name = "sourceRegion",
            target_id = prelude.String.id,
        }),
        sourceAccountID = schema.new({
            id = id.from(_N, "SourceNetwork", "sourceAccountID"),
            type = "string",
            name = "sourceAccountID",
            target_id = prelude.String.id,
        }),
        lastRecovery = schema.new({
            id = id.from(_N, "SourceNetwork", "lastRecovery"),
            type = "structure",
            name = "lastRecovery",
            target_id = id.from(_N, "RecoveryLifeCycle"),
            target = M.RecoveryLifeCycle,
        }),
        launchedVpcID = schema.new({
            id = id.from(_N, "SourceNetwork", "launchedVpcID"),
            type = "string",
            name = "launchedVpcID",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSourceNetworksOutput = schema.new({
    id = id.from(_N, "DescribeSourceNetworksResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "DescribeSourceNetworksOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.SourceNetwork,
        }),
        nextToken = schema.new({
            id = id.from(_N, "DescribeSourceNetworksOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
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
        hardwareId = schema.new({
            id = id.from(_N, "DescribeSourceServersRequestFilters", "hardwareId"),
            type = "string",
            name = "hardwareId",
            target_id = prelude.String.id,
        }),
        stagingAccountIDs = schema.new({
            id = id.from(_N, "DescribeSourceServersRequestFilters", "stagingAccountIDs"),
            type = "list",
            name = "stagingAccountIDs",
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

M.DisconnectRecoveryInstanceInput = schema.new({
    id = id.from(_N, "DisconnectRecoveryInstanceRequest"),
    type = "structure",
    members = {
        recoveryInstanceID = schema.new({
            id = id.from(_N, "DisconnectRecoveryInstanceInput", "recoveryInstanceID"),
            type = "string",
            name = "recoveryInstanceID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisconnectRecoveryInstanceOutput = prelude.Unit

M.DisconnectSourceServerInput = schema.new({
    id = id.from(_N, "DisconnectSourceServerRequest"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "DisconnectSourceServerInput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisconnectSourceServerOutput = schema.new({
    id = id.from(_N, "SourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        recoveryInstanceId = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "recoveryInstanceId"),
            type = "string",
            name = "recoveryInstanceId",
            target_id = prelude.String.id,
        }),
        lastLaunchResult = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "lastLaunchResult"),
            type = "string",
            name = "lastLaunchResult",
            target_id = prelude.String.id,
        }),
        dataReplicationInfo = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "dataReplicationInfo"),
            type = "structure",
            name = "dataReplicationInfo",
            target_id = id.from(_N, "DataReplicationInfo"),
            target = M.DataReplicationInfo,
        }),
        lifeCycle = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "lifeCycle"),
            type = "structure",
            name = "lifeCycle",
            target_id = id.from(_N, "LifeCycle"),
            target = M.LifeCycle,
        }),
        sourceProperties = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "sourceProperties"),
            type = "structure",
            name = "sourceProperties",
            target_id = id.from(_N, "SourceProperties"),
            target = M.SourceProperties,
        }),
        stagingArea = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "stagingArea"),
            type = "structure",
            name = "stagingArea",
            target_id = id.from(_N, "StagingArea"),
            target = M.StagingArea,
        }),
        sourceCloudProperties = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "sourceCloudProperties"),
            type = "structure",
            name = "sourceCloudProperties",
            target_id = id.from(_N, "SourceCloudProperties"),
            target = M.SourceCloudProperties,
        }),
        replicationDirection = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "replicationDirection"),
            type = "string",
            name = "replicationDirection",
            target_id = prelude.String.id,
        }),
        reversedDirectionSourceServerArn = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "reversedDirectionSourceServerArn"),
            type = "string",
            name = "reversedDirectionSourceServerArn",
            target_id = prelude.String.id,
        }),
        sourceNetworkID = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
        }),
        agentVersion = schema.new({
            id = id.from(_N, "DisconnectSourceServerOutput", "agentVersion"),
            type = "string",
            name = "agentVersion",
            target_id = prelude.String.id,
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
        exportBucketArn = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "exportBucketArn"),
            type = "string",
            name = "exportBucketArn",
            target_id = prelude.String.id,
        }),
        postLaunchEnabled = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "postLaunchEnabled"),
            type = "boolean",
            name = "postLaunchEnabled",
            target_id = prelude.Boolean.id,
        }),
        launchIntoSourceInstance = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateInput", "launchIntoSourceInstance"),
            type = "boolean",
            name = "launchIntoSourceInstance",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateLaunchConfigurationTemplateOutput = schema.new({
    id = id.from(_N, "UpdateLaunchConfigurationTemplateResponse"),
    type = "structure",
    members = {
        launchConfigurationTemplate = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationTemplateOutput", "launchConfigurationTemplate"),
            type = "structure",
            name = "launchConfigurationTemplate",
            target_id = id.from(_N, "LaunchConfigurationTemplate"),
            target = M.LaunchConfigurationTemplate,
        }),
    },
})

M.ListExtensibleSourceServersInput = schema.new({
    id = id.from(_N, "ListExtensibleSourceServersRequest"),
    type = "structure",
    members = {
        stagingAccountID = schema.new({
            id = id.from(_N, "ListExtensibleSourceServersInput", "stagingAccountID"),
            type = "string",
            name = "stagingAccountID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListExtensibleSourceServersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExtensibleSourceServersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StagingSourceServer = schema.new({
    id = id.from(_N, "StagingSourceServer"),
    type = "structure",
    members = {
        hostname = schema.new({
            id = id.from(_N, "StagingSourceServer", "hostname"),
            type = "string",
            name = "hostname",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "StagingSourceServer", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "StagingSourceServer", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListExtensibleSourceServersOutput = schema.new({
    id = id.from(_N, "ListExtensibleSourceServersResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListExtensibleSourceServersOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.StagingSourceServer,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListExtensibleSourceServersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.LaunchActionsRequestFilters = schema.new({
    id = id.from(_N, "LaunchActionsRequestFilters"),
    type = "structure",
    members = {
        actionIds = schema.new({
            id = id.from(_N, "LaunchActionsRequestFilters", "actionIds"),
            type = "list",
            name = "actionIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListLaunchActionsInput = schema.new({
    id = id.from(_N, "ListLaunchActionsRequest"),
    type = "structure",
    members = {
        resourceId = schema.new({
            id = id.from(_N, "ListLaunchActionsInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "ListLaunchActionsInput", "filters"),
            type = "structure",
            name = "filters",
            target_id = id.from(_N, "LaunchActionsRequestFilters"),
            target = M.LaunchActionsRequestFilters,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListLaunchActionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListLaunchActionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLaunchActionsOutput = schema.new({
    id = id.from(_N, "ListLaunchActionsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListLaunchActionsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.LaunchAction,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListLaunchActionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListStagingAccountsInput = schema.new({
    id = id.from(_N, "ListStagingAccountsRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListStagingAccountsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListStagingAccountsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListStagingAccountsOutput = schema.new({
    id = id.from(_N, "ListStagingAccountsResponse"),
    type = "structure",
    members = {
        accounts = schema.new({
            id = id.from(_N, "ListStagingAccountsOutput", "accounts"),
            type = "list",
            name = "accounts",
            target_id = prelude.Document.id,
            list_member = M.Account,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListStagingAccountsOutput", "nextToken"),
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

M.PutLaunchActionInput = schema.new({
    id = id.from(_N, "PutLaunchActionRequest"),
    type = "structure",
    members = {
        resourceId = schema.new({
            id = id.from(_N, "PutLaunchActionInput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionCode = schema.new({
            id = id.from(_N, "PutLaunchActionInput", "actionCode"),
            type = "string",
            name = "actionCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        order = schema.new({
            id = id.from(_N, "PutLaunchActionInput", "order"),
            type = "integer",
            name = "order",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionId = schema.new({
            id = id.from(_N, "PutLaunchActionInput", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        optional = schema.new({
            id = id.from(_N, "PutLaunchActionInput", "optional"),
            type = "boolean",
            name = "optional",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        active = schema.new({
            id = id.from(_N, "PutLaunchActionInput", "active"),
            type = "boolean",
            name = "active",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "PutLaunchActionInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actionVersion = schema.new({
            id = id.from(_N, "PutLaunchActionInput", "actionVersion"),
            type = "string",
            name = "actionVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        category = schema.new({
            id = id.from(_N, "PutLaunchActionInput", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parameters = schema.new({
            id = id.from(_N, "PutLaunchActionInput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.LaunchActionParameter,
        }),
        description = schema.new({
            id = id.from(_N, "PutLaunchActionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutLaunchActionOutput = schema.new({
    id = id.from(_N, "PutLaunchActionResponse"),
    type = "structure",
    members = {
        resourceId = schema.new({
            id = id.from(_N, "PutLaunchActionOutput", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
        }),
        actionId = schema.new({
            id = id.from(_N, "PutLaunchActionOutput", "actionId"),
            type = "string",
            name = "actionId",
            target_id = prelude.String.id,
        }),
        actionCode = schema.new({
            id = id.from(_N, "PutLaunchActionOutput", "actionCode"),
            type = "string",
            name = "actionCode",
            target_id = prelude.String.id,
        }),
        type = schema.new({
            id = id.from(_N, "PutLaunchActionOutput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "PutLaunchActionOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        active = schema.new({
            id = id.from(_N, "PutLaunchActionOutput", "active"),
            type = "boolean",
            name = "active",
            target_id = prelude.Boolean.id,
        }),
        order = schema.new({
            id = id.from(_N, "PutLaunchActionOutput", "order"),
            type = "integer",
            name = "order",
            target_id = prelude.Integer.id,
        }),
        actionVersion = schema.new({
            id = id.from(_N, "PutLaunchActionOutput", "actionVersion"),
            type = "string",
            name = "actionVersion",
            target_id = prelude.String.id,
        }),
        optional = schema.new({
            id = id.from(_N, "PutLaunchActionOutput", "optional"),
            type = "boolean",
            name = "optional",
            target_id = prelude.Boolean.id,
        }),
        parameters = schema.new({
            id = id.from(_N, "PutLaunchActionOutput", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.LaunchActionParameter,
        }),
        description = schema.new({
            id = id.from(_N, "PutLaunchActionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        category = schema.new({
            id = id.from(_N, "PutLaunchActionOutput", "category"),
            type = "string",
            name = "category",
            target_id = prelude.String.id,
        }),
    },
})

M.GetFailbackReplicationConfigurationInput = schema.new({
    id = id.from(_N, "GetFailbackReplicationConfigurationRequest"),
    type = "structure",
    members = {
        recoveryInstanceID = schema.new({
            id = id.from(_N, "GetFailbackReplicationConfigurationInput", "recoveryInstanceID"),
            type = "string",
            name = "recoveryInstanceID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetFailbackReplicationConfigurationOutput = schema.new({
    id = id.from(_N, "GetFailbackReplicationConfigurationResponse"),
    type = "structure",
    members = {
        recoveryInstanceID = schema.new({
            id = id.from(_N, "GetFailbackReplicationConfigurationOutput", "recoveryInstanceID"),
            type = "string",
            name = "recoveryInstanceID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetFailbackReplicationConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        bandwidthThrottling = schema.new({
            id = id.from(_N, "GetFailbackReplicationConfigurationOutput", "bandwidthThrottling"),
            type = "long",
            name = "bandwidthThrottling",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        usePrivateIP = schema.new({
            id = id.from(_N, "GetFailbackReplicationConfigurationOutput", "usePrivateIP"),
            type = "boolean",
            name = "usePrivateIP",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "GetFailbackReplicationConfigurationOutput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
        }),
    },
})

M.ReverseReplicationInput = schema.new({
    id = id.from(_N, "ReverseReplicationRequest"),
    type = "structure",
    members = {
        recoveryInstanceID = schema.new({
            id = id.from(_N, "ReverseReplicationInput", "recoveryInstanceID"),
            type = "string",
            name = "recoveryInstanceID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReverseReplicationOutput = schema.new({
    id = id.from(_N, "ReverseReplicationResponse"),
    type = "structure",
    members = {
        reversedDirectionSourceServerArn = schema.new({
            id = id.from(_N, "ReverseReplicationOutput", "reversedDirectionSourceServerArn"),
            type = "string",
            name = "reversedDirectionSourceServerArn",
            target_id = prelude.String.id,
        }),
    },
})

M.StartFailbackLaunchInput = schema.new({
    id = id.from(_N, "StartFailbackLaunchRequest"),
    type = "structure",
    members = {
        recoveryInstanceIDs = schema.new({
            id = id.from(_N, "StartFailbackLaunchInput", "recoveryInstanceIDs"),
            type = "list",
            name = "recoveryInstanceIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "StartFailbackLaunchInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartFailbackLaunchOutput = schema.new({
    id = id.from(_N, "StartFailbackLaunchResponse"),
    type = "structure",
    members = {
        job = schema.new({
            id = id.from(_N, "StartFailbackLaunchOutput", "job"),
            type = "structure",
            name = "job",
            target_id = id.from(_N, "Job"),
            target = M.Job,
        }),
    },
})

M.StopFailbackInput = schema.new({
    id = id.from(_N, "StopFailbackRequest"),
    type = "structure",
    members = {
        recoveryInstanceID = schema.new({
            id = id.from(_N, "StopFailbackInput", "recoveryInstanceID"),
            type = "string",
            name = "recoveryInstanceID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopFailbackOutput = prelude.Unit

M.TerminateRecoveryInstancesInput = schema.new({
    id = id.from(_N, "TerminateRecoveryInstancesRequest"),
    type = "structure",
    members = {
        recoveryInstanceIDs = schema.new({
            id = id.from(_N, "TerminateRecoveryInstancesInput", "recoveryInstanceIDs"),
            type = "list",
            name = "recoveryInstanceIDs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TerminateRecoveryInstancesOutput = schema.new({
    id = id.from(_N, "TerminateRecoveryInstancesResponse"),
    type = "structure",
    members = {
        job = schema.new({
            id = id.from(_N, "TerminateRecoveryInstancesOutput", "job"),
            type = "structure",
            name = "job",
            target_id = id.from(_N, "Job"),
            target = M.Job,
        }),
    },
})

M.UpdateFailbackReplicationConfigurationInput = schema.new({
    id = id.from(_N, "UpdateFailbackReplicationConfigurationRequest"),
    type = "structure",
    members = {
        recoveryInstanceID = schema.new({
            id = id.from(_N, "UpdateFailbackReplicationConfigurationInput", "recoveryInstanceID"),
            type = "string",
            name = "recoveryInstanceID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateFailbackReplicationConfigurationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        bandwidthThrottling = schema.new({
            id = id.from(_N, "UpdateFailbackReplicationConfigurationInput", "bandwidthThrottling"),
            type = "long",
            name = "bandwidthThrottling",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        usePrivateIP = schema.new({
            id = id.from(_N, "UpdateFailbackReplicationConfigurationInput", "usePrivateIP"),
            type = "boolean",
            name = "usePrivateIP",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "UpdateFailbackReplicationConfigurationInput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFailbackReplicationConfigurationOutput = prelude.Unit

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
        pitPolicy = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "pitPolicy"),
            type = "list",
            name = "pitPolicy",
            target_id = prelude.Document.id,
            list_member = M.PITPolicyRule,
        }),
        autoReplicateNewDisks = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "autoReplicateNewDisks"),
            type = "boolean",
            name = "autoReplicateNewDisks",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateInput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
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
        tags = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        pitPolicy = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "pitPolicy"),
            type = "list",
            name = "pitPolicy",
            target_id = prelude.Document.id,
            list_member = M.PITPolicyRule,
        }),
        autoReplicateNewDisks = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "autoReplicateNewDisks"),
            type = "boolean",
            name = "autoReplicateNewDisks",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationTemplateOutput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportSourceNetworkCfnTemplateInput = schema.new({
    id = id.from(_N, "ExportSourceNetworkCfnTemplateRequest"),
    type = "structure",
    members = {
        sourceNetworkID = schema.new({
            id = id.from(_N, "ExportSourceNetworkCfnTemplateInput", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExportSourceNetworkCfnTemplateOutput = schema.new({
    id = id.from(_N, "ExportSourceNetworkCfnTemplateResponse"),
    type = "structure",
    members = {
        s3DestinationUrl = schema.new({
            id = id.from(_N, "ExportSourceNetworkCfnTemplateOutput", "s3DestinationUrl"),
            type = "string",
            name = "s3DestinationUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSourceNetworkRecoveryRequestNetworkEntry = schema.new({
    id = id.from(_N, "StartSourceNetworkRecoveryRequestNetworkEntry"),
    type = "structure",
    members = {
        sourceNetworkID = schema.new({
            id = id.from(_N, "StartSourceNetworkRecoveryRequestNetworkEntry", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cfnStackName = schema.new({
            id = id.from(_N, "StartSourceNetworkRecoveryRequestNetworkEntry", "cfnStackName"),
            type = "string",
            name = "cfnStackName",
            target_id = prelude.String.id,
        }),
    },
})

M.StartSourceNetworkRecoveryInput = schema.new({
    id = id.from(_N, "StartSourceNetworkRecoveryRequest"),
    type = "structure",
    members = {
        sourceNetworks = schema.new({
            id = id.from(_N, "StartSourceNetworkRecoveryInput", "sourceNetworks"),
            type = "list",
            name = "sourceNetworks",
            target_id = prelude.Document.id,
            list_member = M.StartSourceNetworkRecoveryRequestNetworkEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        deployAsNew = schema.new({
            id = id.from(_N, "StartSourceNetworkRecoveryInput", "deployAsNew"),
            type = "boolean",
            name = "deployAsNew",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "StartSourceNetworkRecoveryInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartSourceNetworkRecoveryOutput = schema.new({
    id = id.from(_N, "StartSourceNetworkRecoveryResponse"),
    type = "structure",
    members = {
        job = schema.new({
            id = id.from(_N, "StartSourceNetworkRecoveryOutput", "job"),
            type = "structure",
            name = "job",
            target_id = id.from(_N, "Job"),
            target = M.Job,
        }),
    },
})

M.StartSourceNetworkReplicationInput = schema.new({
    id = id.from(_N, "StartSourceNetworkReplicationRequest"),
    type = "structure",
    members = {
        sourceNetworkID = schema.new({
            id = id.from(_N, "StartSourceNetworkReplicationInput", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartSourceNetworkReplicationOutput = schema.new({
    id = id.from(_N, "StartSourceNetworkReplicationResponse"),
    type = "structure",
    members = {
        sourceNetwork = schema.new({
            id = id.from(_N, "StartSourceNetworkReplicationOutput", "sourceNetwork"),
            type = "structure",
            name = "sourceNetwork",
            target_id = id.from(_N, "SourceNetwork"),
            target = M.SourceNetwork,
        }),
    },
})

M.StopSourceNetworkReplicationInput = schema.new({
    id = id.from(_N, "StopSourceNetworkReplicationRequest"),
    type = "structure",
    members = {
        sourceNetworkID = schema.new({
            id = id.from(_N, "StopSourceNetworkReplicationInput", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopSourceNetworkReplicationOutput = schema.new({
    id = id.from(_N, "StopSourceNetworkReplicationResponse"),
    type = "structure",
    members = {
        sourceNetwork = schema.new({
            id = id.from(_N, "StopSourceNetworkReplicationOutput", "sourceNetwork"),
            type = "structure",
            name = "sourceNetwork",
            target_id = id.from(_N, "SourceNetwork"),
            target = M.SourceNetwork,
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
    },
})

M.LaunchIntoInstanceProperties = schema.new({
    id = id.from(_N, "LaunchIntoInstanceProperties"),
    type = "structure",
    members = {
        launchIntoEC2InstanceID = schema.new({
            id = id.from(_N, "LaunchIntoInstanceProperties", "launchIntoEC2InstanceID"),
            type = "string",
            name = "launchIntoEC2InstanceID",
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
        postLaunchEnabled = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "postLaunchEnabled"),
            type = "boolean",
            name = "postLaunchEnabled",
            target_id = prelude.Boolean.id,
        }),
        launchIntoInstanceProperties = schema.new({
            id = id.from(_N, "GetLaunchConfigurationOutput", "launchIntoInstanceProperties"),
            type = "structure",
            name = "launchIntoInstanceProperties",
            target_id = id.from(_N, "LaunchIntoInstanceProperties"),
            target = M.LaunchIntoInstanceProperties,
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
        optimizedStagingDiskType = schema.new({
            id = id.from(_N, "ReplicationConfigurationReplicatedDisk", "optimizedStagingDiskType"),
            type = "string",
            name = "optimizedStagingDiskType",
            target_id = prelude.String.id,
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
        pitPolicy = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "pitPolicy"),
            type = "list",
            name = "pitPolicy",
            target_id = prelude.Document.id,
            list_member = M.PITPolicyRule,
        }),
        autoReplicateNewDisks = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "autoReplicateNewDisks"),
            type = "boolean",
            name = "autoReplicateNewDisks",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "GetReplicationConfigurationOutput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
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
        tags = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        recoveryInstanceId = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "recoveryInstanceId"),
            type = "string",
            name = "recoveryInstanceId",
            target_id = prelude.String.id,
        }),
        lastLaunchResult = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "lastLaunchResult"),
            type = "string",
            name = "lastLaunchResult",
            target_id = prelude.String.id,
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
        stagingArea = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "stagingArea"),
            type = "structure",
            name = "stagingArea",
            target_id = id.from(_N, "StagingArea"),
            target = M.StagingArea,
        }),
        sourceCloudProperties = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "sourceCloudProperties"),
            type = "structure",
            name = "sourceCloudProperties",
            target_id = id.from(_N, "SourceCloudProperties"),
            target = M.SourceCloudProperties,
        }),
        replicationDirection = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "replicationDirection"),
            type = "string",
            name = "replicationDirection",
            target_id = prelude.String.id,
        }),
        reversedDirectionSourceServerArn = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "reversedDirectionSourceServerArn"),
            type = "string",
            name = "reversedDirectionSourceServerArn",
            target_id = prelude.String.id,
        }),
        sourceNetworkID = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "sourceNetworkID"),
            type = "string",
            name = "sourceNetworkID",
            target_id = prelude.String.id,
        }),
        agentVersion = schema.new({
            id = id.from(_N, "RetryDataReplicationOutput", "agentVersion"),
            type = "string",
            name = "agentVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.StartRecoveryRequestSourceServer = schema.new({
    id = id.from(_N, "StartRecoveryRequestSourceServer"),
    type = "structure",
    members = {
        sourceServerID = schema.new({
            id = id.from(_N, "StartRecoveryRequestSourceServer", "sourceServerID"),
            type = "string",
            name = "sourceServerID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recoverySnapshotID = schema.new({
            id = id.from(_N, "StartRecoveryRequestSourceServer", "recoverySnapshotID"),
            type = "string",
            name = "recoverySnapshotID",
            target_id = prelude.String.id,
        }),
    },
})

M.StartRecoveryInput = schema.new({
    id = id.from(_N, "StartRecoveryRequest"),
    type = "structure",
    members = {
        sourceServers = schema.new({
            id = id.from(_N, "StartRecoveryInput", "sourceServers"),
            type = "list",
            name = "sourceServers",
            target_id = prelude.Document.id,
            list_member = M.StartRecoveryRequestSourceServer,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        isDrill = schema.new({
            id = id.from(_N, "StartRecoveryInput", "isDrill"),
            type = "boolean",
            name = "isDrill",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "StartRecoveryInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.StartRecoveryOutput = schema.new({
    id = id.from(_N, "StartRecoveryResponse"),
    type = "structure",
    members = {
        job = schema.new({
            id = id.from(_N, "StartRecoveryOutput", "job"),
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
    },
})

M.StartReplicationOutput = schema.new({
    id = id.from(_N, "StartReplicationResponse"),
    type = "structure",
    members = {
        sourceServer = schema.new({
            id = id.from(_N, "StartReplicationOutput", "sourceServer"),
            type = "structure",
            name = "sourceServer",
            target_id = id.from(_N, "SourceServer"),
            target = M.SourceServer,
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
    },
})

M.StopReplicationOutput = schema.new({
    id = id.from(_N, "StopReplicationResponse"),
    type = "structure",
    members = {
        sourceServer = schema.new({
            id = id.from(_N, "StopReplicationOutput", "sourceServer"),
            type = "structure",
            name = "sourceServer",
            target_id = id.from(_N, "SourceServer"),
            target = M.SourceServer,
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
        postLaunchEnabled = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "postLaunchEnabled"),
            type = "boolean",
            name = "postLaunchEnabled",
            target_id = prelude.Boolean.id,
        }),
        launchIntoInstanceProperties = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationInput", "launchIntoInstanceProperties"),
            type = "structure",
            name = "launchIntoInstanceProperties",
            target_id = id.from(_N, "LaunchIntoInstanceProperties"),
            target = M.LaunchIntoInstanceProperties,
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
        postLaunchEnabled = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "postLaunchEnabled"),
            type = "boolean",
            name = "postLaunchEnabled",
            target_id = prelude.Boolean.id,
        }),
        launchIntoInstanceProperties = schema.new({
            id = id.from(_N, "UpdateLaunchConfigurationOutput", "launchIntoInstanceProperties"),
            type = "structure",
            name = "launchIntoInstanceProperties",
            target_id = id.from(_N, "LaunchIntoInstanceProperties"),
            target = M.LaunchIntoInstanceProperties,
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
        pitPolicy = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "pitPolicy"),
            type = "list",
            name = "pitPolicy",
            target_id = prelude.Document.id,
            list_member = M.PITPolicyRule,
        }),
        autoReplicateNewDisks = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "autoReplicateNewDisks"),
            type = "boolean",
            name = "autoReplicateNewDisks",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationInput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
            target_id = prelude.String.id,
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
        pitPolicy = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "pitPolicy"),
            type = "list",
            name = "pitPolicy",
            target_id = prelude.Document.id,
            list_member = M.PITPolicyRule,
        }),
        autoReplicateNewDisks = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "autoReplicateNewDisks"),
            type = "boolean",
            name = "autoReplicateNewDisks",
            target_id = prelude.Boolean.id,
        }),
        internetProtocol = schema.new({
            id = id.from(_N, "UpdateReplicationConfigurationOutput", "internetProtocol"),
            type = "string",
            name = "internetProtocol",
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

M.TagResourceOutput = prelude.Unit

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

M.UntagResourceOutput = prelude.Unit

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
