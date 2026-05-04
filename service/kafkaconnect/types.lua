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
    id = "ConnectorOperationStep",
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
    id = "ConnectorOperationSummary",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ScaleInPolicyDescription = {
    type = "structure",
    id = "ScaleInPolicyDescription",
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
    id = "ScaleOutPolicyDescription",
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
    id = "AutoScalingDescription",
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
    id = "ProvisionedCapacityDescription",
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
    id = "CapacityDescription",
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
    id = "VpcDescription",
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
    id = "ApacheKafkaClusterDescription",
    members = {
        bootstrapServers = {
            type = "string",
        },
        vpc = M.VpcDescription,
    },
}

M.KafkaClusterDescription = {
    type = "structure",
    id = "KafkaClusterDescription",
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
    id = "KafkaClusterClientAuthenticationDescription",
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
    id = "KafkaClusterEncryptionInTransitDescription",
    members = {
        encryptionType = {
            type = "string",
        },
    },
}

M.CloudWatchLogsLogDeliveryDescription = {
    type = "structure",
    id = "CloudWatchLogsLogDeliveryDescription",
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
    id = "FirehoseLogDeliveryDescription",
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
    id = "S3LogDeliveryDescription",
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
    id = "WorkerLogDeliveryDescription",
    members = {
        cloudWatchLogs = M.CloudWatchLogsLogDeliveryDescription,
        firehose = M.FirehoseLogDeliveryDescription,
        s3 = M.S3LogDeliveryDescription,
    },
}

M.LogDeliveryDescription = {
    type = "structure",
    id = "LogDeliveryDescription",
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
    id = "CustomPluginDescription",
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
    id = "PluginDescription",
    members = {
        customPlugin = M.CustomPluginDescription,
    },
}

M.WorkerConfigurationDescription = {
    type = "structure",
    id = "WorkerConfigurationDescription",
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
    id = "ConnectorSummary",
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
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "CustomPluginFileDescription",
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
    id = "S3LocationDescription",
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
    id = "CustomPluginLocationDescription",
    members = {
        s3Location = M.S3LocationDescription,
    },
}

M.CustomPluginRevisionSummary = {
    type = "structure",
    id = "CustomPluginRevisionSummary",
    members = {
        contentType = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "CustomPluginSummary",
    members = {
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "CustomPlugin",
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
    id = "Plugin",
    members = {
        customPlugin = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomPlugin }),
    },
}

M.WorkerConfigurationRevisionSummary = {
    type = "structure",
    id = "WorkerConfigurationRevisionSummary",
    members = {
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "WorkerConfigurationSummary",
    members = {
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "Vpc",
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
    id = "ApacheKafkaCluster",
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
    id = "ScaleInPolicy",
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
    id = "ScaleOutPolicy",
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
    id = "AutoScaling",
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
    id = "ScaleInPolicyUpdate",
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
    id = "ScaleOutPolicyUpdate",
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
    id = "AutoScalingUpdate",
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
    id = "BadRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ProvisionedCapacity = {
    type = "structure",
    id = "ProvisionedCapacity",
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
    id = "Capacity",
    members = {
        autoScaling = M.AutoScaling,
        provisionedCapacity = M.ProvisionedCapacity,
    },
}

M.ProvisionedCapacityUpdate = {
    type = "structure",
    id = "ProvisionedCapacityUpdate",
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
    id = "CapacityUpdate",
    members = {
        autoScaling = M.AutoScalingUpdate,
        provisionedCapacity = M.ProvisionedCapacityUpdate,
    },
}

M.CloudWatchLogsLogDelivery = {
    type = "structure",
    id = "CloudWatchLogsLogDelivery",
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
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KafkaCluster = {
    type = "structure",
    id = "KafkaCluster",
    members = {
        apacheKafkaCluster = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApacheKafkaCluster }),
    },
}

M.KafkaClusterClientAuthentication = {
    type = "structure",
    id = "KafkaClusterClientAuthentication",
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
    id = "KafkaClusterEncryptionInTransit",
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
    id = "FirehoseLogDelivery",
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
    id = "S3LogDelivery",
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
    id = "WorkerLogDelivery",
    members = {
        cloudWatchLogs = M.CloudWatchLogsLogDelivery,
        firehose = M.FirehoseLogDelivery,
        s3 = M.S3LogDelivery,
    },
}

M.LogDelivery = {
    type = "structure",
    id = "LogDelivery",
    members = {
        workerLogDelivery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkerLogDelivery }),
    },
}

M.WorkerConfiguration = {
    type = "structure",
    id = "WorkerConfiguration",
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
    id = "CreateConnectorInput",
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
    id = "CreateConnectorOutput",
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
    id = "ForbiddenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    id = "InternalServerErrorException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.S3Location = {
    type = "structure",
    id = "S3Location",
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
    id = "CustomPluginLocation",
    members = {
        s3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
    },
}

M.CreateCustomPluginInput = {
    type = "structure",
    id = "CreateCustomPluginInput",
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
    id = "CreateCustomPluginOutput",
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
    id = "CreateWorkerConfigurationInput",
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
    id = "CreateWorkerConfigurationOutput",
    members = {
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "DeleteConnectorInput",
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
    id = "DeleteConnectorOutput",
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
    id = "DeleteCustomPluginInput",
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
    id = "DeleteCustomPluginOutput",
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
    id = "DeleteWorkerConfigurationInput",
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
    id = "DeleteWorkerConfigurationOutput",
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
    id = "DescribeConnectorInput",
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
    id = "StateDescription",
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
    id = "DescribeConnectorOutput",
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
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "DescribeConnectorOperationInput",
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
    id = "WorkerSetting",
    members = {
        capacity = M.CapacityDescription,
    },
}

M.DescribeConnectorOperationOutput = {
    type = "structure",
    id = "DescribeConnectorOperationOutput",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DescribeCustomPluginInput = {
    type = "structure",
    id = "DescribeCustomPluginInput",
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
    id = "DescribeCustomPluginOutput",
    members = {
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "DescribeWorkerConfigurationInput",
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
    id = "WorkerConfigurationRevisionDescription",
    members = {
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "DescribeWorkerConfigurationOutput",
    members = {
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
    id = "ListConnectorOperationsInput",
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
    id = "ListConnectorOperationsOutput",
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
    id = "ListConnectorsInput",
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
    id = "ListConnectorsOutput",
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
    id = "ListCustomPluginsInput",
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
    id = "ListCustomPluginsOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "ListWorkerConfigurationsInput",
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
    id = "ListWorkerConfigurationsOutput",
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
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateConnectorInput = {
    type = "structure",
    id = "UpdateConnectorInput",
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
    id = "UpdateConnectorOutput",
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
