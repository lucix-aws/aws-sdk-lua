local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.finspace"

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

M.AutoScalingConfiguration = schema.new({
    id = id.from(_N, "AutoScalingConfiguration"),
    type = "structure",
    members = {
        minNodeCount = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "minNodeCount"),
            type = "integer",
            name = "minNodeCount",
            target_id = prelude.Integer.id,
        }),
        maxNodeCount = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "maxNodeCount"),
            type = "integer",
            name = "maxNodeCount",
            target_id = prelude.Integer.id,
        }),
        autoScalingMetric = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "autoScalingMetric"),
            type = "string",
            name = "autoScalingMetric",
            target_id = prelude.String.id,
        }),
        metricTarget = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "metricTarget"),
            type = "double",
            name = "metricTarget",
            target_id = prelude.Double.id,
        }),
        scaleInCooldownSeconds = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "scaleInCooldownSeconds"),
            type = "double",
            name = "scaleInCooldownSeconds",
            target_id = prelude.Double.id,
        }),
        scaleOutCooldownSeconds = schema.new({
            id = id.from(_N, "AutoScalingConfiguration", "scaleOutCooldownSeconds"),
            type = "double",
            name = "scaleOutCooldownSeconds",
            target_id = prelude.Double.id,
        }),
    },
})

M.FederationParameters = schema.new({
    id = id.from(_N, "FederationParameters"),
    type = "structure",
    members = {
        samlMetadataDocument = schema.new({
            id = id.from(_N, "FederationParameters", "samlMetadataDocument"),
            type = "string",
            name = "samlMetadataDocument",
            target_id = prelude.String.id,
        }),
        samlMetadataURL = schema.new({
            id = id.from(_N, "FederationParameters", "samlMetadataURL"),
            type = "string",
            name = "samlMetadataURL",
            target_id = prelude.String.id,
        }),
        applicationCallBackURL = schema.new({
            id = id.from(_N, "FederationParameters", "applicationCallBackURL"),
            type = "string",
            name = "applicationCallBackURL",
            target_id = prelude.String.id,
        }),
        federationURN = schema.new({
            id = id.from(_N, "FederationParameters", "federationURN"),
            type = "string",
            name = "federationURN",
            target_id = prelude.String.id,
        }),
        federationProviderName = schema.new({
            id = id.from(_N, "FederationParameters", "federationProviderName"),
            type = "string",
            name = "federationProviderName",
            target_id = prelude.String.id,
        }),
        attributeMap = schema.new({
            id = id.from(_N, "FederationParameters", "attributeMap"),
            type = "map",
            name = "attributeMap",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.SuperuserParameters = schema.new({
    id = id.from(_N, "SuperuserParameters"),
    type = "structure",
    members = {
        emailAddress = schema.new({
            id = id.from(_N, "SuperuserParameters", "emailAddress"),
            type = "string",
            name = "emailAddress",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        firstName = schema.new({
            id = id.from(_N, "SuperuserParameters", "firstName"),
            type = "string",
            name = "firstName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastName = schema.new({
            id = id.from(_N, "SuperuserParameters", "lastName"),
            type = "string",
            name = "lastName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateEnvironmentInput = schema.new({
    id = id.from(_N, "CreateEnvironmentInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        federationMode = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "federationMode"),
            type = "string",
            name = "federationMode",
            target_id = prelude.String.id,
        }),
        federationParameters = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "federationParameters"),
            type = "structure",
            name = "federationParameters",
            target_id = id.from(_N, "FederationParameters"),
            target = M.FederationParameters,
        }),
        superuserParameters = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "superuserParameters"),
            type = "structure",
            name = "superuserParameters",
            target_id = id.from(_N, "SuperuserParameters"),
            target = M.SuperuserParameters,
        }),
        dataBundles = schema.new({
            id = id.from(_N, "CreateEnvironmentInput", "dataBundles"),
            type = "list",
            name = "dataBundles",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateEnvironmentOutput = schema.new({
    id = id.from(_N, "CreateEnvironmentOutput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "CreateEnvironmentOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        environmentArn = schema.new({
            id = id.from(_N, "CreateEnvironmentOutput", "environmentArn"),
            type = "string",
            name = "environmentArn",
            target_id = prelude.String.id,
        }),
        environmentUrl = schema.new({
            id = id.from(_N, "CreateEnvironmentOutput", "environmentUrl"),
            type = "string",
            name = "environmentUrl",
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
        reason = schema.new({
            id = id.from(_N, "ConflictException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
    },
})

M.ChangeRequest = schema.new({
    id = id.from(_N, "ChangeRequest"),
    type = "structure",
    members = {
        changeType = schema.new({
            id = id.from(_N, "ChangeRequest", "changeType"),
            type = "string",
            name = "changeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        s3Path = schema.new({
            id = id.from(_N, "ChangeRequest", "s3Path"),
            type = "string",
            name = "s3Path",
            target_id = prelude.String.id,
        }),
        dbPath = schema.new({
            id = id.from(_N, "ChangeRequest", "dbPath"),
            type = "string",
            name = "dbPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateKxChangesetInput = schema.new({
    id = id.from(_N, "CreateKxChangesetInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "CreateKxChangesetInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "CreateKxChangesetInput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        changeRequests = schema.new({
            id = id.from(_N, "CreateKxChangesetInput", "changeRequests"),
            type = "list",
            name = "changeRequests",
            target_id = prelude.Document.id,
            list_member = M.ChangeRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateKxChangesetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.ErrorInfo = schema.new({
    id = id.from(_N, "ErrorInfo"),
    type = "structure",
    members = {
        errorMessage = schema.new({
            id = id.from(_N, "ErrorInfo", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        errorType = schema.new({
            id = id.from(_N, "ErrorInfo", "errorType"),
            type = "string",
            name = "errorType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateKxChangesetOutput = schema.new({
    id = id.from(_N, "CreateKxChangesetOutput"),
    type = "structure",
    members = {
        changesetId = schema.new({
            id = id.from(_N, "CreateKxChangesetOutput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        databaseName = schema.new({
            id = id.from(_N, "CreateKxChangesetOutput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "CreateKxChangesetOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        changeRequests = schema.new({
            id = id.from(_N, "CreateKxChangesetOutput", "changeRequests"),
            type = "list",
            name = "changeRequests",
            target_id = prelude.Document.id,
            list_member = M.ChangeRequest,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "CreateKxChangesetOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "CreateKxChangesetOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateKxChangesetOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        errorInfo = schema.new({
            id = id.from(_N, "CreateKxChangesetOutput", "errorInfo"),
            type = "structure",
            name = "errorInfo",
            target_id = id.from(_N, "ErrorInfo"),
            target = M.ErrorInfo,
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
    },
})

M.KxCacheStorageConfiguration = schema.new({
    id = id.from(_N, "KxCacheStorageConfiguration"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "KxCacheStorageConfiguration", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        size = schema.new({
            id = id.from(_N, "KxCacheStorageConfiguration", "size"),
            type = "integer",
            name = "size",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CapacityConfiguration = schema.new({
    id = id.from(_N, "CapacityConfiguration"),
    type = "structure",
    members = {
        nodeType = schema.new({
            id = id.from(_N, "CapacityConfiguration", "nodeType"),
            type = "string",
            name = "nodeType",
            target_id = prelude.String.id,
        }),
        nodeCount = schema.new({
            id = id.from(_N, "CapacityConfiguration", "nodeCount"),
            type = "integer",
            name = "nodeCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CodeConfiguration = schema.new({
    id = id.from(_N, "CodeConfiguration"),
    type = "structure",
    members = {
        s3Bucket = schema.new({
            id = id.from(_N, "CodeConfiguration", "s3Bucket"),
            type = "string",
            name = "s3Bucket",
            target_id = prelude.String.id,
        }),
        s3Key = schema.new({
            id = id.from(_N, "CodeConfiguration", "s3Key"),
            type = "string",
            name = "s3Key",
            target_id = prelude.String.id,
        }),
        s3ObjectVersion = schema.new({
            id = id.from(_N, "CodeConfiguration", "s3ObjectVersion"),
            type = "string",
            name = "s3ObjectVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.KxCommandLineArgument = schema.new({
    id = id.from(_N, "KxCommandLineArgument"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "KxCommandLineArgument", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "KxCommandLineArgument", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.KxDatabaseCacheConfiguration = schema.new({
    id = id.from(_N, "KxDatabaseCacheConfiguration"),
    type = "structure",
    members = {
        cacheType = schema.new({
            id = id.from(_N, "KxDatabaseCacheConfiguration", "cacheType"),
            type = "string",
            name = "cacheType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dbPaths = schema.new({
            id = id.from(_N, "KxDatabaseCacheConfiguration", "dbPaths"),
            type = "list",
            name = "dbPaths",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataviewName = schema.new({
            id = id.from(_N, "KxDatabaseCacheConfiguration", "dataviewName"),
            type = "string",
            name = "dataviewName",
            target_id = prelude.String.id,
        }),
    },
})

M.KxDataviewSegmentConfiguration = schema.new({
    id = id.from(_N, "KxDataviewSegmentConfiguration"),
    type = "structure",
    members = {
        dbPaths = schema.new({
            id = id.from(_N, "KxDataviewSegmentConfiguration", "dbPaths"),
            type = "list",
            name = "dbPaths",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        volumeName = schema.new({
            id = id.from(_N, "KxDataviewSegmentConfiguration", "volumeName"),
            type = "string",
            name = "volumeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        onDemand = schema.new({
            id = id.from(_N, "KxDataviewSegmentConfiguration", "onDemand"),
            type = "boolean",
            name = "onDemand",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.KxDataviewConfiguration = schema.new({
    id = id.from(_N, "KxDataviewConfiguration"),
    type = "structure",
    members = {
        dataviewName = schema.new({
            id = id.from(_N, "KxDataviewConfiguration", "dataviewName"),
            type = "string",
            name = "dataviewName",
            target_id = prelude.String.id,
        }),
        dataviewVersionId = schema.new({
            id = id.from(_N, "KxDataviewConfiguration", "dataviewVersionId"),
            type = "string",
            name = "dataviewVersionId",
            target_id = prelude.String.id,
        }),
        changesetId = schema.new({
            id = id.from(_N, "KxDataviewConfiguration", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        segmentConfigurations = schema.new({
            id = id.from(_N, "KxDataviewConfiguration", "segmentConfigurations"),
            type = "list",
            name = "segmentConfigurations",
            target_id = prelude.Document.id,
            list_member = M.KxDataviewSegmentConfiguration,
        }),
    },
})

M.KxDatabaseConfiguration = schema.new({
    id = id.from(_N, "KxDatabaseConfiguration"),
    type = "structure",
    members = {
        databaseName = schema.new({
            id = id.from(_N, "KxDatabaseConfiguration", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cacheConfigurations = schema.new({
            id = id.from(_N, "KxDatabaseConfiguration", "cacheConfigurations"),
            type = "list",
            name = "cacheConfigurations",
            target_id = prelude.Document.id,
            list_member = M.KxDatabaseCacheConfiguration,
        }),
        changesetId = schema.new({
            id = id.from(_N, "KxDatabaseConfiguration", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        dataviewName = schema.new({
            id = id.from(_N, "KxDatabaseConfiguration", "dataviewName"),
            type = "string",
            name = "dataviewName",
            target_id = prelude.String.id,
        }),
        dataviewConfiguration = schema.new({
            id = id.from(_N, "KxDatabaseConfiguration", "dataviewConfiguration"),
            type = "structure",
            name = "dataviewConfiguration",
            target_id = id.from(_N, "KxDataviewConfiguration"),
            target = M.KxDataviewConfiguration,
        }),
    },
})

M.KxSavedownStorageConfiguration = schema.new({
    id = id.from(_N, "KxSavedownStorageConfiguration"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "KxSavedownStorageConfiguration", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        size = schema.new({
            id = id.from(_N, "KxSavedownStorageConfiguration", "size"),
            type = "integer",
            name = "size",
            target_id = prelude.Integer.id,
        }),
        volumeName = schema.new({
            id = id.from(_N, "KxSavedownStorageConfiguration", "volumeName"),
            type = "string",
            name = "volumeName",
            target_id = prelude.String.id,
        }),
    },
})

M.KxScalingGroupConfiguration = schema.new({
    id = id.from(_N, "KxScalingGroupConfiguration"),
    type = "structure",
    members = {
        scalingGroupName = schema.new({
            id = id.from(_N, "KxScalingGroupConfiguration", "scalingGroupName"),
            type = "string",
            name = "scalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        memoryLimit = schema.new({
            id = id.from(_N, "KxScalingGroupConfiguration", "memoryLimit"),
            type = "integer",
            name = "memoryLimit",
            target_id = prelude.Integer.id,
        }),
        memoryReservation = schema.new({
            id = id.from(_N, "KxScalingGroupConfiguration", "memoryReservation"),
            type = "integer",
            name = "memoryReservation",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nodeCount = schema.new({
            id = id.from(_N, "KxScalingGroupConfiguration", "nodeCount"),
            type = "integer",
            name = "nodeCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        cpu = schema.new({
            id = id.from(_N, "KxScalingGroupConfiguration", "cpu"),
            type = "double",
            name = "cpu",
            target_id = prelude.Double.id,
        }),
    },
})

M.TickerplantLogConfiguration = schema.new({
    id = id.from(_N, "TickerplantLogConfiguration"),
    type = "structure",
    members = {
        tickerplantLogVolumes = schema.new({
            id = id.from(_N, "TickerplantLogConfiguration", "tickerplantLogVolumes"),
            type = "list",
            name = "tickerplantLogVolumes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.VpcConfiguration = schema.new({
    id = id.from(_N, "VpcConfiguration"),
    type = "structure",
    members = {
        vpcId = schema.new({
            id = id.from(_N, "VpcConfiguration", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "VpcConfiguration", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        subnetIds = schema.new({
            id = id.from(_N, "VpcConfiguration", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ipAddressType = schema.new({
            id = id.from(_N, "VpcConfiguration", "ipAddressType"),
            type = "string",
            name = "ipAddressType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateKxClusterInput = schema.new({
    id = id.from(_N, "CreateKxClusterInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clusterName = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusterType = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "clusterType"),
            type = "string",
            name = "clusterType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tickerplantLogConfiguration = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "tickerplantLogConfiguration"),
            type = "structure",
            name = "tickerplantLogConfiguration",
            target_id = id.from(_N, "TickerplantLogConfiguration"),
            target = M.TickerplantLogConfiguration,
        }),
        databases = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "databases"),
            type = "list",
            name = "databases",
            target_id = prelude.Document.id,
            list_member = M.KxDatabaseConfiguration,
        }),
        cacheStorageConfigurations = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "cacheStorageConfigurations"),
            type = "list",
            name = "cacheStorageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.KxCacheStorageConfiguration,
        }),
        autoScalingConfiguration = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "autoScalingConfiguration"),
            type = "structure",
            name = "autoScalingConfiguration",
            target_id = id.from(_N, "AutoScalingConfiguration"),
            target = M.AutoScalingConfiguration,
        }),
        clusterDescription = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "clusterDescription"),
            type = "string",
            name = "clusterDescription",
            target_id = prelude.String.id,
        }),
        capacityConfiguration = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "capacityConfiguration"),
            type = "structure",
            name = "capacityConfiguration",
            target_id = id.from(_N, "CapacityConfiguration"),
            target = M.CapacityConfiguration,
        }),
        releaseLabel = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "releaseLabel"),
            type = "string",
            name = "releaseLabel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcConfiguration = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "vpcConfiguration"),
            type = "structure",
            name = "vpcConfiguration",
            target_id = id.from(_N, "VpcConfiguration"),
            target = M.VpcConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        initializationScript = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "initializationScript"),
            type = "string",
            name = "initializationScript",
            target_id = prelude.String.id,
        }),
        commandLineArguments = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "commandLineArguments"),
            type = "list",
            name = "commandLineArguments",
            target_id = prelude.Document.id,
            list_member = M.KxCommandLineArgument,
        }),
        code = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "code"),
            type = "structure",
            name = "code",
            target_id = id.from(_N, "CodeConfiguration"),
            target = M.CodeConfiguration,
        }),
        executionRole = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "executionRole"),
            type = "string",
            name = "executionRole",
            target_id = prelude.String.id,
        }),
        savedownStorageConfiguration = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "savedownStorageConfiguration"),
            type = "structure",
            name = "savedownStorageConfiguration",
            target_id = id.from(_N, "KxSavedownStorageConfiguration"),
            target = M.KxSavedownStorageConfiguration,
        }),
        azMode = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        scalingGroupConfiguration = schema.new({
            id = id.from(_N, "CreateKxClusterInput", "scalingGroupConfiguration"),
            type = "structure",
            name = "scalingGroupConfiguration",
            target_id = id.from(_N, "KxScalingGroupConfiguration"),
            target = M.KxScalingGroupConfiguration,
        }),
    },
})

M.Volume = schema.new({
    id = id.from(_N, "Volume"),
    type = "structure",
    members = {
        volumeName = schema.new({
            id = id.from(_N, "Volume", "volumeName"),
            type = "string",
            name = "volumeName",
            target_id = prelude.String.id,
        }),
        volumeType = schema.new({
            id = id.from(_N, "Volume", "volumeType"),
            type = "string",
            name = "volumeType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateKxClusterOutput = schema.new({
    id = id.from(_N, "CreateKxClusterOutput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        clusterName = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        clusterType = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "clusterType"),
            type = "string",
            name = "clusterType",
            target_id = prelude.String.id,
        }),
        tickerplantLogConfiguration = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "tickerplantLogConfiguration"),
            type = "structure",
            name = "tickerplantLogConfiguration",
            target_id = id.from(_N, "TickerplantLogConfiguration"),
            target = M.TickerplantLogConfiguration,
        }),
        volumes = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "volumes"),
            type = "list",
            name = "volumes",
            target_id = prelude.Document.id,
            list_member = M.Volume,
        }),
        databases = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "databases"),
            type = "list",
            name = "databases",
            target_id = prelude.Document.id,
            list_member = M.KxDatabaseConfiguration,
        }),
        cacheStorageConfigurations = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "cacheStorageConfigurations"),
            type = "list",
            name = "cacheStorageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.KxCacheStorageConfiguration,
        }),
        autoScalingConfiguration = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "autoScalingConfiguration"),
            type = "structure",
            name = "autoScalingConfiguration",
            target_id = id.from(_N, "AutoScalingConfiguration"),
            target = M.AutoScalingConfiguration,
        }),
        clusterDescription = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "clusterDescription"),
            type = "string",
            name = "clusterDescription",
            target_id = prelude.String.id,
        }),
        capacityConfiguration = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "capacityConfiguration"),
            type = "structure",
            name = "capacityConfiguration",
            target_id = id.from(_N, "CapacityConfiguration"),
            target = M.CapacityConfiguration,
        }),
        releaseLabel = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "releaseLabel"),
            type = "string",
            name = "releaseLabel",
            target_id = prelude.String.id,
        }),
        vpcConfiguration = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "vpcConfiguration"),
            type = "structure",
            name = "vpcConfiguration",
            target_id = id.from(_N, "VpcConfiguration"),
            target = M.VpcConfiguration,
        }),
        initializationScript = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "initializationScript"),
            type = "string",
            name = "initializationScript",
            target_id = prelude.String.id,
        }),
        commandLineArguments = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "commandLineArguments"),
            type = "list",
            name = "commandLineArguments",
            target_id = prelude.Document.id,
            list_member = M.KxCommandLineArgument,
        }),
        code = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "code"),
            type = "structure",
            name = "code",
            target_id = id.from(_N, "CodeConfiguration"),
            target = M.CodeConfiguration,
        }),
        executionRole = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "executionRole"),
            type = "string",
            name = "executionRole",
            target_id = prelude.String.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        savedownStorageConfiguration = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "savedownStorageConfiguration"),
            type = "structure",
            name = "savedownStorageConfiguration",
            target_id = id.from(_N, "KxSavedownStorageConfiguration"),
            target = M.KxSavedownStorageConfiguration,
        }),
        azMode = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        scalingGroupConfiguration = schema.new({
            id = id.from(_N, "CreateKxClusterOutput", "scalingGroupConfiguration"),
            type = "structure",
            name = "scalingGroupConfiguration",
            target_id = id.from(_N, "KxScalingGroupConfiguration"),
            target = M.KxScalingGroupConfiguration,
        }),
    },
})

M.CreateKxDatabaseInput = schema.new({
    id = id.from(_N, "CreateKxDatabaseInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "CreateKxDatabaseInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "CreateKxDatabaseInput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateKxDatabaseInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateKxDatabaseInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateKxDatabaseInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateKxDatabaseOutput = schema.new({
    id = id.from(_N, "CreateKxDatabaseOutput"),
    type = "structure",
    members = {
        databaseName = schema.new({
            id = id.from(_N, "CreateKxDatabaseOutput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
        }),
        databaseArn = schema.new({
            id = id.from(_N, "CreateKxDatabaseOutput", "databaseArn"),
            type = "string",
            name = "databaseArn",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "CreateKxDatabaseOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateKxDatabaseOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "CreateKxDatabaseOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "CreateKxDatabaseOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ResourceAlreadyExistsException = schema.new({
    id = id.from(_N, "ResourceAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateKxDataviewInput = schema.new({
    id = id.from(_N, "CreateKxDataviewInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "CreateKxDataviewInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "CreateKxDataviewInput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataviewName = schema.new({
            id = id.from(_N, "CreateKxDataviewInput", "dataviewName"),
            type = "string",
            name = "dataviewName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        azMode = schema.new({
            id = id.from(_N, "CreateKxDataviewInput", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "CreateKxDataviewInput", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        changesetId = schema.new({
            id = id.from(_N, "CreateKxDataviewInput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        segmentConfigurations = schema.new({
            id = id.from(_N, "CreateKxDataviewInput", "segmentConfigurations"),
            type = "list",
            name = "segmentConfigurations",
            target_id = prelude.Document.id,
            list_member = M.KxDataviewSegmentConfiguration,
        }),
        autoUpdate = schema.new({
            id = id.from(_N, "CreateKxDataviewInput", "autoUpdate"),
            type = "boolean",
            name = "autoUpdate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        readWrite = schema.new({
            id = id.from(_N, "CreateKxDataviewInput", "readWrite"),
            type = "boolean",
            name = "readWrite",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateKxDataviewInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateKxDataviewInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateKxDataviewInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateKxDataviewOutput = schema.new({
    id = id.from(_N, "CreateKxDataviewOutput"),
    type = "structure",
    members = {
        dataviewName = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "dataviewName"),
            type = "string",
            name = "dataviewName",
            target_id = prelude.String.id,
        }),
        databaseName = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        azMode = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        changesetId = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        segmentConfigurations = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "segmentConfigurations"),
            type = "list",
            name = "segmentConfigurations",
            target_id = prelude.Document.id,
            list_member = M.KxDataviewSegmentConfiguration,
        }),
        description = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        autoUpdate = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "autoUpdate"),
            type = "boolean",
            name = "autoUpdate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        readWrite = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "readWrite"),
            type = "boolean",
            name = "readWrite",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateKxDataviewOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateKxEnvironmentInput = schema.new({
    id = id.from(_N, "CreateKxEnvironmentInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateKxEnvironmentInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateKxEnvironmentInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "CreateKxEnvironmentInput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateKxEnvironmentInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateKxEnvironmentInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateKxEnvironmentOutput = schema.new({
    id = id.from(_N, "CreateKxEnvironmentOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateKxEnvironmentOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateKxEnvironmentOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "CreateKxEnvironmentOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateKxEnvironmentOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        environmentArn = schema.new({
            id = id.from(_N, "CreateKxEnvironmentOutput", "environmentArn"),
            type = "string",
            name = "environmentArn",
            target_id = prelude.String.id,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "CreateKxEnvironmentOutput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        creationTimestamp = schema.new({
            id = id.from(_N, "CreateKxEnvironmentOutput", "creationTimestamp"),
            type = "timestamp",
            name = "creationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateKxScalingGroupInput = schema.new({
    id = id.from(_N, "CreateKxScalingGroupInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateKxScalingGroupInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "CreateKxScalingGroupInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        scalingGroupName = schema.new({
            id = id.from(_N, "CreateKxScalingGroupInput", "scalingGroupName"),
            type = "string",
            name = "scalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        hostType = schema.new({
            id = id.from(_N, "CreateKxScalingGroupInput", "hostType"),
            type = "string",
            name = "hostType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "CreateKxScalingGroupInput", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateKxScalingGroupInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateKxScalingGroupOutput = schema.new({
    id = id.from(_N, "CreateKxScalingGroupOutput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "CreateKxScalingGroupOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        scalingGroupName = schema.new({
            id = id.from(_N, "CreateKxScalingGroupOutput", "scalingGroupName"),
            type = "string",
            name = "scalingGroupName",
            target_id = prelude.String.id,
        }),
        hostType = schema.new({
            id = id.from(_N, "CreateKxScalingGroupOutput", "hostType"),
            type = "string",
            name = "hostType",
            target_id = prelude.String.id,
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "CreateKxScalingGroupOutput", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateKxScalingGroupOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "CreateKxScalingGroupOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "CreateKxScalingGroupOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateKxUserInput = schema.new({
    id = id.from(_N, "CreateKxUserInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "CreateKxUserInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userName = schema.new({
            id = id.from(_N, "CreateKxUserInput", "userName"),
            type = "string",
            name = "userName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        iamRole = schema.new({
            id = id.from(_N, "CreateKxUserInput", "iamRole"),
            type = "string",
            name = "iamRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateKxUserInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateKxUserInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateKxUserOutput = schema.new({
    id = id.from(_N, "CreateKxUserOutput"),
    type = "structure",
    members = {
        userName = schema.new({
            id = id.from(_N, "CreateKxUserOutput", "userName"),
            type = "string",
            name = "userName",
            target_id = prelude.String.id,
        }),
        userArn = schema.new({
            id = id.from(_N, "CreateKxUserOutput", "userArn"),
            type = "string",
            name = "userArn",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "CreateKxUserOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        iamRole = schema.new({
            id = id.from(_N, "CreateKxUserOutput", "iamRole"),
            type = "string",
            name = "iamRole",
            target_id = prelude.String.id,
        }),
    },
})

M.KxNAS1Configuration = schema.new({
    id = id.from(_N, "KxNAS1Configuration"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "KxNAS1Configuration", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        size = schema.new({
            id = id.from(_N, "KxNAS1Configuration", "size"),
            type = "integer",
            name = "size",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateKxVolumeInput = schema.new({
    id = id.from(_N, "CreateKxVolumeInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateKxVolumeInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "CreateKxVolumeInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        volumeType = schema.new({
            id = id.from(_N, "CreateKxVolumeInput", "volumeType"),
            type = "string",
            name = "volumeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        volumeName = schema.new({
            id = id.from(_N, "CreateKxVolumeInput", "volumeName"),
            type = "string",
            name = "volumeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateKxVolumeInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        nas1Configuration = schema.new({
            id = id.from(_N, "CreateKxVolumeInput", "nas1Configuration"),
            type = "structure",
            name = "nas1Configuration",
            target_id = id.from(_N, "KxNAS1Configuration"),
            target = M.KxNAS1Configuration,
        }),
        azMode = schema.new({
            id = id.from(_N, "CreateKxVolumeInput", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        availabilityZoneIds = schema.new({
            id = id.from(_N, "CreateKxVolumeInput", "availabilityZoneIds"),
            type = "list",
            name = "availabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateKxVolumeInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateKxVolumeOutput = schema.new({
    id = id.from(_N, "CreateKxVolumeOutput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "CreateKxVolumeOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        volumeName = schema.new({
            id = id.from(_N, "CreateKxVolumeOutput", "volumeName"),
            type = "string",
            name = "volumeName",
            target_id = prelude.String.id,
        }),
        volumeType = schema.new({
            id = id.from(_N, "CreateKxVolumeOutput", "volumeType"),
            type = "string",
            name = "volumeType",
            target_id = prelude.String.id,
        }),
        volumeArn = schema.new({
            id = id.from(_N, "CreateKxVolumeOutput", "volumeArn"),
            type = "string",
            name = "volumeArn",
            target_id = prelude.String.id,
        }),
        nas1Configuration = schema.new({
            id = id.from(_N, "CreateKxVolumeOutput", "nas1Configuration"),
            type = "structure",
            name = "nas1Configuration",
            target_id = id.from(_N, "KxNAS1Configuration"),
            target = M.KxNAS1Configuration,
        }),
        status = schema.new({
            id = id.from(_N, "CreateKxVolumeOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "CreateKxVolumeOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        azMode = schema.new({
            id = id.from(_N, "CreateKxVolumeOutput", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateKxVolumeOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        availabilityZoneIds = schema.new({
            id = id.from(_N, "CreateKxVolumeOutput", "availabilityZoneIds"),
            type = "list",
            name = "availabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "CreateKxVolumeOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DeleteEnvironmentInput = schema.new({
    id = id.from(_N, "DeleteEnvironmentInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "DeleteEnvironmentInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteEnvironmentOutput = schema.new({
    id = id.from(_N, "DeleteEnvironmentOutput"),
    type = "structure",
})

M.DeleteKxClusterInput = schema.new({
    id = id.from(_N, "DeleteKxClusterInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "DeleteKxClusterInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clusterName = schema.new({
            id = id.from(_N, "DeleteKxClusterInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteKxClusterInput", "clientToken"),
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

M.DeleteKxClusterOutput = schema.new({
    id = id.from(_N, "DeleteKxClusterOutput"),
    type = "structure",
})

M.DeleteKxClusterNodeInput = schema.new({
    id = id.from(_N, "DeleteKxClusterNodeInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "DeleteKxClusterNodeInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clusterName = schema.new({
            id = id.from(_N, "DeleteKxClusterNodeInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nodeId = schema.new({
            id = id.from(_N, "DeleteKxClusterNodeInput", "nodeId"),
            type = "string",
            name = "nodeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteKxClusterNodeOutput = schema.new({
    id = id.from(_N, "DeleteKxClusterNodeOutput"),
    type = "structure",
})

M.DeleteKxDatabaseInput = schema.new({
    id = id.from(_N, "DeleteKxDatabaseInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "DeleteKxDatabaseInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "DeleteKxDatabaseInput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteKxDatabaseInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteKxDatabaseOutput = schema.new({
    id = id.from(_N, "DeleteKxDatabaseOutput"),
    type = "structure",
})

M.DeleteKxDataviewInput = schema.new({
    id = id.from(_N, "DeleteKxDataviewInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "DeleteKxDataviewInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "DeleteKxDataviewInput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataviewName = schema.new({
            id = id.from(_N, "DeleteKxDataviewInput", "dataviewName"),
            type = "string",
            name = "dataviewName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteKxDataviewInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteKxDataviewOutput = schema.new({
    id = id.from(_N, "DeleteKxDataviewOutput"),
    type = "structure",
})

M.DeleteKxEnvironmentInput = schema.new({
    id = id.from(_N, "DeleteKxEnvironmentInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "DeleteKxEnvironmentInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteKxEnvironmentInput", "clientToken"),
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

M.DeleteKxEnvironmentOutput = schema.new({
    id = id.from(_N, "DeleteKxEnvironmentOutput"),
    type = "structure",
})

M.DeleteKxScalingGroupInput = schema.new({
    id = id.from(_N, "DeleteKxScalingGroupInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "DeleteKxScalingGroupInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        scalingGroupName = schema.new({
            id = id.from(_N, "DeleteKxScalingGroupInput", "scalingGroupName"),
            type = "string",
            name = "scalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteKxScalingGroupInput", "clientToken"),
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

M.DeleteKxScalingGroupOutput = schema.new({
    id = id.from(_N, "DeleteKxScalingGroupOutput"),
    type = "structure",
})

M.DeleteKxUserInput = schema.new({
    id = id.from(_N, "DeleteKxUserInput"),
    type = "structure",
    members = {
        userName = schema.new({
            id = id.from(_N, "DeleteKxUserInput", "userName"),
            type = "string",
            name = "userName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "DeleteKxUserInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteKxUserInput", "clientToken"),
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

M.DeleteKxUserOutput = schema.new({
    id = id.from(_N, "DeleteKxUserOutput"),
    type = "structure",
})

M.DeleteKxVolumeInput = schema.new({
    id = id.from(_N, "DeleteKxVolumeInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "DeleteKxVolumeInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        volumeName = schema.new({
            id = id.from(_N, "DeleteKxVolumeInput", "volumeName"),
            type = "string",
            name = "volumeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteKxVolumeInput", "clientToken"),
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

M.DeleteKxVolumeOutput = schema.new({
    id = id.from(_N, "DeleteKxVolumeOutput"),
    type = "structure",
})

M.GetEnvironmentInput = schema.new({
    id = id.from(_N, "GetEnvironmentInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "GetEnvironmentInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.Environment = schema.new({
    id = id.from(_N, "Environment"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Environment", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "Environment", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        awsAccountId = schema.new({
            id = id.from(_N, "Environment", "awsAccountId"),
            type = "string",
            name = "awsAccountId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Environment", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        environmentUrl = schema.new({
            id = id.from(_N, "Environment", "environmentUrl"),
            type = "string",
            name = "environmentUrl",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Environment", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        environmentArn = schema.new({
            id = id.from(_N, "Environment", "environmentArn"),
            type = "string",
            name = "environmentArn",
            target_id = prelude.String.id,
        }),
        sageMakerStudioDomainUrl = schema.new({
            id = id.from(_N, "Environment", "sageMakerStudioDomainUrl"),
            type = "string",
            name = "sageMakerStudioDomainUrl",
            target_id = prelude.String.id,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "Environment", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        dedicatedServiceAccountId = schema.new({
            id = id.from(_N, "Environment", "dedicatedServiceAccountId"),
            type = "string",
            name = "dedicatedServiceAccountId",
            target_id = prelude.String.id,
        }),
        federationMode = schema.new({
            id = id.from(_N, "Environment", "federationMode"),
            type = "string",
            name = "federationMode",
            target_id = prelude.String.id,
        }),
        federationParameters = schema.new({
            id = id.from(_N, "Environment", "federationParameters"),
            type = "structure",
            name = "federationParameters",
            target_id = id.from(_N, "FederationParameters"),
            target = M.FederationParameters,
        }),
    },
})

M.GetEnvironmentOutput = schema.new({
    id = id.from(_N, "GetEnvironmentOutput"),
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

M.GetKxChangesetInput = schema.new({
    id = id.from(_N, "GetKxChangesetInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "GetKxChangesetInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "GetKxChangesetInput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        changesetId = schema.new({
            id = id.from(_N, "GetKxChangesetInput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetKxChangesetOutput = schema.new({
    id = id.from(_N, "GetKxChangesetOutput"),
    type = "structure",
    members = {
        changesetId = schema.new({
            id = id.from(_N, "GetKxChangesetOutput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        databaseName = schema.new({
            id = id.from(_N, "GetKxChangesetOutput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "GetKxChangesetOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        changeRequests = schema.new({
            id = id.from(_N, "GetKxChangesetOutput", "changeRequests"),
            type = "list",
            name = "changeRequests",
            target_id = prelude.Document.id,
            list_member = M.ChangeRequest,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "GetKxChangesetOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        activeFromTimestamp = schema.new({
            id = id.from(_N, "GetKxChangesetOutput", "activeFromTimestamp"),
            type = "timestamp",
            name = "activeFromTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "GetKxChangesetOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetKxChangesetOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        errorInfo = schema.new({
            id = id.from(_N, "GetKxChangesetOutput", "errorInfo"),
            type = "structure",
            name = "errorInfo",
            target_id = id.from(_N, "ErrorInfo"),
            target = M.ErrorInfo,
        }),
    },
})

M.GetKxClusterInput = schema.new({
    id = id.from(_N, "GetKxClusterInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "GetKxClusterInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clusterName = schema.new({
            id = id.from(_N, "GetKxClusterInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetKxClusterOutput = schema.new({
    id = id.from(_N, "GetKxClusterOutput"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        clusterName = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        clusterType = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "clusterType"),
            type = "string",
            name = "clusterType",
            target_id = prelude.String.id,
        }),
        tickerplantLogConfiguration = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "tickerplantLogConfiguration"),
            type = "structure",
            name = "tickerplantLogConfiguration",
            target_id = id.from(_N, "TickerplantLogConfiguration"),
            target = M.TickerplantLogConfiguration,
        }),
        volumes = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "volumes"),
            type = "list",
            name = "volumes",
            target_id = prelude.Document.id,
            list_member = M.Volume,
        }),
        databases = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "databases"),
            type = "list",
            name = "databases",
            target_id = prelude.Document.id,
            list_member = M.KxDatabaseConfiguration,
        }),
        cacheStorageConfigurations = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "cacheStorageConfigurations"),
            type = "list",
            name = "cacheStorageConfigurations",
            target_id = prelude.Document.id,
            list_member = M.KxCacheStorageConfiguration,
        }),
        autoScalingConfiguration = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "autoScalingConfiguration"),
            type = "structure",
            name = "autoScalingConfiguration",
            target_id = id.from(_N, "AutoScalingConfiguration"),
            target = M.AutoScalingConfiguration,
        }),
        clusterDescription = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "clusterDescription"),
            type = "string",
            name = "clusterDescription",
            target_id = prelude.String.id,
        }),
        capacityConfiguration = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "capacityConfiguration"),
            type = "structure",
            name = "capacityConfiguration",
            target_id = id.from(_N, "CapacityConfiguration"),
            target = M.CapacityConfiguration,
        }),
        releaseLabel = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "releaseLabel"),
            type = "string",
            name = "releaseLabel",
            target_id = prelude.String.id,
        }),
        vpcConfiguration = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "vpcConfiguration"),
            type = "structure",
            name = "vpcConfiguration",
            target_id = id.from(_N, "VpcConfiguration"),
            target = M.VpcConfiguration,
        }),
        initializationScript = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "initializationScript"),
            type = "string",
            name = "initializationScript",
            target_id = prelude.String.id,
        }),
        commandLineArguments = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "commandLineArguments"),
            type = "list",
            name = "commandLineArguments",
            target_id = prelude.Document.id,
            list_member = M.KxCommandLineArgument,
        }),
        code = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "code"),
            type = "structure",
            name = "code",
            target_id = id.from(_N, "CodeConfiguration"),
            target = M.CodeConfiguration,
        }),
        executionRole = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "executionRole"),
            type = "string",
            name = "executionRole",
            target_id = prelude.String.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        savedownStorageConfiguration = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "savedownStorageConfiguration"),
            type = "structure",
            name = "savedownStorageConfiguration",
            target_id = id.from(_N, "KxSavedownStorageConfiguration"),
            target = M.KxSavedownStorageConfiguration,
        }),
        azMode = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        scalingGroupConfiguration = schema.new({
            id = id.from(_N, "GetKxClusterOutput", "scalingGroupConfiguration"),
            type = "structure",
            name = "scalingGroupConfiguration",
            target_id = id.from(_N, "KxScalingGroupConfiguration"),
            target = M.KxScalingGroupConfiguration,
        }),
    },
})

M.GetKxConnectionStringInput = schema.new({
    id = id.from(_N, "GetKxConnectionStringInput"),
    type = "structure",
    members = {
        userArn = schema.new({
            id = id.from(_N, "GetKxConnectionStringInput", "userArn"),
            type = "string",
            name = "userArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "userArn" },
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "GetKxConnectionStringInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clusterName = schema.new({
            id = id.from(_N, "GetKxConnectionStringInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "clusterName" },
            },
        }),
    },
})

M.GetKxConnectionStringOutput = schema.new({
    id = id.from(_N, "GetKxConnectionStringOutput"),
    type = "structure",
    members = {
        signedConnectionString = schema.new({
            id = id.from(_N, "GetKxConnectionStringOutput", "signedConnectionString"),
            type = "string",
            name = "signedConnectionString",
            target_id = prelude.String.id,
        }),
    },
})

M.GetKxDatabaseInput = schema.new({
    id = id.from(_N, "GetKxDatabaseInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "GetKxDatabaseInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "GetKxDatabaseInput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetKxDatabaseOutput = schema.new({
    id = id.from(_N, "GetKxDatabaseOutput"),
    type = "structure",
    members = {
        databaseName = schema.new({
            id = id.from(_N, "GetKxDatabaseOutput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
        }),
        databaseArn = schema.new({
            id = id.from(_N, "GetKxDatabaseOutput", "databaseArn"),
            type = "string",
            name = "databaseArn",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "GetKxDatabaseOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetKxDatabaseOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "GetKxDatabaseOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "GetKxDatabaseOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        lastCompletedChangesetId = schema.new({
            id = id.from(_N, "GetKxDatabaseOutput", "lastCompletedChangesetId"),
            type = "string",
            name = "lastCompletedChangesetId",
            target_id = prelude.String.id,
        }),
        numBytes = schema.new({
            id = id.from(_N, "GetKxDatabaseOutput", "numBytes"),
            type = "long",
            name = "numBytes",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        numChangesets = schema.new({
            id = id.from(_N, "GetKxDatabaseOutput", "numChangesets"),
            type = "integer",
            name = "numChangesets",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        numFiles = schema.new({
            id = id.from(_N, "GetKxDatabaseOutput", "numFiles"),
            type = "integer",
            name = "numFiles",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.GetKxDataviewInput = schema.new({
    id = id.from(_N, "GetKxDataviewInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "GetKxDataviewInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "GetKxDataviewInput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataviewName = schema.new({
            id = id.from(_N, "GetKxDataviewInput", "dataviewName"),
            type = "string",
            name = "dataviewName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.KxDataviewActiveVersion = schema.new({
    id = id.from(_N, "KxDataviewActiveVersion"),
    type = "structure",
    members = {
        changesetId = schema.new({
            id = id.from(_N, "KxDataviewActiveVersion", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        segmentConfigurations = schema.new({
            id = id.from(_N, "KxDataviewActiveVersion", "segmentConfigurations"),
            type = "list",
            name = "segmentConfigurations",
            target_id = prelude.Document.id,
            list_member = M.KxDataviewSegmentConfiguration,
        }),
        attachedClusters = schema.new({
            id = id.from(_N, "KxDataviewActiveVersion", "attachedClusters"),
            type = "list",
            name = "attachedClusters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "KxDataviewActiveVersion", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        versionId = schema.new({
            id = id.from(_N, "KxDataviewActiveVersion", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetKxDataviewOutput = schema.new({
    id = id.from(_N, "GetKxDataviewOutput"),
    type = "structure",
    members = {
        databaseName = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
        }),
        dataviewName = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "dataviewName"),
            type = "string",
            name = "dataviewName",
            target_id = prelude.String.id,
        }),
        azMode = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        changesetId = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        segmentConfigurations = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "segmentConfigurations"),
            type = "list",
            name = "segmentConfigurations",
            target_id = prelude.Document.id,
            list_member = M.KxDataviewSegmentConfiguration,
        }),
        activeVersions = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "activeVersions"),
            type = "list",
            name = "activeVersions",
            target_id = prelude.Document.id,
            list_member = M.KxDataviewActiveVersion,
        }),
        description = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        autoUpdate = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "autoUpdate"),
            type = "boolean",
            name = "autoUpdate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        readWrite = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "readWrite"),
            type = "boolean",
            name = "readWrite",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "GetKxDataviewOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
    },
})

M.GetKxEnvironmentInput = schema.new({
    id = id.from(_N, "GetKxEnvironmentInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "GetKxEnvironmentInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.CustomDNSServer = schema.new({
    id = id.from(_N, "CustomDNSServer"),
    type = "structure",
    members = {
        customDNSServerName = schema.new({
            id = id.from(_N, "CustomDNSServer", "customDNSServerName"),
            type = "string",
            name = "customDNSServerName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        customDNSServerIP = schema.new({
            id = id.from(_N, "CustomDNSServer", "customDNSServerIP"),
            type = "string",
            name = "customDNSServerIP",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IcmpTypeCode = schema.new({
    id = id.from(_N, "IcmpTypeCode"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "IcmpTypeCode", "type"),
            type = "integer",
            name = "type",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        code = schema.new({
            id = id.from(_N, "IcmpTypeCode", "code"),
            type = "integer",
            name = "code",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.PortRange = schema.new({
    id = id.from(_N, "PortRange"),
    type = "structure",
    members = {
        from = schema.new({
            id = id.from(_N, "PortRange", "from"),
            type = "integer",
            name = "from",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        to = schema.new({
            id = id.from(_N, "PortRange", "to"),
            type = "integer",
            name = "to",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.NetworkACLEntry = schema.new({
    id = id.from(_N, "NetworkACLEntry"),
    type = "structure",
    members = {
        ruleNumber = schema.new({
            id = id.from(_N, "NetworkACLEntry", "ruleNumber"),
            type = "integer",
            name = "ruleNumber",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "NetworkACLEntry", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ruleAction = schema.new({
            id = id.from(_N, "NetworkACLEntry", "ruleAction"),
            type = "string",
            name = "ruleAction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        portRange = schema.new({
            id = id.from(_N, "NetworkACLEntry", "portRange"),
            type = "structure",
            name = "portRange",
            target_id = id.from(_N, "PortRange"),
            target = M.PortRange,
        }),
        icmpTypeCode = schema.new({
            id = id.from(_N, "NetworkACLEntry", "icmpTypeCode"),
            type = "structure",
            name = "icmpTypeCode",
            target_id = id.from(_N, "IcmpTypeCode"),
            target = M.IcmpTypeCode,
        }),
        cidrBlock = schema.new({
            id = id.from(_N, "NetworkACLEntry", "cidrBlock"),
            type = "string",
            name = "cidrBlock",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TransitGatewayConfiguration = schema.new({
    id = id.from(_N, "TransitGatewayConfiguration"),
    type = "structure",
    members = {
        transitGatewayID = schema.new({
            id = id.from(_N, "TransitGatewayConfiguration", "transitGatewayID"),
            type = "string",
            name = "transitGatewayID",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        routableCIDRSpace = schema.new({
            id = id.from(_N, "TransitGatewayConfiguration", "routableCIDRSpace"),
            type = "string",
            name = "routableCIDRSpace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attachmentNetworkAclConfiguration = schema.new({
            id = id.from(_N, "TransitGatewayConfiguration", "attachmentNetworkAclConfiguration"),
            type = "list",
            name = "attachmentNetworkAclConfiguration",
            target_id = prelude.Document.id,
            list_member = M.NetworkACLEntry,
        }),
    },
})

M.GetKxEnvironmentOutput = schema.new({
    id = id.from(_N, "GetKxEnvironmentOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        awsAccountId = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "awsAccountId"),
            type = "string",
            name = "awsAccountId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        tgwStatus = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "tgwStatus"),
            type = "string",
            name = "tgwStatus",
            target_id = prelude.String.id,
        }),
        dnsStatus = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "dnsStatus"),
            type = "string",
            name = "dnsStatus",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        environmentArn = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "environmentArn"),
            type = "string",
            name = "environmentArn",
            target_id = prelude.String.id,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        dedicatedServiceAccountId = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "dedicatedServiceAccountId"),
            type = "string",
            name = "dedicatedServiceAccountId",
            target_id = prelude.String.id,
        }),
        transitGatewayConfiguration = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "transitGatewayConfiguration"),
            type = "structure",
            name = "transitGatewayConfiguration",
            target_id = id.from(_N, "TransitGatewayConfiguration"),
            target = M.TransitGatewayConfiguration,
        }),
        customDNSConfiguration = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "customDNSConfiguration"),
            type = "list",
            name = "customDNSConfiguration",
            target_id = prelude.Document.id,
            list_member = M.CustomDNSServer,
        }),
        creationTimestamp = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "creationTimestamp"),
            type = "timestamp",
            name = "creationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        updateTimestamp = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "updateTimestamp"),
            type = "timestamp",
            name = "updateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        availabilityZoneIds = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "availabilityZoneIds"),
            type = "list",
            name = "availabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        certificateAuthorityArn = schema.new({
            id = id.from(_N, "GetKxEnvironmentOutput", "certificateAuthorityArn"),
            type = "string",
            name = "certificateAuthorityArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetKxScalingGroupInput = schema.new({
    id = id.from(_N, "GetKxScalingGroupInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "GetKxScalingGroupInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        scalingGroupName = schema.new({
            id = id.from(_N, "GetKxScalingGroupInput", "scalingGroupName"),
            type = "string",
            name = "scalingGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetKxScalingGroupOutput = schema.new({
    id = id.from(_N, "GetKxScalingGroupOutput"),
    type = "structure",
    members = {
        scalingGroupName = schema.new({
            id = id.from(_N, "GetKxScalingGroupOutput", "scalingGroupName"),
            type = "string",
            name = "scalingGroupName",
            target_id = prelude.String.id,
        }),
        scalingGroupArn = schema.new({
            id = id.from(_N, "GetKxScalingGroupOutput", "scalingGroupArn"),
            type = "string",
            name = "scalingGroupArn",
            target_id = prelude.String.id,
        }),
        hostType = schema.new({
            id = id.from(_N, "GetKxScalingGroupOutput", "hostType"),
            type = "string",
            name = "hostType",
            target_id = prelude.String.id,
        }),
        clusters = schema.new({
            id = id.from(_N, "GetKxScalingGroupOutput", "clusters"),
            type = "list",
            name = "clusters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "GetKxScalingGroupOutput", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetKxScalingGroupOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "GetKxScalingGroupOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "GetKxScalingGroupOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "GetKxScalingGroupOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetKxUserInput = schema.new({
    id = id.from(_N, "GetKxUserInput"),
    type = "structure",
    members = {
        userName = schema.new({
            id = id.from(_N, "GetKxUserInput", "userName"),
            type = "string",
            name = "userName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "GetKxUserInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetKxUserOutput = schema.new({
    id = id.from(_N, "GetKxUserOutput"),
    type = "structure",
    members = {
        userName = schema.new({
            id = id.from(_N, "GetKxUserOutput", "userName"),
            type = "string",
            name = "userName",
            target_id = prelude.String.id,
        }),
        userArn = schema.new({
            id = id.from(_N, "GetKxUserOutput", "userArn"),
            type = "string",
            name = "userArn",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "GetKxUserOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        iamRole = schema.new({
            id = id.from(_N, "GetKxUserOutput", "iamRole"),
            type = "string",
            name = "iamRole",
            target_id = prelude.String.id,
        }),
    },
})

M.GetKxVolumeInput = schema.new({
    id = id.from(_N, "GetKxVolumeInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "GetKxVolumeInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        volumeName = schema.new({
            id = id.from(_N, "GetKxVolumeInput", "volumeName"),
            type = "string",
            name = "volumeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.KxAttachedCluster = schema.new({
    id = id.from(_N, "KxAttachedCluster"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "KxAttachedCluster", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        clusterType = schema.new({
            id = id.from(_N, "KxAttachedCluster", "clusterType"),
            type = "string",
            name = "clusterType",
            target_id = prelude.String.id,
        }),
        clusterStatus = schema.new({
            id = id.from(_N, "KxAttachedCluster", "clusterStatus"),
            type = "string",
            name = "clusterStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetKxVolumeOutput = schema.new({
    id = id.from(_N, "GetKxVolumeOutput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        volumeName = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "volumeName"),
            type = "string",
            name = "volumeName",
            target_id = prelude.String.id,
        }),
        volumeType = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "volumeType"),
            type = "string",
            name = "volumeType",
            target_id = prelude.String.id,
        }),
        volumeArn = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "volumeArn"),
            type = "string",
            name = "volumeArn",
            target_id = prelude.String.id,
        }),
        nas1Configuration = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "nas1Configuration"),
            type = "structure",
            name = "nas1Configuration",
            target_id = id.from(_N, "KxNAS1Configuration"),
            target = M.KxNAS1Configuration,
        }),
        status = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        azMode = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
        }),
        availabilityZoneIds = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "availabilityZoneIds"),
            type = "list",
            name = "availabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        attachedClusters = schema.new({
            id = id.from(_N, "GetKxVolumeOutput", "attachedClusters"),
            type = "list",
            name = "attachedClusters",
            target_id = prelude.Document.id,
            list_member = M.KxAttachedCluster,
        }),
    },
})

M.ListEnvironmentsInput = schema.new({
    id = id.from(_N, "ListEnvironmentsInput"),
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
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListEnvironmentsOutput = schema.new({
    id = id.from(_N, "ListEnvironmentsOutput"),
    type = "structure",
    members = {
        environments = schema.new({
            id = id.from(_N, "ListEnvironmentsOutput", "environments"),
            type = "list",
            name = "environments",
            target_id = prelude.Document.id,
            list_member = M.Environment,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListEnvironmentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxChangesetsInput = schema.new({
    id = id.from(_N, "ListKxChangesetsInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "ListKxChangesetsInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "ListKxChangesetsInput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxChangesetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListKxChangesetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.KxChangesetListEntry = schema.new({
    id = id.from(_N, "KxChangesetListEntry"),
    type = "structure",
    members = {
        changesetId = schema.new({
            id = id.from(_N, "KxChangesetListEntry", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "KxChangesetListEntry", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        activeFromTimestamp = schema.new({
            id = id.from(_N, "KxChangesetListEntry", "activeFromTimestamp"),
            type = "timestamp",
            name = "activeFromTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "KxChangesetListEntry", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "KxChangesetListEntry", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxChangesetsOutput = schema.new({
    id = id.from(_N, "ListKxChangesetsOutput"),
    type = "structure",
    members = {
        kxChangesets = schema.new({
            id = id.from(_N, "ListKxChangesetsOutput", "kxChangesets"),
            type = "list",
            name = "kxChangesets",
            target_id = prelude.Document.id,
            list_member = M.KxChangesetListEntry,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxChangesetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxClusterNodesInput = schema.new({
    id = id.from(_N, "ListKxClusterNodesInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "ListKxClusterNodesInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clusterName = schema.new({
            id = id.from(_N, "ListKxClusterNodesInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxClusterNodesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListKxClusterNodesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.KxNode = schema.new({
    id = id.from(_N, "KxNode"),
    type = "structure",
    members = {
        nodeId = schema.new({
            id = id.from(_N, "KxNode", "nodeId"),
            type = "string",
            name = "nodeId",
            target_id = prelude.String.id,
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "KxNode", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        launchTime = schema.new({
            id = id.from(_N, "KxNode", "launchTime"),
            type = "timestamp",
            name = "launchTime",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "KxNode", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxClusterNodesOutput = schema.new({
    id = id.from(_N, "ListKxClusterNodesOutput"),
    type = "structure",
    members = {
        nodes = schema.new({
            id = id.from(_N, "ListKxClusterNodesOutput", "nodes"),
            type = "list",
            name = "nodes",
            target_id = prelude.Document.id,
            list_member = M.KxNode,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxClusterNodesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxClustersInput = schema.new({
    id = id.from(_N, "ListKxClustersInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "ListKxClustersInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clusterType = schema.new({
            id = id.from(_N, "ListKxClustersInput", "clusterType"),
            type = "string",
            name = "clusterType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clusterType" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListKxClustersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxClustersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.KxCluster = schema.new({
    id = id.from(_N, "KxCluster"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "KxCluster", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "KxCluster", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        clusterName = schema.new({
            id = id.from(_N, "KxCluster", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
        }),
        clusterType = schema.new({
            id = id.from(_N, "KxCluster", "clusterType"),
            type = "string",
            name = "clusterType",
            target_id = prelude.String.id,
        }),
        clusterDescription = schema.new({
            id = id.from(_N, "KxCluster", "clusterDescription"),
            type = "string",
            name = "clusterDescription",
            target_id = prelude.String.id,
        }),
        releaseLabel = schema.new({
            id = id.from(_N, "KxCluster", "releaseLabel"),
            type = "string",
            name = "releaseLabel",
            target_id = prelude.String.id,
        }),
        volumes = schema.new({
            id = id.from(_N, "KxCluster", "volumes"),
            type = "list",
            name = "volumes",
            target_id = prelude.Document.id,
            list_member = M.Volume,
        }),
        initializationScript = schema.new({
            id = id.from(_N, "KxCluster", "initializationScript"),
            type = "string",
            name = "initializationScript",
            target_id = prelude.String.id,
        }),
        executionRole = schema.new({
            id = id.from(_N, "KxCluster", "executionRole"),
            type = "string",
            name = "executionRole",
            target_id = prelude.String.id,
        }),
        azMode = schema.new({
            id = id.from(_N, "KxCluster", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "KxCluster", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "KxCluster", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "KxCluster", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListKxClustersOutput = schema.new({
    id = id.from(_N, "ListKxClustersOutput"),
    type = "structure",
    members = {
        kxClusterSummaries = schema.new({
            id = id.from(_N, "ListKxClustersOutput", "kxClusterSummaries"),
            type = "list",
            name = "kxClusterSummaries",
            target_id = prelude.Document.id,
            list_member = M.KxCluster,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxClustersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxDatabasesInput = schema.new({
    id = id.from(_N, "ListKxDatabasesInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "ListKxDatabasesInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxDatabasesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListKxDatabasesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.KxDatabaseListEntry = schema.new({
    id = id.from(_N, "KxDatabaseListEntry"),
    type = "structure",
    members = {
        databaseName = schema.new({
            id = id.from(_N, "KxDatabaseListEntry", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "KxDatabaseListEntry", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "KxDatabaseListEntry", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListKxDatabasesOutput = schema.new({
    id = id.from(_N, "ListKxDatabasesOutput"),
    type = "structure",
    members = {
        kxDatabases = schema.new({
            id = id.from(_N, "ListKxDatabasesOutput", "kxDatabases"),
            type = "list",
            name = "kxDatabases",
            target_id = prelude.Document.id,
            list_member = M.KxDatabaseListEntry,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxDatabasesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxDataviewsInput = schema.new({
    id = id.from(_N, "ListKxDataviewsInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "ListKxDataviewsInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "ListKxDataviewsInput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxDataviewsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListKxDataviewsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.KxDataviewListEntry = schema.new({
    id = id.from(_N, "KxDataviewListEntry"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        databaseName = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
        }),
        dataviewName = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "dataviewName"),
            type = "string",
            name = "dataviewName",
            target_id = prelude.String.id,
        }),
        azMode = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        changesetId = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        segmentConfigurations = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "segmentConfigurations"),
            type = "list",
            name = "segmentConfigurations",
            target_id = prelude.Document.id,
            list_member = M.KxDataviewSegmentConfiguration,
        }),
        activeVersions = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "activeVersions"),
            type = "list",
            name = "activeVersions",
            target_id = prelude.Document.id,
            list_member = M.KxDataviewActiveVersion,
        }),
        status = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        autoUpdate = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "autoUpdate"),
            type = "boolean",
            name = "autoUpdate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        readWrite = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "readWrite"),
            type = "boolean",
            name = "readWrite",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "KxDataviewListEntry", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxDataviewsOutput = schema.new({
    id = id.from(_N, "ListKxDataviewsOutput"),
    type = "structure",
    members = {
        kxDataviews = schema.new({
            id = id.from(_N, "ListKxDataviewsOutput", "kxDataviews"),
            type = "list",
            name = "kxDataviews",
            target_id = prelude.Document.id,
            list_member = M.KxDataviewListEntry,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxDataviewsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxEnvironmentsInput = schema.new({
    id = id.from(_N, "ListKxEnvironmentsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListKxEnvironmentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListKxEnvironmentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.KxEnvironment = schema.new({
    id = id.from(_N, "KxEnvironment"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "KxEnvironment", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "KxEnvironment", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        awsAccountId = schema.new({
            id = id.from(_N, "KxEnvironment", "awsAccountId"),
            type = "string",
            name = "awsAccountId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "KxEnvironment", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        tgwStatus = schema.new({
            id = id.from(_N, "KxEnvironment", "tgwStatus"),
            type = "string",
            name = "tgwStatus",
            target_id = prelude.String.id,
        }),
        dnsStatus = schema.new({
            id = id.from(_N, "KxEnvironment", "dnsStatus"),
            type = "string",
            name = "dnsStatus",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "KxEnvironment", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "KxEnvironment", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        environmentArn = schema.new({
            id = id.from(_N, "KxEnvironment", "environmentArn"),
            type = "string",
            name = "environmentArn",
            target_id = prelude.String.id,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "KxEnvironment", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        dedicatedServiceAccountId = schema.new({
            id = id.from(_N, "KxEnvironment", "dedicatedServiceAccountId"),
            type = "string",
            name = "dedicatedServiceAccountId",
            target_id = prelude.String.id,
        }),
        transitGatewayConfiguration = schema.new({
            id = id.from(_N, "KxEnvironment", "transitGatewayConfiguration"),
            type = "structure",
            name = "transitGatewayConfiguration",
            target_id = id.from(_N, "TransitGatewayConfiguration"),
            target = M.TransitGatewayConfiguration,
        }),
        customDNSConfiguration = schema.new({
            id = id.from(_N, "KxEnvironment", "customDNSConfiguration"),
            type = "list",
            name = "customDNSConfiguration",
            target_id = prelude.Document.id,
            list_member = M.CustomDNSServer,
        }),
        creationTimestamp = schema.new({
            id = id.from(_N, "KxEnvironment", "creationTimestamp"),
            type = "timestamp",
            name = "creationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        updateTimestamp = schema.new({
            id = id.from(_N, "KxEnvironment", "updateTimestamp"),
            type = "timestamp",
            name = "updateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        availabilityZoneIds = schema.new({
            id = id.from(_N, "KxEnvironment", "availabilityZoneIds"),
            type = "list",
            name = "availabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        certificateAuthorityArn = schema.new({
            id = id.from(_N, "KxEnvironment", "certificateAuthorityArn"),
            type = "string",
            name = "certificateAuthorityArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxEnvironmentsOutput = schema.new({
    id = id.from(_N, "ListKxEnvironmentsOutput"),
    type = "structure",
    members = {
        environments = schema.new({
            id = id.from(_N, "ListKxEnvironmentsOutput", "environments"),
            type = "list",
            name = "environments",
            target_id = prelude.Document.id,
            list_member = M.KxEnvironment,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxEnvironmentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxScalingGroupsInput = schema.new({
    id = id.from(_N, "ListKxScalingGroupsInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "ListKxScalingGroupsInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListKxScalingGroupsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxScalingGroupsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.KxScalingGroup = schema.new({
    id = id.from(_N, "KxScalingGroup"),
    type = "structure",
    members = {
        scalingGroupName = schema.new({
            id = id.from(_N, "KxScalingGroup", "scalingGroupName"),
            type = "string",
            name = "scalingGroupName",
            target_id = prelude.String.id,
        }),
        hostType = schema.new({
            id = id.from(_N, "KxScalingGroup", "hostType"),
            type = "string",
            name = "hostType",
            target_id = prelude.String.id,
        }),
        clusters = schema.new({
            id = id.from(_N, "KxScalingGroup", "clusters"),
            type = "list",
            name = "clusters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "KxScalingGroup", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "KxScalingGroup", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "KxScalingGroup", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "KxScalingGroup", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "KxScalingGroup", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListKxScalingGroupsOutput = schema.new({
    id = id.from(_N, "ListKxScalingGroupsOutput"),
    type = "structure",
    members = {
        scalingGroups = schema.new({
            id = id.from(_N, "ListKxScalingGroupsOutput", "scalingGroups"),
            type = "list",
            name = "scalingGroups",
            target_id = prelude.Document.id,
            list_member = M.KxScalingGroup,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxScalingGroupsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxUsersInput = schema.new({
    id = id.from(_N, "ListKxUsersInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "ListKxUsersInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxUsersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListKxUsersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.KxUser = schema.new({
    id = id.from(_N, "KxUser"),
    type = "structure",
    members = {
        userArn = schema.new({
            id = id.from(_N, "KxUser", "userArn"),
            type = "string",
            name = "userArn",
            target_id = prelude.String.id,
        }),
        userName = schema.new({
            id = id.from(_N, "KxUser", "userName"),
            type = "string",
            name = "userName",
            target_id = prelude.String.id,
        }),
        iamRole = schema.new({
            id = id.from(_N, "KxUser", "iamRole"),
            type = "string",
            name = "iamRole",
            target_id = prelude.String.id,
        }),
        createTimestamp = schema.new({
            id = id.from(_N, "KxUser", "createTimestamp"),
            type = "timestamp",
            name = "createTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        updateTimestamp = schema.new({
            id = id.from(_N, "KxUser", "updateTimestamp"),
            type = "timestamp",
            name = "updateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListKxUsersOutput = schema.new({
    id = id.from(_N, "ListKxUsersOutput"),
    type = "structure",
    members = {
        users = schema.new({
            id = id.from(_N, "ListKxUsersOutput", "users"),
            type = "list",
            name = "users",
            target_id = prelude.Document.id,
            list_member = M.KxUser,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxUsersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListKxVolumesInput = schema.new({
    id = id.from(_N, "ListKxVolumesInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "ListKxVolumesInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListKxVolumesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxVolumesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        volumeType = schema.new({
            id = id.from(_N, "ListKxVolumesInput", "volumeType"),
            type = "string",
            name = "volumeType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "volumeType" },
            },
        }),
    },
})

M.KxVolume = schema.new({
    id = id.from(_N, "KxVolume"),
    type = "structure",
    members = {
        volumeName = schema.new({
            id = id.from(_N, "KxVolume", "volumeName"),
            type = "string",
            name = "volumeName",
            target_id = prelude.String.id,
        }),
        volumeType = schema.new({
            id = id.from(_N, "KxVolume", "volumeType"),
            type = "string",
            name = "volumeType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "KxVolume", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "KxVolume", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "KxVolume", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        azMode = schema.new({
            id = id.from(_N, "KxVolume", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
        }),
        availabilityZoneIds = schema.new({
            id = id.from(_N, "KxVolume", "availabilityZoneIds"),
            type = "list",
            name = "availabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "KxVolume", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "KxVolume", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListKxVolumesOutput = schema.new({
    id = id.from(_N, "ListKxVolumesOutput"),
    type = "structure",
    members = {
        kxVolumeSummaries = schema.new({
            id = id.from(_N, "ListKxVolumesOutput", "kxVolumeSummaries"),
            type = "list",
            name = "kxVolumeSummaries",
            target_id = prelude.Document.id,
            list_member = M.KxVolume,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListKxVolumesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRequestException", "message"),
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
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateEnvironmentInput = schema.new({
    id = id.from(_N, "UpdateEnvironmentInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "environmentId"),
            type = "string",
            name = "environmentId",
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
        description = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        federationMode = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "federationMode"),
            type = "string",
            name = "federationMode",
            target_id = prelude.String.id,
        }),
        federationParameters = schema.new({
            id = id.from(_N, "UpdateEnvironmentInput", "federationParameters"),
            type = "structure",
            name = "federationParameters",
            target_id = id.from(_N, "FederationParameters"),
            target = M.FederationParameters,
        }),
    },
})

M.UpdateEnvironmentOutput = schema.new({
    id = id.from(_N, "UpdateEnvironmentOutput"),
    type = "structure",
    members = {
        environment = schema.new({
            id = id.from(_N, "UpdateEnvironmentOutput", "environment"),
            type = "structure",
            name = "environment",
            target_id = id.from(_N, "Environment"),
            target = M.Environment,
        }),
    },
})

M.KxClusterCodeDeploymentConfiguration = schema.new({
    id = id.from(_N, "KxClusterCodeDeploymentConfiguration"),
    type = "structure",
    members = {
        deploymentStrategy = schema.new({
            id = id.from(_N, "KxClusterCodeDeploymentConfiguration", "deploymentStrategy"),
            type = "string",
            name = "deploymentStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateKxClusterCodeConfigurationInput = schema.new({
    id = id.from(_N, "UpdateKxClusterCodeConfigurationInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxClusterCodeConfigurationInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clusterName = schema.new({
            id = id.from(_N, "UpdateKxClusterCodeConfigurationInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateKxClusterCodeConfigurationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        code = schema.new({
            id = id.from(_N, "UpdateKxClusterCodeConfigurationInput", "code"),
            type = "structure",
            name = "code",
            target_id = id.from(_N, "CodeConfiguration"),
            target = M.CodeConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        initializationScript = schema.new({
            id = id.from(_N, "UpdateKxClusterCodeConfigurationInput", "initializationScript"),
            type = "string",
            name = "initializationScript",
            target_id = prelude.String.id,
        }),
        commandLineArguments = schema.new({
            id = id.from(_N, "UpdateKxClusterCodeConfigurationInput", "commandLineArguments"),
            type = "list",
            name = "commandLineArguments",
            target_id = prelude.Document.id,
            list_member = M.KxCommandLineArgument,
        }),
        deploymentConfiguration = schema.new({
            id = id.from(_N, "UpdateKxClusterCodeConfigurationInput", "deploymentConfiguration"),
            type = "structure",
            name = "deploymentConfiguration",
            target_id = id.from(_N, "KxClusterCodeDeploymentConfiguration"),
            target = M.KxClusterCodeDeploymentConfiguration,
        }),
    },
})

M.UpdateKxClusterCodeConfigurationOutput = schema.new({
    id = id.from(_N, "UpdateKxClusterCodeConfigurationOutput"),
    type = "structure",
})

M.KxDeploymentConfiguration = schema.new({
    id = id.from(_N, "KxDeploymentConfiguration"),
    type = "structure",
    members = {
        deploymentStrategy = schema.new({
            id = id.from(_N, "KxDeploymentConfiguration", "deploymentStrategy"),
            type = "string",
            name = "deploymentStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateKxClusterDatabasesInput = schema.new({
    id = id.from(_N, "UpdateKxClusterDatabasesInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxClusterDatabasesInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clusterName = schema.new({
            id = id.from(_N, "UpdateKxClusterDatabasesInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateKxClusterDatabasesInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        databases = schema.new({
            id = id.from(_N, "UpdateKxClusterDatabasesInput", "databases"),
            type = "list",
            name = "databases",
            target_id = prelude.Document.id,
            list_member = M.KxDatabaseConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        deploymentConfiguration = schema.new({
            id = id.from(_N, "UpdateKxClusterDatabasesInput", "deploymentConfiguration"),
            type = "structure",
            name = "deploymentConfiguration",
            target_id = id.from(_N, "KxDeploymentConfiguration"),
            target = M.KxDeploymentConfiguration,
        }),
    },
})

M.UpdateKxClusterDatabasesOutput = schema.new({
    id = id.from(_N, "UpdateKxClusterDatabasesOutput"),
    type = "structure",
})

M.UpdateKxDatabaseInput = schema.new({
    id = id.from(_N, "UpdateKxDatabaseInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxDatabaseInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "UpdateKxDatabaseInput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateKxDatabaseInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateKxDatabaseInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateKxDatabaseOutput = schema.new({
    id = id.from(_N, "UpdateKxDatabaseOutput"),
    type = "structure",
    members = {
        databaseName = schema.new({
            id = id.from(_N, "UpdateKxDatabaseOutput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxDatabaseOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateKxDatabaseOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "UpdateKxDatabaseOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.UpdateKxDataviewInput = schema.new({
    id = id.from(_N, "UpdateKxDataviewInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxDataviewInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        databaseName = schema.new({
            id = id.from(_N, "UpdateKxDataviewInput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        dataviewName = schema.new({
            id = id.from(_N, "UpdateKxDataviewInput", "dataviewName"),
            type = "string",
            name = "dataviewName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateKxDataviewInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        changesetId = schema.new({
            id = id.from(_N, "UpdateKxDataviewInput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        segmentConfigurations = schema.new({
            id = id.from(_N, "UpdateKxDataviewInput", "segmentConfigurations"),
            type = "list",
            name = "segmentConfigurations",
            target_id = prelude.Document.id,
            list_member = M.KxDataviewSegmentConfiguration,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateKxDataviewInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateKxDataviewOutput = schema.new({
    id = id.from(_N, "UpdateKxDataviewOutput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        databaseName = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "databaseName"),
            type = "string",
            name = "databaseName",
            target_id = prelude.String.id,
        }),
        dataviewName = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "dataviewName"),
            type = "string",
            name = "dataviewName",
            target_id = prelude.String.id,
        }),
        azMode = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
        }),
        availabilityZoneId = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "availabilityZoneId"),
            type = "string",
            name = "availabilityZoneId",
            target_id = prelude.String.id,
        }),
        changesetId = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "changesetId"),
            type = "string",
            name = "changesetId",
            target_id = prelude.String.id,
        }),
        segmentConfigurations = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "segmentConfigurations"),
            type = "list",
            name = "segmentConfigurations",
            target_id = prelude.Document.id,
            list_member = M.KxDataviewSegmentConfiguration,
        }),
        activeVersions = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "activeVersions"),
            type = "list",
            name = "activeVersions",
            target_id = prelude.Document.id,
            list_member = M.KxDataviewActiveVersion,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        autoUpdate = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "autoUpdate"),
            type = "boolean",
            name = "autoUpdate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        readWrite = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "readWrite"),
            type = "boolean",
            name = "readWrite",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "UpdateKxDataviewOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.UpdateKxEnvironmentInput = schema.new({
    id = id.from(_N, "UpdateKxEnvironmentInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateKxEnvironmentOutput = schema.new({
    id = id.from(_N, "UpdateKxEnvironmentOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        awsAccountId = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "awsAccountId"),
            type = "string",
            name = "awsAccountId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        tgwStatus = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "tgwStatus"),
            type = "string",
            name = "tgwStatus",
            target_id = prelude.String.id,
        }),
        dnsStatus = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "dnsStatus"),
            type = "string",
            name = "dnsStatus",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        environmentArn = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "environmentArn"),
            type = "string",
            name = "environmentArn",
            target_id = prelude.String.id,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        dedicatedServiceAccountId = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "dedicatedServiceAccountId"),
            type = "string",
            name = "dedicatedServiceAccountId",
            target_id = prelude.String.id,
        }),
        transitGatewayConfiguration = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "transitGatewayConfiguration"),
            type = "structure",
            name = "transitGatewayConfiguration",
            target_id = id.from(_N, "TransitGatewayConfiguration"),
            target = M.TransitGatewayConfiguration,
        }),
        customDNSConfiguration = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "customDNSConfiguration"),
            type = "list",
            name = "customDNSConfiguration",
            target_id = prelude.Document.id,
            list_member = M.CustomDNSServer,
        }),
        creationTimestamp = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "creationTimestamp"),
            type = "timestamp",
            name = "creationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        updateTimestamp = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "updateTimestamp"),
            type = "timestamp",
            name = "updateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        availabilityZoneIds = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentOutput", "availabilityZoneIds"),
            type = "list",
            name = "availabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateKxEnvironmentNetworkInput = schema.new({
    id = id.from(_N, "UpdateKxEnvironmentNetworkInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        transitGatewayConfiguration = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkInput", "transitGatewayConfiguration"),
            type = "structure",
            name = "transitGatewayConfiguration",
            target_id = id.from(_N, "TransitGatewayConfiguration"),
            target = M.TransitGatewayConfiguration,
        }),
        customDNSConfiguration = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkInput", "customDNSConfiguration"),
            type = "list",
            name = "customDNSConfiguration",
            target_id = prelude.Document.id,
            list_member = M.CustomDNSServer,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateKxEnvironmentNetworkOutput = schema.new({
    id = id.from(_N, "UpdateKxEnvironmentNetworkOutput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        awsAccountId = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "awsAccountId"),
            type = "string",
            name = "awsAccountId",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        tgwStatus = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "tgwStatus"),
            type = "string",
            name = "tgwStatus",
            target_id = prelude.String.id,
        }),
        dnsStatus = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "dnsStatus"),
            type = "string",
            name = "dnsStatus",
            target_id = prelude.String.id,
        }),
        errorMessage = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "errorMessage"),
            type = "string",
            name = "errorMessage",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        environmentArn = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "environmentArn"),
            type = "string",
            name = "environmentArn",
            target_id = prelude.String.id,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        dedicatedServiceAccountId = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "dedicatedServiceAccountId"),
            type = "string",
            name = "dedicatedServiceAccountId",
            target_id = prelude.String.id,
        }),
        transitGatewayConfiguration = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "transitGatewayConfiguration"),
            type = "structure",
            name = "transitGatewayConfiguration",
            target_id = id.from(_N, "TransitGatewayConfiguration"),
            target = M.TransitGatewayConfiguration,
        }),
        customDNSConfiguration = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "customDNSConfiguration"),
            type = "list",
            name = "customDNSConfiguration",
            target_id = prelude.Document.id,
            list_member = M.CustomDNSServer,
        }),
        creationTimestamp = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "creationTimestamp"),
            type = "timestamp",
            name = "creationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        updateTimestamp = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "updateTimestamp"),
            type = "timestamp",
            name = "updateTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        availabilityZoneIds = schema.new({
            id = id.from(_N, "UpdateKxEnvironmentNetworkOutput", "availabilityZoneIds"),
            type = "list",
            name = "availabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateKxUserInput = schema.new({
    id = id.from(_N, "UpdateKxUserInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxUserInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userName = schema.new({
            id = id.from(_N, "UpdateKxUserInput", "userName"),
            type = "string",
            name = "userName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        iamRole = schema.new({
            id = id.from(_N, "UpdateKxUserInput", "iamRole"),
            type = "string",
            name = "iamRole",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateKxUserInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateKxUserOutput = schema.new({
    id = id.from(_N, "UpdateKxUserOutput"),
    type = "structure",
    members = {
        userName = schema.new({
            id = id.from(_N, "UpdateKxUserOutput", "userName"),
            type = "string",
            name = "userName",
            target_id = prelude.String.id,
        }),
        userArn = schema.new({
            id = id.from(_N, "UpdateKxUserOutput", "userArn"),
            type = "string",
            name = "userArn",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxUserOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        iamRole = schema.new({
            id = id.from(_N, "UpdateKxUserOutput", "iamRole"),
            type = "string",
            name = "iamRole",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateKxVolumeInput = schema.new({
    id = id.from(_N, "UpdateKxVolumeInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxVolumeInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        volumeName = schema.new({
            id = id.from(_N, "UpdateKxVolumeInput", "volumeName"),
            type = "string",
            name = "volumeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateKxVolumeInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateKxVolumeInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        nas1Configuration = schema.new({
            id = id.from(_N, "UpdateKxVolumeInput", "nas1Configuration"),
            type = "structure",
            name = "nas1Configuration",
            target_id = id.from(_N, "KxNAS1Configuration"),
            target = M.KxNAS1Configuration,
        }),
    },
})

M.UpdateKxVolumeOutput = schema.new({
    id = id.from(_N, "UpdateKxVolumeOutput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        volumeName = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "volumeName"),
            type = "string",
            name = "volumeName",
            target_id = prelude.String.id,
        }),
        volumeType = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "volumeType"),
            type = "string",
            name = "volumeType",
            target_id = prelude.String.id,
        }),
        volumeArn = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "volumeArn"),
            type = "string",
            name = "volumeArn",
            target_id = prelude.String.id,
        }),
        nas1Configuration = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "nas1Configuration"),
            type = "structure",
            name = "nas1Configuration",
            target_id = id.from(_N, "KxNAS1Configuration"),
            target = M.KxNAS1Configuration,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        statusReason = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        createdTimestamp = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "createdTimestamp"),
            type = "timestamp",
            name = "createdTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        azMode = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "azMode"),
            type = "string",
            name = "azMode",
            target_id = prelude.String.id,
        }),
        availabilityZoneIds = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "availabilityZoneIds"),
            type = "list",
            name = "availabilityZoneIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        attachedClusters = schema.new({
            id = id.from(_N, "UpdateKxVolumeOutput", "attachedClusters"),
            type = "list",
            name = "attachedClusters",
            target_id = prelude.Document.id,
            list_member = M.KxAttachedCluster,
        }),
    },
})

return M
