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
            type = "number",
        },
    },
}

M.ScaleOutPolicyDescription = {
    type = "structure",
    members = {
        cpuUtilizationPercentage = {
            type = "number",
        },
    },
}

M.AutoScalingDescription = {
    type = "structure",
    members = {
        maxWorkerCount = {
            type = "number",
        },
        mcuCount = {
            type = "number",
        },
        minWorkerCount = {
            type = "number",
        },
        scaleInPolicy = {
            type = "structure",
        },
        scaleOutPolicy = {
            type = "structure",
        },
        maxAutoscalingTaskCount = {
            type = "number",
        },
    },
}

M.ProvisionedCapacityDescription = {
    type = "structure",
    members = {
        mcuCount = {
            type = "number",
        },
        workerCount = {
            type = "number",
        },
    },
}

M.CapacityDescription = {
    type = "structure",
    members = {
        autoScaling = {
            type = "structure",
        },
        provisionedCapacity = {
            type = "structure",
        },
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
            member_type = "string",
        },
        subnets = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ApacheKafkaClusterDescription = {
    type = "structure",
    members = {
        bootstrapServers = {
            type = "string",
        },
        vpc = {
            type = "structure",
        },
    },
}

M.KafkaClusterDescription = {
    type = "structure",
    members = {
        apacheKafkaCluster = {
            type = "structure",
        },
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
        },
        prefix = {
            type = "string",
        },
    },
}

M.WorkerLogDeliveryDescription = {
    type = "structure",
    members = {
        cloudWatchLogs = {
            type = "structure",
        },
        firehose = {
            type = "structure",
        },
        s3 = {
            type = "structure",
        },
    },
}

M.LogDeliveryDescription = {
    type = "structure",
    members = {
        workerLogDelivery = {
            type = "structure",
        },
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
            type = "number",
        },
    },
}

M.PluginDescription = {
    type = "structure",
    members = {
        customPlugin = {
            type = "structure",
        },
    },
}

M.WorkerConfigurationDescription = {
    type = "structure",
    members = {
        revision = {
            type = "number",
        },
        workerConfigurationArn = {
            type = "string",
        },
    },
}

M.ConnectorSummary = {
    type = "structure",
    members = {
        capacity = {
            type = "structure",
        },
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
        kafkaCluster = {
            type = "structure",
        },
        kafkaClusterClientAuthentication = {
            type = "structure",
        },
        kafkaClusterEncryptionInTransit = {
            type = "structure",
        },
        kafkaConnectVersion = {
            type = "string",
        },
        logDelivery = {
            type = "structure",
        },
        networkType = {
            type = "string",
        },
        plugins = {
            type = "list",
            member_type = "structure",
        },
        serviceExecutionRoleArn = {
            type = "string",
        },
        workerConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
        s3Location = {
            type = "structure",
        },
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
        fileDescription = {
            type = "structure",
        },
        location = {
            type = "structure",
        },
        revision = {
            type = "number",
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
        latestRevision = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.Plugin = {
    type = "structure",
    members = {
        customPlugin = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
        latestRevision = {
            type = "structure",
        },
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
            member_type = "string",
        },
        subnets = {
            type = "list",
            member_type = "string",
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
        vpc = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ScaleInPolicy = {
    type = "structure",
    members = {
        cpuUtilizationPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ScaleOutPolicy = {
    type = "structure",
    members = {
        cpuUtilizationPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoScaling = {
    type = "structure",
    members = {
        maxWorkerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        mcuCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        minWorkerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        scaleInPolicy = {
            type = "structure",
        },
        scaleOutPolicy = {
            type = "structure",
        },
        maxAutoscalingTaskCount = {
            type = "number",
        },
    },
}

M.ScaleInPolicyUpdate = {
    type = "structure",
    members = {
        cpuUtilizationPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ScaleOutPolicyUpdate = {
    type = "structure",
    members = {
        cpuUtilizationPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoScalingUpdate = {
    type = "structure",
    members = {
        maxWorkerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        mcuCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        minWorkerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        scaleInPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        scaleOutPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        maxAutoscalingTaskCount = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        workerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.Capacity = {
    type = "structure",
    members = {
        autoScaling = {
            type = "structure",
        },
        provisionedCapacity = {
            type = "structure",
        },
    },
}

M.ProvisionedCapacityUpdate = {
    type = "structure",
    members = {
        mcuCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        workerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CapacityUpdate = {
    type = "structure",
    members = {
        autoScaling = {
            type = "structure",
        },
        provisionedCapacity = {
            type = "structure",
        },
    },
}

M.CloudWatchLogsLogDelivery = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
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
        apacheKafkaCluster = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        cloudWatchLogs = {
            type = "structure",
        },
        firehose = {
            type = "structure",
        },
        s3 = {
            type = "structure",
        },
    },
}

M.LogDelivery = {
    type = "structure",
    members = {
        workerLogDelivery = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkerConfiguration = {
    type = "structure",
    members = {
        revision = {
            type = "number",
            traits = {
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
        capacity = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        connectorConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        kafkaCluster = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        kafkaClusterClientAuthentication = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        kafkaClusterEncryptionInTransit = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        kafkaConnectVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logDelivery = {
            type = "structure",
        },
        networkType = {
            type = "string",
        },
        plugins = {
            type = "list",
            member_type = "structure",
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
        workerConfiguration = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        s3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateWorkerConfigurationOutput = {
    type = "structure",
    members = {
        creationTime = {
            type = "timestamp",
        },
        latestRevision = {
            type = "structure",
        },
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
        capacity = {
            type = "structure",
        },
        connectorArn = {
            type = "string",
        },
        connectorConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        kafkaCluster = {
            type = "structure",
        },
        kafkaClusterClientAuthentication = {
            type = "structure",
        },
        kafkaClusterEncryptionInTransit = {
            type = "structure",
        },
        kafkaConnectVersion = {
            type = "string",
        },
        logDelivery = {
            type = "structure",
        },
        networkType = {
            type = "string",
        },
        plugins = {
            type = "list",
            member_type = "structure",
        },
        serviceExecutionRoleArn = {
            type = "string",
        },
        workerConfiguration = {
            type = "structure",
        },
        stateDescription = {
            type = "structure",
        },
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
        capacity = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        originWorkerSetting = {
            type = "structure",
        },
        originConnectorConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        targetWorkerSetting = {
            type = "structure",
        },
        targetConnectorConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        errorInfo = {
            type = "structure",
        },
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
        latestRevision = {
            type = "structure",
        },
        name = {
            type = "string",
        },
        stateDescription = {
            type = "structure",
        },
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
            type = "number",
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
        latestRevision = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListWorkerConfigurationsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            member_type = "string",
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
        capacity = {
            type = "structure",
        },
        connectorConfiguration = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
