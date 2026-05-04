local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        s3Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MaintenanceSchedule = {
    type = "structure",
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
            type = "number",
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
            type = "number",
        },
        networkType = {
            type = "string",
        },
        publiclyAccessible = {
            type = "boolean",
        },
        vpcSubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        vpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
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
        logDeliveryConfiguration = {
            type = "structure",
        },
        maintenanceSchedule = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "number",
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
    members = {
        dbClusterStatus = {
            type = "string",
        },
    },
}

M.GetDbClusterInput = {
    type = "structure",
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
    members = {
        ingestQueryInstances = {
            type = "number",
        },
        queryOnlyInstances = {
            type = "number",
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
            type = "number",
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
            type = "number",
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
        logDeliveryConfiguration = {
            type = "structure",
        },
        maintenanceSchedule = {
            type = "structure",
        },
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
            member_type = "string",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        failoverMode = {
            type = "string",
        },
        clusterConfiguration = {
            type = "structure",
        },
    },
}

M.ListDbClustersInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.DbClusterSummary = {
    type = "structure",
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
            type = "number",
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
            type = "number",
        },
        engineType = {
            type = "string",
        },
    },
}

M.ListDbClustersOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        deploymentType = {
            type = "string",
        },
        instanceMode = {
            type = "string",
        },
        instanceModes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListDbInstancesForClusterOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
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
    members = {
        dbClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RebootDbClusterOutput = {
    type = "structure",
    members = {
        dbClusterStatus = {
            type = "string",
        },
    },
}

M.UpdateDbClusterInput = {
    type = "structure",
    members = {
        dbClusterId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logDeliveryConfiguration = {
            type = "structure",
        },
        dbParameterGroupIdentifier = {
            type = "string",
        },
        port = {
            type = "number",
        },
        dbInstanceType = {
            type = "string",
        },
        failoverMode = {
            type = "string",
        },
        maintenanceSchedule = {
            type = "structure",
        },
    },
}

M.UpdateDbClusterOutput = {
    type = "structure",
    members = {
        dbClusterStatus = {
            type = "string",
        },
    },
}

M.CreateDbInstanceInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        vpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
        logDeliveryConfiguration = {
            type = "structure",
        },
        maintenanceSchedule = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        port = {
            type = "number",
        },
        networkType = {
            type = "string",
        },
    },
}

M.CreateDbInstanceOutput = {
    type = "structure",
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
            type = "number",
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
            type = "number",
        },
        deploymentType = {
            type = "string",
        },
        vpcSubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        publiclyAccessible = {
            type = "boolean",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
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
        logDeliveryConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        maintenanceSchedule = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        deploymentType = {
            type = "string",
        },
        vpcSubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        publiclyAccessible = {
            type = "boolean",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
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
        logDeliveryConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        maintenanceSchedule = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        deploymentType = {
            type = "string",
        },
        vpcSubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        publiclyAccessible = {
            type = "boolean",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
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
        logDeliveryConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        maintenanceSchedule = {
            type = "structure",
        },
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
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.DbInstanceSummary = {
    type = "structure",
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
            type = "number",
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
            type = "number",
        },
        deploymentType = {
            type = "string",
        },
    },
}

M.ListDbInstancesOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
        deploymentType = {
            type = "string",
        },
        vpcSubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        publiclyAccessible = {
            type = "boolean",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
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
        logDeliveryConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        maintenanceSchedule = {
            type = "structure",
        },
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
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logDeliveryConfiguration = {
            type = "structure",
        },
        dbParameterGroupIdentifier = {
            type = "string",
        },
        port = {
            type = "number",
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
            type = "number",
        },
        maintenanceSchedule = {
            type = "structure",
        },
    },
}

M.UpdateDbInstanceOutput = {
    type = "structure",
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
            type = "number",
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
            type = "number",
        },
        deploymentType = {
            type = "string",
        },
        vpcSubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        publiclyAccessible = {
            type = "boolean",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member_type = "string",
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
        logDeliveryConfiguration = {
            type = "structure",
        },
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
            member_type = "string",
        },
        maintenanceSchedule = {
            type = "structure",
        },
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
    members = {
        durationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "number",
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
            type = "number",
        },
        queryQueueSize = {
            type = "number",
        },
        tracingType = {
            type = "string",
        },
        metricsDisabled = {
            type = "boolean",
        },
        httpIdleTimeout = {
            type = "structure",
        },
        httpReadHeaderTimeout = {
            type = "structure",
        },
        httpReadTimeout = {
            type = "structure",
        },
        httpWriteTimeout = {
            type = "structure",
        },
        influxqlMaxSelectBuckets = {
            type = "number",
        },
        influxqlMaxSelectPoint = {
            type = "number",
        },
        influxqlMaxSelectSeries = {
            type = "number",
        },
        pprofDisabled = {
            type = "boolean",
        },
        queryInitialMemoryBytes = {
            type = "number",
        },
        queryMaxMemoryBytes = {
            type = "number",
        },
        queryMemoryBytes = {
            type = "number",
        },
        sessionLength = {
            type = "number",
        },
        sessionRenewDisabled = {
            type = "boolean",
        },
        storageCacheMaxMemorySize = {
            type = "number",
        },
        storageCacheSnapshotMemorySize = {
            type = "number",
        },
        storageCacheSnapshotWriteColdDuration = {
            type = "structure",
        },
        storageCompactFullWriteColdDuration = {
            type = "structure",
        },
        storageCompactThroughputBurst = {
            type = "number",
        },
        storageMaxConcurrentCompactions = {
            type = "number",
        },
        storageMaxIndexLogFileSize = {
            type = "number",
        },
        storageNoValidateFieldSize = {
            type = "boolean",
        },
        storageRetentionCheckInterval = {
            type = "structure",
        },
        storageSeriesFileMaxConcurrentSnapshotCompactions = {
            type = "number",
        },
        storageSeriesIdSetCacheSize = {
            type = "number",
        },
        storageWalMaxConcurrentWrites = {
            type = "number",
        },
        storageWalMaxWriteDelay = {
            type = "structure",
        },
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
    members = {
        percent = {
            type = "string",
        },
        absolute = {
            type = "number",
        },
    },
}

M.LogFormats = {
    FULL = "full",
}

M.InfluxDBv3CoreParameters = {
    type = "structure",
    members = {
        queryFileLimit = {
            type = "number",
        },
        queryLogSize = {
            type = "number",
        },
        logFilter = {
            type = "string",
        },
        logFormat = {
            type = "string",
        },
        dataFusionNumThreads = {
            type = "number",
        },
        dataFusionRuntimeType = {
            type = "string",
        },
        dataFusionRuntimeDisableLifoSlot = {
            type = "boolean",
        },
        dataFusionRuntimeEventInterval = {
            type = "number",
        },
        dataFusionRuntimeGlobalQueueInterval = {
            type = "number",
        },
        dataFusionRuntimeMaxBlockingThreads = {
            type = "number",
        },
        dataFusionRuntimeMaxIoEventsPerTick = {
            type = "number",
        },
        dataFusionRuntimeThreadKeepAlive = {
            type = "structure",
        },
        dataFusionRuntimeThreadPriority = {
            type = "number",
        },
        dataFusionMaxParquetFanout = {
            type = "number",
        },
        dataFusionUseCachedParquetLoader = {
            type = "boolean",
        },
        dataFusionConfig = {
            type = "string",
        },
        maxHttpRequestSize = {
            type = "number",
        },
        forceSnapshotMemThreshold = {
            type = "union",
        },
        walSnapshotSize = {
            type = "number",
        },
        walMaxWriteBufferSize = {
            type = "number",
        },
        snapshottedWalFilesToKeep = {
            type = "number",
        },
        preemptiveCacheAge = {
            type = "structure",
        },
        parquetMemCachePrunePercentage = {
            type = "number",
        },
        parquetMemCachePruneInterval = {
            type = "structure",
        },
        disableParquetMemCache = {
            type = "boolean",
        },
        parquetMemCacheQueryPathDuration = {
            type = "structure",
        },
        lastCacheEvictionInterval = {
            type = "structure",
        },
        distinctCacheEvictionInterval = {
            type = "structure",
        },
        gen1Duration = {
            type = "structure",
        },
        execMemPoolBytes = {
            type = "union",
        },
        parquetMemCacheSize = {
            type = "union",
        },
        walReplayFailOnError = {
            type = "boolean",
        },
        walReplayConcurrencyLimit = {
            type = "number",
        },
        tableIndexCacheMaxEntries = {
            type = "number",
        },
        tableIndexCacheConcurrencyLimit = {
            type = "number",
        },
        gen1LookbackDuration = {
            type = "structure",
        },
        retentionCheckInterval = {
            type = "structure",
        },
        deleteGracePeriod = {
            type = "structure",
        },
        hardDeleteDefaultDuration = {
            type = "structure",
        },
    },
}

M.InfluxDBv3EnterpriseParameters = {
    type = "structure",
    members = {
        queryFileLimit = {
            type = "number",
        },
        queryLogSize = {
            type = "number",
        },
        logFilter = {
            type = "string",
        },
        logFormat = {
            type = "string",
        },
        dataFusionNumThreads = {
            type = "number",
        },
        dataFusionRuntimeType = {
            type = "string",
        },
        dataFusionRuntimeDisableLifoSlot = {
            type = "boolean",
        },
        dataFusionRuntimeEventInterval = {
            type = "number",
        },
        dataFusionRuntimeGlobalQueueInterval = {
            type = "number",
        },
        dataFusionRuntimeMaxBlockingThreads = {
            type = "number",
        },
        dataFusionRuntimeMaxIoEventsPerTick = {
            type = "number",
        },
        dataFusionRuntimeThreadKeepAlive = {
            type = "structure",
        },
        dataFusionRuntimeThreadPriority = {
            type = "number",
        },
        dataFusionMaxParquetFanout = {
            type = "number",
        },
        dataFusionUseCachedParquetLoader = {
            type = "boolean",
        },
        dataFusionConfig = {
            type = "string",
        },
        maxHttpRequestSize = {
            type = "number",
        },
        forceSnapshotMemThreshold = {
            type = "union",
        },
        walSnapshotSize = {
            type = "number",
        },
        walMaxWriteBufferSize = {
            type = "number",
        },
        snapshottedWalFilesToKeep = {
            type = "number",
        },
        preemptiveCacheAge = {
            type = "structure",
        },
        parquetMemCachePrunePercentage = {
            type = "number",
        },
        parquetMemCachePruneInterval = {
            type = "structure",
        },
        disableParquetMemCache = {
            type = "boolean",
        },
        parquetMemCacheQueryPathDuration = {
            type = "structure",
        },
        lastCacheEvictionInterval = {
            type = "structure",
        },
        distinctCacheEvictionInterval = {
            type = "structure",
        },
        gen1Duration = {
            type = "structure",
        },
        execMemPoolBytes = {
            type = "union",
        },
        parquetMemCacheSize = {
            type = "union",
        },
        walReplayFailOnError = {
            type = "boolean",
        },
        walReplayConcurrencyLimit = {
            type = "number",
        },
        tableIndexCacheMaxEntries = {
            type = "number",
        },
        tableIndexCacheConcurrencyLimit = {
            type = "number",
        },
        gen1LookbackDuration = {
            type = "structure",
        },
        retentionCheckInterval = {
            type = "structure",
        },
        deleteGracePeriod = {
            type = "structure",
        },
        hardDeleteDefaultDuration = {
            type = "structure",
        },
        ingestQueryInstances = {
            type = "number",
            traits = {
                required = true,
            },
        },
        queryOnlyInstances = {
            type = "number",
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
            type = "number",
        },
        compactionMaxNumFilesPerPlan = {
            type = "number",
        },
        compactionGen2Duration = {
            type = "structure",
        },
        compactionMultipliers = {
            type = "string",
        },
        compactionCleanupWait = {
            type = "structure",
        },
        compactionCheckInterval = {
            type = "structure",
        },
        lastValueCacheDisableFromHistory = {
            type = "boolean",
        },
        distinctValueCacheDisableFromHistory = {
            type = "boolean",
        },
        replicationInterval = {
            type = "structure",
        },
        catalogSyncInterval = {
            type = "structure",
        },
    },
}

M.Parameters = {
    type = "union",
    members = {
        InfluxDBv2 = {
            type = "structure",
        },
        InfluxDBv3Core = {
            type = "structure",
        },
        InfluxDBv3Enterprise = {
            type = "structure",
        },
    },
}

M.CreateDbParameterGroupInput = {
    type = "structure",
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
        parameters = {
            type = "union",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateDbParameterGroupOutput = {
    type = "structure",
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
        parameters = {
            type = "union",
        },
    },
}

M.GetDbParameterGroupInput = {
    type = "structure",
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
        parameters = {
            type = "union",
        },
    },
}

M.ListDbParameterGroupsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.DbParameterGroupSummary = {
    type = "structure",
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
    members = {
        items = {
            type = "list",
            member_type = "structure",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
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
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
