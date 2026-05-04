local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        code = {
            type = "string",
        },
        docs = {
            type = "string",
        },
        message = {
            type = "string",
        },
        tip = {
            type = "string",
        },
    },
}

M.AccessDirection = {
    inbound = "inbound",
    outbound = "outbound",
}

M.AccessKeyLastUsed = {
    type = "structure",
    id = "AccessKeyLastUsed",
    members = {
        lastUsedDate = {
            type = "timestamp",
        },
        region = {
            type = "string",
        },
        serviceName = {
            type = "string",
        },
    },
}

M.StatusType = {
    Active = "Active",
    Inactive = "Inactive",
}

M.AccessKey = {
    type = "structure",
    id = "AccessKey",
    members = {
        accessKeyId = {
            type = "string",
        },
        secretAccessKey = {
            type = "string",
        },
        status = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        lastUsed = M.AccessKeyLastUsed,
    },
}

M.ResourceReceivingAccess = {
    type = "structure",
    id = "ResourceReceivingAccess",
    members = {
        name = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.AccessType = {
    Public = "public",
    Private = "private",
}

M.AccessRules = {
    type = "structure",
    id = "AccessRules",
    members = {
        getObject = {
            type = "string",
        },
        allowPublicOverrides = {
            type = "boolean",
        },
    },
}

M.BPAStatusMessage = {
    DEFAULTED_FOR_SLR_MISSING = "DEFAULTED_FOR_SLR_MISSING",
    SYNC_ON_HOLD = "SYNC_ON_HOLD",
    DEFAULTED_FOR_SLR_MISSING_ON_HOLD = "DEFAULTED_FOR_SLR_MISSING_ON_HOLD",
    Unknown = "Unknown",
}

M.AccountLevelBpaSyncStatus = {
    InSync = "InSync",
    Failed = "Failed",
    NeverSynced = "NeverSynced",
    Defaulted = "Defaulted",
}

M.AccountLevelBpaSync = {
    type = "structure",
    id = "AccountLevelBpaSync",
    members = {
        status = {
            type = "string",
        },
        lastSyncedAt = {
            type = "timestamp",
        },
        message = {
            type = "string",
        },
        bpaImpactsLightsail = {
            type = "boolean",
        },
    },
}

M.AccountSetupInProgressException = {
    type = "structure",
    id = "AccountSetupInProgressException",
    error = "client",
    members = {
        code = {
            type = "string",
        },
        docs = {
            type = "string",
        },
        message = {
            type = "string",
        },
        tip = {
            type = "string",
        },
    },
}

M.AddOn = {
    type = "structure",
    id = "AddOn",
    members = {
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        snapshotTimeOfDay = {
            type = "string",
        },
        nextSnapshotTimeOfDay = {
            type = "string",
        },
        threshold = {
            type = "string",
        },
        duration = {
            type = "string",
        },
    },
}

M.AddOnType = {
    AutoSnapshot = "AutoSnapshot",
    StopInstanceOnIdle = "StopInstanceOnIdle",
}

M.AutoSnapshotAddOnRequest = {
    type = "structure",
    id = "AutoSnapshotAddOnRequest",
    members = {
        snapshotTimeOfDay = {
            type = "string",
        },
    },
}

M.StopInstanceOnIdleRequest = {
    type = "structure",
    id = "StopInstanceOnIdleRequest",
    members = {
        threshold = {
            type = "string",
        },
        duration = {
            type = "string",
        },
    },
}

M.AddOnRequest = {
    type = "structure",
    id = "AddOnRequest",
    members = {
        addOnType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        autoSnapshotAddOnRequest = M.AutoSnapshotAddOnRequest,
        stopInstanceOnIdleRequest = M.StopInstanceOnIdleRequest,
    },
}

M.ComparisonOperator = {
    GreaterThanOrEqualToThreshold = "GreaterThanOrEqualToThreshold",
    GreaterThanThreshold = "GreaterThanThreshold",
    LessThanThreshold = "LessThanThreshold",
    LessThanOrEqualToThreshold = "LessThanOrEqualToThreshold",
}

M.ContactProtocol = {
    Email = "Email",
    SMS = "SMS",
}

M.RegionName = {
    US_EAST_1 = "us-east-1",
    US_EAST_2 = "us-east-2",
    US_WEST_1 = "us-west-1",
    US_WEST_2 = "us-west-2",
    EU_WEST_1 = "eu-west-1",
    EU_WEST_2 = "eu-west-2",
    EU_WEST_3 = "eu-west-3",
    EU_CENTRAL_1 = "eu-central-1",
    EU_NORTH_1 = "eu-north-1",
    CA_CENTRAL_1 = "ca-central-1",
    AP_SOUTH_1 = "ap-south-1",
    AP_SOUTHEAST_1 = "ap-southeast-1",
    AP_SOUTHEAST_2 = "ap-southeast-2",
    AP_NORTHEAST_1 = "ap-northeast-1",
    AP_NORTHEAST_2 = "ap-northeast-2",
    AP_SOUTHEAST_3 = "ap-southeast-3",
    AP_SOUTHEAST_5 = "ap-southeast-5",
}

M.ResourceLocation = {
    type = "structure",
    id = "ResourceLocation",
    members = {
        availabilityZone = {
            type = "string",
        },
        regionName = {
            type = "string",
        },
    },
}

M.MetricName = {
    CPUUtilization = "CPUUtilization",
    NetworkIn = "NetworkIn",
    NetworkOut = "NetworkOut",
    StatusCheckFailed = "StatusCheckFailed",
    StatusCheckFailed_Instance = "StatusCheckFailed_Instance",
    StatusCheckFailed_System = "StatusCheckFailed_System",
    ClientTLSNegotiationErrorCount = "ClientTLSNegotiationErrorCount",
    HealthyHostCount = "HealthyHostCount",
    UnhealthyHostCount = "UnhealthyHostCount",
    HTTPCode_LB_4XX_Count = "HTTPCode_LB_4XX_Count",
    HTTPCode_LB_5XX_Count = "HTTPCode_LB_5XX_Count",
    HTTPCode_Instance_2XX_Count = "HTTPCode_Instance_2XX_Count",
    HTTPCode_Instance_3XX_Count = "HTTPCode_Instance_3XX_Count",
    HTTPCode_Instance_4XX_Count = "HTTPCode_Instance_4XX_Count",
    HTTPCode_Instance_5XX_Count = "HTTPCode_Instance_5XX_Count",
    InstanceResponseTime = "InstanceResponseTime",
    RejectedConnectionCount = "RejectedConnectionCount",
    RequestCount = "RequestCount",
    DatabaseConnections = "DatabaseConnections",
    DiskQueueDepth = "DiskQueueDepth",
    FreeStorageSpace = "FreeStorageSpace",
    NetworkReceiveThroughput = "NetworkReceiveThroughput",
    NetworkTransmitThroughput = "NetworkTransmitThroughput",
    BurstCapacityTime = "BurstCapacityTime",
    BurstCapacityPercentage = "BurstCapacityPercentage",
}

M.ResourceType = {
    ContainerService = "ContainerService",
    Instance = "Instance",
    StaticIp = "StaticIp",
    KeyPair = "KeyPair",
    InstanceSnapshot = "InstanceSnapshot",
    Domain = "Domain",
    PeeredVpc = "PeeredVpc",
    LoadBalancer = "LoadBalancer",
    LoadBalancerTlsCertificate = "LoadBalancerTlsCertificate",
    Disk = "Disk",
    DiskSnapshot = "DiskSnapshot",
    RelationalDatabase = "RelationalDatabase",
    RelationalDatabaseSnapshot = "RelationalDatabaseSnapshot",
    ExportSnapshotRecord = "ExportSnapshotRecord",
    CloudFormationStackRecord = "CloudFormationStackRecord",
    Alarm = "Alarm",
    ContactMethod = "ContactMethod",
    Distribution = "Distribution",
    Certificate = "Certificate",
    Bucket = "Bucket",
}

M.MonitoredResourceInfo = {
    type = "structure",
    id = "MonitoredResourceInfo",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.AlarmState = {
    OK = "OK",
    ALARM = "ALARM",
    INSUFFICIENT_DATA = "INSUFFICIENT_DATA",
}

M.MetricStatistic = {
    Minimum = "Minimum",
    Maximum = "Maximum",
    Sum = "Sum",
    Average = "Average",
    SampleCount = "SampleCount",
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.TreatMissingData = {
    Breaching = "breaching",
    NotBreaching = "notBreaching",
    Ignore = "ignore",
    Missing = "missing",
}

M.MetricUnit = {
    Seconds = "Seconds",
    Microseconds = "Microseconds",
    Milliseconds = "Milliseconds",
    Bytes = "Bytes",
    Kilobytes = "Kilobytes",
    Megabytes = "Megabytes",
    Gigabytes = "Gigabytes",
    Terabytes = "Terabytes",
    Bits = "Bits",
    Kilobits = "Kilobits",
    Megabits = "Megabits",
    Gigabits = "Gigabits",
    Terabits = "Terabits",
    Percent = "Percent",
    Count = "Count",
    BytesSecond = "Bytes/Second",
    KilobytesSecond = "Kilobytes/Second",
    MegabytesSecond = "Megabytes/Second",
    GigabytesSecond = "Gigabytes/Second",
    TerabytesSecond = "Terabytes/Second",
    BitsSecond = "Bits/Second",
    KilobitsSecond = "Kilobits/Second",
    MegabitsSecond = "Megabits/Second",
    GigabitsSecond = "Gigabits/Second",
    TerabitsSecond = "Terabits/Second",
    CountSecond = "Count/Second",
    None = "None",
}

M.Alarm = {
    type = "structure",
    id = "Alarm",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        monitoredResourceInfo = M.MonitoredResourceInfo,
        comparisonOperator = {
            type = "string",
        },
        evaluationPeriods = {
            type = "integer",
        },
        period = {
            type = "integer",
        },
        threshold = {
            type = "double",
        },
        datapointsToAlarm = {
            type = "integer",
        },
        treatMissingData = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        metricName = {
            type = "string",
        },
        state = {
            type = "string",
        },
        unit = {
            type = "string",
        },
        contactProtocols = {
            type = "list",
            member = { type = "string" },
        },
        notificationTriggers = {
            type = "list",
            member = { type = "string" },
        },
        notificationEnabled = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.AllocateStaticIpInput = {
    type = "structure",
    id = "AllocateStaticIpInput",
    members = {
        staticIpName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OperationType = {
    DeleteKnownHostKeys = "DeleteKnownHostKeys",
    DeleteInstance = "DeleteInstance",
    CreateInstance = "CreateInstance",
    StopInstance = "StopInstance",
    StartInstance = "StartInstance",
    RebootInstance = "RebootInstance",
    OpenInstancePublicPorts = "OpenInstancePublicPorts",
    PutInstancePublicPorts = "PutInstancePublicPorts",
    CloseInstancePublicPorts = "CloseInstancePublicPorts",
    AllocateStaticIp = "AllocateStaticIp",
    ReleaseStaticIp = "ReleaseStaticIp",
    AttachStaticIp = "AttachStaticIp",
    DetachStaticIp = "DetachStaticIp",
    UpdateDomainEntry = "UpdateDomainEntry",
    DeleteDomainEntry = "DeleteDomainEntry",
    CreateDomain = "CreateDomain",
    DeleteDomain = "DeleteDomain",
    CreateInstanceSnapshot = "CreateInstanceSnapshot",
    DeleteInstanceSnapshot = "DeleteInstanceSnapshot",
    CreateInstancesFromSnapshot = "CreateInstancesFromSnapshot",
    CreateLoadBalancer = "CreateLoadBalancer",
    DeleteLoadBalancer = "DeleteLoadBalancer",
    AttachInstancesToLoadBalancer = "AttachInstancesToLoadBalancer",
    DetachInstancesFromLoadBalancer = "DetachInstancesFromLoadBalancer",
    UpdateLoadBalancerAttribute = "UpdateLoadBalancerAttribute",
    CreateLoadBalancerTlsCertificate = "CreateLoadBalancerTlsCertificate",
    DeleteLoadBalancerTlsCertificate = "DeleteLoadBalancerTlsCertificate",
    AttachLoadBalancerTlsCertificate = "AttachLoadBalancerTlsCertificate",
    CreateDisk = "CreateDisk",
    DeleteDisk = "DeleteDisk",
    AttachDisk = "AttachDisk",
    DetachDisk = "DetachDisk",
    CreateDiskSnapshot = "CreateDiskSnapshot",
    DeleteDiskSnapshot = "DeleteDiskSnapshot",
    CreateDiskFromSnapshot = "CreateDiskFromSnapshot",
    CreateRelationalDatabase = "CreateRelationalDatabase",
    UpdateRelationalDatabase = "UpdateRelationalDatabase",
    DeleteRelationalDatabase = "DeleteRelationalDatabase",
    CreateRelationalDatabaseFromSnapshot = "CreateRelationalDatabaseFromSnapshot",
    CreateRelationalDatabaseSnapshot = "CreateRelationalDatabaseSnapshot",
    DeleteRelationalDatabaseSnapshot = "DeleteRelationalDatabaseSnapshot",
    UpdateRelationalDatabaseParameters = "UpdateRelationalDatabaseParameters",
    StartRelationalDatabase = "StartRelationalDatabase",
    RebootRelationalDatabase = "RebootRelationalDatabase",
    StopRelationalDatabase = "StopRelationalDatabase",
    EnableAddOn = "EnableAddOn",
    DisableAddOn = "DisableAddOn",
    PutAlarm = "PutAlarm",
    GetAlarms = "GetAlarms",
    DeleteAlarm = "DeleteAlarm",
    TestAlarm = "TestAlarm",
    CreateContactMethod = "CreateContactMethod",
    GetContactMethods = "GetContactMethods",
    SendContactMethodVerification = "SendContactMethodVerification",
    DeleteContactMethod = "DeleteContactMethod",
    CreateDistribution = "CreateDistribution",
    UpdateDistribution = "UpdateDistribution",
    DeleteDistribution = "DeleteDistribution",
    ResetDistributionCache = "ResetDistributionCache",
    AttachCertificateToDistribution = "AttachCertificateToDistribution",
    DetachCertificateFromDistribution = "DetachCertificateFromDistribution",
    UpdateDistributionBundle = "UpdateDistributionBundle",
    SetIpAddressType = "SetIpAddressType",
    CreateCertificate = "CreateCertificate",
    DeleteCertificate = "DeleteCertificate",
    CreateContainerService = "CreateContainerService",
    UpdateContainerService = "UpdateContainerService",
    DeleteContainerService = "DeleteContainerService",
    CreateContainerServiceDeployment = "CreateContainerServiceDeployment",
    CreateContainerServiceRegistryLogin = "CreateContainerServiceRegistryLogin",
    RegisterContainerImage = "RegisterContainerImage",
    DeleteContainerImage = "DeleteContainerImage",
    CreateBucket = "CreateBucket",
    DeleteBucket = "DeleteBucket",
    CreateBucketAccessKey = "CreateBucketAccessKey",
    DeleteBucketAccessKey = "DeleteBucketAccessKey",
    UpdateBucketBundle = "UpdateBucketBundle",
    UpdateBucket = "UpdateBucket",
    SetResourceAccessForBucket = "SetResourceAccessForBucket",
    UpdateInstanceMetadataOptions = "UpdateInstanceMetadataOptions",
    StartGUISession = "StartGUISession",
    StopGUISession = "StopGUISession",
    SetupInstanceHttps = "SetupInstanceHttps",
}

M.OperationStatus = {
    NotStarted = "NotStarted",
    Started = "Started",
    Failed = "Failed",
    Completed = "Completed",
    Succeeded = "Succeeded",
}

M.Operation = {
    type = "structure",
    id = "Operation",
    members = {
        id = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        isTerminal = {
            type = "boolean",
        },
        operationDetails = {
            type = "string",
        },
        operationType = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusChangedAt = {
            type = "timestamp",
        },
        errorCode = {
            type = "string",
        },
        errorDetails = {
            type = "string",
        },
    },
}

M.AllocateStaticIpOutput = {
    type = "structure",
    id = "AllocateStaticIpOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        code = {
            type = "string",
        },
        docs = {
            type = "string",
        },
        message = {
            type = "string",
        },
        tip = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        code = {
            type = "string",
        },
        docs = {
            type = "string",
        },
        message = {
            type = "string",
        },
        tip = {
            type = "string",
        },
    },
}

M.OperationFailureException = {
    type = "structure",
    id = "OperationFailureException",
    error = "client",
    members = {
        code = {
            type = "string",
        },
        docs = {
            type = "string",
        },
        message = {
            type = "string",
        },
        tip = {
            type = "string",
        },
    },
}

M.RegionSetupInProgressException = {
    type = "structure",
    id = "RegionSetupInProgressException",
    error = "client",
    members = {
        code = {
            type = "string",
        },
        docs = {
            type = "string",
        },
        message = {
            type = "string",
        },
        tip = {
            type = "string",
        },
    },
}

M.ServiceException = {
    type = "structure",
    id = "ServiceException",
    error = "server",
    members = {
        code = {
            type = "string",
        },
        docs = {
            type = "string",
        },
        message = {
            type = "string",
        },
        tip = {
            type = "string",
        },
    },
}

M.UnauthenticatedException = {
    type = "structure",
    id = "UnauthenticatedException",
    error = "client",
    members = {
        code = {
            type = "string",
        },
        docs = {
            type = "string",
        },
        message = {
            type = "string",
        },
        tip = {
            type = "string",
        },
    },
}

M.AppCategory = {
    LfR = "LfR",
}

M.AttachCertificateToDistributionInput = {
    type = "structure",
    id = "AttachCertificateToDistributionInput",
    members = {
        distributionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachCertificateToDistributionOutput = {
    type = "structure",
    id = "AttachCertificateToDistributionOutput",
    members = {
        operation = M.Operation,
    },
}

M.AttachDiskInput = {
    type = "structure",
    id = "AttachDiskInput",
    members = {
        diskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        diskPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        autoMounting = {
            type = "boolean",
        },
    },
}

M.AttachDiskOutput = {
    type = "structure",
    id = "AttachDiskOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.AttachedDisk = {
    type = "structure",
    id = "AttachedDisk",
    members = {
        path = {
            type = "string",
        },
        sizeInGb = {
            type = "integer",
        },
    },
}

M.DiskMap = {
    type = "structure",
    id = "DiskMap",
    members = {
        originalDiskPath = {
            type = "string",
        },
        newDiskName = {
            type = "string",
        },
    },
}

M.AttachInstancesToLoadBalancerInput = {
    type = "structure",
    id = "AttachInstancesToLoadBalancerInput",
    members = {
        loadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AttachInstancesToLoadBalancerOutput = {
    type = "structure",
    id = "AttachInstancesToLoadBalancerOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.AttachLoadBalancerTlsCertificateInput = {
    type = "structure",
    id = "AttachLoadBalancerTlsCertificateInput",
    members = {
        loadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachLoadBalancerTlsCertificateOutput = {
    type = "structure",
    id = "AttachLoadBalancerTlsCertificateOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.AttachStaticIpInput = {
    type = "structure",
    id = "AttachStaticIpInput",
    members = {
        staticIpName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachStaticIpOutput = {
    type = "structure",
    id = "AttachStaticIpOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.AutoMountStatus = {
    Failed = "Failed",
    Pending = "Pending",
    Mounted = "Mounted",
    NotMounted = "NotMounted",
}

M.AutoSnapshotStatus = {
    SUCCESS = "Success",
    FAILED = "Failed",
    IN_PROGRESS = "InProgress",
    NOT_FOUND = "NotFound",
}

M.AutoSnapshotDetails = {
    type = "structure",
    id = "AutoSnapshotDetails",
    members = {
        date = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        fromAttachedDisks = {
            type = "list",
            member = M.AttachedDisk,
        },
    },
}

M.AvailabilityZone = {
    type = "structure",
    id = "AvailabilityZone",
    members = {
        zoneName = {
            type = "string",
        },
        state = {
            type = "string",
        },
    },
}

M.BehaviorEnum = {
    DontCacheSetting = "dont-cache",
    CacheSetting = "cache",
}

M.InstancePlatform = {
    LinuxUnix = "LINUX_UNIX",
    Windows = "WINDOWS",
}

M.BlueprintType = {
    os = "os",
    app = "app",
}

M.Blueprint = {
    type = "structure",
    id = "Blueprint",
    members = {
        blueprintId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        group = {
            type = "string",
        },
        type = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isActive = {
            type = "boolean",
        },
        minPower = {
            type = "integer",
        },
        version = {
            type = "string",
        },
        versionCode = {
            type = "string",
        },
        productUrl = {
            type = "string",
        },
        licenseUrl = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        appCategory = {
            type = "string",
        },
    },
}

M.BucketAccessLogConfig = {
    type = "structure",
    id = "BucketAccessLogConfig",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
        },
        prefix = {
            type = "string",
        },
    },
}

M.BucketCorsRule = {
    type = "structure",
    id = "BucketCorsRule",
    members = {
        id = {
            type = "string",
        },
        allowedMethods = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        allowedOrigins = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        allowedHeaders = {
            type = "list",
            member = { type = "string" },
        },
        exposeHeaders = {
            type = "list",
            member = { type = "string" },
        },
        maxAgeSeconds = {
            type = "integer",
        },
    },
}

M.BucketCorsConfig = {
    type = "structure",
    id = "BucketCorsConfig",
    members = {
        rules = {
            type = "list",
            member = M.BucketCorsRule,
        },
    },
}

M.BucketState = {
    type = "structure",
    id = "BucketState",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.Bucket = {
    type = "structure",
    id = "Bucket",
    members = {
        resourceType = {
            type = "string",
        },
        accessRules = M.AccessRules,
        arn = {
            type = "string",
        },
        bundleId = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        url = {
            type = "string",
        },
        location = M.ResourceLocation,
        name = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        objectVersioning = {
            type = "string",
        },
        ableToUpdateBundle = {
            type = "boolean",
        },
        readonlyAccessAccounts = {
            type = "list",
            member = { type = "string" },
        },
        resourcesReceivingAccess = {
            type = "list",
            member = M.ResourceReceivingAccess,
        },
        state = M.BucketState,
        accessLogConfig = M.BucketAccessLogConfig,
        cors = M.BucketCorsConfig,
    },
}

M.BucketBundle = {
    type = "structure",
    id = "BucketBundle",
    members = {
        bundleId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        price = {
            type = "float",
        },
        storagePerMonthInGb = {
            type = "integer",
        },
        transferPerMonthInGb = {
            type = "integer",
        },
        isActive = {
            type = "boolean",
        },
    },
}

M.BucketMetricName = {
    BucketSizeBytes = "BucketSizeBytes",
    NumberOfObjects = "NumberOfObjects",
}

M.Bundle = {
    type = "structure",
    id = "Bundle",
    members = {
        price = {
            type = "float",
        },
        cpuCount = {
            type = "integer",
        },
        diskSizeInGb = {
            type = "integer",
        },
        bundleId = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        isActive = {
            type = "boolean",
        },
        name = {
            type = "string",
        },
        power = {
            type = "integer",
        },
        ramSizeInGb = {
            type = "float",
        },
        transferPerMonthInGb = {
            type = "integer",
        },
        supportedPlatforms = {
            type = "list",
            member = { type = "string" },
        },
        supportedAppCategories = {
            type = "list",
            member = { type = "string" },
        },
        publicIpv4AddressCount = {
            type = "integer",
        },
    },
}

M.CacheBehavior = {
    type = "structure",
    id = "CacheBehavior",
    members = {
        behavior = {
            type = "string",
        },
    },
}

M.CacheBehaviorPerPath = {
    type = "structure",
    id = "CacheBehaviorPerPath",
    members = {
        path = {
            type = "string",
        },
        behavior = {
            type = "string",
        },
    },
}

M.ForwardValues = {
    none = "none",
    allowList = "allow-list",
    all = "all",
}

M.CookieObject = {
    type = "structure",
    id = "CookieObject",
    members = {
        option = {
            type = "string",
        },
        cookiesAllowList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.HeaderEnum = {
    accept = "Accept",
    acceptCharset = "Accept-Charset",
    acceptDatetime = "Accept-Datetime",
    acceptEncoding = "Accept-Encoding",
    acceptLanguage = "Accept-Language",
    authorization = "Authorization",
    cloudFrontForwardedProto = "CloudFront-Forwarded-Proto",
    cloudFrontIsDesktopViewer = "CloudFront-Is-Desktop-Viewer",
    cloudFrontIsMobileViewer = "CloudFront-Is-Mobile-Viewer",
    cloudFrontIsSmartTVViewer = "CloudFront-Is-SmartTV-Viewer",
    cloudFrontIsTabletViewer = "CloudFront-Is-Tablet-Viewer",
    cloudFrontViewerCountry = "CloudFront-Viewer-Country",
    host = "Host",
    origin = "Origin",
    referer = "Referer",
}

M.HeaderObject = {
    type = "structure",
    id = "HeaderObject",
    members = {
        option = {
            type = "string",
        },
        headersAllowList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.QueryStringObject = {
    type = "structure",
    id = "QueryStringObject",
    members = {
        option = {
            type = "boolean",
        },
        queryStringsAllowList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CacheSettings = {
    type = "structure",
    id = "CacheSettings",
    members = {
        defaultTTL = {
            type = "long",
        },
        minimumTTL = {
            type = "long",
        },
        maximumTTL = {
            type = "long",
        },
        allowedHTTPMethods = {
            type = "string",
        },
        cachedHTTPMethods = {
            type = "string",
        },
        forwardedCookies = M.CookieObject,
        forwardedHeaders = M.HeaderObject,
        forwardedQueryStrings = M.QueryStringObject,
    },
}

M.DnsRecordCreationStateCode = {
    Succeeded = "SUCCEEDED",
    Started = "STARTED",
    Failed = "FAILED",
}

M.DnsRecordCreationState = {
    type = "structure",
    id = "DnsRecordCreationState",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ResourceRecord = {
    type = "structure",
    id = "ResourceRecord",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.CertificateDomainValidationStatus = {
    PendingValidation = "PENDING_VALIDATION",
    Failed = "FAILED",
    Success = "SUCCESS",
}

M.DomainValidationRecord = {
    type = "structure",
    id = "DomainValidationRecord",
    members = {
        domainName = {
            type = "string",
        },
        resourceRecord = M.ResourceRecord,
        dnsRecordCreationState = M.DnsRecordCreationState,
        validationStatus = {
            type = "string",
        },
    },
}

M.RenewalStatus = {
    PendingAutoRenewal = "PendingAutoRenewal",
    PendingValidation = "PendingValidation",
    Success = "Success",
    Failed = "Failed",
}

M.RenewalSummary = {
    type = "structure",
    id = "RenewalSummary",
    members = {
        domainValidationRecords = {
            type = "list",
            member = M.DomainValidationRecord,
        },
        renewalStatus = {
            type = "string",
        },
        renewalStatusReason = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.CertificateStatus = {
    PendingValidation = "PENDING_VALIDATION",
    Issued = "ISSUED",
    Inactive = "INACTIVE",
    Expired = "EXPIRED",
    ValidationTimedOut = "VALIDATION_TIMED_OUT",
    Revoked = "REVOKED",
    Failed = "FAILED",
}

M.Certificate = {
    type = "structure",
    id = "Certificate",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        domainName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        serialNumber = {
            type = "string",
        },
        subjectAlternativeNames = {
            type = "list",
            member = { type = "string" },
        },
        domainValidationRecords = {
            type = "list",
            member = M.DomainValidationRecord,
        },
        requestFailureReason = {
            type = "string",
        },
        inUseResourceCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        keyAlgorithm = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        issuedAt = {
            type = "timestamp",
        },
        issuerCA = {
            type = "string",
        },
        notBefore = {
            type = "timestamp",
        },
        notAfter = {
            type = "timestamp",
        },
        eligibleToRenew = {
            type = "string",
        },
        renewalSummary = M.RenewalSummary,
        revokedAt = {
            type = "timestamp",
        },
        revocationReason = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        supportCode = {
            type = "string",
        },
    },
}

M.CertificateProvider = {
    LetsEncrypt = "LetsEncrypt",
}

M.CertificateSummary = {
    type = "structure",
    id = "CertificateSummary",
    members = {
        certificateArn = {
            type = "string",
        },
        certificateName = {
            type = "string",
        },
        domainName = {
            type = "string",
        },
        certificateDetail = M.Certificate,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.NetworkProtocol = {
    TCP = "tcp",
    ALL = "all",
    UDP = "udp",
    ICMP = "icmp",
    ICMPV6 = "icmpv6",
}

M.PortInfo = {
    type = "structure",
    id = "PortInfo",
    members = {
        fromPort = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        toPort = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        protocol = {
            type = "string",
        },
        cidrs = {
            type = "list",
            member = { type = "string" },
        },
        ipv6Cidrs = {
            type = "list",
            member = { type = "string" },
        },
        cidrListAliases = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CloseInstancePublicPortsInput = {
    type = "structure",
    id = "CloseInstancePublicPortsInput",
    members = {
        portInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PortInfo }),
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloseInstancePublicPortsOutput = {
    type = "structure",
    id = "CloseInstancePublicPortsOutput",
    members = {
        operation = M.Operation,
    },
}

M.DestinationInfo = {
    type = "structure",
    id = "DestinationInfo",
    members = {
        id = {
            type = "string",
        },
        service = {
            type = "string",
        },
    },
}

M.CloudFormationStackRecordSourceType = {
    ExportSnapshotRecord = "ExportSnapshotRecord",
}

M.CloudFormationStackRecordSourceInfo = {
    type = "structure",
    id = "CloudFormationStackRecordSourceInfo",
    members = {
        resourceType = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.RecordState = {
    Started = "Started",
    Succeeded = "Succeeded",
    Failed = "Failed",
}

M.CloudFormationStackRecord = {
    type = "structure",
    id = "CloudFormationStackRecord",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        state = {
            type = "string",
        },
        sourceInfo = {
            type = "list",
            member = M.CloudFormationStackRecordSourceInfo,
        },
        destinationInfo = M.DestinationInfo,
    },
}

M.ContactMethodStatus = {
    PendingVerification = "PendingVerification",
    Valid = "Valid",
    Invalid = "Invalid",
}

M.ContactMethod = {
    type = "structure",
    id = "ContactMethod",
    members = {
        contactEndpoint = {
            type = "string",
        },
        status = {
            type = "string",
        },
        protocol = {
            type = "string",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ContactMethodVerificationProtocol = {
    Email = "Email",
}

M.ContainerServiceProtocol = {
    HTTP = "HTTP",
    HTTPS = "HTTPS",
    TCP = "TCP",
    UDP = "UDP",
}

M.Container = {
    type = "structure",
    id = "Container",
    members = {
        image = {
            type = "string",
        },
        command = {
            type = "list",
            member = { type = "string" },
        },
        environment = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ports = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ContainerImage = {
    type = "structure",
    id = "ContainerImage",
    members = {
        image = {
            type = "string",
        },
        digest = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.ContainerServiceHealthCheckConfig = {
    type = "structure",
    id = "ContainerServiceHealthCheckConfig",
    members = {
        healthyThreshold = {
            type = "integer",
        },
        unhealthyThreshold = {
            type = "integer",
        },
        timeoutSeconds = {
            type = "integer",
        },
        intervalSeconds = {
            type = "integer",
        },
        path = {
            type = "string",
        },
        successCodes = {
            type = "string",
        },
    },
}

M.ContainerServiceEndpoint = {
    type = "structure",
    id = "ContainerServiceEndpoint",
    members = {
        containerName = {
            type = "string",
        },
        containerPort = {
            type = "integer",
        },
        healthCheck = M.ContainerServiceHealthCheckConfig,
    },
}

M.ContainerServiceDeploymentState = {
    ACTIVATING = "ACTIVATING",
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    FAILED = "FAILED",
}

M.ContainerServiceDeployment = {
    type = "structure",
    id = "ContainerServiceDeployment",
    members = {
        version = {
            type = "integer",
        },
        state = {
            type = "string",
        },
        containers = {
            type = "map",
            key = { type = "string" },
            value = M.Container,
        },
        publicEndpoint = M.ContainerServiceEndpoint,
        createdAt = {
            type = "timestamp",
        },
    },
}

M.ContainerServicePowerName = {
    nano = "nano",
    micro = "micro",
    small = "small",
    medium = "medium",
    large = "large",
    xlarge = "xlarge",
}

M.ContainerServiceECRImagePullerRole = {
    type = "structure",
    id = "ContainerServiceECRImagePullerRole",
    members = {
        isActive = {
            type = "boolean",
        },
        principalArn = {
            type = "string",
        },
    },
}

M.PrivateRegistryAccess = {
    type = "structure",
    id = "PrivateRegistryAccess",
    members = {
        ecrImagePullerRole = M.ContainerServiceECRImagePullerRole,
    },
}

M.ContainerServiceState = {
    PENDING = "PENDING",
    READY = "READY",
    RUNNING = "RUNNING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DISABLED = "DISABLED",
    DEPLOYING = "DEPLOYING",
}

M.ContainerServiceStateDetailCode = {
    CREATING_SYSTEM_RESOURCES = "CREATING_SYSTEM_RESOURCES",
    CREATING_NETWORK_INFRASTRUCTURE = "CREATING_NETWORK_INFRASTRUCTURE",
    PROVISIONING_CERTIFICATE = "PROVISIONING_CERTIFICATE",
    PROVISIONING_SERVICE = "PROVISIONING_SERVICE",
    CREATING_DEPLOYMENT = "CREATING_DEPLOYMENT",
    EVALUATING_HEALTH_CHECK = "EVALUATING_HEALTH_CHECK",
    ACTIVATING_DEPLOYMENT = "ACTIVATING_DEPLOYMENT",
    CERTIFICATE_LIMIT_EXCEEDED = "CERTIFICATE_LIMIT_EXCEEDED",
    UNKNOWN_ERROR = "UNKNOWN_ERROR",
}

M.ContainerServiceStateDetail = {
    type = "structure",
    id = "ContainerServiceStateDetail",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.ContainerService = {
    type = "structure",
    id = "ContainerService",
    members = {
        containerServiceName = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        power = {
            type = "string",
        },
        powerId = {
            type = "string",
        },
        state = {
            type = "string",
        },
        stateDetail = M.ContainerServiceStateDetail,
        scale = {
            type = "integer",
        },
        currentDeployment = M.ContainerServiceDeployment,
        nextDeployment = M.ContainerServiceDeployment,
        isDisabled = {
            type = "boolean",
        },
        principalArn = {
            type = "string",
        },
        privateDomainName = {
            type = "string",
        },
        publicDomainNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        url = {
            type = "string",
        },
        privateRegistryAccess = M.PrivateRegistryAccess,
    },
}

M.EndpointRequest = {
    type = "structure",
    id = "EndpointRequest",
    members = {
        containerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        containerPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        healthCheck = M.ContainerServiceHealthCheckConfig,
    },
}

M.ContainerServiceDeploymentRequest = {
    type = "structure",
    id = "ContainerServiceDeploymentRequest",
    members = {
        containers = {
            type = "map",
            key = { type = "string" },
            value = M.Container,
        },
        publicEndpoint = M.EndpointRequest,
    },
}

M.ContainerServiceECRImagePullerRoleRequest = {
    type = "structure",
    id = "ContainerServiceECRImagePullerRoleRequest",
    members = {
        isActive = {
            type = "boolean",
        },
    },
}

M.ContainerServiceLogEvent = {
    type = "structure",
    id = "ContainerServiceLogEvent",
    members = {
        createdAt = {
            type = "timestamp",
        },
        message = {
            type = "string",
        },
    },
}

M.ContainerServiceMetricName = {
    CPUUtilization = "CPUUtilization",
    MemoryUtilization = "MemoryUtilization",
}

M.ContainerServicePower = {
    type = "structure",
    id = "ContainerServicePower",
    members = {
        powerId = {
            type = "string",
        },
        price = {
            type = "float",
        },
        cpuCount = {
            type = "float",
        },
        ramSizeInGb = {
            type = "float",
        },
        name = {
            type = "string",
        },
        isActive = {
            type = "boolean",
        },
    },
}

M.ContainerServiceRegistryLogin = {
    type = "structure",
    id = "ContainerServiceRegistryLogin",
    members = {
        username = {
            type = "string",
        },
        password = {
            type = "string",
        },
        expiresAt = {
            type = "timestamp",
        },
        registry = {
            type = "string",
        },
    },
}

M.CopySnapshotInput = {
    type = "structure",
    id = "CopySnapshotInput",
    members = {
        sourceSnapshotName = {
            type = "string",
        },
        sourceResourceName = {
            type = "string",
        },
        restoreDate = {
            type = "string",
        },
        useLatestRestorableAutoSnapshot = {
            type = "boolean",
        },
        targetSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CopySnapshotOutput = {
    type = "structure",
    id = "CopySnapshotOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.Currency = {
    USD = "USD",
}

M.PricingUnit = {
    GB = "GB",
    Hrs = "Hrs",
    GBMo = "GB-Mo",
    Bundles = "Bundles",
    Queries = "Queries",
}

M.TimePeriod = {
    type = "structure",
    id = "TimePeriod",
    members = {
        start = {
            type = "timestamp",
        },
        end = {
            type = "timestamp",
        },
    },
}

M.EstimateByTime = {
    type = "structure",
    id = "EstimateByTime",
    members = {
        usageCost = {
            type = "double",
        },
        pricingUnit = {
            type = "string",
        },
        unit = {
            type = "double",
        },
        currency = {
            type = "string",
        },
        timePeriod = M.TimePeriod,
    },
}

M.CostEstimate = {
    type = "structure",
    id = "CostEstimate",
    members = {
        usageType = {
            type = "string",
        },
        resultsByTime = {
            type = "list",
            member = M.EstimateByTime,
        },
    },
}

M.CreateBucketInput = {
    type = "structure",
    id = "CreateBucketInput",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        enableObjectVersioning = {
            type = "boolean",
        },
    },
}

M.CreateBucketOutput = {
    type = "structure",
    id = "CreateBucketOutput",
    members = {
        bucket = M.Bucket,
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateBucketAccessKeyInput = {
    type = "structure",
    id = "CreateBucketAccessKeyInput",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBucketAccessKeyOutput = {
    type = "structure",
    id = "CreateBucketAccessKeyOutput",
    members = {
        accessKey = M.AccessKey,
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateCertificateInput = {
    type = "structure",
    id = "CreateCertificateInput",
    members = {
        certificateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subjectAlternativeNames = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateCertificateOutput = {
    type = "structure",
    id = "CreateCertificateOutput",
    members = {
        certificate = M.CertificateSummary,
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.PortInfoSourceType = {
    Default = "DEFAULT",
    Instance = "INSTANCE",
    None = "NONE",
    Closed = "CLOSED",
}

M.InstanceEntry = {
    type = "structure",
    id = "InstanceEntry",
    members = {
        sourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        portInfoSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userData = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCloudFormationStackInput = {
    type = "structure",
    id = "CreateCloudFormationStackInput",
    members = {
        instances = {
            type = "list",
            member = M.InstanceEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCloudFormationStackOutput = {
    type = "structure",
    id = "CreateCloudFormationStackOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateContactMethodInput = {
    type = "structure",
    id = "CreateContactMethodInput",
    members = {
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contactEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateContactMethodOutput = {
    type = "structure",
    id = "CreateContactMethodOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.PrivateRegistryAccessRequest = {
    type = "structure",
    id = "PrivateRegistryAccessRequest",
    members = {
        ecrImagePullerRole = M.ContainerServiceECRImagePullerRoleRequest,
    },
}

M.CreateContainerServiceInput = {
    type = "structure",
    id = "CreateContainerServiceInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        power = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scale = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        publicDomainNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        deployment = M.ContainerServiceDeploymentRequest,
        privateRegistryAccess = M.PrivateRegistryAccessRequest,
    },
}

M.CreateContainerServiceOutput = {
    type = "structure",
    id = "CreateContainerServiceOutput",
    members = {
        containerService = M.ContainerService,
    },
}

M.CreateContainerServiceDeploymentInput = {
    type = "structure",
    id = "CreateContainerServiceDeploymentInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        containers = {
            type = "map",
            key = { type = "string" },
            value = M.Container,
        },
        publicEndpoint = M.EndpointRequest,
    },
}

M.CreateContainerServiceDeploymentOutput = {
    type = "structure",
    id = "CreateContainerServiceDeploymentOutput",
    members = {
        containerService = M.ContainerService,
    },
}

M.CreateContainerServiceRegistryLoginInput = {
    type = "structure",
    id = "CreateContainerServiceRegistryLoginInput",
}

M.CreateContainerServiceRegistryLoginOutput = {
    type = "structure",
    id = "CreateContainerServiceRegistryLoginOutput",
    members = {
        registryLogin = M.ContainerServiceRegistryLogin,
    },
}

M.CreateDiskInput = {
    type = "structure",
    id = "CreateDiskInput",
    members = {
        diskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        availabilityZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sizeInGb = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        addOns = {
            type = "list",
            member = M.AddOnRequest,
        },
    },
}

M.CreateDiskOutput = {
    type = "structure",
    id = "CreateDiskOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateDiskFromSnapshotInput = {
    type = "structure",
    id = "CreateDiskFromSnapshotInput",
    members = {
        diskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        diskSnapshotName = {
            type = "string",
        },
        availabilityZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sizeInGb = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        addOns = {
            type = "list",
            member = M.AddOnRequest,
        },
        sourceDiskName = {
            type = "string",
        },
        restoreDate = {
            type = "string",
        },
        useLatestRestorableAutoSnapshot = {
            type = "boolean",
        },
    },
}

M.CreateDiskFromSnapshotOutput = {
    type = "structure",
    id = "CreateDiskFromSnapshotOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateDiskSnapshotInput = {
    type = "structure",
    id = "CreateDiskSnapshotInput",
    members = {
        diskName = {
            type = "string",
        },
        diskSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceName = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDiskSnapshotOutput = {
    type = "structure",
    id = "CreateDiskSnapshotOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.IpAddressType = {
    DUALSTACK = "dualstack",
    IPV4 = "ipv4",
    IPV6 = "ipv6",
}

M.OriginProtocolPolicyEnum = {
    HTTPOnly = "http-only",
    HTTPSOnly = "https-only",
}

M.InputOrigin = {
    type = "structure",
    id = "InputOrigin",
    members = {
        name = {
            type = "string",
        },
        regionName = {
            type = "string",
        },
        protocolPolicy = {
            type = "string",
        },
        responseTimeout = {
            type = "integer",
        },
    },
}

M.ViewerMinimumTlsProtocolVersionEnum = {
    TLSv11_2016 = "TLSv1.1_2016",
    TLSv12_2018 = "TLSv1.2_2018",
    TLSv12_2019 = "TLSv1.2_2019",
    TLSv12_2021 = "TLSv1.2_2021",
}

M.CreateDistributionInput = {
    type = "structure",
    id = "CreateDistributionInput",
    members = {
        distributionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        origin = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputOrigin }),
        defaultCacheBehavior = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CacheBehavior }),
        cacheBehaviorSettings = M.CacheSettings,
        cacheBehaviors = {
            type = "list",
            member = M.CacheBehaviorPerPath,
        },
        bundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipAddressType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        certificateName = {
            type = "string",
        },
        viewerMinimumTlsProtocolVersion = {
            type = "string",
        },
    },
}

M.Origin = {
    type = "structure",
    id = "Origin",
    members = {
        name = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        regionName = {
            type = "string",
        },
        protocolPolicy = {
            type = "string",
        },
        responseTimeout = {
            type = "integer",
        },
    },
}

M.LightsailDistribution = {
    type = "structure",
    id = "LightsailDistribution",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        alternativeDomainNames = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        isEnabled = {
            type = "boolean",
        },
        domainName = {
            type = "string",
        },
        bundleId = {
            type = "string",
        },
        certificateName = {
            type = "string",
        },
        origin = M.Origin,
        originPublicDNS = {
            type = "string",
        },
        defaultCacheBehavior = M.CacheBehavior,
        cacheBehaviorSettings = M.CacheSettings,
        cacheBehaviors = {
            type = "list",
            member = M.CacheBehaviorPerPath,
        },
        ableToUpdateBundle = {
            type = "boolean",
        },
        ipAddressType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        viewerMinimumTlsProtocolVersion = {
            type = "string",
        },
    },
}

M.CreateDistributionOutput = {
    type = "structure",
    id = "CreateDistributionOutput",
    members = {
        distribution = M.LightsailDistribution,
        operation = M.Operation,
    },
}

M.CreateDomainInput = {
    type = "structure",
    id = "CreateDomainInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateDomainOutput = {
    type = "structure",
    id = "CreateDomainOutput",
    members = {
        operation = M.Operation,
    },
}

M.DomainEntry = {
    type = "structure",
    id = "DomainEntry",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        target = {
            type = "string",
        },
        isAlias = {
            type = "boolean",
        },
        type = {
            type = "string",
        },
        options = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDomainEntryInput = {
    type = "structure",
    id = "CreateDomainEntryInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainEntry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainEntry }),
    },
}

M.CreateDomainEntryOutput = {
    type = "structure",
    id = "CreateDomainEntryOutput",
    members = {
        operation = M.Operation,
    },
}

M.CreateGUISessionAccessDetailsInput = {
    type = "structure",
    id = "CreateGUISessionAccessDetailsInput",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Session = {
    type = "structure",
    id = "Session",
    members = {
        name = {
            type = "string",
        },
        url = {
            type = "string",
        },
        isPrimary = {
            type = "boolean",
        },
    },
}

M.Status = {
    StartExpired = "startExpired",
    NotStarted = "notStarted",
    Started = "started",
    Starting = "starting",
    Stopped = "stopped",
    Stopping = "stopping",
    SettingUpInstance = "settingUpInstance",
    FailedInstanceCreation = "failedInstanceCreation",
    FailedStartingGUISession = "failedStartingGUISession",
    FailedStoppingGUISession = "failedStoppingGUISession",
}

M.CreateGUISessionAccessDetailsOutput = {
    type = "structure",
    id = "CreateGUISessionAccessDetailsOutput",
    members = {
        resourceName = {
            type = "string",
        },
        status = {
            type = "string",
        },
        percentageComplete = {
            type = "integer",
        },
        failureReason = {
            type = "string",
        },
        sessions = {
            type = "list",
            member = M.Session,
        },
    },
}

M.CreateInstancesInput = {
    type = "structure",
    id = "CreateInstancesInput",
    members = {
        instanceNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        availabilityZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customImageName = {
            type = "string",
        },
        blueprintId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userData = {
            type = "string",
        },
        keyPairName = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        addOns = {
            type = "list",
            member = M.AddOnRequest,
        },
        ipAddressType = {
            type = "string",
        },
    },
}

M.CreateInstancesOutput = {
    type = "structure",
    id = "CreateInstancesOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateInstancesFromSnapshotInput = {
    type = "structure",
    id = "CreateInstancesFromSnapshotInput",
    members = {
        instanceNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        attachedDiskMapping = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        availabilityZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceSnapshotName = {
            type = "string",
        },
        bundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userData = {
            type = "string",
        },
        keyPairName = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        addOns = {
            type = "list",
            member = M.AddOnRequest,
        },
        ipAddressType = {
            type = "string",
        },
        sourceInstanceName = {
            type = "string",
        },
        restoreDate = {
            type = "string",
        },
        useLatestRestorableAutoSnapshot = {
            type = "boolean",
        },
    },
}

M.CreateInstancesFromSnapshotOutput = {
    type = "structure",
    id = "CreateInstancesFromSnapshotOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateInstanceSnapshotInput = {
    type = "structure",
    id = "CreateInstanceSnapshotInput",
    members = {
        instanceSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateInstanceSnapshotOutput = {
    type = "structure",
    id = "CreateInstanceSnapshotOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateKeyPairInput = {
    type = "structure",
    id = "CreateKeyPairInput",
    members = {
        keyPairName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.KeyPair = {
    type = "structure",
    id = "KeyPair",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        fingerprint = {
            type = "string",
        },
    },
}

M.CreateKeyPairOutput = {
    type = "structure",
    id = "CreateKeyPairOutput",
    members = {
        keyPair = M.KeyPair,
        publicKeyBase64 = {
            type = "string",
        },
        privateKeyBase64 = {
            type = "string",
        },
        operation = M.Operation,
    },
}

M.CreateLoadBalancerInput = {
    type = "structure",
    id = "CreateLoadBalancerInput",
    members = {
        loadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instancePort = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        healthCheckPath = {
            type = "string",
        },
        certificateName = {
            type = "string",
        },
        certificateDomainName = {
            type = "string",
        },
        certificateAlternativeNames = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        ipAddressType = {
            type = "string",
        },
        tlsPolicyName = {
            type = "string",
        },
    },
}

M.CreateLoadBalancerOutput = {
    type = "structure",
    id = "CreateLoadBalancerOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateLoadBalancerTlsCertificateInput = {
    type = "structure",
    id = "CreateLoadBalancerTlsCertificateInput",
    members = {
        loadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateAlternativeNames = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateLoadBalancerTlsCertificateOutput = {
    type = "structure",
    id = "CreateLoadBalancerTlsCertificateOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateRelationalDatabaseInput = {
    type = "structure",
    id = "CreateRelationalDatabaseInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        availabilityZone = {
            type = "string",
        },
        relationalDatabaseBlueprintId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relationalDatabaseBundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        masterDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        masterUsername = {
            type = "string",
            traits = {
                required = true,
            },
        },
        masterUserPassword = {
            type = "string",
        },
        preferredBackupWindow = {
            type = "string",
        },
        preferredMaintenanceWindow = {
            type = "string",
        },
        publiclyAccessible = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateRelationalDatabaseOutput = {
    type = "structure",
    id = "CreateRelationalDatabaseOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateRelationalDatabaseFromSnapshotInput = {
    type = "structure",
    id = "CreateRelationalDatabaseFromSnapshotInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        availabilityZone = {
            type = "string",
        },
        publiclyAccessible = {
            type = "boolean",
        },
        relationalDatabaseSnapshotName = {
            type = "string",
        },
        relationalDatabaseBundleId = {
            type = "string",
        },
        sourceRelationalDatabaseName = {
            type = "string",
        },
        restoreTime = {
            type = "timestamp",
        },
        useLatestRestorableTime = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateRelationalDatabaseFromSnapshotOutput = {
    type = "structure",
    id = "CreateRelationalDatabaseFromSnapshotOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateRelationalDatabaseSnapshotInput = {
    type = "structure",
    id = "CreateRelationalDatabaseSnapshotInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relationalDatabaseSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateRelationalDatabaseSnapshotOutput = {
    type = "structure",
    id = "CreateRelationalDatabaseSnapshotOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteAlarmInput = {
    type = "structure",
    id = "DeleteAlarmInput",
    members = {
        alarmName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAlarmOutput = {
    type = "structure",
    id = "DeleteAlarmOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteAutoSnapshotInput = {
    type = "structure",
    id = "DeleteAutoSnapshotInput",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        date = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAutoSnapshotOutput = {
    type = "structure",
    id = "DeleteAutoSnapshotOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteBucketInput = {
    type = "structure",
    id = "DeleteBucketInput",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forceDelete = {
            type = "boolean",
        },
    },
}

M.DeleteBucketOutput = {
    type = "structure",
    id = "DeleteBucketOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteBucketAccessKeyInput = {
    type = "structure",
    id = "DeleteBucketAccessKeyInput",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBucketAccessKeyOutput = {
    type = "structure",
    id = "DeleteBucketAccessKeyOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteCertificateInput = {
    type = "structure",
    id = "DeleteCertificateInput",
    members = {
        certificateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCertificateOutput = {
    type = "structure",
    id = "DeleteCertificateOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteContactMethodInput = {
    type = "structure",
    id = "DeleteContactMethodInput",
    members = {
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteContactMethodOutput = {
    type = "structure",
    id = "DeleteContactMethodOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteContainerImageInput = {
    type = "structure",
    id = "DeleteContainerImageInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        image = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteContainerImageOutput = {
    type = "structure",
    id = "DeleteContainerImageOutput",
}

M.DeleteContainerServiceInput = {
    type = "structure",
    id = "DeleteContainerServiceInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteContainerServiceOutput = {
    type = "structure",
    id = "DeleteContainerServiceOutput",
}

M.DeleteDiskInput = {
    type = "structure",
    id = "DeleteDiskInput",
    members = {
        diskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forceDeleteAddOns = {
            type = "boolean",
        },
    },
}

M.DeleteDiskOutput = {
    type = "structure",
    id = "DeleteDiskOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteDiskSnapshotInput = {
    type = "structure",
    id = "DeleteDiskSnapshotInput",
    members = {
        diskSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDiskSnapshotOutput = {
    type = "structure",
    id = "DeleteDiskSnapshotOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteDistributionInput = {
    type = "structure",
    id = "DeleteDistributionInput",
    members = {
        distributionName = {
            type = "string",
        },
    },
}

M.DeleteDistributionOutput = {
    type = "structure",
    id = "DeleteDistributionOutput",
    members = {
        operation = M.Operation,
    },
}

M.DeleteDomainInput = {
    type = "structure",
    id = "DeleteDomainInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDomainOutput = {
    type = "structure",
    id = "DeleteDomainOutput",
    members = {
        operation = M.Operation,
    },
}

M.DeleteDomainEntryInput = {
    type = "structure",
    id = "DeleteDomainEntryInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainEntry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainEntry }),
    },
}

M.DeleteDomainEntryOutput = {
    type = "structure",
    id = "DeleteDomainEntryOutput",
    members = {
        operation = M.Operation,
    },
}

M.DeleteInstanceInput = {
    type = "structure",
    id = "DeleteInstanceInput",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        forceDeleteAddOns = {
            type = "boolean",
        },
    },
}

M.DeleteInstanceOutput = {
    type = "structure",
    id = "DeleteInstanceOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteInstanceSnapshotInput = {
    type = "structure",
    id = "DeleteInstanceSnapshotInput",
    members = {
        instanceSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInstanceSnapshotOutput = {
    type = "structure",
    id = "DeleteInstanceSnapshotOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteKeyPairInput = {
    type = "structure",
    id = "DeleteKeyPairInput",
    members = {
        keyPairName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expectedFingerprint = {
            type = "string",
        },
    },
}

M.DeleteKeyPairOutput = {
    type = "structure",
    id = "DeleteKeyPairOutput",
    members = {
        operation = M.Operation,
    },
}

M.DeleteKnownHostKeysInput = {
    type = "structure",
    id = "DeleteKnownHostKeysInput",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteKnownHostKeysOutput = {
    type = "structure",
    id = "DeleteKnownHostKeysOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteLoadBalancerInput = {
    type = "structure",
    id = "DeleteLoadBalancerInput",
    members = {
        loadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLoadBalancerOutput = {
    type = "structure",
    id = "DeleteLoadBalancerOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteLoadBalancerTlsCertificateInput = {
    type = "structure",
    id = "DeleteLoadBalancerTlsCertificateInput",
    members = {
        loadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
        },
    },
}

M.DeleteLoadBalancerTlsCertificateOutput = {
    type = "structure",
    id = "DeleteLoadBalancerTlsCertificateOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteRelationalDatabaseInput = {
    type = "structure",
    id = "DeleteRelationalDatabaseInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        skipFinalSnapshot = {
            type = "boolean",
        },
        finalRelationalDatabaseSnapshotName = {
            type = "string",
        },
    },
}

M.DeleteRelationalDatabaseOutput = {
    type = "structure",
    id = "DeleteRelationalDatabaseOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteRelationalDatabaseSnapshotInput = {
    type = "structure",
    id = "DeleteRelationalDatabaseSnapshotInput",
    members = {
        relationalDatabaseSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRelationalDatabaseSnapshotOutput = {
    type = "structure",
    id = "DeleteRelationalDatabaseSnapshotOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DetachCertificateFromDistributionInput = {
    type = "structure",
    id = "DetachCertificateFromDistributionInput",
    members = {
        distributionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachCertificateFromDistributionOutput = {
    type = "structure",
    id = "DetachCertificateFromDistributionOutput",
    members = {
        operation = M.Operation,
    },
}

M.DetachDiskInput = {
    type = "structure",
    id = "DetachDiskInput",
    members = {
        diskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachDiskOutput = {
    type = "structure",
    id = "DetachDiskOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DetachInstancesFromLoadBalancerInput = {
    type = "structure",
    id = "DetachInstancesFromLoadBalancerInput",
    members = {
        loadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DetachInstancesFromLoadBalancerOutput = {
    type = "structure",
    id = "DetachInstancesFromLoadBalancerOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DetachStaticIpInput = {
    type = "structure",
    id = "DetachStaticIpInput",
    members = {
        staticIpName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachStaticIpOutput = {
    type = "structure",
    id = "DetachStaticIpOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DisableAddOnInput = {
    type = "structure",
    id = "DisableAddOnInput",
    members = {
        addOnType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableAddOnOutput = {
    type = "structure",
    id = "DisableAddOnOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DiskState = {
    Pending = "pending",
    Error = "error",
    Available = "available",
    InUse = "in-use",
    Unknown = "unknown",
}

M.Disk = {
    type = "structure",
    id = "Disk",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        addOns = {
            type = "list",
            member = M.AddOn,
        },
        sizeInGb = {
            type = "integer",
        },
        isSystemDisk = {
            type = "boolean",
        },
        iops = {
            type = "integer",
        },
        path = {
            type = "string",
        },
        state = {
            type = "string",
        },
        attachedTo = {
            type = "string",
        },
        isAttached = {
            type = "boolean",
        },
        attachmentState = {
            type = "string",
        },
        gbInUse = {
            type = "integer",
        },
        autoMountStatus = {
            type = "string",
        },
    },
}

M.DiskInfo = {
    type = "structure",
    id = "DiskInfo",
    members = {
        name = {
            type = "string",
        },
        path = {
            type = "string",
        },
        sizeInGb = {
            type = "integer",
        },
        isSystemDisk = {
            type = "boolean",
        },
    },
}

M.DiskSnapshotState = {
    Pending = "pending",
    Completed = "completed",
    Error = "error",
    Unknown = "unknown",
}

M.DiskSnapshot = {
    type = "structure",
    id = "DiskSnapshot",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        sizeInGb = {
            type = "integer",
        },
        state = {
            type = "string",
        },
        progress = {
            type = "string",
        },
        fromDiskName = {
            type = "string",
        },
        fromDiskArn = {
            type = "string",
        },
        fromInstanceName = {
            type = "string",
        },
        fromInstanceArn = {
            type = "string",
        },
        isFromAutoSnapshot = {
            type = "boolean",
        },
    },
}

M.DiskSnapshotInfo = {
    type = "structure",
    id = "DiskSnapshotInfo",
    members = {
        sizeInGb = {
            type = "integer",
        },
    },
}

M.DistributionBundle = {
    type = "structure",
    id = "DistributionBundle",
    members = {
        bundleId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        price = {
            type = "float",
        },
        transferPerMonthInGb = {
            type = "integer",
        },
        isActive = {
            type = "boolean",
        },
    },
}

M.DistributionMetricName = {
    Requests = "Requests",
    BytesDownloaded = "BytesDownloaded",
    BytesUploaded = "BytesUploaded",
    TotalErrorRate = "TotalErrorRate",
    Http4xxErrorRate = "Http4xxErrorRate",
    Http5xxErrorRate = "Http5xxErrorRate",
}

M.NameServersUpdateStateCode = {
    Succeeded = "SUCCEEDED",
    Pending = "PENDING",
    Failed = "FAILED",
    Started = "STARTED",
}

M.NameServersUpdateState = {
    type = "structure",
    id = "NameServersUpdateState",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.R53HostedZoneDeletionStateCode = {
    Succeeded = "SUCCEEDED",
    Pending = "PENDING",
    Failed = "FAILED",
    Started = "STARTED",
}

M.R53HostedZoneDeletionState = {
    type = "structure",
    id = "R53HostedZoneDeletionState",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.RegisteredDomainDelegationInfo = {
    type = "structure",
    id = "RegisteredDomainDelegationInfo",
    members = {
        nameServersUpdateState = M.NameServersUpdateState,
        r53HostedZoneDeletionState = M.R53HostedZoneDeletionState,
    },
}

M.Domain = {
    type = "structure",
    id = "Domain",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        domainEntries = {
            type = "list",
            member = M.DomainEntry,
        },
        registeredDomainDelegationInfo = M.RegisteredDomainDelegationInfo,
    },
}

M.DownloadDefaultKeyPairInput = {
    type = "structure",
    id = "DownloadDefaultKeyPairInput",
}

M.DownloadDefaultKeyPairOutput = {
    type = "structure",
    id = "DownloadDefaultKeyPairOutput",
    members = {
        publicKeyBase64 = {
            type = "string",
        },
        privateKeyBase64 = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.EnableAddOnInput = {
    type = "structure",
    id = "EnableAddOnInput",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        addOnRequest = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AddOnRequest }),
    },
}

M.EnableAddOnOutput = {
    type = "structure",
    id = "EnableAddOnOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.ExportSnapshotInput = {
    type = "structure",
    id = "ExportSnapshotInput",
    members = {
        sourceSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportSnapshotOutput = {
    type = "structure",
    id = "ExportSnapshotOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.InstanceSnapshotInfo = {
    type = "structure",
    id = "InstanceSnapshotInfo",
    members = {
        fromBundleId = {
            type = "string",
        },
        fromBlueprintId = {
            type = "string",
        },
        fromDiskInfo = {
            type = "list",
            member = M.DiskInfo,
        },
    },
}

M.ExportSnapshotRecordSourceType = {
    InstanceSnapshot = "InstanceSnapshot",
    DiskSnapshot = "DiskSnapshot",
}

M.ExportSnapshotRecordSourceInfo = {
    type = "structure",
    id = "ExportSnapshotRecordSourceInfo",
    members = {
        resourceType = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        fromResourceName = {
            type = "string",
        },
        fromResourceArn = {
            type = "string",
        },
        instanceSnapshotInfo = M.InstanceSnapshotInfo,
        diskSnapshotInfo = M.DiskSnapshotInfo,
    },
}

M.ExportSnapshotRecord = {
    type = "structure",
    id = "ExportSnapshotRecord",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        state = {
            type = "string",
        },
        sourceInfo = M.ExportSnapshotRecordSourceInfo,
        destinationInfo = M.DestinationInfo,
    },
}

M.GetActiveNamesInput = {
    type = "structure",
    id = "GetActiveNamesInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetActiveNamesOutput = {
    type = "structure",
    id = "GetActiveNamesOutput",
    members = {
        activeNames = {
            type = "list",
            member = { type = "string" },
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetAlarmsInput = {
    type = "structure",
    id = "GetAlarmsInput",
    members = {
        alarmName = {
            type = "string",
            traits = {
                http_query = "alarmName",
            },
        },
        pageToken = {
            type = "string",
            traits = {
                http_query = "pageToken",
            },
        },
        monitoredResourceName = {
            type = "string",
            traits = {
                http_query = "monitoredResourceName",
            },
        },
    },
}

M.GetAlarmsOutput = {
    type = "structure",
    id = "GetAlarmsOutput",
    members = {
        alarms = {
            type = "list",
            member = M.Alarm,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetAutoSnapshotsInput = {
    type = "structure",
    id = "GetAutoSnapshotsInput",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAutoSnapshotsOutput = {
    type = "structure",
    id = "GetAutoSnapshotsOutput",
    members = {
        resourceName = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        autoSnapshots = {
            type = "list",
            member = M.AutoSnapshotDetails,
        },
    },
}

M.GetBlueprintsInput = {
    type = "structure",
    id = "GetBlueprintsInput",
    members = {
        includeInactive = {
            type = "boolean",
        },
        pageToken = {
            type = "string",
        },
        appCategory = {
            type = "string",
        },
    },
}

M.GetBlueprintsOutput = {
    type = "structure",
    id = "GetBlueprintsOutput",
    members = {
        blueprints = {
            type = "list",
            member = M.Blueprint,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetBucketAccessKeysInput = {
    type = "structure",
    id = "GetBucketAccessKeysInput",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBucketAccessKeysOutput = {
    type = "structure",
    id = "GetBucketAccessKeysOutput",
    members = {
        accessKeys = {
            type = "list",
            member = M.AccessKey,
        },
    },
}

M.GetBucketBundlesInput = {
    type = "structure",
    id = "GetBucketBundlesInput",
    members = {
        includeInactive = {
            type = "boolean",
        },
    },
}

M.GetBucketBundlesOutput = {
    type = "structure",
    id = "GetBucketBundlesOutput",
    members = {
        bundles = {
            type = "list",
            member = M.BucketBundle,
        },
    },
}

M.GetBucketMetricDataInput = {
    type = "structure",
    id = "GetBucketMetricDataInput",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        period = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        statistics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricDatapoint = {
    type = "structure",
    id = "MetricDatapoint",
    members = {
        average = {
            type = "double",
        },
        maximum = {
            type = "double",
        },
        minimum = {
            type = "double",
        },
        sampleCount = {
            type = "double",
        },
        sum = {
            type = "double",
        },
        timestamp = {
            type = "timestamp",
        },
        unit = {
            type = "string",
        },
    },
}

M.GetBucketMetricDataOutput = {
    type = "structure",
    id = "GetBucketMetricDataOutput",
    members = {
        metricName = {
            type = "string",
        },
        metricData = {
            type = "list",
            member = M.MetricDatapoint,
        },
    },
}

M.GetBucketsInput = {
    type = "structure",
    id = "GetBucketsInput",
    members = {
        bucketName = {
            type = "string",
        },
        pageToken = {
            type = "string",
        },
        includeConnectedResources = {
            type = "boolean",
        },
        includeCors = {
            type = "boolean",
        },
    },
}

M.GetBucketsOutput = {
    type = "structure",
    id = "GetBucketsOutput",
    members = {
        buckets = {
            type = "list",
            member = M.Bucket,
        },
        nextPageToken = {
            type = "string",
        },
        accountLevelBpaSync = M.AccountLevelBpaSync,
    },
}

M.GetBundlesInput = {
    type = "structure",
    id = "GetBundlesInput",
    members = {
        includeInactive = {
            type = "boolean",
        },
        pageToken = {
            type = "string",
        },
        appCategory = {
            type = "string",
        },
    },
}

M.GetBundlesOutput = {
    type = "structure",
    id = "GetBundlesOutput",
    members = {
        bundles = {
            type = "list",
            member = M.Bundle,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetCertificatesInput = {
    type = "structure",
    id = "GetCertificatesInput",
    members = {
        certificateStatuses = {
            type = "list",
            member = { type = "string" },
        },
        includeCertificateDetails = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        certificateName = {
            type = "string",
        },
        pageToken = {
            type = "string",
        },
    },
}

M.GetCertificatesOutput = {
    type = "structure",
    id = "GetCertificatesOutput",
    members = {
        certificates = {
            type = "list",
            member = M.CertificateSummary,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetCloudFormationStackRecordsInput = {
    type = "structure",
    id = "GetCloudFormationStackRecordsInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetCloudFormationStackRecordsOutput = {
    type = "structure",
    id = "GetCloudFormationStackRecordsOutput",
    members = {
        cloudFormationStackRecords = {
            type = "list",
            member = M.CloudFormationStackRecord,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetContactMethodsInput = {
    type = "structure",
    id = "GetContactMethodsInput",
    members = {
        protocols = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "protocols",
            },
        },
    },
}

M.GetContactMethodsOutput = {
    type = "structure",
    id = "GetContactMethodsOutput",
    members = {
        contactMethods = {
            type = "list",
            member = M.ContactMethod,
        },
    },
}

M.GetContainerAPIMetadataInput = {
    type = "structure",
    id = "GetContainerAPIMetadataInput",
}

M.GetContainerAPIMetadataOutput = {
    type = "structure",
    id = "GetContainerAPIMetadataOutput",
    members = {
        metadata = {
            type = "list",
            member = { type = "map" },
        },
    },
}

M.GetContainerImagesInput = {
    type = "structure",
    id = "GetContainerImagesInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetContainerImagesOutput = {
    type = "structure",
    id = "GetContainerImagesOutput",
    members = {
        containerImages = {
            type = "list",
            member = M.ContainerImage,
        },
    },
}

M.GetContainerLogInput = {
    type = "structure",
    id = "GetContainerLogInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        containerName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
            },
        },
        filterPattern = {
            type = "string",
            traits = {
                http_query = "filterPattern",
            },
        },
        pageToken = {
            type = "string",
            traits = {
                http_query = "pageToken",
            },
        },
    },
}

M.GetContainerLogOutput = {
    type = "structure",
    id = "GetContainerLogOutput",
    members = {
        logEvents = {
            type = "list",
            member = M.ContainerServiceLogEvent,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetContainerServiceDeploymentsInput = {
    type = "structure",
    id = "GetContainerServiceDeploymentsInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetContainerServiceDeploymentsOutput = {
    type = "structure",
    id = "GetContainerServiceDeploymentsOutput",
    members = {
        deployments = {
            type = "list",
            member = M.ContainerServiceDeployment,
        },
    },
}

M.GetContainerServiceMetricDataInput = {
    type = "structure",
    id = "GetContainerServiceMetricDataInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        metricName = {
            type = "string",
            traits = {
                http_query = "metricName",
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                required = true,
            },
        },
        period = {
            type = "integer",
            traits = {
                http_query = "period",
                required = true,
            },
        },
        statistics = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "statistics",
                required = true,
            },
        },
    },
}

M.GetContainerServiceMetricDataOutput = {
    type = "structure",
    id = "GetContainerServiceMetricDataOutput",
    members = {
        metricName = {
            type = "string",
        },
        metricData = {
            type = "list",
            member = M.MetricDatapoint,
        },
    },
}

M.GetContainerServicePowersInput = {
    type = "structure",
    id = "GetContainerServicePowersInput",
}

M.GetContainerServicePowersOutput = {
    type = "structure",
    id = "GetContainerServicePowersOutput",
    members = {
        powers = {
            type = "list",
            member = M.ContainerServicePower,
        },
    },
}

M.GetContainerServicesInput = {
    type = "structure",
    id = "GetContainerServicesInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                http_query = "serviceName",
            },
        },
    },
}

M.GetContainerServicesOutput = {
    type = "structure",
    id = "GetContainerServicesOutput",
    members = {
        containerServices = {
            type = "list",
            member = M.ContainerService,
        },
    },
}

M.GetCostEstimateInput = {
    type = "structure",
    id = "GetCostEstimateInput",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceBudgetEstimate = {
    type = "structure",
    id = "ResourceBudgetEstimate",
    members = {
        resourceName = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        costEstimates = {
            type = "list",
            member = M.CostEstimate,
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.GetCostEstimateOutput = {
    type = "structure",
    id = "GetCostEstimateOutput",
    members = {
        resourcesBudgetEstimate = {
            type = "list",
            member = M.ResourceBudgetEstimate,
        },
    },
}

M.GetDiskInput = {
    type = "structure",
    id = "GetDiskInput",
    members = {
        diskName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDiskOutput = {
    type = "structure",
    id = "GetDiskOutput",
    members = {
        disk = M.Disk,
    },
}

M.GetDisksInput = {
    type = "structure",
    id = "GetDisksInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetDisksOutput = {
    type = "structure",
    id = "GetDisksOutput",
    members = {
        disks = {
            type = "list",
            member = M.Disk,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetDiskSnapshotInput = {
    type = "structure",
    id = "GetDiskSnapshotInput",
    members = {
        diskSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDiskSnapshotOutput = {
    type = "structure",
    id = "GetDiskSnapshotOutput",
    members = {
        diskSnapshot = M.DiskSnapshot,
    },
}

M.GetDiskSnapshotsInput = {
    type = "structure",
    id = "GetDiskSnapshotsInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetDiskSnapshotsOutput = {
    type = "structure",
    id = "GetDiskSnapshotsOutput",
    members = {
        diskSnapshots = {
            type = "list",
            member = M.DiskSnapshot,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetDistributionBundlesInput = {
    type = "structure",
    id = "GetDistributionBundlesInput",
}

M.GetDistributionBundlesOutput = {
    type = "structure",
    id = "GetDistributionBundlesOutput",
    members = {
        bundles = {
            type = "list",
            member = M.DistributionBundle,
        },
    },
}

M.GetDistributionLatestCacheResetInput = {
    type = "structure",
    id = "GetDistributionLatestCacheResetInput",
    members = {
        distributionName = {
            type = "string",
        },
    },
}

M.GetDistributionLatestCacheResetOutput = {
    type = "structure",
    id = "GetDistributionLatestCacheResetOutput",
    members = {
        status = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
    },
}

M.GetDistributionMetricDataInput = {
    type = "structure",
    id = "GetDistributionMetricDataInput",
    members = {
        distributionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        period = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statistics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetDistributionMetricDataOutput = {
    type = "structure",
    id = "GetDistributionMetricDataOutput",
    members = {
        metricName = {
            type = "string",
        },
        metricData = {
            type = "list",
            member = M.MetricDatapoint,
        },
    },
}

M.GetDistributionsInput = {
    type = "structure",
    id = "GetDistributionsInput",
    members = {
        distributionName = {
            type = "string",
        },
        pageToken = {
            type = "string",
        },
    },
}

M.GetDistributionsOutput = {
    type = "structure",
    id = "GetDistributionsOutput",
    members = {
        distributions = {
            type = "list",
            member = M.LightsailDistribution,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetDomainInput = {
    type = "structure",
    id = "GetDomainInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDomainOutput = {
    type = "structure",
    id = "GetDomainOutput",
    members = {
        domain = M.Domain,
    },
}

M.GetDomainsInput = {
    type = "structure",
    id = "GetDomainsInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetDomainsOutput = {
    type = "structure",
    id = "GetDomainsOutput",
    members = {
        domains = {
            type = "list",
            member = M.Domain,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetExportSnapshotRecordsInput = {
    type = "structure",
    id = "GetExportSnapshotRecordsInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetExportSnapshotRecordsOutput = {
    type = "structure",
    id = "GetExportSnapshotRecordsOutput",
    members = {
        exportSnapshotRecords = {
            type = "list",
            member = M.ExportSnapshotRecord,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetInstanceInput = {
    type = "structure",
    id = "GetInstanceInput",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceHardware = {
    type = "structure",
    id = "InstanceHardware",
    members = {
        cpuCount = {
            type = "integer",
        },
        disks = {
            type = "list",
            member = M.Disk,
        },
        ramSizeInGb = {
            type = "float",
        },
    },
}

M.HttpEndpoint = {
    disabled = "disabled",
    enabled = "enabled",
}

M.HttpProtocolIpv6 = {
    disabled = "disabled",
    enabled = "enabled",
}

M.HttpTokens = {
    optional = "optional",
    required = "required",
}

M.InstanceMetadataState = {
    pending = "pending",
    applied = "applied",
}

M.InstanceMetadataOptions = {
    type = "structure",
    id = "InstanceMetadataOptions",
    members = {
        state = {
            type = "string",
        },
        httpTokens = {
            type = "string",
        },
        httpEndpoint = {
            type = "string",
        },
        httpPutResponseHopLimit = {
            type = "integer",
        },
        httpProtocolIpv6 = {
            type = "string",
        },
    },
}

M.MonthlyTransfer = {
    type = "structure",
    id = "MonthlyTransfer",
    members = {
        gbPerMonthAllocated = {
            type = "integer",
        },
    },
}

M.PortAccessType = {
    Public = "Public",
    Private = "Private",
}

M.InstancePortInfo = {
    type = "structure",
    id = "InstancePortInfo",
    members = {
        fromPort = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        toPort = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        protocol = {
            type = "string",
        },
        accessFrom = {
            type = "string",
        },
        accessType = {
            type = "string",
        },
        commonName = {
            type = "string",
        },
        accessDirection = {
            type = "string",
        },
        cidrs = {
            type = "list",
            member = { type = "string" },
        },
        ipv6Cidrs = {
            type = "list",
            member = { type = "string" },
        },
        cidrListAliases = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InstanceNetworking = {
    type = "structure",
    id = "InstanceNetworking",
    members = {
        monthlyTransfer = M.MonthlyTransfer,
        ports = {
            type = "list",
            member = M.InstancePortInfo,
        },
    },
}

M.InstanceState = {
    type = "structure",
    id = "InstanceState",
    members = {
        code = {
            type = "integer",
        },
        name = {
            type = "string",
        },
    },
}

M.Instance = {
    type = "structure",
    id = "Instance",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        blueprintId = {
            type = "string",
        },
        blueprintName = {
            type = "string",
        },
        bundleId = {
            type = "string",
        },
        addOns = {
            type = "list",
            member = M.AddOn,
        },
        isStaticIp = {
            type = "boolean",
        },
        privateIpAddress = {
            type = "string",
        },
        publicIpAddress = {
            type = "string",
        },
        ipv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
        hardware = M.InstanceHardware,
        networking = M.InstanceNetworking,
        state = M.InstanceState,
        username = {
            type = "string",
        },
        sshKeyName = {
            type = "string",
        },
        metadataOptions = M.InstanceMetadataOptions,
    },
}

M.GetInstanceOutput = {
    type = "structure",
    id = "GetInstanceOutput",
    members = {
        instance = M.Instance,
    },
}

M.InstanceAccessProtocol = {
    ssh = "ssh",
    rdp = "rdp",
}

M.GetInstanceAccessDetailsInput = {
    type = "structure",
    id = "GetInstanceAccessDetailsInput",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        protocol = {
            type = "string",
        },
    },
}

M.HostKeyAttributes = {
    type = "structure",
    id = "HostKeyAttributes",
    members = {
        algorithm = {
            type = "string",
        },
        publicKey = {
            type = "string",
        },
        witnessedAt = {
            type = "timestamp",
        },
        fingerprintSHA1 = {
            type = "string",
        },
        fingerprintSHA256 = {
            type = "string",
        },
        notValidBefore = {
            type = "timestamp",
        },
        notValidAfter = {
            type = "timestamp",
        },
    },
}

M.PasswordData = {
    type = "structure",
    id = "PasswordData",
    members = {
        ciphertext = {
            type = "string",
        },
        keyPairName = {
            type = "string",
        },
    },
}

M.InstanceAccessDetails = {
    type = "structure",
    id = "InstanceAccessDetails",
    members = {
        certKey = {
            type = "string",
        },
        expiresAt = {
            type = "timestamp",
        },
        ipAddress = {
            type = "string",
        },
        ipv6Addresses = {
            type = "list",
            member = { type = "string" },
        },
        password = {
            type = "string",
        },
        passwordData = M.PasswordData,
        privateKey = {
            type = "string",
        },
        protocol = {
            type = "string",
        },
        instanceName = {
            type = "string",
        },
        username = {
            type = "string",
        },
        hostKeys = {
            type = "list",
            member = M.HostKeyAttributes,
        },
    },
}

M.GetInstanceAccessDetailsOutput = {
    type = "structure",
    id = "GetInstanceAccessDetailsOutput",
    members = {
        accessDetails = M.InstanceAccessDetails,
    },
}

M.InstanceMetricName = {
    CPUUtilization = "CPUUtilization",
    NetworkIn = "NetworkIn",
    NetworkOut = "NetworkOut",
    StatusCheckFailed = "StatusCheckFailed",
    StatusCheckFailed_Instance = "StatusCheckFailed_Instance",
    StatusCheckFailed_System = "StatusCheckFailed_System",
    BurstCapacityTime = "BurstCapacityTime",
    BurstCapacityPercentage = "BurstCapacityPercentage",
    MetadataNoToken = "MetadataNoToken",
}

M.GetInstanceMetricDataInput = {
    type = "structure",
    id = "GetInstanceMetricDataInput",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        period = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statistics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetInstanceMetricDataOutput = {
    type = "structure",
    id = "GetInstanceMetricDataOutput",
    members = {
        metricName = {
            type = "string",
        },
        metricData = {
            type = "list",
            member = M.MetricDatapoint,
        },
    },
}

M.GetInstancePortStatesInput = {
    type = "structure",
    id = "GetInstancePortStatesInput",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PortState = {
    Open = "open",
    Closed = "closed",
}

M.InstancePortState = {
    type = "structure",
    id = "InstancePortState",
    members = {
        fromPort = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        toPort = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        protocol = {
            type = "string",
        },
        state = {
            type = "string",
        },
        cidrs = {
            type = "list",
            member = { type = "string" },
        },
        ipv6Cidrs = {
            type = "list",
            member = { type = "string" },
        },
        cidrListAliases = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetInstancePortStatesOutput = {
    type = "structure",
    id = "GetInstancePortStatesOutput",
    members = {
        portStates = {
            type = "list",
            member = M.InstancePortState,
        },
    },
}

M.GetInstancesInput = {
    type = "structure",
    id = "GetInstancesInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetInstancesOutput = {
    type = "structure",
    id = "GetInstancesOutput",
    members = {
        instances = {
            type = "list",
            member = M.Instance,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetInstanceSnapshotInput = {
    type = "structure",
    id = "GetInstanceSnapshotInput",
    members = {
        instanceSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceSnapshotState = {
    Pending = "pending",
    Error = "error",
    Available = "available",
}

M.InstanceSnapshot = {
    type = "structure",
    id = "InstanceSnapshot",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        state = {
            type = "string",
        },
        progress = {
            type = "string",
        },
        fromAttachedDisks = {
            type = "list",
            member = M.Disk,
        },
        fromInstanceName = {
            type = "string",
        },
        fromInstanceArn = {
            type = "string",
        },
        fromBlueprintId = {
            type = "string",
        },
        fromBundleId = {
            type = "string",
        },
        isFromAutoSnapshot = {
            type = "boolean",
        },
        sizeInGb = {
            type = "integer",
        },
    },
}

M.GetInstanceSnapshotOutput = {
    type = "structure",
    id = "GetInstanceSnapshotOutput",
    members = {
        instanceSnapshot = M.InstanceSnapshot,
    },
}

M.GetInstanceSnapshotsInput = {
    type = "structure",
    id = "GetInstanceSnapshotsInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetInstanceSnapshotsOutput = {
    type = "structure",
    id = "GetInstanceSnapshotsOutput",
    members = {
        instanceSnapshots = {
            type = "list",
            member = M.InstanceSnapshot,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetInstanceStateInput = {
    type = "structure",
    id = "GetInstanceStateInput",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetInstanceStateOutput = {
    type = "structure",
    id = "GetInstanceStateOutput",
    members = {
        state = M.InstanceState,
    },
}

M.GetKeyPairInput = {
    type = "structure",
    id = "GetKeyPairInput",
    members = {
        keyPairName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetKeyPairOutput = {
    type = "structure",
    id = "GetKeyPairOutput",
    members = {
        keyPair = M.KeyPair,
    },
}

M.GetKeyPairsInput = {
    type = "structure",
    id = "GetKeyPairsInput",
    members = {
        pageToken = {
            type = "string",
        },
        includeDefaultKeyPair = {
            type = "boolean",
        },
    },
}

M.GetKeyPairsOutput = {
    type = "structure",
    id = "GetKeyPairsOutput",
    members = {
        keyPairs = {
            type = "list",
            member = M.KeyPair,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetLoadBalancerInput = {
    type = "structure",
    id = "GetLoadBalancerInput",
    members = {
        loadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LoadBalancerAttributeName = {
    HealthCheckPath = "HealthCheckPath",
    SessionStickinessEnabled = "SessionStickinessEnabled",
    SessionStickiness_LB_CookieDurationSeconds = "SessionStickiness_LB_CookieDurationSeconds",
    HttpsRedirectionEnabled = "HttpsRedirectionEnabled",
    TlsPolicyName = "TlsPolicyName",
}

M.InstanceHealthState = {
    Initial = "initial",
    Healthy = "healthy",
    Unhealthy = "unhealthy",
    Unused = "unused",
    Draining = "draining",
    Unavailable = "unavailable",
}

M.InstanceHealthReason = {
    LbRegistrationInProgress = "Lb.RegistrationInProgress",
    LbInitialHealthChecking = "Lb.InitialHealthChecking",
    LbInternalError = "Lb.InternalError",
    InstanceResponseCodeMismatch = "Instance.ResponseCodeMismatch",
    InstanceTimeout = "Instance.Timeout",
    InstanceFailedHealthChecks = "Instance.FailedHealthChecks",
    InstanceNotRegistered = "Instance.NotRegistered",
    InstanceNotInUse = "Instance.NotInUse",
    InstanceDeregistrationInProgress = "Instance.DeregistrationInProgress",
    InstanceInvalidState = "Instance.InvalidState",
    InstanceIpUnusable = "Instance.IpUnusable",
}

M.InstanceHealthSummary = {
    type = "structure",
    id = "InstanceHealthSummary",
    members = {
        instanceName = {
            type = "string",
        },
        instanceHealth = {
            type = "string",
        },
        instanceHealthReason = {
            type = "string",
        },
    },
}

M.LoadBalancerProtocol = {
    HTTP_HTTPS = "HTTP_HTTPS",
    HTTP = "HTTP",
}

M.LoadBalancerState = {
    Active = "active",
    Provisioning = "provisioning",
    ActiveImpaired = "active_impaired",
    Failed = "failed",
    Unknown = "unknown",
}

M.LoadBalancerTlsCertificateSummary = {
    type = "structure",
    id = "LoadBalancerTlsCertificateSummary",
    members = {
        name = {
            type = "string",
        },
        isAttached = {
            type = "boolean",
        },
    },
}

M.LoadBalancer = {
    type = "structure",
    id = "LoadBalancer",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        dnsName = {
            type = "string",
        },
        state = {
            type = "string",
        },
        protocol = {
            type = "string",
        },
        publicPorts = {
            type = "list",
            member = { type = "integer" },
        },
        healthCheckPath = {
            type = "string",
        },
        instancePort = {
            type = "integer",
        },
        instanceHealthSummary = {
            type = "list",
            member = M.InstanceHealthSummary,
        },
        tlsCertificateSummaries = {
            type = "list",
            member = M.LoadBalancerTlsCertificateSummary,
        },
        configurationOptions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
        httpsRedirectionEnabled = {
            type = "boolean",
        },
        tlsPolicyName = {
            type = "string",
        },
    },
}

M.GetLoadBalancerOutput = {
    type = "structure",
    id = "GetLoadBalancerOutput",
    members = {
        loadBalancer = M.LoadBalancer,
    },
}

M.LoadBalancerMetricName = {
    ClientTLSNegotiationErrorCount = "ClientTLSNegotiationErrorCount",
    HealthyHostCount = "HealthyHostCount",
    UnhealthyHostCount = "UnhealthyHostCount",
    HTTPCode_LB_4XX_Count = "HTTPCode_LB_4XX_Count",
    HTTPCode_LB_5XX_Count = "HTTPCode_LB_5XX_Count",
    HTTPCode_Instance_2XX_Count = "HTTPCode_Instance_2XX_Count",
    HTTPCode_Instance_3XX_Count = "HTTPCode_Instance_3XX_Count",
    HTTPCode_Instance_4XX_Count = "HTTPCode_Instance_4XX_Count",
    HTTPCode_Instance_5XX_Count = "HTTPCode_Instance_5XX_Count",
    InstanceResponseTime = "InstanceResponseTime",
    RejectedConnectionCount = "RejectedConnectionCount",
    RequestCount = "RequestCount",
}

M.GetLoadBalancerMetricDataInput = {
    type = "structure",
    id = "GetLoadBalancerMetricDataInput",
    members = {
        loadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        period = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statistics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetLoadBalancerMetricDataOutput = {
    type = "structure",
    id = "GetLoadBalancerMetricDataOutput",
    members = {
        metricName = {
            type = "string",
        },
        metricData = {
            type = "list",
            member = M.MetricDatapoint,
        },
    },
}

M.GetLoadBalancersInput = {
    type = "structure",
    id = "GetLoadBalancersInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetLoadBalancersOutput = {
    type = "structure",
    id = "GetLoadBalancersOutput",
    members = {
        loadBalancers = {
            type = "list",
            member = M.LoadBalancer,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetLoadBalancerTlsCertificatesInput = {
    type = "structure",
    id = "GetLoadBalancerTlsCertificatesInput",
    members = {
        loadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LoadBalancerTlsCertificateDnsRecordCreationStateCode = {
    Succeeded = "SUCCEEDED",
    Started = "STARTED",
    Failed = "FAILED",
}

M.LoadBalancerTlsCertificateDnsRecordCreationState = {
    type = "structure",
    id = "LoadBalancerTlsCertificateDnsRecordCreationState",
    members = {
        code = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.LoadBalancerTlsCertificateDomainStatus = {
    PendingValidation = "PENDING_VALIDATION",
    Failed = "FAILED",
    Success = "SUCCESS",
}

M.LoadBalancerTlsCertificateDomainValidationRecord = {
    type = "structure",
    id = "LoadBalancerTlsCertificateDomainValidationRecord",
    members = {
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        value = {
            type = "string",
        },
        validationStatus = {
            type = "string",
        },
        domainName = {
            type = "string",
        },
        dnsRecordCreationState = M.LoadBalancerTlsCertificateDnsRecordCreationState,
    },
}

M.LoadBalancerTlsCertificateFailureReason = {
    NoAvailableContacts = "NO_AVAILABLE_CONTACTS",
    AdditionalVerificationRequired = "ADDITIONAL_VERIFICATION_REQUIRED",
    DomainNotAllowed = "DOMAIN_NOT_ALLOWED",
    InvalidPublicDomain = "INVALID_PUBLIC_DOMAIN",
    Other = "OTHER",
}

M.LoadBalancerTlsCertificateDomainValidationOption = {
    type = "structure",
    id = "LoadBalancerTlsCertificateDomainValidationOption",
    members = {
        domainName = {
            type = "string",
        },
        validationStatus = {
            type = "string",
        },
    },
}

M.LoadBalancerTlsCertificateRenewalStatus = {
    PendingAutoRenewal = "PENDING_AUTO_RENEWAL",
    PendingValidation = "PENDING_VALIDATION",
    Success = "SUCCESS",
    Failed = "FAILED",
}

M.LoadBalancerTlsCertificateRenewalSummary = {
    type = "structure",
    id = "LoadBalancerTlsCertificateRenewalSummary",
    members = {
        renewalStatus = {
            type = "string",
        },
        domainValidationOptions = {
            type = "list",
            member = M.LoadBalancerTlsCertificateDomainValidationOption,
        },
    },
}

M.LoadBalancerTlsCertificateRevocationReason = {
    Unspecified = "UNSPECIFIED",
    KeyCompromise = "KEY_COMPROMISE",
    CaCompromise = "CA_COMPROMISE",
    AffiliationChanged = "AFFILIATION_CHANGED",
    Superceded = "SUPERCEDED",
    CessationOfOperation = "CESSATION_OF_OPERATION",
    CertificateHold = "CERTIFICATE_HOLD",
    RemoveFromCrl = "REMOVE_FROM_CRL",
    PrivilegeWithdrawn = "PRIVILEGE_WITHDRAWN",
    AACompromise = "A_A_COMPROMISE",
}

M.LoadBalancerTlsCertificateStatus = {
    PendingValidation = "PENDING_VALIDATION",
    Issued = "ISSUED",
    Inactive = "INACTIVE",
    Expired = "EXPIRED",
    ValidationTimedOut = "VALIDATION_TIMED_OUT",
    Revoked = "REVOKED",
    Failed = "FAILED",
    Unknown = "UNKNOWN",
}

M.LoadBalancerTlsCertificate = {
    type = "structure",
    id = "LoadBalancerTlsCertificate",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        loadBalancerName = {
            type = "string",
        },
        isAttached = {
            type = "boolean",
        },
        status = {
            type = "string",
        },
        domainName = {
            type = "string",
        },
        domainValidationRecords = {
            type = "list",
            member = M.LoadBalancerTlsCertificateDomainValidationRecord,
        },
        failureReason = {
            type = "string",
        },
        issuedAt = {
            type = "timestamp",
        },
        issuer = {
            type = "string",
        },
        keyAlgorithm = {
            type = "string",
        },
        notAfter = {
            type = "timestamp",
        },
        notBefore = {
            type = "timestamp",
        },
        renewalSummary = M.LoadBalancerTlsCertificateRenewalSummary,
        revocationReason = {
            type = "string",
        },
        revokedAt = {
            type = "timestamp",
        },
        serial = {
            type = "string",
        },
        signatureAlgorithm = {
            type = "string",
        },
        subject = {
            type = "string",
        },
        subjectAlternativeNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetLoadBalancerTlsCertificatesOutput = {
    type = "structure",
    id = "GetLoadBalancerTlsCertificatesOutput",
    members = {
        tlsCertificates = {
            type = "list",
            member = M.LoadBalancerTlsCertificate,
        },
    },
}

M.GetLoadBalancerTlsPoliciesInput = {
    type = "structure",
    id = "GetLoadBalancerTlsPoliciesInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.LoadBalancerTlsPolicy = {
    type = "structure",
    id = "LoadBalancerTlsPolicy",
    members = {
        name = {
            type = "string",
        },
        isDefault = {
            type = "boolean",
        },
        description = {
            type = "string",
        },
        protocols = {
            type = "list",
            member = { type = "string" },
        },
        ciphers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetLoadBalancerTlsPoliciesOutput = {
    type = "structure",
    id = "GetLoadBalancerTlsPoliciesOutput",
    members = {
        tlsPolicies = {
            type = "list",
            member = M.LoadBalancerTlsPolicy,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetOperationInput = {
    type = "structure",
    id = "GetOperationInput",
    members = {
        operationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetOperationOutput = {
    type = "structure",
    id = "GetOperationOutput",
    members = {
        operation = M.Operation,
    },
}

M.GetOperationsInput = {
    type = "structure",
    id = "GetOperationsInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetOperationsOutput = {
    type = "structure",
    id = "GetOperationsOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetOperationsForResourceInput = {
    type = "structure",
    id = "GetOperationsForResourceInput",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pageToken = {
            type = "string",
        },
    },
}

M.GetOperationsForResourceOutput = {
    type = "structure",
    id = "GetOperationsForResourceOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
        nextPageCount = {
            type = "string",
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetRegionsInput = {
    type = "structure",
    id = "GetRegionsInput",
    members = {
        includeAvailabilityZones = {
            type = "boolean",
        },
        includeRelationalDatabaseAvailabilityZones = {
            type = "boolean",
        },
    },
}

M.Region = {
    type = "structure",
    id = "Region",
    members = {
        continentCode = {
            type = "string",
        },
        description = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        name = {
            type = "string",
        },
        availabilityZones = {
            type = "list",
            member = M.AvailabilityZone,
        },
        relationalDatabaseAvailabilityZones = {
            type = "list",
            member = M.AvailabilityZone,
        },
    },
}

M.GetRegionsOutput = {
    type = "structure",
    id = "GetRegionsOutput",
    members = {
        regions = {
            type = "list",
            member = M.Region,
        },
    },
}

M.GetRelationalDatabaseInput = {
    type = "structure",
    id = "GetRelationalDatabaseInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RelationalDatabaseHardware = {
    type = "structure",
    id = "RelationalDatabaseHardware",
    members = {
        cpuCount = {
            type = "integer",
        },
        diskSizeInGb = {
            type = "integer",
        },
        ramSizeInGb = {
            type = "float",
        },
    },
}

M.RelationalDatabaseEndpoint = {
    type = "structure",
    id = "RelationalDatabaseEndpoint",
    members = {
        port = {
            type = "integer",
        },
        address = {
            type = "string",
        },
    },
}

M.PendingMaintenanceAction = {
    type = "structure",
    id = "PendingMaintenanceAction",
    members = {
        action = {
            type = "string",
        },
        description = {
            type = "string",
        },
        currentApplyDate = {
            type = "timestamp",
        },
    },
}

M.PendingModifiedRelationalDatabaseValues = {
    type = "structure",
    id = "PendingModifiedRelationalDatabaseValues",
    members = {
        masterUserPassword = {
            type = "string",
        },
        engineVersion = {
            type = "string",
        },
        backupRetentionEnabled = {
            type = "boolean",
        },
    },
}

M.RelationalDatabase = {
    type = "structure",
    id = "RelationalDatabase",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        relationalDatabaseBlueprintId = {
            type = "string",
        },
        relationalDatabaseBundleId = {
            type = "string",
        },
        masterDatabaseName = {
            type = "string",
        },
        hardware = M.RelationalDatabaseHardware,
        state = {
            type = "string",
        },
        secondaryAvailabilityZone = {
            type = "string",
        },
        backupRetentionEnabled = {
            type = "boolean",
        },
        pendingModifiedValues = M.PendingModifiedRelationalDatabaseValues,
        engine = {
            type = "string",
        },
        engineVersion = {
            type = "string",
        },
        latestRestorableTime = {
            type = "timestamp",
        },
        masterUsername = {
            type = "string",
        },
        parameterApplyStatus = {
            type = "string",
        },
        preferredBackupWindow = {
            type = "string",
        },
        preferredMaintenanceWindow = {
            type = "string",
        },
        publiclyAccessible = {
            type = "boolean",
        },
        masterEndpoint = M.RelationalDatabaseEndpoint,
        pendingMaintenanceActions = {
            type = "list",
            member = M.PendingMaintenanceAction,
        },
        caCertificateIdentifier = {
            type = "string",
        },
    },
}

M.GetRelationalDatabaseOutput = {
    type = "structure",
    id = "GetRelationalDatabaseOutput",
    members = {
        relationalDatabase = M.RelationalDatabase,
    },
}

M.GetRelationalDatabaseBlueprintsInput = {
    type = "structure",
    id = "GetRelationalDatabaseBlueprintsInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.RelationalDatabaseEngine = {
    MYSQL = "mysql",
}

M.RelationalDatabaseBlueprint = {
    type = "structure",
    id = "RelationalDatabaseBlueprint",
    members = {
        blueprintId = {
            type = "string",
        },
        engine = {
            type = "string",
        },
        engineVersion = {
            type = "string",
        },
        engineDescription = {
            type = "string",
        },
        engineVersionDescription = {
            type = "string",
        },
        isEngineDefault = {
            type = "boolean",
        },
    },
}

M.GetRelationalDatabaseBlueprintsOutput = {
    type = "structure",
    id = "GetRelationalDatabaseBlueprintsOutput",
    members = {
        blueprints = {
            type = "list",
            member = M.RelationalDatabaseBlueprint,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetRelationalDatabaseBundlesInput = {
    type = "structure",
    id = "GetRelationalDatabaseBundlesInput",
    members = {
        pageToken = {
            type = "string",
        },
        includeInactive = {
            type = "boolean",
        },
    },
}

M.RelationalDatabaseBundle = {
    type = "structure",
    id = "RelationalDatabaseBundle",
    members = {
        bundleId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        price = {
            type = "float",
        },
        ramSizeInGb = {
            type = "float",
        },
        diskSizeInGb = {
            type = "integer",
        },
        transferPerMonthInGb = {
            type = "integer",
        },
        cpuCount = {
            type = "integer",
        },
        isEncrypted = {
            type = "boolean",
        },
        isActive = {
            type = "boolean",
        },
    },
}

M.GetRelationalDatabaseBundlesOutput = {
    type = "structure",
    id = "GetRelationalDatabaseBundlesOutput",
    members = {
        bundles = {
            type = "list",
            member = M.RelationalDatabaseBundle,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetRelationalDatabaseEventsInput = {
    type = "structure",
    id = "GetRelationalDatabaseEventsInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        durationInMinutes = {
            type = "integer",
        },
        pageToken = {
            type = "string",
        },
    },
}

M.RelationalDatabaseEvent = {
    type = "structure",
    id = "RelationalDatabaseEvent",
    members = {
        resource = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        message = {
            type = "string",
        },
        eventCategories = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetRelationalDatabaseEventsOutput = {
    type = "structure",
    id = "GetRelationalDatabaseEventsOutput",
    members = {
        relationalDatabaseEvents = {
            type = "list",
            member = M.RelationalDatabaseEvent,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetRelationalDatabaseLogEventsInput = {
    type = "structure",
    id = "GetRelationalDatabaseLogEventsInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logStreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        startFromHead = {
            type = "boolean",
        },
        pageToken = {
            type = "string",
        },
    },
}

M.LogEvent = {
    type = "structure",
    id = "LogEvent",
    members = {
        createdAt = {
            type = "timestamp",
        },
        message = {
            type = "string",
        },
    },
}

M.GetRelationalDatabaseLogEventsOutput = {
    type = "structure",
    id = "GetRelationalDatabaseLogEventsOutput",
    members = {
        resourceLogEvents = {
            type = "list",
            member = M.LogEvent,
        },
        nextBackwardToken = {
            type = "string",
        },
        nextForwardToken = {
            type = "string",
        },
    },
}

M.GetRelationalDatabaseLogStreamsInput = {
    type = "structure",
    id = "GetRelationalDatabaseLogStreamsInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRelationalDatabaseLogStreamsOutput = {
    type = "structure",
    id = "GetRelationalDatabaseLogStreamsOutput",
    members = {
        logStreams = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RelationalDatabasePasswordVersion = {
    CURRENT = "CURRENT",
    PREVIOUS = "PREVIOUS",
    PENDING = "PENDING",
}

M.GetRelationalDatabaseMasterUserPasswordInput = {
    type = "structure",
    id = "GetRelationalDatabaseMasterUserPasswordInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        passwordVersion = {
            type = "string",
        },
    },
}

M.GetRelationalDatabaseMasterUserPasswordOutput = {
    type = "structure",
    id = "GetRelationalDatabaseMasterUserPasswordOutput",
    members = {
        masterUserPassword = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
    },
}

M.RelationalDatabaseMetricName = {
    CPUUtilization = "CPUUtilization",
    DatabaseConnections = "DatabaseConnections",
    DiskQueueDepth = "DiskQueueDepth",
    FreeStorageSpace = "FreeStorageSpace",
    NetworkReceiveThroughput = "NetworkReceiveThroughput",
    NetworkTransmitThroughput = "NetworkTransmitThroughput",
}

M.GetRelationalDatabaseMetricDataInput = {
    type = "structure",
    id = "GetRelationalDatabaseMetricDataInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        period = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statistics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetRelationalDatabaseMetricDataOutput = {
    type = "structure",
    id = "GetRelationalDatabaseMetricDataOutput",
    members = {
        metricName = {
            type = "string",
        },
        metricData = {
            type = "list",
            member = M.MetricDatapoint,
        },
    },
}

M.GetRelationalDatabaseParametersInput = {
    type = "structure",
    id = "GetRelationalDatabaseParametersInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pageToken = {
            type = "string",
        },
    },
}

M.RelationalDatabaseParameter = {
    type = "structure",
    id = "RelationalDatabaseParameter",
    members = {
        allowedValues = {
            type = "string",
        },
        applyMethod = {
            type = "string",
        },
        applyType = {
            type = "string",
        },
        dataType = {
            type = "string",
        },
        description = {
            type = "string",
        },
        isModifiable = {
            type = "boolean",
        },
        parameterName = {
            type = "string",
        },
        parameterValue = {
            type = "string",
        },
    },
}

M.GetRelationalDatabaseParametersOutput = {
    type = "structure",
    id = "GetRelationalDatabaseParametersOutput",
    members = {
        parameters = {
            type = "list",
            member = M.RelationalDatabaseParameter,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetRelationalDatabasesInput = {
    type = "structure",
    id = "GetRelationalDatabasesInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetRelationalDatabasesOutput = {
    type = "structure",
    id = "GetRelationalDatabasesOutput",
    members = {
        relationalDatabases = {
            type = "list",
            member = M.RelationalDatabase,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetRelationalDatabaseSnapshotInput = {
    type = "structure",
    id = "GetRelationalDatabaseSnapshotInput",
    members = {
        relationalDatabaseSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RelationalDatabaseSnapshot = {
    type = "structure",
    id = "RelationalDatabaseSnapshot",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        engine = {
            type = "string",
        },
        engineVersion = {
            type = "string",
        },
        sizeInGb = {
            type = "integer",
        },
        state = {
            type = "string",
        },
        fromRelationalDatabaseName = {
            type = "string",
        },
        fromRelationalDatabaseArn = {
            type = "string",
        },
        fromRelationalDatabaseBundleId = {
            type = "string",
        },
        fromRelationalDatabaseBlueprintId = {
            type = "string",
        },
    },
}

M.GetRelationalDatabaseSnapshotOutput = {
    type = "structure",
    id = "GetRelationalDatabaseSnapshotOutput",
    members = {
        relationalDatabaseSnapshot = M.RelationalDatabaseSnapshot,
    },
}

M.GetRelationalDatabaseSnapshotsInput = {
    type = "structure",
    id = "GetRelationalDatabaseSnapshotsInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetRelationalDatabaseSnapshotsOutput = {
    type = "structure",
    id = "GetRelationalDatabaseSnapshotsOutput",
    members = {
        relationalDatabaseSnapshots = {
            type = "list",
            member = M.RelationalDatabaseSnapshot,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetSetupHistoryInput = {
    type = "structure",
    id = "GetSetupHistoryInput",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pageToken = {
            type = "string",
        },
    },
}

M.SetupStatus = {
    Succeeded = "succeeded",
    Failed = "failed",
    InProgress = "inProgress",
}

M.SetupExecutionDetails = {
    type = "structure",
    id = "SetupExecutionDetails",
    members = {
        command = {
            type = "string",
        },
        dateTime = {
            type = "timestamp",
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
        standardError = {
            type = "string",
        },
        standardOutput = {
            type = "string",
        },
        version = {
            type = "string",
        },
    },
}

M.SetupRequest = {
    type = "structure",
    id = "SetupRequest",
    members = {
        instanceName = {
            type = "string",
        },
        domainNames = {
            type = "list",
            member = { type = "string" },
        },
        certificateProvider = {
            type = "string",
        },
    },
}

M.SetupHistoryResource = {
    type = "structure",
    id = "SetupHistoryResource",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
    },
}

M.SetupHistory = {
    type = "structure",
    id = "SetupHistory",
    members = {
        operationId = {
            type = "string",
        },
        request = M.SetupRequest,
        resource = M.SetupHistoryResource,
        executionDetails = {
            type = "list",
            member = M.SetupExecutionDetails,
        },
        status = {
            type = "string",
        },
    },
}

M.GetSetupHistoryOutput = {
    type = "structure",
    id = "GetSetupHistoryOutput",
    members = {
        setupHistory = {
            type = "list",
            member = M.SetupHistory,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.GetStaticIpInput = {
    type = "structure",
    id = "GetStaticIpInput",
    members = {
        staticIpName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StaticIp = {
    type = "structure",
    id = "StaticIp",
    members = {
        name = {
            type = "string",
        },
        arn = {
            type = "string",
        },
        supportCode = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        location = M.ResourceLocation,
        resourceType = {
            type = "string",
        },
        ipAddress = {
            type = "string",
        },
        attachedTo = {
            type = "string",
        },
        isAttached = {
            type = "boolean",
        },
    },
}

M.GetStaticIpOutput = {
    type = "structure",
    id = "GetStaticIpOutput",
    members = {
        staticIp = M.StaticIp,
    },
}

M.GetStaticIpsInput = {
    type = "structure",
    id = "GetStaticIpsInput",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetStaticIpsOutput = {
    type = "structure",
    id = "GetStaticIpsOutput",
    members = {
        staticIps = {
            type = "list",
            member = M.StaticIp,
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.ImportKeyPairInput = {
    type = "structure",
    id = "ImportKeyPairInput",
    members = {
        keyPairName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        publicKeyBase64 = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportKeyPairOutput = {
    type = "structure",
    id = "ImportKeyPairOutput",
    members = {
        operation = M.Operation,
    },
}

M.IsVpcPeeredInput = {
    type = "structure",
    id = "IsVpcPeeredInput",
}

M.IsVpcPeeredOutput = {
    type = "structure",
    id = "IsVpcPeeredOutput",
    members = {
        isPeered = {
            type = "boolean",
        },
    },
}

M.OpenInstancePublicPortsInput = {
    type = "structure",
    id = "OpenInstancePublicPortsInput",
    members = {
        portInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PortInfo }),
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenInstancePublicPortsOutput = {
    type = "structure",
    id = "OpenInstancePublicPortsOutput",
    members = {
        operation = M.Operation,
    },
}

M.PeerVpcInput = {
    type = "structure",
    id = "PeerVpcInput",
}

M.PeerVpcOutput = {
    type = "structure",
    id = "PeerVpcOutput",
    members = {
        operation = M.Operation,
    },
}

M.PutAlarmInput = {
    type = "structure",
    id = "PutAlarmInput",
    members = {
        alarmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        monitoredResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        comparisonOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        threshold = {
            type = "double",
            traits = {
                required = true,
            },
        },
        evaluationPeriods = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        datapointsToAlarm = {
            type = "integer",
        },
        treatMissingData = {
            type = "string",
        },
        contactProtocols = {
            type = "list",
            member = { type = "string" },
        },
        notificationTriggers = {
            type = "list",
            member = { type = "string" },
        },
        notificationEnabled = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutAlarmOutput = {
    type = "structure",
    id = "PutAlarmOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.PutInstancePublicPortsInput = {
    type = "structure",
    id = "PutInstancePublicPortsInput",
    members = {
        portInfos = {
            type = "list",
            member = M.PortInfo,
            traits = {
                required = true,
            },
        },
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutInstancePublicPortsOutput = {
    type = "structure",
    id = "PutInstancePublicPortsOutput",
    members = {
        operation = M.Operation,
    },
}

M.RebootInstanceInput = {
    type = "structure",
    id = "RebootInstanceInput",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RebootInstanceOutput = {
    type = "structure",
    id = "RebootInstanceOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.RebootRelationalDatabaseInput = {
    type = "structure",
    id = "RebootRelationalDatabaseInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RebootRelationalDatabaseOutput = {
    type = "structure",
    id = "RebootRelationalDatabaseOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.RegisterContainerImageInput = {
    type = "structure",
    id = "RegisterContainerImageInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        label = {
            type = "string",
            traits = {
                required = true,
            },
        },
        digest = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterContainerImageOutput = {
    type = "structure",
    id = "RegisterContainerImageOutput",
    members = {
        containerImage = M.ContainerImage,
    },
}

M.ReleaseStaticIpInput = {
    type = "structure",
    id = "ReleaseStaticIpInput",
    members = {
        staticIpName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReleaseStaticIpOutput = {
    type = "structure",
    id = "ReleaseStaticIpOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.ResetDistributionCacheInput = {
    type = "structure",
    id = "ResetDistributionCacheInput",
    members = {
        distributionName = {
            type = "string",
        },
    },
}

M.ResetDistributionCacheOutput = {
    type = "structure",
    id = "ResetDistributionCacheOutput",
    members = {
        status = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        operation = M.Operation,
    },
}

M.SendContactMethodVerificationInput = {
    type = "structure",
    id = "SendContactMethodVerificationInput",
    members = {
        protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendContactMethodVerificationOutput = {
    type = "structure",
    id = "SendContactMethodVerificationOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.SetIpAddressTypeInput = {
    type = "structure",
    id = "SetIpAddressTypeInput",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ipAddressType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        acceptBundleUpdate = {
            type = "boolean",
        },
    },
}

M.SetIpAddressTypeOutput = {
    type = "structure",
    id = "SetIpAddressTypeOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.ResourceBucketAccess = {
    Allow = "allow",
    Deny = "deny",
}

M.SetResourceAccessForBucketInput = {
    type = "structure",
    id = "SetResourceAccessForBucketInput",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        access = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetResourceAccessForBucketOutput = {
    type = "structure",
    id = "SetResourceAccessForBucketOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.SetupInstanceHttpsInput = {
    type = "structure",
    id = "SetupInstanceHttpsInput",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        emailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        certificateProvider = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetupInstanceHttpsOutput = {
    type = "structure",
    id = "SetupInstanceHttpsOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.StartGUISessionInput = {
    type = "structure",
    id = "StartGUISessionInput",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartGUISessionOutput = {
    type = "structure",
    id = "StartGUISessionOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.StartInstanceInput = {
    type = "structure",
    id = "StartInstanceInput",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartInstanceOutput = {
    type = "structure",
    id = "StartInstanceOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.StartRelationalDatabaseInput = {
    type = "structure",
    id = "StartRelationalDatabaseInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartRelationalDatabaseOutput = {
    type = "structure",
    id = "StartRelationalDatabaseOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.StopGUISessionInput = {
    type = "structure",
    id = "StopGUISessionInput",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopGUISessionOutput = {
    type = "structure",
    id = "StopGUISessionOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.StopInstanceInput = {
    type = "structure",
    id = "StopInstanceInput",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        force = {
            type = "boolean",
        },
    },
}

M.StopInstanceOutput = {
    type = "structure",
    id = "StopInstanceOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.StopRelationalDatabaseInput = {
    type = "structure",
    id = "StopRelationalDatabaseInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relationalDatabaseSnapshotName = {
            type = "string",
        },
    },
}

M.StopRelationalDatabaseOutput = {
    type = "structure",
    id = "StopRelationalDatabaseOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.TestAlarmInput = {
    type = "structure",
    id = "TestAlarmInput",
    members = {
        alarmName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                http_query = "state",
                required = true,
            },
        },
    },
}

M.TestAlarmOutput = {
    type = "structure",
    id = "TestAlarmOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UnpeerVpcInput = {
    type = "structure",
    id = "UnpeerVpcInput",
}

M.UnpeerVpcOutput = {
    type = "structure",
    id = "UnpeerVpcOutput",
    members = {
        operation = M.Operation,
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UpdateBucketInput = {
    type = "structure",
    id = "UpdateBucketInput",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accessRules = M.AccessRules,
        versioning = {
            type = "string",
        },
        readonlyAccessAccounts = {
            type = "list",
            member = { type = "string" },
        },
        accessLogConfig = M.BucketAccessLogConfig,
        cors = M.BucketCorsConfig,
    },
}

M.UpdateBucketOutput = {
    type = "structure",
    id = "UpdateBucketOutput",
    members = {
        bucket = M.Bucket,
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UpdateBucketBundleInput = {
    type = "structure",
    id = "UpdateBucketBundleInput",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        bundleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateBucketBundleOutput = {
    type = "structure",
    id = "UpdateBucketBundleOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UpdateContainerServiceInput = {
    type = "structure",
    id = "UpdateContainerServiceInput",
    members = {
        serviceName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        power = {
            type = "string",
        },
        scale = {
            type = "integer",
        },
        isDisabled = {
            type = "boolean",
        },
        publicDomainNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        privateRegistryAccess = M.PrivateRegistryAccessRequest,
    },
}

M.UpdateContainerServiceOutput = {
    type = "structure",
    id = "UpdateContainerServiceOutput",
    members = {
        containerService = M.ContainerService,
    },
}

M.UpdateDistributionInput = {
    type = "structure",
    id = "UpdateDistributionInput",
    members = {
        distributionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        origin = M.InputOrigin,
        defaultCacheBehavior = M.CacheBehavior,
        cacheBehaviorSettings = M.CacheSettings,
        cacheBehaviors = {
            type = "list",
            member = M.CacheBehaviorPerPath,
        },
        isEnabled = {
            type = "boolean",
        },
        viewerMinimumTlsProtocolVersion = {
            type = "string",
        },
        certificateName = {
            type = "string",
        },
        useDefaultCertificate = {
            type = "boolean",
        },
    },
}

M.UpdateDistributionOutput = {
    type = "structure",
    id = "UpdateDistributionOutput",
    members = {
        operation = M.Operation,
    },
}

M.UpdateDistributionBundleInput = {
    type = "structure",
    id = "UpdateDistributionBundleInput",
    members = {
        distributionName = {
            type = "string",
        },
        bundleId = {
            type = "string",
        },
    },
}

M.UpdateDistributionBundleOutput = {
    type = "structure",
    id = "UpdateDistributionBundleOutput",
    members = {
        operation = M.Operation,
    },
}

M.UpdateDomainEntryInput = {
    type = "structure",
    id = "UpdateDomainEntryInput",
    members = {
        domainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainEntry = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainEntry }),
    },
}

M.UpdateDomainEntryOutput = {
    type = "structure",
    id = "UpdateDomainEntryOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UpdateInstanceMetadataOptionsInput = {
    type = "structure",
    id = "UpdateInstanceMetadataOptionsInput",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        httpTokens = {
            type = "string",
        },
        httpEndpoint = {
            type = "string",
        },
        httpPutResponseHopLimit = {
            type = "integer",
        },
        httpProtocolIpv6 = {
            type = "string",
        },
    },
}

M.UpdateInstanceMetadataOptionsOutput = {
    type = "structure",
    id = "UpdateInstanceMetadataOptionsOutput",
    members = {
        operation = M.Operation,
    },
}

M.UpdateLoadBalancerAttributeInput = {
    type = "structure",
    id = "UpdateLoadBalancerAttributeInput",
    members = {
        loadBalancerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributeValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateLoadBalancerAttributeOutput = {
    type = "structure",
    id = "UpdateLoadBalancerAttributeOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UpdateRelationalDatabaseInput = {
    type = "structure",
    id = "UpdateRelationalDatabaseInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        masterUserPassword = {
            type = "string",
        },
        rotateMasterUserPassword = {
            type = "boolean",
        },
        preferredBackupWindow = {
            type = "string",
        },
        preferredMaintenanceWindow = {
            type = "string",
        },
        enableBackupRetention = {
            type = "boolean",
        },
        disableBackupRetention = {
            type = "boolean",
        },
        publiclyAccessible = {
            type = "boolean",
        },
        applyImmediately = {
            type = "boolean",
        },
        caCertificateIdentifier = {
            type = "string",
        },
        relationalDatabaseBlueprintId = {
            type = "string",
        },
    },
}

M.UpdateRelationalDatabaseOutput = {
    type = "structure",
    id = "UpdateRelationalDatabaseOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UpdateRelationalDatabaseParametersInput = {
    type = "structure",
    id = "UpdateRelationalDatabaseParametersInput",
    members = {
        relationalDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "list",
            member = M.RelationalDatabaseParameter,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRelationalDatabaseParametersOutput = {
    type = "structure",
    id = "UpdateRelationalDatabaseParametersOutput",
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

return M
