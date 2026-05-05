local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.kafkaconnect"

local M = {}

M.ConnectorOperationStep = schema.new({
    id = id.from(_N, "ConnectorOperationStep"),
    type = "structure",
    members = {
        stepType = schema.new({
            id = id.from(_N, "ConnectorOperationStep", "stepType"),
            type = "string",
            name = "stepType",
            target_id = prelude.String.id,
        }),
        stepState = schema.new({
            id = id.from(_N, "ConnectorOperationStep", "stepState"),
            type = "string",
            name = "stepState",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectorOperationSummary = schema.new({
    id = id.from(_N, "ConnectorOperationSummary"),
    type = "structure",
    members = {
        connectorOperationArn = schema.new({
            id = id.from(_N, "ConnectorOperationSummary", "connectorOperationArn"),
            type = "string",
            name = "connectorOperationArn",
            target_id = prelude.String.id,
        }),
        connectorOperationType = schema.new({
            id = id.from(_N, "ConnectorOperationSummary", "connectorOperationType"),
            type = "string",
            name = "connectorOperationType",
            target_id = prelude.String.id,
        }),
        connectorOperationState = schema.new({
            id = id.from(_N, "ConnectorOperationSummary", "connectorOperationState"),
            type = "string",
            name = "connectorOperationState",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "ConnectorOperationSummary", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "ConnectorOperationSummary", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ScaleInPolicyDescription = schema.new({
    id = id.from(_N, "ScaleInPolicyDescription"),
    type = "structure",
    members = {
        cpuUtilizationPercentage = schema.new({
            id = id.from(_N, "ScaleInPolicyDescription", "cpuUtilizationPercentage"),
            type = "integer",
            name = "cpuUtilizationPercentage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ScaleOutPolicyDescription = schema.new({
    id = id.from(_N, "ScaleOutPolicyDescription"),
    type = "structure",
    members = {
        cpuUtilizationPercentage = schema.new({
            id = id.from(_N, "ScaleOutPolicyDescription", "cpuUtilizationPercentage"),
            type = "integer",
            name = "cpuUtilizationPercentage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.AutoScalingDescription = schema.new({
    id = id.from(_N, "AutoScalingDescription"),
    type = "structure",
    members = {
        maxWorkerCount = schema.new({
            id = id.from(_N, "AutoScalingDescription", "maxWorkerCount"),
            type = "integer",
            name = "maxWorkerCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        mcuCount = schema.new({
            id = id.from(_N, "AutoScalingDescription", "mcuCount"),
            type = "integer",
            name = "mcuCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        minWorkerCount = schema.new({
            id = id.from(_N, "AutoScalingDescription", "minWorkerCount"),
            type = "integer",
            name = "minWorkerCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        scaleInPolicy = schema.new({
            id = id.from(_N, "AutoScalingDescription", "scaleInPolicy"),
            type = "structure",
            name = "scaleInPolicy",
            target_id = id.from(_N, "ScaleInPolicyDescription"),
            target = M.ScaleInPolicyDescription,
        }),
        scaleOutPolicy = schema.new({
            id = id.from(_N, "AutoScalingDescription", "scaleOutPolicy"),
            type = "structure",
            name = "scaleOutPolicy",
            target_id = id.from(_N, "ScaleOutPolicyDescription"),
            target = M.ScaleOutPolicyDescription,
        }),
        maxAutoscalingTaskCount = schema.new({
            id = id.from(_N, "AutoScalingDescription", "maxAutoscalingTaskCount"),
            type = "integer",
            name = "maxAutoscalingTaskCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ProvisionedCapacityDescription = schema.new({
    id = id.from(_N, "ProvisionedCapacityDescription"),
    type = "structure",
    members = {
        mcuCount = schema.new({
            id = id.from(_N, "ProvisionedCapacityDescription", "mcuCount"),
            type = "integer",
            name = "mcuCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        workerCount = schema.new({
            id = id.from(_N, "ProvisionedCapacityDescription", "workerCount"),
            type = "integer",
            name = "workerCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CapacityDescription = schema.new({
    id = id.from(_N, "CapacityDescription"),
    type = "structure",
    members = {
        autoScaling = schema.new({
            id = id.from(_N, "CapacityDescription", "autoScaling"),
            type = "structure",
            name = "autoScaling",
            target_id = id.from(_N, "AutoScalingDescription"),
            target = M.AutoScalingDescription,
        }),
        provisionedCapacity = schema.new({
            id = id.from(_N, "CapacityDescription", "provisionedCapacity"),
            type = "structure",
            name = "provisionedCapacity",
            target_id = id.from(_N, "ProvisionedCapacityDescription"),
            target = M.ProvisionedCapacityDescription,
        }),
    },
})

M.VpcDescription = schema.new({
    id = id.from(_N, "VpcDescription"),
    type = "structure",
    members = {
        securityGroups = schema.new({
            id = id.from(_N, "VpcDescription", "securityGroups"),
            type = "list",
            name = "securityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        subnets = schema.new({
            id = id.from(_N, "VpcDescription", "subnets"),
            type = "list",
            name = "subnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ApacheKafkaClusterDescription = schema.new({
    id = id.from(_N, "ApacheKafkaClusterDescription"),
    type = "structure",
    members = {
        bootstrapServers = schema.new({
            id = id.from(_N, "ApacheKafkaClusterDescription", "bootstrapServers"),
            type = "string",
            name = "bootstrapServers",
            target_id = prelude.String.id,
        }),
        vpc = schema.new({
            id = id.from(_N, "ApacheKafkaClusterDescription", "vpc"),
            type = "structure",
            name = "vpc",
            target_id = id.from(_N, "VpcDescription"),
            target = M.VpcDescription,
        }),
    },
})

M.KafkaClusterDescription = schema.new({
    id = id.from(_N, "KafkaClusterDescription"),
    type = "structure",
    members = {
        apacheKafkaCluster = schema.new({
            id = id.from(_N, "KafkaClusterDescription", "apacheKafkaCluster"),
            type = "structure",
            name = "apacheKafkaCluster",
            target_id = id.from(_N, "ApacheKafkaClusterDescription"),
            target = M.ApacheKafkaClusterDescription,
        }),
    },
})

M.KafkaClusterClientAuthenticationDescription = schema.new({
    id = id.from(_N, "KafkaClusterClientAuthenticationDescription"),
    type = "structure",
    members = {
        authenticationType = schema.new({
            id = id.from(_N, "KafkaClusterClientAuthenticationDescription", "authenticationType"),
            type = "string",
            name = "authenticationType",
            target_id = prelude.String.id,
        }),
    },
})

M.KafkaClusterEncryptionInTransitDescription = schema.new({
    id = id.from(_N, "KafkaClusterEncryptionInTransitDescription"),
    type = "structure",
    members = {
        encryptionType = schema.new({
            id = id.from(_N, "KafkaClusterEncryptionInTransitDescription", "encryptionType"),
            type = "string",
            name = "encryptionType",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudWatchLogsLogDeliveryDescription = schema.new({
    id = id.from(_N, "CloudWatchLogsLogDeliveryDescription"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "CloudWatchLogsLogDeliveryDescription", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        logGroup = schema.new({
            id = id.from(_N, "CloudWatchLogsLogDeliveryDescription", "logGroup"),
            type = "string",
            name = "logGroup",
            target_id = prelude.String.id,
        }),
    },
})

M.FirehoseLogDeliveryDescription = schema.new({
    id = id.from(_N, "FirehoseLogDeliveryDescription"),
    type = "structure",
    members = {
        deliveryStream = schema.new({
            id = id.from(_N, "FirehoseLogDeliveryDescription", "deliveryStream"),
            type = "string",
            name = "deliveryStream",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "FirehoseLogDeliveryDescription", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.S3LogDeliveryDescription = schema.new({
    id = id.from(_N, "S3LogDeliveryDescription"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "S3LogDeliveryDescription", "bucket"),
            type = "string",
            name = "bucket",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "S3LogDeliveryDescription", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        prefix = schema.new({
            id = id.from(_N, "S3LogDeliveryDescription", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.WorkerLogDeliveryDescription = schema.new({
    id = id.from(_N, "WorkerLogDeliveryDescription"),
    type = "structure",
    members = {
        cloudWatchLogs = schema.new({
            id = id.from(_N, "WorkerLogDeliveryDescription", "cloudWatchLogs"),
            type = "structure",
            name = "cloudWatchLogs",
            target_id = id.from(_N, "CloudWatchLogsLogDeliveryDescription"),
            target = M.CloudWatchLogsLogDeliveryDescription,
        }),
        firehose = schema.new({
            id = id.from(_N, "WorkerLogDeliveryDescription", "firehose"),
            type = "structure",
            name = "firehose",
            target_id = id.from(_N, "FirehoseLogDeliveryDescription"),
            target = M.FirehoseLogDeliveryDescription,
        }),
        s3 = schema.new({
            id = id.from(_N, "WorkerLogDeliveryDescription", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3LogDeliveryDescription"),
            target = M.S3LogDeliveryDescription,
        }),
    },
})

M.LogDeliveryDescription = schema.new({
    id = id.from(_N, "LogDeliveryDescription"),
    type = "structure",
    members = {
        workerLogDelivery = schema.new({
            id = id.from(_N, "LogDeliveryDescription", "workerLogDelivery"),
            type = "structure",
            name = "workerLogDelivery",
            target_id = id.from(_N, "WorkerLogDeliveryDescription"),
            target = M.WorkerLogDeliveryDescription,
        }),
    },
})

M.CustomPluginDescription = schema.new({
    id = id.from(_N, "CustomPluginDescription"),
    type = "structure",
    members = {
        customPluginArn = schema.new({
            id = id.from(_N, "CustomPluginDescription", "customPluginArn"),
            type = "string",
            name = "customPluginArn",
            target_id = prelude.String.id,
        }),
        revision = schema.new({
            id = id.from(_N, "CustomPluginDescription", "revision"),
            type = "long",
            name = "revision",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.PluginDescription = schema.new({
    id = id.from(_N, "PluginDescription"),
    type = "structure",
    members = {
        customPlugin = schema.new({
            id = id.from(_N, "PluginDescription", "customPlugin"),
            type = "structure",
            name = "customPlugin",
            target_id = id.from(_N, "CustomPluginDescription"),
            target = M.CustomPluginDescription,
        }),
    },
})

M.WorkerConfigurationDescription = schema.new({
    id = id.from(_N, "WorkerConfigurationDescription"),
    type = "structure",
    members = {
        revision = schema.new({
            id = id.from(_N, "WorkerConfigurationDescription", "revision"),
            type = "long",
            name = "revision",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        workerConfigurationArn = schema.new({
            id = id.from(_N, "WorkerConfigurationDescription", "workerConfigurationArn"),
            type = "string",
            name = "workerConfigurationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ConnectorSummary = schema.new({
    id = id.from(_N, "ConnectorSummary"),
    type = "structure",
    members = {
        capacity = schema.new({
            id = id.from(_N, "ConnectorSummary", "capacity"),
            type = "structure",
            name = "capacity",
            target_id = id.from(_N, "CapacityDescription"),
            target = M.CapacityDescription,
        }),
        connectorArn = schema.new({
            id = id.from(_N, "ConnectorSummary", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
        }),
        connectorDescription = schema.new({
            id = id.from(_N, "ConnectorSummary", "connectorDescription"),
            type = "string",
            name = "connectorDescription",
            target_id = prelude.String.id,
        }),
        connectorName = schema.new({
            id = id.from(_N, "ConnectorSummary", "connectorName"),
            type = "string",
            name = "connectorName",
            target_id = prelude.String.id,
        }),
        connectorState = schema.new({
            id = id.from(_N, "ConnectorSummary", "connectorState"),
            type = "string",
            name = "connectorState",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "ConnectorSummary", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        currentVersion = schema.new({
            id = id.from(_N, "ConnectorSummary", "currentVersion"),
            type = "string",
            name = "currentVersion",
            target_id = prelude.String.id,
        }),
        kafkaCluster = schema.new({
            id = id.from(_N, "ConnectorSummary", "kafkaCluster"),
            type = "structure",
            name = "kafkaCluster",
            target_id = id.from(_N, "KafkaClusterDescription"),
            target = M.KafkaClusterDescription,
        }),
        kafkaClusterClientAuthentication = schema.new({
            id = id.from(_N, "ConnectorSummary", "kafkaClusterClientAuthentication"),
            type = "structure",
            name = "kafkaClusterClientAuthentication",
            target_id = id.from(_N, "KafkaClusterClientAuthenticationDescription"),
            target = M.KafkaClusterClientAuthenticationDescription,
        }),
        kafkaClusterEncryptionInTransit = schema.new({
            id = id.from(_N, "ConnectorSummary", "kafkaClusterEncryptionInTransit"),
            type = "structure",
            name = "kafkaClusterEncryptionInTransit",
            target_id = id.from(_N, "KafkaClusterEncryptionInTransitDescription"),
            target = M.KafkaClusterEncryptionInTransitDescription,
        }),
        kafkaConnectVersion = schema.new({
            id = id.from(_N, "ConnectorSummary", "kafkaConnectVersion"),
            type = "string",
            name = "kafkaConnectVersion",
            target_id = prelude.String.id,
        }),
        logDelivery = schema.new({
            id = id.from(_N, "ConnectorSummary", "logDelivery"),
            type = "structure",
            name = "logDelivery",
            target_id = id.from(_N, "LogDeliveryDescription"),
            target = M.LogDeliveryDescription,
        }),
        networkType = schema.new({
            id = id.from(_N, "ConnectorSummary", "networkType"),
            type = "string",
            name = "networkType",
            target_id = prelude.String.id,
        }),
        plugins = schema.new({
            id = id.from(_N, "ConnectorSummary", "plugins"),
            type = "list",
            name = "plugins",
            target_id = prelude.Document.id,
            list_member = M.PluginDescription,
        }),
        serviceExecutionRoleArn = schema.new({
            id = id.from(_N, "ConnectorSummary", "serviceExecutionRoleArn"),
            type = "string",
            name = "serviceExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        workerConfiguration = schema.new({
            id = id.from(_N, "ConnectorSummary", "workerConfiguration"),
            type = "structure",
            name = "workerConfiguration",
            target_id = id.from(_N, "WorkerConfigurationDescription"),
            target = M.WorkerConfigurationDescription,
        }),
    },
})

M.CustomPluginFileDescription = schema.new({
    id = id.from(_N, "CustomPluginFileDescription"),
    type = "structure",
    members = {
        fileMd5 = schema.new({
            id = id.from(_N, "CustomPluginFileDescription", "fileMd5"),
            type = "string",
            name = "fileMd5",
            target_id = prelude.String.id,
        }),
        fileSize = schema.new({
            id = id.from(_N, "CustomPluginFileDescription", "fileSize"),
            type = "long",
            name = "fileSize",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.S3LocationDescription = schema.new({
    id = id.from(_N, "S3LocationDescription"),
    type = "structure",
    members = {
        bucketArn = schema.new({
            id = id.from(_N, "S3LocationDescription", "bucketArn"),
            type = "string",
            name = "bucketArn",
            target_id = prelude.String.id,
        }),
        fileKey = schema.new({
            id = id.from(_N, "S3LocationDescription", "fileKey"),
            type = "string",
            name = "fileKey",
            target_id = prelude.String.id,
        }),
        objectVersion = schema.new({
            id = id.from(_N, "S3LocationDescription", "objectVersion"),
            type = "string",
            name = "objectVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomPluginLocationDescription = schema.new({
    id = id.from(_N, "CustomPluginLocationDescription"),
    type = "structure",
    members = {
        s3Location = schema.new({
            id = id.from(_N, "CustomPluginLocationDescription", "s3Location"),
            type = "structure",
            name = "s3Location",
            target_id = id.from(_N, "S3LocationDescription"),
            target = M.S3LocationDescription,
        }),
    },
})

M.CustomPluginRevisionSummary = schema.new({
    id = id.from(_N, "CustomPluginRevisionSummary"),
    type = "structure",
    members = {
        contentType = schema.new({
            id = id.from(_N, "CustomPluginRevisionSummary", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "CustomPluginRevisionSummary", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        description = schema.new({
            id = id.from(_N, "CustomPluginRevisionSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        fileDescription = schema.new({
            id = id.from(_N, "CustomPluginRevisionSummary", "fileDescription"),
            type = "structure",
            name = "fileDescription",
            target_id = id.from(_N, "CustomPluginFileDescription"),
            target = M.CustomPluginFileDescription,
        }),
        location = schema.new({
            id = id.from(_N, "CustomPluginRevisionSummary", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "CustomPluginLocationDescription"),
            target = M.CustomPluginLocationDescription,
        }),
        revision = schema.new({
            id = id.from(_N, "CustomPluginRevisionSummary", "revision"),
            type = "long",
            name = "revision",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CustomPluginSummary = schema.new({
    id = id.from(_N, "CustomPluginSummary"),
    type = "structure",
    members = {
        creationTime = schema.new({
            id = id.from(_N, "CustomPluginSummary", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        customPluginArn = schema.new({
            id = id.from(_N, "CustomPluginSummary", "customPluginArn"),
            type = "string",
            name = "customPluginArn",
            target_id = prelude.String.id,
        }),
        customPluginState = schema.new({
            id = id.from(_N, "CustomPluginSummary", "customPluginState"),
            type = "string",
            name = "customPluginState",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CustomPluginSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        latestRevision = schema.new({
            id = id.from(_N, "CustomPluginSummary", "latestRevision"),
            type = "structure",
            name = "latestRevision",
            target_id = id.from(_N, "CustomPluginRevisionSummary"),
            target = M.CustomPluginRevisionSummary,
        }),
        name = schema.new({
            id = id.from(_N, "CustomPluginSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomPlugin = schema.new({
    id = id.from(_N, "CustomPlugin"),
    type = "structure",
    members = {
        customPluginArn = schema.new({
            id = id.from(_N, "CustomPlugin", "customPluginArn"),
            type = "string",
            name = "customPluginArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        revision = schema.new({
            id = id.from(_N, "CustomPlugin", "revision"),
            type = "long",
            name = "revision",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.Plugin = schema.new({
    id = id.from(_N, "Plugin"),
    type = "structure",
    members = {
        customPlugin = schema.new({
            id = id.from(_N, "Plugin", "customPlugin"),
            type = "structure",
            name = "customPlugin",
            target_id = id.from(_N, "CustomPlugin"),
            target = M.CustomPlugin,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WorkerConfigurationRevisionSummary = schema.new({
    id = id.from(_N, "WorkerConfigurationRevisionSummary"),
    type = "structure",
    members = {
        creationTime = schema.new({
            id = id.from(_N, "WorkerConfigurationRevisionSummary", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        description = schema.new({
            id = id.from(_N, "WorkerConfigurationRevisionSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        revision = schema.new({
            id = id.from(_N, "WorkerConfigurationRevisionSummary", "revision"),
            type = "long",
            name = "revision",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.WorkerConfigurationSummary = schema.new({
    id = id.from(_N, "WorkerConfigurationSummary"),
    type = "structure",
    members = {
        creationTime = schema.new({
            id = id.from(_N, "WorkerConfigurationSummary", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        description = schema.new({
            id = id.from(_N, "WorkerConfigurationSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        latestRevision = schema.new({
            id = id.from(_N, "WorkerConfigurationSummary", "latestRevision"),
            type = "structure",
            name = "latestRevision",
            target_id = id.from(_N, "WorkerConfigurationRevisionSummary"),
            target = M.WorkerConfigurationRevisionSummary,
        }),
        name = schema.new({
            id = id.from(_N, "WorkerConfigurationSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        workerConfigurationArn = schema.new({
            id = id.from(_N, "WorkerConfigurationSummary", "workerConfigurationArn"),
            type = "string",
            name = "workerConfigurationArn",
            target_id = prelude.String.id,
        }),
        workerConfigurationState = schema.new({
            id = id.from(_N, "WorkerConfigurationSummary", "workerConfigurationState"),
            type = "string",
            name = "workerConfigurationState",
            target_id = prelude.String.id,
        }),
    },
})

M.Vpc = schema.new({
    id = id.from(_N, "Vpc"),
    type = "structure",
    members = {
        securityGroups = schema.new({
            id = id.from(_N, "Vpc", "securityGroups"),
            type = "list",
            name = "securityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        subnets = schema.new({
            id = id.from(_N, "Vpc", "subnets"),
            type = "list",
            name = "subnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ApacheKafkaCluster = schema.new({
    id = id.from(_N, "ApacheKafkaCluster"),
    type = "structure",
    members = {
        bootstrapServers = schema.new({
            id = id.from(_N, "ApacheKafkaCluster", "bootstrapServers"),
            type = "string",
            name = "bootstrapServers",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpc = schema.new({
            id = id.from(_N, "ApacheKafkaCluster", "vpc"),
            type = "structure",
            name = "vpc",
            target_id = id.from(_N, "Vpc"),
            target = M.Vpc,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ScaleInPolicy = schema.new({
    id = id.from(_N, "ScaleInPolicy"),
    type = "structure",
    members = {
        cpuUtilizationPercentage = schema.new({
            id = id.from(_N, "ScaleInPolicy", "cpuUtilizationPercentage"),
            type = "integer",
            name = "cpuUtilizationPercentage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ScaleOutPolicy = schema.new({
    id = id.from(_N, "ScaleOutPolicy"),
    type = "structure",
    members = {
        cpuUtilizationPercentage = schema.new({
            id = id.from(_N, "ScaleOutPolicy", "cpuUtilizationPercentage"),
            type = "integer",
            name = "cpuUtilizationPercentage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.AutoScaling = schema.new({
    id = id.from(_N, "AutoScaling"),
    type = "structure",
    members = {
        maxWorkerCount = schema.new({
            id = id.from(_N, "AutoScaling", "maxWorkerCount"),
            type = "integer",
            name = "maxWorkerCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        mcuCount = schema.new({
            id = id.from(_N, "AutoScaling", "mcuCount"),
            type = "integer",
            name = "mcuCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        minWorkerCount = schema.new({
            id = id.from(_N, "AutoScaling", "minWorkerCount"),
            type = "integer",
            name = "minWorkerCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        scaleInPolicy = schema.new({
            id = id.from(_N, "AutoScaling", "scaleInPolicy"),
            type = "structure",
            name = "scaleInPolicy",
            target_id = id.from(_N, "ScaleInPolicy"),
            target = M.ScaleInPolicy,
        }),
        scaleOutPolicy = schema.new({
            id = id.from(_N, "AutoScaling", "scaleOutPolicy"),
            type = "structure",
            name = "scaleOutPolicy",
            target_id = id.from(_N, "ScaleOutPolicy"),
            target = M.ScaleOutPolicy,
        }),
        maxAutoscalingTaskCount = schema.new({
            id = id.from(_N, "AutoScaling", "maxAutoscalingTaskCount"),
            type = "integer",
            name = "maxAutoscalingTaskCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ScaleInPolicyUpdate = schema.new({
    id = id.from(_N, "ScaleInPolicyUpdate"),
    type = "structure",
    members = {
        cpuUtilizationPercentage = schema.new({
            id = id.from(_N, "ScaleInPolicyUpdate", "cpuUtilizationPercentage"),
            type = "integer",
            name = "cpuUtilizationPercentage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ScaleOutPolicyUpdate = schema.new({
    id = id.from(_N, "ScaleOutPolicyUpdate"),
    type = "structure",
    members = {
        cpuUtilizationPercentage = schema.new({
            id = id.from(_N, "ScaleOutPolicyUpdate", "cpuUtilizationPercentage"),
            type = "integer",
            name = "cpuUtilizationPercentage",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.AutoScalingUpdate = schema.new({
    id = id.from(_N, "AutoScalingUpdate"),
    type = "structure",
    members = {
        maxWorkerCount = schema.new({
            id = id.from(_N, "AutoScalingUpdate", "maxWorkerCount"),
            type = "integer",
            name = "maxWorkerCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        mcuCount = schema.new({
            id = id.from(_N, "AutoScalingUpdate", "mcuCount"),
            type = "integer",
            name = "mcuCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        minWorkerCount = schema.new({
            id = id.from(_N, "AutoScalingUpdate", "minWorkerCount"),
            type = "integer",
            name = "minWorkerCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        scaleInPolicy = schema.new({
            id = id.from(_N, "AutoScalingUpdate", "scaleInPolicy"),
            type = "structure",
            name = "scaleInPolicy",
            target_id = id.from(_N, "ScaleInPolicyUpdate"),
            target = M.ScaleInPolicyUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        scaleOutPolicy = schema.new({
            id = id.from(_N, "AutoScalingUpdate", "scaleOutPolicy"),
            type = "structure",
            name = "scaleOutPolicy",
            target_id = id.from(_N, "ScaleOutPolicyUpdate"),
            target = M.ScaleOutPolicyUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxAutoscalingTaskCount = schema.new({
            id = id.from(_N, "AutoScalingUpdate", "maxAutoscalingTaskCount"),
            type = "integer",
            name = "maxAutoscalingTaskCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BadRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisionedCapacity = schema.new({
    id = id.from(_N, "ProvisionedCapacity"),
    type = "structure",
    members = {
        mcuCount = schema.new({
            id = id.from(_N, "ProvisionedCapacity", "mcuCount"),
            type = "integer",
            name = "mcuCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        workerCount = schema.new({
            id = id.from(_N, "ProvisionedCapacity", "workerCount"),
            type = "integer",
            name = "workerCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.Capacity = schema.new({
    id = id.from(_N, "Capacity"),
    type = "structure",
    members = {
        autoScaling = schema.new({
            id = id.from(_N, "Capacity", "autoScaling"),
            type = "structure",
            name = "autoScaling",
            target_id = id.from(_N, "AutoScaling"),
            target = M.AutoScaling,
        }),
        provisionedCapacity = schema.new({
            id = id.from(_N, "Capacity", "provisionedCapacity"),
            type = "structure",
            name = "provisionedCapacity",
            target_id = id.from(_N, "ProvisionedCapacity"),
            target = M.ProvisionedCapacity,
        }),
    },
})

M.ProvisionedCapacityUpdate = schema.new({
    id = id.from(_N, "ProvisionedCapacityUpdate"),
    type = "structure",
    members = {
        mcuCount = schema.new({
            id = id.from(_N, "ProvisionedCapacityUpdate", "mcuCount"),
            type = "integer",
            name = "mcuCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        workerCount = schema.new({
            id = id.from(_N, "ProvisionedCapacityUpdate", "workerCount"),
            type = "integer",
            name = "workerCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CapacityUpdate = schema.new({
    id = id.from(_N, "CapacityUpdate"),
    type = "structure",
    members = {
        autoScaling = schema.new({
            id = id.from(_N, "CapacityUpdate", "autoScaling"),
            type = "structure",
            name = "autoScaling",
            target_id = id.from(_N, "AutoScalingUpdate"),
            target = M.AutoScalingUpdate,
        }),
        provisionedCapacity = schema.new({
            id = id.from(_N, "CapacityUpdate", "provisionedCapacity"),
            type = "structure",
            name = "provisionedCapacity",
            target_id = id.from(_N, "ProvisionedCapacityUpdate"),
            target = M.ProvisionedCapacityUpdate,
        }),
    },
})

M.CloudWatchLogsLogDelivery = schema.new({
    id = id.from(_N, "CloudWatchLogsLogDelivery"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "CloudWatchLogsLogDelivery", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        logGroup = schema.new({
            id = id.from(_N, "CloudWatchLogsLogDelivery", "logGroup"),
            type = "string",
            name = "logGroup",
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
    },
})

M.KafkaCluster = schema.new({
    id = id.from(_N, "KafkaCluster"),
    type = "structure",
    members = {
        apacheKafkaCluster = schema.new({
            id = id.from(_N, "KafkaCluster", "apacheKafkaCluster"),
            type = "structure",
            name = "apacheKafkaCluster",
            target_id = id.from(_N, "ApacheKafkaCluster"),
            target = M.ApacheKafkaCluster,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KafkaClusterClientAuthentication = schema.new({
    id = id.from(_N, "KafkaClusterClientAuthentication"),
    type = "structure",
    members = {
        authenticationType = schema.new({
            id = id.from(_N, "KafkaClusterClientAuthentication", "authenticationType"),
            type = "string",
            name = "authenticationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KafkaClusterEncryptionInTransit = schema.new({
    id = id.from(_N, "KafkaClusterEncryptionInTransit"),
    type = "structure",
    members = {
        encryptionType = schema.new({
            id = id.from(_N, "KafkaClusterEncryptionInTransit", "encryptionType"),
            type = "string",
            name = "encryptionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FirehoseLogDelivery = schema.new({
    id = id.from(_N, "FirehoseLogDelivery"),
    type = "structure",
    members = {
        deliveryStream = schema.new({
            id = id.from(_N, "FirehoseLogDelivery", "deliveryStream"),
            type = "string",
            name = "deliveryStream",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "FirehoseLogDelivery", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.S3LogDelivery = schema.new({
    id = id.from(_N, "S3LogDelivery"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "S3LogDelivery", "bucket"),
            type = "string",
            name = "bucket",
            target_id = prelude.String.id,
        }),
        enabled = schema.new({
            id = id.from(_N, "S3LogDelivery", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        prefix = schema.new({
            id = id.from(_N, "S3LogDelivery", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
    },
})

M.WorkerLogDelivery = schema.new({
    id = id.from(_N, "WorkerLogDelivery"),
    type = "structure",
    members = {
        cloudWatchLogs = schema.new({
            id = id.from(_N, "WorkerLogDelivery", "cloudWatchLogs"),
            type = "structure",
            name = "cloudWatchLogs",
            target_id = id.from(_N, "CloudWatchLogsLogDelivery"),
            target = M.CloudWatchLogsLogDelivery,
        }),
        firehose = schema.new({
            id = id.from(_N, "WorkerLogDelivery", "firehose"),
            type = "structure",
            name = "firehose",
            target_id = id.from(_N, "FirehoseLogDelivery"),
            target = M.FirehoseLogDelivery,
        }),
        s3 = schema.new({
            id = id.from(_N, "WorkerLogDelivery", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3LogDelivery"),
            target = M.S3LogDelivery,
        }),
    },
})

M.LogDelivery = schema.new({
    id = id.from(_N, "LogDelivery"),
    type = "structure",
    members = {
        workerLogDelivery = schema.new({
            id = id.from(_N, "LogDelivery", "workerLogDelivery"),
            type = "structure",
            name = "workerLogDelivery",
            target_id = id.from(_N, "WorkerLogDelivery"),
            target = M.WorkerLogDelivery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WorkerConfiguration = schema.new({
    id = id.from(_N, "WorkerConfiguration"),
    type = "structure",
    members = {
        revision = schema.new({
            id = id.from(_N, "WorkerConfiguration", "revision"),
            type = "long",
            name = "revision",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        workerConfigurationArn = schema.new({
            id = id.from(_N, "WorkerConfiguration", "workerConfigurationArn"),
            type = "string",
            name = "workerConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateConnectorInput = schema.new({
    id = id.from(_N, "CreateConnectorInput"),
    type = "structure",
    members = {
        capacity = schema.new({
            id = id.from(_N, "CreateConnectorInput", "capacity"),
            type = "structure",
            name = "capacity",
            target_id = id.from(_N, "Capacity"),
            target = M.Capacity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectorConfiguration = schema.new({
            id = id.from(_N, "CreateConnectorInput", "connectorConfiguration"),
            type = "map",
            name = "connectorConfiguration",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        connectorDescription = schema.new({
            id = id.from(_N, "CreateConnectorInput", "connectorDescription"),
            type = "string",
            name = "connectorDescription",
            target_id = prelude.String.id,
        }),
        connectorName = schema.new({
            id = id.from(_N, "CreateConnectorInput", "connectorName"),
            type = "string",
            name = "connectorName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kafkaCluster = schema.new({
            id = id.from(_N, "CreateConnectorInput", "kafkaCluster"),
            type = "structure",
            name = "kafkaCluster",
            target_id = id.from(_N, "KafkaCluster"),
            target = M.KafkaCluster,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kafkaClusterClientAuthentication = schema.new({
            id = id.from(_N, "CreateConnectorInput", "kafkaClusterClientAuthentication"),
            type = "structure",
            name = "kafkaClusterClientAuthentication",
            target_id = id.from(_N, "KafkaClusterClientAuthentication"),
            target = M.KafkaClusterClientAuthentication,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kafkaClusterEncryptionInTransit = schema.new({
            id = id.from(_N, "CreateConnectorInput", "kafkaClusterEncryptionInTransit"),
            type = "structure",
            name = "kafkaClusterEncryptionInTransit",
            target_id = id.from(_N, "KafkaClusterEncryptionInTransit"),
            target = M.KafkaClusterEncryptionInTransit,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kafkaConnectVersion = schema.new({
            id = id.from(_N, "CreateConnectorInput", "kafkaConnectVersion"),
            type = "string",
            name = "kafkaConnectVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logDelivery = schema.new({
            id = id.from(_N, "CreateConnectorInput", "logDelivery"),
            type = "structure",
            name = "logDelivery",
            target_id = id.from(_N, "LogDelivery"),
            target = M.LogDelivery,
        }),
        networkType = schema.new({
            id = id.from(_N, "CreateConnectorInput", "networkType"),
            type = "string",
            name = "networkType",
            target_id = prelude.String.id,
        }),
        plugins = schema.new({
            id = id.from(_N, "CreateConnectorInput", "plugins"),
            type = "list",
            name = "plugins",
            target_id = prelude.Document.id,
            list_member = M.Plugin,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceExecutionRoleArn = schema.new({
            id = id.from(_N, "CreateConnectorInput", "serviceExecutionRoleArn"),
            type = "string",
            name = "serviceExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workerConfiguration = schema.new({
            id = id.from(_N, "CreateConnectorInput", "workerConfiguration"),
            type = "structure",
            name = "workerConfiguration",
            target_id = id.from(_N, "WorkerConfiguration"),
            target = M.WorkerConfiguration,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateConnectorInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateConnectorOutput = schema.new({
    id = id.from(_N, "CreateConnectorOutput"),
    type = "structure",
    members = {
        connectorArn = schema.new({
            id = id.from(_N, "CreateConnectorOutput", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
        }),
        connectorName = schema.new({
            id = id.from(_N, "CreateConnectorOutput", "connectorName"),
            type = "string",
            name = "connectorName",
            target_id = prelude.String.id,
        }),
        connectorState = schema.new({
            id = id.from(_N, "CreateConnectorOutput", "connectorState"),
            type = "string",
            name = "connectorState",
            target_id = prelude.String.id,
        }),
    },
})

M.ForbiddenException = schema.new({
    id = id.from(_N, "ForbiddenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ForbiddenException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerErrorException = schema.new({
    id = id.from(_N, "InternalServerErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerErrorException", "message"),
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

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyRequestsException = schema.new({
    id = id.from(_N, "TooManyRequestsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyRequestsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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
        }),
    },
})

M.S3Location = schema.new({
    id = id.from(_N, "S3Location"),
    type = "structure",
    members = {
        bucketArn = schema.new({
            id = id.from(_N, "S3Location", "bucketArn"),
            type = "string",
            name = "bucketArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileKey = schema.new({
            id = id.from(_N, "S3Location", "fileKey"),
            type = "string",
            name = "fileKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        objectVersion = schema.new({
            id = id.from(_N, "S3Location", "objectVersion"),
            type = "string",
            name = "objectVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomPluginLocation = schema.new({
    id = id.from(_N, "CustomPluginLocation"),
    type = "structure",
    members = {
        s3Location = schema.new({
            id = id.from(_N, "CustomPluginLocation", "s3Location"),
            type = "structure",
            name = "s3Location",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateCustomPluginInput = schema.new({
    id = id.from(_N, "CreateCustomPluginInput"),
    type = "structure",
    members = {
        contentType = schema.new({
            id = id.from(_N, "CreateCustomPluginInput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateCustomPluginInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        location = schema.new({
            id = id.from(_N, "CreateCustomPluginInput", "location"),
            type = "structure",
            name = "location",
            target_id = id.from(_N, "CustomPluginLocation"),
            target = M.CustomPluginLocation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateCustomPluginInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateCustomPluginInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateCustomPluginOutput = schema.new({
    id = id.from(_N, "CreateCustomPluginOutput"),
    type = "structure",
    members = {
        customPluginArn = schema.new({
            id = id.from(_N, "CreateCustomPluginOutput", "customPluginArn"),
            type = "string",
            name = "customPluginArn",
            target_id = prelude.String.id,
        }),
        customPluginState = schema.new({
            id = id.from(_N, "CreateCustomPluginOutput", "customPluginState"),
            type = "string",
            name = "customPluginState",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateCustomPluginOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        revision = schema.new({
            id = id.from(_N, "CreateCustomPluginOutput", "revision"),
            type = "long",
            name = "revision",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CreateWorkerConfigurationInput = schema.new({
    id = id.from(_N, "CreateWorkerConfigurationInput"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "CreateWorkerConfigurationInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "CreateWorkerConfigurationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        propertiesFileContent = schema.new({
            id = id.from(_N, "CreateWorkerConfigurationInput", "propertiesFileContent"),
            type = "string",
            name = "propertiesFileContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateWorkerConfigurationInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateWorkerConfigurationOutput = schema.new({
    id = id.from(_N, "CreateWorkerConfigurationOutput"),
    type = "structure",
    members = {
        creationTime = schema.new({
            id = id.from(_N, "CreateWorkerConfigurationOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        latestRevision = schema.new({
            id = id.from(_N, "CreateWorkerConfigurationOutput", "latestRevision"),
            type = "structure",
            name = "latestRevision",
            target_id = id.from(_N, "WorkerConfigurationRevisionSummary"),
            target = M.WorkerConfigurationRevisionSummary,
        }),
        name = schema.new({
            id = id.from(_N, "CreateWorkerConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        workerConfigurationArn = schema.new({
            id = id.from(_N, "CreateWorkerConfigurationOutput", "workerConfigurationArn"),
            type = "string",
            name = "workerConfigurationArn",
            target_id = prelude.String.id,
        }),
        workerConfigurationState = schema.new({
            id = id.from(_N, "CreateWorkerConfigurationOutput", "workerConfigurationState"),
            type = "string",
            name = "workerConfigurationState",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteConnectorInput = schema.new({
    id = id.from(_N, "DeleteConnectorInput"),
    type = "structure",
    members = {
        connectorArn = schema.new({
            id = id.from(_N, "DeleteConnectorInput", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        currentVersion = schema.new({
            id = id.from(_N, "DeleteConnectorInput", "currentVersion"),
            type = "string",
            name = "currentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "currentVersion" },
            },
        }),
    },
})

M.DeleteConnectorOutput = schema.new({
    id = id.from(_N, "DeleteConnectorOutput"),
    type = "structure",
    members = {
        connectorArn = schema.new({
            id = id.from(_N, "DeleteConnectorOutput", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
        }),
        connectorState = schema.new({
            id = id.from(_N, "DeleteConnectorOutput", "connectorState"),
            type = "string",
            name = "connectorState",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCustomPluginInput = schema.new({
    id = id.from(_N, "DeleteCustomPluginInput"),
    type = "structure",
    members = {
        customPluginArn = schema.new({
            id = id.from(_N, "DeleteCustomPluginInput", "customPluginArn"),
            type = "string",
            name = "customPluginArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteCustomPluginOutput = schema.new({
    id = id.from(_N, "DeleteCustomPluginOutput"),
    type = "structure",
    members = {
        customPluginArn = schema.new({
            id = id.from(_N, "DeleteCustomPluginOutput", "customPluginArn"),
            type = "string",
            name = "customPluginArn",
            target_id = prelude.String.id,
        }),
        customPluginState = schema.new({
            id = id.from(_N, "DeleteCustomPluginOutput", "customPluginState"),
            type = "string",
            name = "customPluginState",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteWorkerConfigurationInput = schema.new({
    id = id.from(_N, "DeleteWorkerConfigurationInput"),
    type = "structure",
    members = {
        workerConfigurationArn = schema.new({
            id = id.from(_N, "DeleteWorkerConfigurationInput", "workerConfigurationArn"),
            type = "string",
            name = "workerConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteWorkerConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteWorkerConfigurationOutput"),
    type = "structure",
    members = {
        workerConfigurationArn = schema.new({
            id = id.from(_N, "DeleteWorkerConfigurationOutput", "workerConfigurationArn"),
            type = "string",
            name = "workerConfigurationArn",
            target_id = prelude.String.id,
        }),
        workerConfigurationState = schema.new({
            id = id.from(_N, "DeleteWorkerConfigurationOutput", "workerConfigurationState"),
            type = "string",
            name = "workerConfigurationState",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConnectorInput = schema.new({
    id = id.from(_N, "DescribeConnectorInput"),
    type = "structure",
    members = {
        connectorArn = schema.new({
            id = id.from(_N, "DescribeConnectorInput", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StateDescription = schema.new({
    id = id.from(_N, "StateDescription"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "StateDescription", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "StateDescription", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeConnectorOutput = schema.new({
    id = id.from(_N, "DescribeConnectorOutput"),
    type = "structure",
    members = {
        capacity = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "capacity"),
            type = "structure",
            name = "capacity",
            target_id = id.from(_N, "CapacityDescription"),
            target = M.CapacityDescription,
        }),
        connectorArn = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
        }),
        connectorConfiguration = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "connectorConfiguration"),
            type = "map",
            name = "connectorConfiguration",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        connectorDescription = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "connectorDescription"),
            type = "string",
            name = "connectorDescription",
            target_id = prelude.String.id,
        }),
        connectorName = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "connectorName"),
            type = "string",
            name = "connectorName",
            target_id = prelude.String.id,
        }),
        connectorState = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "connectorState"),
            type = "string",
            name = "connectorState",
            target_id = prelude.String.id,
        }),
        creationTime = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        currentVersion = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "currentVersion"),
            type = "string",
            name = "currentVersion",
            target_id = prelude.String.id,
        }),
        kafkaCluster = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "kafkaCluster"),
            type = "structure",
            name = "kafkaCluster",
            target_id = id.from(_N, "KafkaClusterDescription"),
            target = M.KafkaClusterDescription,
        }),
        kafkaClusterClientAuthentication = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "kafkaClusterClientAuthentication"),
            type = "structure",
            name = "kafkaClusterClientAuthentication",
            target_id = id.from(_N, "KafkaClusterClientAuthenticationDescription"),
            target = M.KafkaClusterClientAuthenticationDescription,
        }),
        kafkaClusterEncryptionInTransit = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "kafkaClusterEncryptionInTransit"),
            type = "structure",
            name = "kafkaClusterEncryptionInTransit",
            target_id = id.from(_N, "KafkaClusterEncryptionInTransitDescription"),
            target = M.KafkaClusterEncryptionInTransitDescription,
        }),
        kafkaConnectVersion = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "kafkaConnectVersion"),
            type = "string",
            name = "kafkaConnectVersion",
            target_id = prelude.String.id,
        }),
        logDelivery = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "logDelivery"),
            type = "structure",
            name = "logDelivery",
            target_id = id.from(_N, "LogDeliveryDescription"),
            target = M.LogDeliveryDescription,
        }),
        networkType = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "networkType"),
            type = "string",
            name = "networkType",
            target_id = prelude.String.id,
        }),
        plugins = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "plugins"),
            type = "list",
            name = "plugins",
            target_id = prelude.Document.id,
            list_member = M.PluginDescription,
        }),
        serviceExecutionRoleArn = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "serviceExecutionRoleArn"),
            type = "string",
            name = "serviceExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        workerConfiguration = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "workerConfiguration"),
            type = "structure",
            name = "workerConfiguration",
            target_id = id.from(_N, "WorkerConfigurationDescription"),
            target = M.WorkerConfigurationDescription,
        }),
        stateDescription = schema.new({
            id = id.from(_N, "DescribeConnectorOutput", "stateDescription"),
            type = "structure",
            name = "stateDescription",
            target_id = id.from(_N, "StateDescription"),
            target = M.StateDescription,
        }),
    },
})

M.DescribeConnectorOperationInput = schema.new({
    id = id.from(_N, "DescribeConnectorOperationInput"),
    type = "structure",
    members = {
        connectorOperationArn = schema.new({
            id = id.from(_N, "DescribeConnectorOperationInput", "connectorOperationArn"),
            type = "string",
            name = "connectorOperationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.WorkerSetting = schema.new({
    id = id.from(_N, "WorkerSetting"),
    type = "structure",
    members = {
        capacity = schema.new({
            id = id.from(_N, "WorkerSetting", "capacity"),
            type = "structure",
            name = "capacity",
            target_id = id.from(_N, "CapacityDescription"),
            target = M.CapacityDescription,
        }),
    },
})

M.DescribeConnectorOperationOutput = schema.new({
    id = id.from(_N, "DescribeConnectorOperationOutput"),
    type = "structure",
    members = {
        connectorArn = schema.new({
            id = id.from(_N, "DescribeConnectorOperationOutput", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
        }),
        connectorOperationArn = schema.new({
            id = id.from(_N, "DescribeConnectorOperationOutput", "connectorOperationArn"),
            type = "string",
            name = "connectorOperationArn",
            target_id = prelude.String.id,
        }),
        connectorOperationState = schema.new({
            id = id.from(_N, "DescribeConnectorOperationOutput", "connectorOperationState"),
            type = "string",
            name = "connectorOperationState",
            target_id = prelude.String.id,
        }),
        connectorOperationType = schema.new({
            id = id.from(_N, "DescribeConnectorOperationOutput", "connectorOperationType"),
            type = "string",
            name = "connectorOperationType",
            target_id = prelude.String.id,
        }),
        operationSteps = schema.new({
            id = id.from(_N, "DescribeConnectorOperationOutput", "operationSteps"),
            type = "list",
            name = "operationSteps",
            target_id = prelude.Document.id,
            list_member = M.ConnectorOperationStep,
        }),
        originWorkerSetting = schema.new({
            id = id.from(_N, "DescribeConnectorOperationOutput", "originWorkerSetting"),
            type = "structure",
            name = "originWorkerSetting",
            target_id = id.from(_N, "WorkerSetting"),
            target = M.WorkerSetting,
        }),
        originConnectorConfiguration = schema.new({
            id = id.from(_N, "DescribeConnectorOperationOutput", "originConnectorConfiguration"),
            type = "map",
            name = "originConnectorConfiguration",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        targetWorkerSetting = schema.new({
            id = id.from(_N, "DescribeConnectorOperationOutput", "targetWorkerSetting"),
            type = "structure",
            name = "targetWorkerSetting",
            target_id = id.from(_N, "WorkerSetting"),
            target = M.WorkerSetting,
        }),
        targetConnectorConfiguration = schema.new({
            id = id.from(_N, "DescribeConnectorOperationOutput", "targetConnectorConfiguration"),
            type = "map",
            name = "targetConnectorConfiguration",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        errorInfo = schema.new({
            id = id.from(_N, "DescribeConnectorOperationOutput", "errorInfo"),
            type = "structure",
            name = "errorInfo",
            target_id = id.from(_N, "StateDescription"),
            target = M.StateDescription,
        }),
        creationTime = schema.new({
            id = id.from(_N, "DescribeConnectorOperationOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        endTime = schema.new({
            id = id.from(_N, "DescribeConnectorOperationOutput", "endTime"),
            type = "timestamp",
            name = "endTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.DescribeCustomPluginInput = schema.new({
    id = id.from(_N, "DescribeCustomPluginInput"),
    type = "structure",
    members = {
        customPluginArn = schema.new({
            id = id.from(_N, "DescribeCustomPluginInput", "customPluginArn"),
            type = "string",
            name = "customPluginArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DescribeCustomPluginOutput = schema.new({
    id = id.from(_N, "DescribeCustomPluginOutput"),
    type = "structure",
    members = {
        creationTime = schema.new({
            id = id.from(_N, "DescribeCustomPluginOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        customPluginArn = schema.new({
            id = id.from(_N, "DescribeCustomPluginOutput", "customPluginArn"),
            type = "string",
            name = "customPluginArn",
            target_id = prelude.String.id,
        }),
        customPluginState = schema.new({
            id = id.from(_N, "DescribeCustomPluginOutput", "customPluginState"),
            type = "string",
            name = "customPluginState",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "DescribeCustomPluginOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        latestRevision = schema.new({
            id = id.from(_N, "DescribeCustomPluginOutput", "latestRevision"),
            type = "structure",
            name = "latestRevision",
            target_id = id.from(_N, "CustomPluginRevisionSummary"),
            target = M.CustomPluginRevisionSummary,
        }),
        name = schema.new({
            id = id.from(_N, "DescribeCustomPluginOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        stateDescription = schema.new({
            id = id.from(_N, "DescribeCustomPluginOutput", "stateDescription"),
            type = "structure",
            name = "stateDescription",
            target_id = id.from(_N, "StateDescription"),
            target = M.StateDescription,
        }),
    },
})

M.DescribeWorkerConfigurationInput = schema.new({
    id = id.from(_N, "DescribeWorkerConfigurationInput"),
    type = "structure",
    members = {
        workerConfigurationArn = schema.new({
            id = id.from(_N, "DescribeWorkerConfigurationInput", "workerConfigurationArn"),
            type = "string",
            name = "workerConfigurationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.WorkerConfigurationRevisionDescription = schema.new({
    id = id.from(_N, "WorkerConfigurationRevisionDescription"),
    type = "structure",
    members = {
        creationTime = schema.new({
            id = id.from(_N, "WorkerConfigurationRevisionDescription", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        description = schema.new({
            id = id.from(_N, "WorkerConfigurationRevisionDescription", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        propertiesFileContent = schema.new({
            id = id.from(_N, "WorkerConfigurationRevisionDescription", "propertiesFileContent"),
            type = "string",
            name = "propertiesFileContent",
            target_id = prelude.String.id,
        }),
        revision = schema.new({
            id = id.from(_N, "WorkerConfigurationRevisionDescription", "revision"),
            type = "long",
            name = "revision",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DescribeWorkerConfigurationOutput = schema.new({
    id = id.from(_N, "DescribeWorkerConfigurationOutput"),
    type = "structure",
    members = {
        creationTime = schema.new({
            id = id.from(_N, "DescribeWorkerConfigurationOutput", "creationTime"),
            type = "timestamp",
            name = "creationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        description = schema.new({
            id = id.from(_N, "DescribeWorkerConfigurationOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        latestRevision = schema.new({
            id = id.from(_N, "DescribeWorkerConfigurationOutput", "latestRevision"),
            type = "structure",
            name = "latestRevision",
            target_id = id.from(_N, "WorkerConfigurationRevisionDescription"),
            target = M.WorkerConfigurationRevisionDescription,
        }),
        name = schema.new({
            id = id.from(_N, "DescribeWorkerConfigurationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        workerConfigurationArn = schema.new({
            id = id.from(_N, "DescribeWorkerConfigurationOutput", "workerConfigurationArn"),
            type = "string",
            name = "workerConfigurationArn",
            target_id = prelude.String.id,
        }),
        workerConfigurationState = schema.new({
            id = id.from(_N, "DescribeWorkerConfigurationOutput", "workerConfigurationState"),
            type = "string",
            name = "workerConfigurationState",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectorOperationsInput = schema.new({
    id = id.from(_N, "ListConnectorOperationsInput"),
    type = "structure",
    members = {
        connectorArn = schema.new({
            id = id.from(_N, "ListConnectorOperationsInput", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListConnectorOperationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConnectorOperationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListConnectorOperationsOutput = schema.new({
    id = id.from(_N, "ListConnectorOperationsOutput"),
    type = "structure",
    members = {
        connectorOperations = schema.new({
            id = id.from(_N, "ListConnectorOperationsOutput", "connectorOperations"),
            type = "list",
            name = "connectorOperations",
            target_id = prelude.Document.id,
            list_member = M.ConnectorOperationSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConnectorOperationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConnectorsInput = schema.new({
    id = id.from(_N, "ListConnectorsInput"),
    type = "structure",
    members = {
        connectorNamePrefix = schema.new({
            id = id.from(_N, "ListConnectorsInput", "connectorNamePrefix"),
            type = "string",
            name = "connectorNamePrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "connectorNamePrefix" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListConnectorsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConnectorsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListConnectorsOutput = schema.new({
    id = id.from(_N, "ListConnectorsOutput"),
    type = "structure",
    members = {
        connectors = schema.new({
            id = id.from(_N, "ListConnectorsOutput", "connectors"),
            type = "list",
            name = "connectors",
            target_id = prelude.Document.id,
            list_member = M.ConnectorSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConnectorsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCustomPluginsInput = schema.new({
    id = id.from(_N, "ListCustomPluginsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListCustomPluginsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCustomPluginsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        namePrefix = schema.new({
            id = id.from(_N, "ListCustomPluginsInput", "namePrefix"),
            type = "string",
            name = "namePrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "namePrefix" },
            },
        }),
    },
})

M.ListCustomPluginsOutput = schema.new({
    id = id.from(_N, "ListCustomPluginsOutput"),
    type = "structure",
    members = {
        customPlugins = schema.new({
            id = id.from(_N, "ListCustomPluginsOutput", "customPlugins"),
            type = "list",
            name = "customPlugins",
            target_id = prelude.Document.id,
            list_member = M.CustomPluginSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCustomPluginsOutput", "nextToken"),
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

M.ListWorkerConfigurationsInput = schema.new({
    id = id.from(_N, "ListWorkerConfigurationsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListWorkerConfigurationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWorkerConfigurationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        namePrefix = schema.new({
            id = id.from(_N, "ListWorkerConfigurationsInput", "namePrefix"),
            type = "string",
            name = "namePrefix",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "namePrefix" },
            },
        }),
    },
})

M.ListWorkerConfigurationsOutput = schema.new({
    id = id.from(_N, "ListWorkerConfigurationsOutput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListWorkerConfigurationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        workerConfigurations = schema.new({
            id = id.from(_N, "ListWorkerConfigurationsOutput", "workerConfigurations"),
            type = "list",
            name = "workerConfigurations",
            target_id = prelude.Document.id,
            list_member = M.WorkerConfigurationSummary,
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

M.UpdateConnectorInput = schema.new({
    id = id.from(_N, "UpdateConnectorInput"),
    type = "structure",
    members = {
        capacity = schema.new({
            id = id.from(_N, "UpdateConnectorInput", "capacity"),
            type = "structure",
            name = "capacity",
            target_id = id.from(_N, "CapacityUpdate"),
            target = M.CapacityUpdate,
        }),
        connectorConfiguration = schema.new({
            id = id.from(_N, "UpdateConnectorInput", "connectorConfiguration"),
            type = "map",
            name = "connectorConfiguration",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        connectorArn = schema.new({
            id = id.from(_N, "UpdateConnectorInput", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        currentVersion = schema.new({
            id = id.from(_N, "UpdateConnectorInput", "currentVersion"),
            type = "string",
            name = "currentVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "currentVersion" },
            },
        }),
    },
})

M.UpdateConnectorOutput = schema.new({
    id = id.from(_N, "UpdateConnectorOutput"),
    type = "structure",
    members = {
        connectorArn = schema.new({
            id = id.from(_N, "UpdateConnectorOutput", "connectorArn"),
            type = "string",
            name = "connectorArn",
            target_id = prelude.String.id,
        }),
        connectorState = schema.new({
            id = id.from(_N, "UpdateConnectorOutput", "connectorState"),
            type = "string",
            name = "connectorState",
            target_id = prelude.String.id,
        }),
        connectorOperationArn = schema.new({
            id = id.from(_N, "UpdateConnectorOutput", "connectorOperationArn"),
            type = "string",
            name = "connectorOperationArn",
            target_id = prelude.String.id,
        }),
    },
})

return M
