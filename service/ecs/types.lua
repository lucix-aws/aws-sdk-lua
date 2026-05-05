local M = {}

M.AcceleratorManufacturer = {
    AMAZON_WEB_SERVICES = "amazon-web-services",
    AMD = "amd",
    NVIDIA = "nvidia",
    XILINX = "xilinx",
    HABANA = "habana",
}

M.AcceleratorName = {
    A100 = "a100",
    INFERENTIA = "inferentia",
    K520 = "k520",
    K80 = "k80",
    M60 = "m60",
    RADEON_PRO_V520 = "radeon-pro-v520",
    T4 = "t4",
    VU9P = "vu9p",
    V100 = "v100",
    A10G = "a10g",
    H100 = "h100",
    T4G = "t4g",
}

M.AcceleratorType = {
    GPU = "gpu",
    FPGA = "fpga",
    INFERENCE = "inference",
}

M.AccessType = {
    PUBLIC = "PUBLIC",
    PRIVATE = "PRIVATE",
}

M.AgentUpdateStatus = {
    PENDING = "PENDING",
    STAGING = "STAGING",
    STAGED = "STAGED",
    UPDATING = "UPDATING",
    UPDATED = "UPDATED",
    FAILED = "FAILED",
}

M.ManagedDraining = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ManagedScalingStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ManagedTerminationProtection = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AutoRepairActionsStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CapacityOptionType = {
    ON_DEMAND = "ON_DEMAND",
    SPOT = "SPOT",
    RESERVED = "RESERVED",
}

M.CapacityReservationPreference = {
    RESERVATIONS_ONLY = "RESERVATIONS_ONLY",
    RESERVATIONS_FIRST = "RESERVATIONS_FIRST",
    RESERVATIONS_EXCLUDED = "RESERVATIONS_EXCLUDED",
}

M.BareMetal = {
    INCLUDED = "included",
    REQUIRED = "required",
    EXCLUDED = "excluded",
}

M.BurstablePerformance = {
    INCLUDED = "included",
    REQUIRED = "required",
    EXCLUDED = "excluded",
}

M.CpuManufacturer = {
    INTEL = "intel",
    AMD = "amd",
    AMAZON_WEB_SERVICES = "amazon-web-services",
}

M.InstanceGeneration = {
    CURRENT = "current",
    PREVIOUS = "previous",
}

M.LocalStorage = {
    INCLUDED = "included",
    REQUIRED = "required",
    EXCLUDED = "excluded",
}

M.LocalStorageType = {
    HDD = "hdd",
    SSD = "ssd",
}

M.ManagedInstancesMonitoringOptions = {
    BASIC = "BASIC",
    DETAILED = "DETAILED",
}

M.PropagateMITags = {
    CAPACITY_PROVIDER = "CAPACITY_PROVIDER",
    NONE = "NONE",
}

M.CapacityProviderStatus = {
    PROVISIONING = "PROVISIONING",
    ACTIVE = "ACTIVE",
    DEPROVISIONING = "DEPROVISIONING",
    INACTIVE = "INACTIVE",
}

M.CapacityProviderType = {
    EC2_AUTOSCALING = "EC2_AUTOSCALING",
    MANAGED_INSTANCES = "MANAGED_INSTANCES",
    FARGATE = "FARGATE",
    FARGATE_SPOT = "FARGATE_SPOT",
}

M.CapacityProviderUpdateStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_COMPLETE = "DELETE_COMPLETE",
    DELETE_FAILED = "DELETE_FAILED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_COMPLETE = "UPDATE_COMPLETE",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.CapacityProviderField = {
    TAGS = "TAGS",
}

M.ExecuteCommandLogging = {
    NONE = "NONE",
    DEFAULT = "DEFAULT",
    OVERRIDE = "OVERRIDE",
}

M.ClusterSettingName = {
    CONTAINER_INSIGHTS = "containerInsights",
}

M.TargetType = {
    CONTAINER_INSTANCE = "container-instance",
}

M.InstanceHealthCheckState = {
    OK = "OK",
    IMPAIRED = "IMPAIRED",
    INSUFFICIENT_DATA = "INSUFFICIENT_DATA",
    INITIALIZING = "INITIALIZING",
}

M.InstanceHealthCheckType = {
    CONTAINER_RUNTIME = "CONTAINER_RUNTIME",
    ACCELERATED_COMPUTE = "ACCELERATED_COMPUTE",
    DAEMON = "DAEMON",
}

M.ClusterField = {
    ATTACHMENTS = "ATTACHMENTS",
    CONFIGURATIONS = "CONFIGURATIONS",
    SETTINGS = "SETTINGS",
    STATISTICS = "STATISTICS",
    TAGS = "TAGS",
}

M.ContainerInstanceStatus = {
    ACTIVE = "ACTIVE",
    DRAINING = "DRAINING",
    REGISTERING = "REGISTERING",
    DEREGISTERING = "DEREGISTERING",
    REGISTRATION_FAILED = "REGISTRATION_FAILED",
}

M.TransportProtocol = {
    TCP = "tcp",
    UDP = "udp",
}

M.ManagedAgentName = {
    ExecuteCommandAgent = "ExecuteCommandAgent",
}

M.ContainerInstanceField = {
    TAGS = "TAGS",
    CONTAINER_INSTANCE_HEALTH = "CONTAINER_INSTANCE_HEALTH",
}

M.DesiredStatus = {
    RUNNING = "RUNNING",
    PENDING = "PENDING",
    STOPPED = "STOPPED",
}

M.LaunchType = {
    EC2 = "EC2",
    FARGATE = "FARGATE",
    EXTERNAL = "EXTERNAL",
    MANAGED_INSTANCES = "MANAGED_INSTANCES",
}

M.PlatformDeviceType = {
    GPU = "GPU",
}

M.DaemonDeploymentRollbackMonitorsStatus = {
    TRIGGERED = "TRIGGERED",
    MONITORING = "MONITORING",
    MONITORING_COMPLETE = "MONITORING_COMPLETE",
    DISABLED = "DISABLED",
}

M.DaemonDeploymentStatus = {
    PENDING = "PENDING",
    SUCCESSFUL = "SUCCESSFUL",
    STOPPED = "STOPPED",
    STOP_REQUESTED = "STOP_REQUESTED",
    IN_PROGRESS = "IN_PROGRESS",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    ROLLBACK_SUCCESSFUL = "ROLLBACK_SUCCESSFUL",
    ROLLBACK_FAILED = "ROLLBACK_FAILED",
}

M.DaemonPropagateTags = {
    DAEMON = "DAEMON",
    NONE = "NONE",
}

M.DaemonStatus = {
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
}

M.ContainerCondition = {
    START = "START",
    COMPLETE = "COMPLETE",
    SUCCESS = "SUCCESS",
    HEALTHY = "HEALTHY",
}

M.EnvironmentFileType = {
    S3 = "s3",
}

M.FirelensConfigurationType = {
    FLUENTD = "fluentd",
    FLUENTBIT = "fluentbit",
}

M.DeviceCgroupPermission = {
    READ = "read",
    WRITE = "write",
    MKNOD = "mknod",
}

M.LogDriver = {
    JSON_FILE = "json-file",
    SYSLOG = "syslog",
    JOURNALD = "journald",
    GELF = "gelf",
    FLUENTD = "fluentd",
    AWSLOGS = "awslogs",
    SPLUNK = "splunk",
    AWSFIRELENS = "awsfirelens",
}

M.UlimitName = {
    CORE = "core",
    CPU = "cpu",
    DATA = "data",
    FSIZE = "fsize",
    LOCKS = "locks",
    MEMLOCK = "memlock",
    MSGQUEUE = "msgqueue",
    NICE = "nice",
    NOFILE = "nofile",
    NPROC = "nproc",
    RSS = "rss",
    RTPRIO = "rtprio",
    RTTIME = "rttime",
    SIGPENDING = "sigpending",
    STACK = "stack",
}

M.DaemonTaskDefinitionStatus = {
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETED = "DELETED",
}

M.DaemonTaskDefinitionRevisionFilter = {
    LAST_REGISTERED = "LAST_REGISTERED",
}

M.SortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.DaemonTaskDefinitionStatusFilter = {
    ACTIVE = "ACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    ALL = "ALL",
}

M.SettingName = {
    SERVICE_LONG_ARN_FORMAT = "serviceLongArnFormat",
    TASK_LONG_ARN_FORMAT = "taskLongArnFormat",
    CONTAINER_INSTANCE_LONG_ARN_FORMAT = "containerInstanceLongArnFormat",
    AWSVPC_TRUNKING = "awsvpcTrunking",
    CONTAINER_INSIGHTS = "containerInsights",
    FARGATE_FIPS_MODE = "fargateFIPSMode",
    TAG_RESOURCE_AUTHORIZATION = "tagResourceAuthorization",
    FARGATE_TASK_RETIREMENT_WAIT_PERIOD = "fargateTaskRetirementWaitPeriod",
    GUARD_DUTY_ACTIVATE = "guardDutyActivate",
    DEFAULT_LOG_DRIVER_MODE = "defaultLogDriverMode",
    FARGATE_EVENT_WINDOWS = "fargateEventWindows",
}

M.SettingType = {
    USER = "user",
    AWS_MANAGED = "aws_managed",
}

M.Compatibility = {
    EC2 = "EC2",
    FARGATE = "FARGATE",
    EXTERNAL = "EXTERNAL",
    MANAGED_INSTANCES = "MANAGED_INSTANCES",
}

M.ApplicationProtocol = {
    HTTP = "http",
    HTTP2 = "http2",
    GRPC = "grpc",
}

M.ResourceType = {
    GPU = "GPU",
    INFERENCE_ACCELERATOR = "InferenceAccelerator",
}

M.VersionConsistency = {
    ENABLED = "enabled",
    DISABLED = "disabled",
}

M.IpcMode = {
    HOST = "host",
    TASK = "task",
    NONE = "none",
}

M.NetworkMode = {
    BRIDGE = "bridge",
    HOST = "host",
    AWSVPC = "awsvpc",
    NONE = "none",
}

M.PidMode = {
    HOST = "host",
    TASK = "task",
}

M.TaskDefinitionPlacementConstraintType = {
    MEMBER_OF = "memberOf",
}

M.ProxyConfigurationType = {
    APPMESH = "APPMESH",
}

M.CPUArchitecture = {
    X86_64 = "X86_64",
    ARM64 = "ARM64",
}

M.OSFamily = {
    WINDOWS_SERVER_2019_FULL = "WINDOWS_SERVER_2019_FULL",
    WINDOWS_SERVER_2019_CORE = "WINDOWS_SERVER_2019_CORE",
    WINDOWS_SERVER_2016_FULL = "WINDOWS_SERVER_2016_FULL",
    WINDOWS_SERVER_2004_CORE = "WINDOWS_SERVER_2004_CORE",
    WINDOWS_SERVER_2022_CORE = "WINDOWS_SERVER_2022_CORE",
    WINDOWS_SERVER_2022_FULL = "WINDOWS_SERVER_2022_FULL",
    WINDOWS_SERVER_2025_CORE = "WINDOWS_SERVER_2025_CORE",
    WINDOWS_SERVER_2025_FULL = "WINDOWS_SERVER_2025_FULL",
    WINDOWS_SERVER_20H2_CORE = "WINDOWS_SERVER_20H2_CORE",
    LINUX = "LINUX",
}

M.TaskDefinitionStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
}

M.Scope = {
    TASK = "task",
    SHARED = "shared",
}

M.EFSAuthorizationConfigIAM = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.EFSTransitEncryption = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TaskDefinitionField = {
    TAGS = "TAGS",
}

M.TaskDefinitionFamilyStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    ALL = "ALL",
}

M.ServiceDeploymentRollbackMonitorsStatus = {
    TRIGGERED = "TRIGGERED",
    MONITORING = "MONITORING",
    MONITORING_COMPLETE = "MONITORING_COMPLETE",
    DISABLED = "DISABLED",
}

M.DeploymentLifecycleHookStage = {
    RECONCILE_SERVICE = "RECONCILE_SERVICE",
    PRE_SCALE_UP = "PRE_SCALE_UP",
    POST_SCALE_UP = "POST_SCALE_UP",
    TEST_TRAFFIC_SHIFT = "TEST_TRAFFIC_SHIFT",
    POST_TEST_TRAFFIC_SHIFT = "POST_TEST_TRAFFIC_SHIFT",
    PRODUCTION_TRAFFIC_SHIFT = "PRODUCTION_TRAFFIC_SHIFT",
    POST_PRODUCTION_TRAFFIC_SHIFT = "POST_PRODUCTION_TRAFFIC_SHIFT",
}

M.DeploymentStrategy = {
    ROLLING = "ROLLING",
    BLUE_GREEN = "BLUE_GREEN",
    LINEAR = "LINEAR",
    CANARY = "CANARY",
}

M.ServiceDeploymentLifecycleStage = {
    RECONCILE_SERVICE = "RECONCILE_SERVICE",
    PRE_SCALE_UP = "PRE_SCALE_UP",
    SCALE_UP = "SCALE_UP",
    POST_SCALE_UP = "POST_SCALE_UP",
    TEST_TRAFFIC_SHIFT = "TEST_TRAFFIC_SHIFT",
    POST_TEST_TRAFFIC_SHIFT = "POST_TEST_TRAFFIC_SHIFT",
    PRODUCTION_TRAFFIC_SHIFT = "PRODUCTION_TRAFFIC_SHIFT",
    POST_PRODUCTION_TRAFFIC_SHIFT = "POST_PRODUCTION_TRAFFIC_SHIFT",
    BAKE_TIME = "BAKE_TIME",
    CLEAN_UP = "CLEAN_UP",
}

M.ServiceDeploymentStatus = {
    PENDING = "PENDING",
    SUCCESSFUL = "SUCCESSFUL",
    STOPPED = "STOPPED",
    STOP_REQUESTED = "STOP_REQUESTED",
    IN_PROGRESS = "IN_PROGRESS",
    ROLLBACK_REQUESTED = "ROLLBACK_REQUESTED",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    ROLLBACK_SUCCESSFUL = "ROLLBACK_SUCCESSFUL",
    ROLLBACK_FAILED = "ROLLBACK_FAILED",
}

M.ExpressGatewayServiceScalingMetric = {
    AverageCPUUtilization = "AVERAGE_CPU",
    AverageMemoryUtilization = "AVERAGE_MEMORY",
    RequestCountPerTarget = "REQUEST_COUNT_PER_TARGET",
}

M.ExpressGatewayServiceStatusCode = {
    ACTIVE = "ACTIVE",
    DRAINING = "DRAINING",
    INACTIVE = "INACTIVE",
}

M.AvailabilityZoneRebalancing = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DeploymentControllerType = {
    ECS = "ECS",
    CODE_DEPLOY = "CODE_DEPLOY",
    EXTERNAL = "EXTERNAL",
}

M.AssignPublicIp = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.PlacementConstraintType = {
    DISTINCT_INSTANCE = "distinctInstance",
    MEMBER_OF = "memberOf",
}

M.PlacementStrategyType = {
    RANDOM = "random",
    SPREAD = "spread",
    BINPACK = "binpack",
}

M.PropagateTags = {
    TASK_DEFINITION = "TASK_DEFINITION",
    SERVICE = "SERVICE",
    NONE = "NONE",
}

M.SchedulingStrategy = {
    REPLICA = "REPLICA",
    DAEMON = "DAEMON",
}

M.ServiceConnectAccessLoggingFormat = {
    TEXT = "TEXT",
    JSON = "JSON",
}

M.ServiceConnectIncludeQueryParameters = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.TaskFilesystemType = {
    EXT3 = "ext3",
    EXT4 = "ext4",
    XFS = "xfs",
    NTFS = "ntfs",
}

M.EBSResourceType = {
    VOLUME = "volume",
}

M.DeploymentRolloutState = {
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.ResourceManagementType = {
    CUSTOMER = "CUSTOMER",
    ECS = "ECS",
}

M.ScaleUnit = {
    PERCENT = "PERCENT",
}

M.StabilityStatus = {
    STEADY_STATE = "STEADY_STATE",
    STABILIZING = "STABILIZING",
}

M.ExpressGatewayServiceInclude = {
    TAGS = "TAGS",
}

M.ServiceField = {
    TAGS = "TAGS",
}

M.StopServiceDeploymentStopType = {
    ABORT = "ABORT",
    ROLLBACK = "ROLLBACK",
}

M.ManagedResourceStatus = {
    PROVISIONING = "PROVISIONING",
    ACTIVE = "ACTIVE",
    DEPROVISIONING = "DEPROVISIONING",
    DELETED = "DELETED",
    FAILED = "FAILED",
}

M.TaskField = {
    TAGS = "TAGS",
}

M.Connectivity = {
    CONNECTED = "CONNECTED",
    DISCONNECTED = "DISCONNECTED",
}

M.HealthStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
    UNKNOWN = "UNKNOWN",
}

M.TaskStopCode = {
    TASK_FAILED_TO_START = "TaskFailedToStart",
    ESSENTIAL_CONTAINER_EXITED = "EssentialContainerExited",
    USER_INITIATED = "UserInitiated",
    SERVICE_SCHEDULER_INITIATED = "ServiceSchedulerInitiated",
    SPOT_INTERRUPTION = "SpotInterruption",
    TERMINATION_NOTICE = "TerminationNotice",
}

M.TaskSetField = {
    TAGS = "TAGS",
}

return M
