local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DbInstanceType = {
    DB_INFLUX_MEDIUM = "db.influx.medium",
    DB_INFLUX_LARGE = "db.influx.large",
    DB_INFLUX_XLARGE = "db.influx.xlarge",
    DB_INFLUX_2XLARGE = "db.influx.2xlarge",
    DB_INFLUX_4XLARGE = "db.influx.4xlarge",
    DB_INFLUX_8XLARGE = "db.influx.8xlarge",
    DB_INFLUX_12XLARGE = "db.influx.12xlarge",
    DB_INFLUX_16XLARGE = "db.influx.16xlarge",
    DB_INFLUX_24XLARGE = "db.influx.24xlarge",
}

M.DbStorageType = {
    INFLUX_IO_INCLUDED_T1 = "InfluxIOIncludedT1",
    INFLUX_IO_INCLUDED_T2 = "InfluxIOIncludedT2",
    INFLUX_IO_INCLUDED_T3 = "InfluxIOIncludedT3",
}

M.ClusterDeploymentType = {
    MULTI_NODE_READ_REPLICAS = "MULTI_NODE_READ_REPLICAS",
}

M.FailoverMode = {
    AUTOMATIC = "AUTOMATIC",
    NO_FAILOVER = "NO_FAILOVER",
}

M.S3Configuration = {
    type = "structure",
    id = "S3Configuration",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.LogDeliveryConfiguration = {
    type = "structure",
    id = "LogDeliveryConfiguration",
    members = {
        s3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Configuration }),
    },
}

M.MaintenanceSchedule = {
    type = "structure",
    id = "MaintenanceSchedule",
    members = {
        timezone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        preferredMaintenanceWindow = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkType = {
    IPV4 = "IPV4",
    DUAL = "DUAL",
}

M.CreateDbClusterInput = {
    type = "structure",
    id = "CreateDbClusterInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        username = {
            type = "string",
        },
        password = {
            type = "string",
        },
        organization = {
            type = "string",
        },
        bucket = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        dbParameterGroupIdentifier = {
            type = "string",
        },
        dbInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dbStorageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
        },
        networkType = {
            type = "string",
        },
        publiclyAccessible = {
            type = "boolean",
        },
        vpcSubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        deploymentType = {
            type = "string",
        },
        failoverMode = {
            type = "string",
        },
        logDeliveryConfiguration = M.LogDeliveryConfiguration,
        maintenanceSchedule = M.MaintenanceSchedule,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ClusterStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    AVAILABLE = "AVAILABLE",
    FAILED = "FAILED",
    DELETED = "DELETED",
    MAINTENANCE = "MAINTENANCE",
    UPDATING_INSTANCE_TYPE = "UPDATING_INSTANCE_TYPE",
    REBOOTING = "REBOOTING",
    REBOOT_FAILED = "REBOOT_FAILED",
    PARTIALLY_AVAILABLE = "PARTIALLY_AVAILABLE",
}

M.CreateDbClusterOutput = {
    type = "structure",
    id = "CreateDbClusterOutput",
    members = {
        dbClusterId = {
            type = "string",
        },
        dbClusterStatus = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionReason = {
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDbClusterInput = {
    type = "structure",
    id = "DeleteDbClusterInput",
    members = {
        dbClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDbClusterOutput = {
    type = "structure",
    id = "DeleteDbClusterOutput",
    members = {
        dbClusterStatus = {
            type = "string",
        },
    },
}

M.GetDbClusterInput = {
    type = "structure",
    id = "GetDbClusterInput",
    members = {
        dbClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ClusterConfiguration = {
    type = "structure",
    id = "ClusterConfiguration",
    members = {
        ingestQueryInstances = {
            type = "integer",
        },
        queryOnlyInstances = {
            type = "integer",
        },
        dedicatedCompactor = {
            type = "boolean",
        },
    },
}

M.EngineType = {
    INFLUXDB_V2 = "INFLUXDB_V2",
    INFLUXDB_V3_CORE = "INFLUXDB_V3_CORE",
    INFLUXDB_V3_ENTERPRISE = "INFLUXDB_V3_ENTERPRISE",
}

M.GetDbClusterOutput = {
    type = "structure",
    id = "GetDbClusterOutput",
    members = {
        id = {
            type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        readerEndpoint = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        deploymentType = {
            type = "string",
        },
        dbInstanceType = {
            type = "string",
        },
        networkType = {
            type = "string",
        },
        dbStorageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
        },
        engineType = {
            type = "string",
        },
        publiclyAccessible = {
            type = "boolean",
        },
        dbParameterGroupIdentifier = {
            type = "string",
        },
        logDeliveryConfiguration = M.LogDeliveryConfiguration,
        maintenanceSchedule = M.MaintenanceSchedule,
        lastMaintenanceTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        nextMaintenanceTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        influxAuthParametersSecretArn = {
            type = "string",
        },
        vpcSubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        failoverMode = {
            type = "string",
        },
        clusterConfiguration = M.ClusterConfiguration,
    },
}

M.ListDbClustersInput = {
    type = "structure",
    id = "ListDbClustersInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DbClusterSummary = {
    type = "structure",
    id = "DbClusterSummary",
    members = {
        id = {
            type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        readerEndpoint = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        deploymentType = {
            type = "string",
        },
        dbInstanceType = {
            type = "string",
        },
        networkType = {
            type = "string",
        },
        dbStorageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
        },
        engineType = {
            type = "string",
        },
    },
}

M.ListDbClustersOutput = {
    type = "structure",
    id = "ListDbClustersOutput",
    members = {
        items = {
            type = "list",
            member = M.DbClusterSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDbInstancesForClusterInput = {
    type = "structure",
    id = "ListDbInstancesForClusterInput",
    members = {
        dbClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DeploymentType = {
    SINGLE_AZ = "SINGLE_AZ",
    WITH_MULTIAZ_STANDBY = "WITH_MULTIAZ_STANDBY",
}

M.InstanceMode = {
    PRIMARY = "PRIMARY",
    STANDBY = "STANDBY",
    REPLICA = "REPLICA",
    INGEST = "INGEST",
    QUERY = "QUERY",
    COMPACT = "COMPACT",
    PROCESS = "PROCESS",
}

M.Status = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
    MODIFYING = "MODIFYING",
    UPDATING = "UPDATING",
    DELETED = "DELETED",
    FAILED = "FAILED",
    UPDATING_DEPLOYMENT_TYPE = "UPDATING_DEPLOYMENT_TYPE",
    UPDATING_INSTANCE_TYPE = "UPDATING_INSTANCE_TYPE",
    MAINTENANCE = "MAINTENANCE",
    REBOOTING = "REBOOTING",
    REBOOT_FAILED = "REBOOT_FAILED",
}

M.DbInstanceForClusterSummary = {
    type = "structure",
    id = "DbInstanceForClusterSummary",
    members = {
        id = {
            type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        networkType = {
            type = "string",
        },
        dbInstanceType = {
            type = "string",
        },
        dbStorageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
        },
        deploymentType = {
            type = "string",
        },
        instanceMode = {
            type = "string",
        },
        instanceModes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListDbInstancesForClusterOutput = {
    type = "structure",
    id = "ListDbInstancesForClusterOutput",
    members = {
        items = {
            type = "list",
            member = M.DbInstanceForClusterSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RebootDbClusterInput = {
    type = "structure",
    id = "RebootDbClusterInput",
    members = {
        dbClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RebootDbClusterOutput = {
    type = "structure",
    id = "RebootDbClusterOutput",
    members = {
        dbClusterStatus = {
            type = "string",
        },
    },
}

M.UpdateDbClusterInput = {
    type = "structure",
    id = "UpdateDbClusterInput",
    members = {
        dbClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logDeliveryConfiguration = M.LogDeliveryConfiguration,
        dbParameterGroupIdentifier = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        dbInstanceType = {
            type = "string",
        },
        failoverMode = {
            type = "string",
        },
        maintenanceSchedule = M.MaintenanceSchedule,
    },
}

M.UpdateDbClusterOutput = {
    type = "structure",
    id = "UpdateDbClusterOutput",
    members = {
        dbClusterStatus = {
            type = "string",
        },
    },
}

M.CreateDbInstanceInput = {
    type = "structure",
    id = "CreateDbInstanceInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        username = {
            type = "string",
        },
        password = {
            type = "string",
            traits = {
                required = true,
            },
        },
        organization = {
            type = "string",
        },
        bucket = {
            type = "string",
        },
        dbInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcSubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        publiclyAccessible = {
            type = "boolean",
        },
        dbStorageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        dbParameterGroupIdentifier = {
            type = "string",
        },
        deploymentType = {
            type = "string",
        },
        logDeliveryConfiguration = M.LogDeliveryConfiguration,
        maintenanceSchedule = M.MaintenanceSchedule,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        port = {
            type = "integer",
            traits = {
                default = 8086,
            },
        },
        networkType = {
            type = "string",
        },
    },
}

M.CreateDbInstanceOutput = {
    type = "structure",
    id = "CreateDbInstanceOutput",
    members = {
        id = {
            type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        networkType = {
            type = "string",
        },
        dbInstanceType = {
            type = "string",
        },
        dbStorageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
        },
        deploymentType = {
            type = "string",
        },
        vpcSubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        publiclyAccessible = {
            type = "boolean",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        dbParameterGroupIdentifier = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        secondaryAvailabilityZone = {
            type = "string",
        },
        logDeliveryConfiguration = M.LogDeliveryConfiguration,
        influxAuthParametersSecretArn = {
            type = "string",
        },
        dbClusterId = {
            type = "string",
        },
        instanceMode = {
            type = "string",
        },
        instanceModes = {
            type = "list",
            member = { type = "string" },
        },
        maintenanceSchedule = M.MaintenanceSchedule,
        lastMaintenanceTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        nextMaintenanceTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteDbInstanceInput = {
    type = "structure",
    id = "DeleteDbInstanceInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDbInstanceOutput = {
    type = "structure",
    id = "DeleteDbInstanceOutput",
    members = {
        id = {
            type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        networkType = {
            type = "string",
        },
        dbInstanceType = {
            type = "string",
        },
        dbStorageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
        },
        deploymentType = {
            type = "string",
        },
        vpcSubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        publiclyAccessible = {
            type = "boolean",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        dbParameterGroupIdentifier = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        secondaryAvailabilityZone = {
            type = "string",
        },
        logDeliveryConfiguration = M.LogDeliveryConfiguration,
        influxAuthParametersSecretArn = {
            type = "string",
        },
        dbClusterId = {
            type = "string",
        },
        instanceMode = {
            type = "string",
        },
        instanceModes = {
            type = "list",
            member = { type = "string" },
        },
        maintenanceSchedule = M.MaintenanceSchedule,
        lastMaintenanceTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        nextMaintenanceTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetDbInstanceInput = {
    type = "structure",
    id = "GetDbInstanceInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDbInstanceOutput = {
    type = "structure",
    id = "GetDbInstanceOutput",
    members = {
        id = {
            type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        networkType = {
            type = "string",
        },
        dbInstanceType = {
            type = "string",
        },
        dbStorageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
        },
        deploymentType = {
            type = "string",
        },
        vpcSubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        publiclyAccessible = {
            type = "boolean",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        dbParameterGroupIdentifier = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        secondaryAvailabilityZone = {
            type = "string",
        },
        logDeliveryConfiguration = M.LogDeliveryConfiguration,
        influxAuthParametersSecretArn = {
            type = "string",
        },
        dbClusterId = {
            type = "string",
        },
        instanceMode = {
            type = "string",
        },
        instanceModes = {
            type = "list",
            member = { type = "string" },
        },
        maintenanceSchedule = M.MaintenanceSchedule,
        lastMaintenanceTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        nextMaintenanceTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListDbInstancesInput = {
    type = "structure",
    id = "ListDbInstancesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DbInstanceSummary = {
    type = "structure",
    id = "DbInstanceSummary",
    members = {
        id = {
            type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        networkType = {
            type = "string",
        },
        dbInstanceType = {
            type = "string",
        },
        dbStorageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
        },
        deploymentType = {
            type = "string",
        },
    },
}

M.ListDbInstancesOutput = {
    type = "structure",
    id = "ListDbInstancesOutput",
    members = {
        items = {
            type = "list",
            member = M.DbInstanceSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RebootDbInstanceInput = {
    type = "structure",
    id = "RebootDbInstanceInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RebootDbInstanceOutput = {
    type = "structure",
    id = "RebootDbInstanceOutput",
    members = {
        id = {
            type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        networkType = {
            type = "string",
        },
        dbInstanceType = {
            type = "string",
        },
        dbStorageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
        },
        deploymentType = {
            type = "string",
        },
        vpcSubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        publiclyAccessible = {
            type = "boolean",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        dbParameterGroupIdentifier = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        secondaryAvailabilityZone = {
            type = "string",
        },
        logDeliveryConfiguration = M.LogDeliveryConfiguration,
        influxAuthParametersSecretArn = {
            type = "string",
        },
        dbClusterId = {
            type = "string",
        },
        instanceMode = {
            type = "string",
        },
        instanceModes = {
            type = "list",
            member = { type = "string" },
        },
        maintenanceSchedule = M.MaintenanceSchedule,
        lastMaintenanceTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        nextMaintenanceTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdateDbInstanceInput = {
    type = "structure",
    id = "UpdateDbInstanceInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logDeliveryConfiguration = M.LogDeliveryConfiguration,
        dbParameterGroupIdentifier = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        dbInstanceType = {
            type = "string",
        },
        deploymentType = {
            type = "string",
        },
        dbStorageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
        },
        maintenanceSchedule = M.MaintenanceSchedule,
    },
}

M.UpdateDbInstanceOutput = {
    type = "structure",
    id = "UpdateDbInstanceOutput",
    members = {
        id = {
            type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        endpoint = {
            type = "string",
        },
        port = {
            type = "integer",
        },
        networkType = {
            type = "string",
        },
        dbInstanceType = {
            type = "string",
        },
        dbStorageType = {
            type = "string",
        },
        allocatedStorage = {
            type = "integer",
        },
        deploymentType = {
            type = "string",
        },
        vpcSubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        publiclyAccessible = {
            type = "boolean",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        dbParameterGroupIdentifier = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
        },
        secondaryAvailabilityZone = {
            type = "string",
        },
        logDeliveryConfiguration = M.LogDeliveryConfiguration,
        influxAuthParametersSecretArn = {
            type = "string",
        },
        dbClusterId = {
            type = "string",
        },
        instanceMode = {
            type = "string",
        },
        instanceModes = {
            type = "list",
            member = { type = "string" },
        },
        maintenanceSchedule = M.MaintenanceSchedule,
        lastMaintenanceTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        nextMaintenanceTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.DurationType = {
    HOURS = "hours",
    MINUTES = "minutes",
    SECONDS = "seconds",
    MILLISECONDS = "milliseconds",
    DAYS = "days",
}

M.Duration = {
    type = "structure",
    id = "Duration",
    members = {
        durationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.LogLevel = {
    DEBUG = "debug",
    INFO = "info",
    ERROR = "error",
}

M.TracingType = {
    LOG = "log",
    JAEGER = "jaeger",
    DISABLED = "disabled",
}

M.InfluxDBv2Parameters = {
    type = "structure",
    id = "InfluxDBv2Parameters",
    members = {
        fluxLogEnabled = {
            type = "boolean",
        },
        logLevel = {
            type = "string",
        },
        noTasks = {
            type = "boolean",
        },
        queryConcurrency = {
            type = "integer",
        },
        queryQueueSize = {
            type = "integer",
        },
        tracingType = {
            type = "string",
        },
        metricsDisabled = {
            type = "boolean",
        },
        httpIdleTimeout = M.Duration,
        httpReadHeaderTimeout = M.Duration,
        httpReadTimeout = M.Duration,
        httpWriteTimeout = M.Duration,
        influxqlMaxSelectBuckets = {
            type = "long",
        },
        influxqlMaxSelectPoint = {
            type = "long",
        },
        influxqlMaxSelectSeries = {
            type = "long",
        },
        pprofDisabled = {
            type = "boolean",
        },
        queryInitialMemoryBytes = {
            type = "long",
        },
        queryMaxMemoryBytes = {
            type = "long",
        },
        queryMemoryBytes = {
            type = "long",
        },
        sessionLength = {
            type = "integer",
        },
        sessionRenewDisabled = {
            type = "boolean",
        },
        storageCacheMaxMemorySize = {
            type = "long",
        },
        storageCacheSnapshotMemorySize = {
            type = "long",
        },
        storageCacheSnapshotWriteColdDuration = M.Duration,
        storageCompactFullWriteColdDuration = M.Duration,
        storageCompactThroughputBurst = {
            type = "long",
        },
        storageMaxConcurrentCompactions = {
            type = "integer",
        },
        storageMaxIndexLogFileSize = {
            type = "long",
        },
        storageNoValidateFieldSize = {
            type = "boolean",
        },
        storageRetentionCheckInterval = M.Duration,
        storageSeriesFileMaxConcurrentSnapshotCompactions = {
            type = "integer",
        },
        storageSeriesIdSetCacheSize = {
            type = "long",
        },
        storageWalMaxConcurrentWrites = {
            type = "integer",
        },
        storageWalMaxWriteDelay = M.Duration,
        uiDisabled = {
            type = "boolean",
        },
    },
}

M.DataFusionRuntimeType = {
    MULTI_THREAD = "multi-thread",
    MULTI_THREAD_ALT = "multi-thread-alt",
}

M.PercentOrAbsoluteLong = {
    type = "union",
    id = "PercentOrAbsoluteLong",
    members = {
        percent = {
            type = "string",
        },
        absolute = {
            type = "long",
        },
    },
}

M.LogFormats = {
    FULL = "full",
}

M.InfluxDBv3CoreParameters = {
    type = "structure",
    id = "InfluxDBv3CoreParameters",
    members = {
        queryFileLimit = {
            type = "integer",
        },
        queryLogSize = {
            type = "integer",
        },
        logFilter = {
            type = "string",
        },
        logFormat = {
            type = "string",
        },
        dataFusionNumThreads = {
            type = "integer",
        },
        dataFusionRuntimeType = {
            type = "string",
        },
        dataFusionRuntimeDisableLifoSlot = {
            type = "boolean",
        },
        dataFusionRuntimeEventInterval = {
            type = "integer",
        },
        dataFusionRuntimeGlobalQueueInterval = {
            type = "integer",
        },
        dataFusionRuntimeMaxBlockingThreads = {
            type = "integer",
        },
        dataFusionRuntimeMaxIoEventsPerTick = {
            type = "integer",
        },
        dataFusionRuntimeThreadKeepAlive = M.Duration,
        dataFusionRuntimeThreadPriority = {
            type = "integer",
        },
        dataFusionMaxParquetFanout = {
            type = "integer",
        },
        dataFusionUseCachedParquetLoader = {
            type = "boolean",
        },
        dataFusionConfig = {
            type = "string",
        },
        maxHttpRequestSize = {
            type = "long",
        },
        forceSnapshotMemThreshold = M.PercentOrAbsoluteLong,
        walSnapshotSize = {
            type = "integer",
        },
        walMaxWriteBufferSize = {
            type = "integer",
        },
        snapshottedWalFilesToKeep = {
            type = "integer",
        },
        preemptiveCacheAge = M.Duration,
        parquetMemCachePrunePercentage = {
            type = "float",
        },
        parquetMemCachePruneInterval = M.Duration,
        disableParquetMemCache = {
            type = "boolean",
        },
        parquetMemCacheQueryPathDuration = M.Duration,
        lastCacheEvictionInterval = M.Duration,
        distinctCacheEvictionInterval = M.Duration,
        gen1Duration = M.Duration,
        execMemPoolBytes = M.PercentOrAbsoluteLong,
        parquetMemCacheSize = M.PercentOrAbsoluteLong,
        walReplayFailOnError = {
            type = "boolean",
        },
        walReplayConcurrencyLimit = {
            type = "integer",
        },
        tableIndexCacheMaxEntries = {
            type = "integer",
        },
        tableIndexCacheConcurrencyLimit = {
            type = "integer",
        },
        gen1LookbackDuration = M.Duration,
        retentionCheckInterval = M.Duration,
        deleteGracePeriod = M.Duration,
        hardDeleteDefaultDuration = M.Duration,
    },
}

M.InfluxDBv3EnterpriseParameters = {
    type = "structure",
    id = "InfluxDBv3EnterpriseParameters",
    members = {
        queryFileLimit = {
            type = "integer",
        },
        queryLogSize = {
            type = "integer",
        },
        logFilter = {
            type = "string",
        },
        logFormat = {
            type = "string",
        },
        dataFusionNumThreads = {
            type = "integer",
        },
        dataFusionRuntimeType = {
            type = "string",
        },
        dataFusionRuntimeDisableLifoSlot = {
            type = "boolean",
        },
        dataFusionRuntimeEventInterval = {
            type = "integer",
        },
        dataFusionRuntimeGlobalQueueInterval = {
            type = "integer",
        },
        dataFusionRuntimeMaxBlockingThreads = {
            type = "integer",
        },
        dataFusionRuntimeMaxIoEventsPerTick = {
            type = "integer",
        },
        dataFusionRuntimeThreadKeepAlive = M.Duration,
        dataFusionRuntimeThreadPriority = {
            type = "integer",
        },
        dataFusionMaxParquetFanout = {
            type = "integer",
        },
        dataFusionUseCachedParquetLoader = {
            type = "boolean",
        },
        dataFusionConfig = {
            type = "string",
        },
        maxHttpRequestSize = {
            type = "long",
        },
        forceSnapshotMemThreshold = M.PercentOrAbsoluteLong,
        walSnapshotSize = {
            type = "integer",
        },
        walMaxWriteBufferSize = {
            type = "integer",
        },
        snapshottedWalFilesToKeep = {
            type = "integer",
        },
        preemptiveCacheAge = M.Duration,
        parquetMemCachePrunePercentage = {
            type = "float",
        },
        parquetMemCachePruneInterval = M.Duration,
        disableParquetMemCache = {
            type = "boolean",
        },
        parquetMemCacheQueryPathDuration = M.Duration,
        lastCacheEvictionInterval = M.Duration,
        distinctCacheEvictionInterval = M.Duration,
        gen1Duration = M.Duration,
        execMemPoolBytes = M.PercentOrAbsoluteLong,
        parquetMemCacheSize = M.PercentOrAbsoluteLong,
        walReplayFailOnError = {
            type = "boolean",
        },
        walReplayConcurrencyLimit = {
            type = "integer",
        },
        tableIndexCacheMaxEntries = {
            type = "integer",
        },
        tableIndexCacheConcurrencyLimit = {
            type = "integer",
        },
        gen1LookbackDuration = M.Duration,
        retentionCheckInterval = M.Duration,
        deleteGracePeriod = M.Duration,
        hardDeleteDefaultDuration = M.Duration,
        ingestQueryInstances = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        queryOnlyInstances = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        dedicatedCompactor = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        compactionRowLimit = {
            type = "integer",
        },
        compactionMaxNumFilesPerPlan = {
            type = "integer",
        },
        compactionGen2Duration = M.Duration,
        compactionMultipliers = {
            type = "string",
        },
        compactionCleanupWait = M.Duration,
        compactionCheckInterval = M.Duration,
        lastValueCacheDisableFromHistory = {
            type = "boolean",
        },
        distinctValueCacheDisableFromHistory = {
            type = "boolean",
        },
        replicationInterval = M.Duration,
        catalogSyncInterval = M.Duration,
    },
}

M.Parameters = {
    type = "union",
    id = "Parameters",
    members = {
        InfluxDBv2 = M.InfluxDBv2Parameters,
        InfluxDBv3Core = M.InfluxDBv3CoreParameters,
        InfluxDBv3Enterprise = M.InfluxDBv3EnterpriseParameters,
    },
}

M.CreateDbParameterGroupInput = {
    type = "structure",
    id = "CreateDbParameterGroupInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        parameters = M.Parameters,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDbParameterGroupOutput = {
    type = "structure",
    id = "CreateDbParameterGroupOutput",
    members = {
        id = {
            type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        parameters = M.Parameters,
    },
}

M.GetDbParameterGroupInput = {
    type = "structure",
    id = "GetDbParameterGroupInput",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDbParameterGroupOutput = {
    type = "structure",
    id = "GetDbParameterGroupOutput",
    members = {
        id = {
            type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        parameters = M.Parameters,
    },
}

M.ListDbParameterGroupsInput = {
    type = "structure",
    id = "ListDbParameterGroupsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.DbParameterGroupSummary = {
    type = "structure",
    id = "DbParameterGroupSummary",
    members = {
        id = {
            type = "string",
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
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.ListDbParameterGroupsOutput = {
    type = "structure",
    id = "ListDbParameterGroupsOutput",
    members = {
        items = {
            type = "list",
            member = M.DbParameterGroupSummary,
            traits = {
                required = true,
            },
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

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
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
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
