local M = {}

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

M.NetworkType = {
    IPV4 = "IPV4",
    DUAL = "DUAL",
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

M.ValidationExceptionReason = {
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
}

M.EngineType = {
    INFLUXDB_V2 = "INFLUXDB_V2",
    INFLUXDB_V3_CORE = "INFLUXDB_V3_CORE",
    INFLUXDB_V3_ENTERPRISE = "INFLUXDB_V3_ENTERPRISE",
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

M.DurationType = {
    HOURS = "hours",
    MINUTES = "minutes",
    SECONDS = "seconds",
    MILLISECONDS = "milliseconds",
    DAYS = "days",
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

M.DataFusionRuntimeType = {
    MULTI_THREAD = "multi-thread",
    MULTI_THREAD_ALT = "multi-thread-alt",
}

M.LogFormats = {
    FULL = "full",
}

return M
