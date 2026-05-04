local M = {}

M.ConnectorOperationStepState = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.ConnectorOperationStepType = {
    INITIALIZE_UPDATE = "INITIALIZE_UPDATE",
    FINALIZE_UPDATE = "FINALIZE_UPDATE",
    UPDATE_WORKER_SETTING = "UPDATE_WORKER_SETTING",
    UPDATE_CONNECTOR_CONFIGURATION = "UPDATE_CONNECTOR_CONFIGURATION",
    VALIDATE_UPDATE = "VALIDATE_UPDATE",
}

M.ConnectorOperationStep = {
    type = "structure",
    members = {
        stepType = {
            type = "string",
        },
        stepState = {
            type = "string",
        },
    },
}

M.ConnectorOperationState = {
    PENDING = "PENDING",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_COMPLETE = "UPDATE_COMPLETE",
    UPDATE_FAILED = "UPDATE_FAILED",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    ROLLBACK_FAILED = "ROLLBACK_FAILED",
    ROLLBACK_COMPLETE = "ROLLBACK_COMPLETE",
}

M.ConnectorOperationType = {
    UPDATE_WORKER_SETTING = "UPDATE_WORKER_SETTING",
    UPDATE_CONNECTOR_CONFIGURATION = "UPDATE_CONNECTOR_CONFIGURATION",
    ISOLATE_CONNECTOR = "ISOLATE_CONNECTOR",
    RESTORE_CONNECTOR = "RESTORE_CONNECTOR",
}

M.ConnectorOperationSummary = {
    type = "structure",
    members = {
        connectorOperationArn = {
            type = "string",
        },
        connectorOperationType = {
            type = "string",
        },
        connectorOperationState = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.ScaleInPolicyDescription = {
    type = "structure",
    members = {
        cpuUtilizationPercentage = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ScaleOutPolicyDescription = {
    type = "structure",
    members = {
        cpuUtilizationPercentage = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.AutoScalingDescription = {
    type = "structure",
    members = {
        maxWorkerCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        mcuCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        minWorkerCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        scaleInPolicy = M.ScaleInPolicyDescription,
        scaleOutPolicy = M.ScaleOutPolicyDescription,
        maxAutoscalingTaskCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ProvisionedCapacityDescription = {
    type = "structure",
    members = {
        mcuCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        workerCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.CapacityDescription = {
    type = "structure",
    members = {
        autoScaling = M.AutoScalingDescription,
        provisionedCapacity = M.ProvisionedCapacityDescription,
    },
}

M.ConnectorState = {
    RUNNING = "RUNNING",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.VpcDescription = {
    type = "structure",
    members = {
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
        subnets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ApacheKafkaClusterDescription = {
    type = "structure",
    members = {
        bootstrapServers = {
            type = "string",
        },
        vpc = M.VpcDescription,
    },
}

M.KafkaClusterDescription = {
    type = "structure",
    members = {
        apacheKafkaCluster = M.ApacheKafkaClusterDescription,
    },
}

M.KafkaClusterClientAuthenticationType = {
    NONE = "NONE",
    IAM = "IAM",
}

M.KafkaClusterClientAuthenticationDescription = {
    type = "structure",
    members = {
        authenticationType = {
            type = "string",
        },
    },
}

M.KafkaClusterEncryptionInTransitType = {
    PLAINTEXT = "PLAINTEXT",
    TLS = "TLS",
}

M.KafkaClusterEncryptionInTransitDescription = {
    type = "structure",
    members = {
        encryptionType = {
            type = "string",
        },
    },
}

M.CloudWatchLogsLogDeliveryDescription = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        logGroup = {
            type = "string",
        },
    },
}

M.FirehoseLogDeliveryDescription = {
    type = "structure",
    members = {
        deliveryStream = {
            type = "string",
        },
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.S3LogDeliveryDescription = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
        },
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        prefix = {
            type = "string",
        },
    },
}

M.WorkerLogDeliveryDescription = {
    type = "structure",
    members = {
        cloudWatchLogs = M.CloudWatchLogsLogDeliveryDescription,
        firehose = M.FirehoseLogDeliveryDescription,
        s3 = M.S3LogDeliveryDescription,
    },
}

M.LogDeliveryDescription = {
    type = "structure",
    members = {
        workerLogDelivery = M.WorkerLogDeliveryDescription,
    },
}

M.NetworkType = {
    IPV4 = "IPV4",
    DUAL = "DUAL",
}

M.CustomPluginDescription = {
    type = "structure",
    members = {
        customPluginArn = {
            type = "string",
        },
        revision = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.PluginDescription = {
    type = "structure",
    members = {
        customPlugin = M.CustomPluginDescription,
    },
}

M.WorkerConfigurationDescription = {
    type = "structure",
    members = {
        revision = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        workerConfigurationArn = {
            type = "string",
        },
    },
}

M.ConnectorSummary = {
    type = "structure",
    members = {
        capacity = M.CapacityDescription,
        connectorArn = {
            type = "string",
        },
        connectorDescription = {
            type = "string",
        },
        connectorName = {
            type = "string",
        },
        connectorState = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        currentVersion = {
            type = "string",
        },
        kafkaCluster = M.KafkaClusterDescription,
        kafkaClusterClientAuthentication = M.KafkaClusterClientAuthenticationDescription,
        kafkaClusterEncryptionInTransit = M.KafkaClusterEncryptionInTransitDescription,
        kafkaConnectVersion = {
            type = "string",
        },
        logDelivery = M.LogDeliveryDescription,
        networkType = {
            type = "string",
        },
        plugins = {
            type = "list",
            member = M.PluginDescription,
        },
        serviceExecutionRoleArn = {
            type = "string",
        },
        workerConfiguration = M.WorkerConfigurationDescription,
    },
}

M.CustomPluginState = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
}

M.CustomPluginContentType = {
    JAR = "JAR",
    ZIP = "ZIP",
}

M.CustomPluginFileDescription = {
    type = "structure",
    members = {
        fileMd5 = {
            type = "string",
        },
        fileSize = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.S3LocationDescription = {
    type = "structure",
    members = {
        bucketArn = {
            type = "string",
        },
        fileKey = {
            type = "string",
        },
        objectVersion = {
            type = "string",
        },
    },
}

M.CustomPluginLocationDescription = {
    type = "structure",
    members = {
        s3Location = M.S3LocationDescription,
    },
}

M.CustomPluginRevisionSummary = {
    type = "structure",
    members = {
        contentType = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        fileDescription = M.CustomPluginFileDescription,
        location = M.CustomPluginLocationDescription,
        revision = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.CustomPluginSummary = {
    type = "structure",
    members = {
        creationTime = {
            type = "timestamp",
        },
        customPluginArn = {
            type = "string",
        },
        customPluginState = {
            type = "string",
        },
        description = {
            type = "string",
        },
        latestRevision = M.CustomPluginRevisionSummary,
        name = {
            type = "string",
        },
    },
}

M.CustomPlugin = {
    type = "structure",
    members = {
        customPluginArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.Plugin = {
    type = "structure",
    members = {
        customPlugin = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomPlugin }),
    },
}

M.WorkerConfigurationRevisionSummary = {
    type = "structure",
    members = {
        creationTime = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        revision = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.WorkerConfigurationState = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.WorkerConfigurationSummary = {
    type = "structure",
    members = {
        creationTime = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        latestRevision = M.WorkerConfigurationRevisionSummary,
        name = {
            type = "string",
        },
        workerConfigurationArn = {
            type = "string",
        },
        workerConfigurationState = {
            type = "string",
        },
    },
}

M.Vpc = {
    type = "structure",
    members = {
        securityGroups = {
            type = "list",
            member = { type = "string" },
        },
        subnets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ApacheKafkaCluster = {
    type = "structure",
    members = {
        bootstrapServers = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpc = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Vpc }),
    },
}

M.ScaleInPolicy = {
    type = "structure",
    members = {
        cpuUtilizationPercentage = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ScaleOutPolicy = {
    type = "structure",
    members = {
        cpuUtilizationPercentage = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.AutoScaling = {
    type = "structure",
    members = {
        maxWorkerCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        mcuCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        minWorkerCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        scaleInPolicy = M.ScaleInPolicy,
        scaleOutPolicy = M.ScaleOutPolicy,
        maxAutoscalingTaskCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ScaleInPolicyUpdate = {
    type = "structure",
    members = {
        cpuUtilizationPercentage = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ScaleOutPolicyUpdate = {
    type = "structure",
    members = {
        cpuUtilizationPercentage = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.AutoScalingUpdate = {
    type = "structure",
    members = {
        maxWorkerCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        mcuCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        minWorkerCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        scaleInPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScaleInPolicyUpdate }),
        scaleOutPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScaleOutPolicyUpdate }),
        maxAutoscalingTaskCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ProvisionedCapacity = {
    type = "structure",
    members = {
        mcuCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        workerCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.Capacity = {
    type = "structure",
    members = {
        autoScaling = M.AutoScaling,
        provisionedCapacity = M.ProvisionedCapacity,
    },
}

M.ProvisionedCapacityUpdate = {
    type = "structure",
    members = {
        mcuCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        workerCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.CapacityUpdate = {
    type = "structure",
    members = {
        autoScaling = M.AutoScalingUpdate,
        provisionedCapacity = M.ProvisionedCapacityUpdate,
    },
}

M.CloudWatchLogsLogDelivery = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        logGroup = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KafkaCluster = {
    type = "structure",
    members = {
        apacheKafkaCluster = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApacheKafkaCluster }),
    },
}

M.KafkaClusterClientAuthentication = {
    type = "structure",
    members = {
        authenticationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KafkaClusterEncryptionInTransit = {
    type = "structure",
    members = {
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FirehoseLogDelivery = {
    type = "structure",
    members = {
        deliveryStream = {
            type = "string",
        },
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.S3LogDelivery = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
        },
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        prefix = {
            type = "string",
        },
    },
}

M.WorkerLogDelivery = {
    type = "structure",
    members = {
        cloudWatchLogs = M.CloudWatchLogsLogDelivery,
        firehose = M.FirehoseLogDelivery,
        s3 = M.S3LogDelivery,
    },
}

M.LogDelivery = {
    type = "structure",
    members = {
        workerLogDelivery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkerLogDelivery }),
    },
}

M.WorkerConfiguration = {
    type = "structure",
    members = {
        revision = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        workerConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConnectorInput = {
    type = "structure",
    members = {
        capacity = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Capacity }),
        connectorConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        connectorDescription = {
            type = "string",
        },
        connectorName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kafkaCluster = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KafkaCluster }),
        kafkaClusterClientAuthentication = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KafkaClusterClientAuthentication }),
        kafkaClusterEncryptionInTransit = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KafkaClusterEncryptionInTransit }),
        kafkaConnectVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logDelivery = M.LogDelivery,
        networkType = {
            type = "string",
        },
        plugins = {
            type = "list",
            member = M.Plugin,
            traits = {
                required = true,
            },
        },
        serviceExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workerConfiguration = M.WorkerConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateConnectorOutput = {
    type = "structure",
    members = {
        connectorArn = {
            type = "string",
        },
        connectorName = {
            type = "string",
        },
        connectorState = {
            type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.S3Location = {
    type = "structure",
    members = {
        bucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectVersion = {
            type = "string",
        },
    },
}

M.CustomPluginLocation = {
    type = "structure",
    members = {
        s3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
    },
}

M.CreateCustomPluginInput = {
    type = "structure",
    members = {
        contentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomPluginLocation }),
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCustomPluginOutput = {
    type = "structure",
    members = {
        customPluginArn = {
            type = "string",
        },
        customPluginState = {
            type = "string",
        },
        name = {
            type = "string",
        },
        revision = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.CreateWorkerConfigurationInput = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        propertiesFileContent = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateWorkerConfigurationOutput = {
    type = "structure",
    members = {
        creationTime = {
            type = "timestamp",
        },
        latestRevision = M.WorkerConfigurationRevisionSummary,
        name = {
            type = "string",
        },
        workerConfigurationArn = {
            type = "string",
        },
        workerConfigurationState = {
            type = "string",
        },
    },
}

M.DeleteConnectorInput = {
    type = "structure",
    members = {
        connectorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        currentVersion = {
            type = "string",
            traits = {
                http_query = "currentVersion",
            },
        },
    },
}

M.DeleteConnectorOutput = {
    type = "structure",
    members = {
        connectorArn = {
            type = "string",
        },
        connectorState = {
            type = "string",
        },
    },
}

M.DeleteCustomPluginInput = {
    type = "structure",
    members = {
        customPluginArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCustomPluginOutput = {
    type = "structure",
    members = {
        customPluginArn = {
            type = "string",
        },
        customPluginState = {
            type = "string",
        },
    },
}

M.DeleteWorkerConfigurationInput = {
    type = "structure",
    members = {
        workerConfigurationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkerConfigurationOutput = {
    type = "structure",
    members = {
        workerConfigurationArn = {
            type = "string",
        },
        workerConfigurationState = {
            type = "string",
        },
    },
}

M.DescribeConnectorInput = {
    type = "structure",
    members = {
        connectorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StateDescription = {
    type = "structure",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.DescribeConnectorOutput = {
    type = "structure",
    members = {
        capacity = M.CapacityDescription,
        connectorArn = {
            type = "string",
        },
        connectorConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        connectorDescription = {
            type = "string",
        },
        connectorName = {
            type = "string",
        },
        connectorState = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        currentVersion = {
            type = "string",
        },
        kafkaCluster = M.KafkaClusterDescription,
        kafkaClusterClientAuthentication = M.KafkaClusterClientAuthenticationDescription,
        kafkaClusterEncryptionInTransit = M.KafkaClusterEncryptionInTransitDescription,
        kafkaConnectVersion = {
            type = "string",
        },
        logDelivery = M.LogDeliveryDescription,
        networkType = {
            type = "string",
        },
        plugins = {
            type = "list",
            member = M.PluginDescription,
        },
        serviceExecutionRoleArn = {
            type = "string",
        },
        workerConfiguration = M.WorkerConfigurationDescription,
        stateDescription = M.StateDescription,
    },
}

M.DescribeConnectorOperationInput = {
    type = "structure",
    members = {
        connectorOperationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WorkerSetting = {
    type = "structure",
    members = {
        capacity = M.CapacityDescription,
    },
}

M.DescribeConnectorOperationOutput = {
    type = "structure",
    members = {
        connectorArn = {
            type = "string",
        },
        connectorOperationArn = {
            type = "string",
        },
        connectorOperationState = {
            type = "string",
        },
        connectorOperationType = {
            type = "string",
        },
        operationSteps = {
            type = "list",
            member = M.ConnectorOperationStep,
        },
        originWorkerSetting = M.WorkerSetting,
        originConnectorConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        targetWorkerSetting = M.WorkerSetting,
        targetConnectorConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        errorInfo = M.StateDescription,
        creationTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.DescribeCustomPluginInput = {
    type = "structure",
    members = {
        customPluginArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeCustomPluginOutput = {
    type = "structure",
    members = {
        creationTime = {
            type = "timestamp",
        },
        customPluginArn = {
            type = "string",
        },
        customPluginState = {
            type = "string",
        },
        description = {
            type = "string",
        },
        latestRevision = M.CustomPluginRevisionSummary,
        name = {
            type = "string",
        },
        stateDescription = M.StateDescription,
    },
}

M.DescribeWorkerConfigurationInput = {
    type = "structure",
    members = {
        workerConfigurationArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.WorkerConfigurationRevisionDescription = {
    type = "structure",
    members = {
        creationTime = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        propertiesFileContent = {
            type = "string",
        },
        revision = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeWorkerConfigurationOutput = {
    type = "structure",
    members = {
        creationTime = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        latestRevision = M.WorkerConfigurationRevisionDescription,
        name = {
            type = "string",
        },
        workerConfigurationArn = {
            type = "string",
        },
        workerConfigurationState = {
            type = "string",
        },
    },
}

M.ListConnectorOperationsInput = {
    type = "structure",
    members = {
        connectorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListConnectorOperationsOutput = {
    type = "structure",
    members = {
        connectorOperations = {
            type = "list",
            member = M.ConnectorOperationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListConnectorsInput = {
    type = "structure",
    members = {
        connectorNamePrefix = {
            type = "string",
            traits = {
                http_query = "connectorNamePrefix",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListConnectorsOutput = {
    type = "structure",
    members = {
        connectors = {
            type = "list",
            member = M.ConnectorSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCustomPluginsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        namePrefix = {
            type = "string",
            traits = {
                http_query = "namePrefix",
            },
        },
    },
}

M.ListCustomPluginsOutput = {
    type = "structure",
    members = {
        customPlugins = {
            type = "list",
            member = M.CustomPluginSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListWorkerConfigurationsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        namePrefix = {
            type = "string",
            traits = {
                http_query = "namePrefix",
            },
        },
    },
}

M.ListWorkerConfigurationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        workerConfigurations = {
            type = "list",
            member = M.WorkerConfigurationSummary,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateConnectorInput = {
    type = "structure",
    members = {
        capacity = M.CapacityUpdate,
        connectorConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        connectorArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        currentVersion = {
            type = "string",
            traits = {
                http_query = "currentVersion",
                required = true,
            },
        },
    },
}

M.UpdateConnectorOutput = {
    type = "structure",
    members = {
        connectorArn = {
            type = "string",
        },
        connectorState = {
            type = "string",
        },
        connectorOperationArn = {
            type = "string",
        },
    },
}

return M
