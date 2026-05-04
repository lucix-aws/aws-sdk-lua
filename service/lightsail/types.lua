local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        snapshotTimeOfDay = {
            type = "string",
        },
    },
}

M.StopInstanceOnIdleRequest = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.InvalidInputException = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.AttachDiskInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.AttachedDisk = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.AttachLoadBalancerTlsCertificateInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.AttachStaticIpInput = {
    type = "structure",
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
    members = {
        rules = {
            type = "list",
            member = M.BucketCorsRule,
        },
    },
}

M.BucketState = {
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

M.Bucket = {
    type = "structure",
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
    members = {
        behavior = {
            type = "string",
        },
    },
}

M.CacheBehaviorPerPath = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.DestinationInfo = {
    type = "structure",
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
    members = {
        isActive = {
            type = "boolean",
        },
    },
}

M.ContainerServiceLogEvent = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateContactMethodInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.PrivateRegistryAccessRequest = {
    type = "structure",
    members = {
        ecrImagePullerRole = M.ContainerServiceECRImagePullerRoleRequest,
    },
}

M.CreateContainerServiceInput = {
    type = "structure",
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
    members = {
        containerService = M.ContainerService,
    },
}

M.CreateContainerServiceDeploymentInput = {
    type = "structure",
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
    members = {
        containerService = M.ContainerService,
    },
}

M.CreateContainerServiceRegistryLoginInput = {
    type = "structure",
}

M.CreateContainerServiceRegistryLoginOutput = {
    type = "structure",
    members = {
        registryLogin = M.ContainerServiceRegistryLogin,
    },
}

M.CreateDiskInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateDiskFromSnapshotInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateDiskSnapshotInput = {
    type = "structure",
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
    members = {
        distribution = M.LightsailDistribution,
        operation = M.Operation,
    },
}

M.CreateDomainInput = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.DomainEntry = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.CreateGUISessionAccessDetailsInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateInstancesFromSnapshotInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateInstanceSnapshotInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateKeyPairInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateLoadBalancerTlsCertificateInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateRelationalDatabaseInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateRelationalDatabaseFromSnapshotInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.CreateRelationalDatabaseSnapshotInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteAlarmInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteAutoSnapshotInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteBucketInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteBucketAccessKeyInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteCertificateInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteContactMethodInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteContainerImageInput = {
    type = "structure",
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
}

M.DeleteContainerServiceInput = {
    type = "structure",
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
}

M.DeleteDiskInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteDiskSnapshotInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteDistributionInput = {
    type = "structure",
    members = {
        distributionName = {
            type = "string",
        },
    },
}

M.DeleteDistributionOutput = {
    type = "structure",
    members = {
        operation = M.Operation,
    },
}

M.DeleteDomainInput = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.DeleteDomainEntryInput = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.DeleteInstanceInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteInstanceSnapshotInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteKeyPairInput = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.DeleteKnownHostKeysInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteLoadBalancerInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteLoadBalancerTlsCertificateInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteRelationalDatabaseInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DeleteRelationalDatabaseSnapshotInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DetachCertificateFromDistributionInput = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.DetachDiskInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DetachInstancesFromLoadBalancerInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DetachStaticIpInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.DisableAddOnInput = {
    type = "structure",
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
    members = {
        sizeInGb = {
            type = "integer",
        },
    },
}

M.DistributionBundle = {
    type = "structure",
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
    members = {
        nameServersUpdateState = M.NameServersUpdateState,
        r53HostedZoneDeletionState = M.R53HostedZoneDeletionState,
    },
}

M.Domain = {
    type = "structure",
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
}

M.DownloadDefaultKeyPairOutput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.ExportSnapshotInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.InstanceSnapshotInfo = {
    type = "structure",
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
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetActiveNamesOutput = {
    type = "structure",
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
    members = {
        accessKeys = {
            type = "list",
            member = M.AccessKey,
        },
    },
}

M.GetBucketBundlesInput = {
    type = "structure",
    members = {
        includeInactive = {
            type = "boolean",
        },
    },
}

M.GetBucketBundlesOutput = {
    type = "structure",
    members = {
        bundles = {
            type = "list",
            member = M.BucketBundle,
        },
    },
}

M.GetBucketMetricDataInput = {
    type = "structure",
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
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetCloudFormationStackRecordsOutput = {
    type = "structure",
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
    members = {
        contactMethods = {
            type = "list",
            member = M.ContactMethod,
        },
    },
}

M.GetContainerAPIMetadataInput = {
    type = "structure",
}

M.GetContainerAPIMetadataOutput = {
    type = "structure",
    members = {
        metadata = {
            type = "list",
            member = { type = "map" },
        },
    },
}

M.GetContainerImagesInput = {
    type = "structure",
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
    members = {
        containerImages = {
            type = "list",
            member = M.ContainerImage,
        },
    },
}

M.GetContainerLogInput = {
    type = "structure",
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
    members = {
        deployments = {
            type = "list",
            member = M.ContainerServiceDeployment,
        },
    },
}

M.GetContainerServiceMetricDataInput = {
    type = "structure",
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
}

M.GetContainerServicePowersOutput = {
    type = "structure",
    members = {
        powers = {
            type = "list",
            member = M.ContainerServicePower,
        },
    },
}

M.GetContainerServicesInput = {
    type = "structure",
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
    members = {
        containerServices = {
            type = "list",
            member = M.ContainerService,
        },
    },
}

M.GetCostEstimateInput = {
    type = "structure",
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
    members = {
        resourcesBudgetEstimate = {
            type = "list",
            member = M.ResourceBudgetEstimate,
        },
    },
}

M.GetDiskInput = {
    type = "structure",
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
    members = {
        disk = M.Disk,
    },
}

M.GetDisksInput = {
    type = "structure",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetDisksOutput = {
    type = "structure",
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
    members = {
        diskSnapshot = M.DiskSnapshot,
    },
}

M.GetDiskSnapshotsInput = {
    type = "structure",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetDiskSnapshotsOutput = {
    type = "structure",
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
}

M.GetDistributionBundlesOutput = {
    type = "structure",
    members = {
        bundles = {
            type = "list",
            member = M.DistributionBundle,
        },
    },
}

M.GetDistributionLatestCacheResetInput = {
    type = "structure",
    members = {
        distributionName = {
            type = "string",
        },
    },
}

M.GetDistributionLatestCacheResetOutput = {
    type = "structure",
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
    members = {
        domain = M.Domain,
    },
}

M.GetDomainsInput = {
    type = "structure",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetDomainsOutput = {
    type = "structure",
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
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetExportSnapshotRecordsOutput = {
    type = "structure",
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
    members = {
        portStates = {
            type = "list",
            member = M.InstancePortState,
        },
    },
}

M.GetInstancesInput = {
    type = "structure",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetInstancesOutput = {
    type = "structure",
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
    members = {
        instanceSnapshot = M.InstanceSnapshot,
    },
}

M.GetInstanceSnapshotsInput = {
    type = "structure",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetInstanceSnapshotsOutput = {
    type = "structure",
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
    members = {
        state = M.InstanceState,
    },
}

M.GetKeyPairInput = {
    type = "structure",
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
    members = {
        keyPair = M.KeyPair,
    },
}

M.GetKeyPairsInput = {
    type = "structure",
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
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetLoadBalancersOutput = {
    type = "structure",
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
    members = {
        tlsCertificates = {
            type = "list",
            member = M.LoadBalancerTlsCertificate,
        },
    },
}

M.GetLoadBalancerTlsPoliciesInput = {
    type = "structure",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.LoadBalancerTlsPolicy = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.GetOperationsInput = {
    type = "structure",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetOperationsOutput = {
    type = "structure",
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
    members = {
        regions = {
            type = "list",
            member = M.Region,
        },
    },
}

M.GetRelationalDatabaseInput = {
    type = "structure",
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
    members = {
        relationalDatabase = M.RelationalDatabase,
    },
}

M.GetRelationalDatabaseBlueprintsInput = {
    type = "structure",
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
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetRelationalDatabasesOutput = {
    type = "structure",
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
    members = {
        relationalDatabaseSnapshot = M.RelationalDatabaseSnapshot,
    },
}

M.GetRelationalDatabaseSnapshotsInput = {
    type = "structure",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetRelationalDatabaseSnapshotsOutput = {
    type = "structure",
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
    members = {
        staticIp = M.StaticIp,
    },
}

M.GetStaticIpsInput = {
    type = "structure",
    members = {
        pageToken = {
            type = "string",
        },
    },
}

M.GetStaticIpsOutput = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.IsVpcPeeredInput = {
    type = "structure",
}

M.IsVpcPeeredOutput = {
    type = "structure",
    members = {
        isPeered = {
            type = "boolean",
        },
    },
}

M.OpenInstancePublicPortsInput = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.PeerVpcInput = {
    type = "structure",
}

M.PeerVpcOutput = {
    type = "structure",
    members = {
        operation = M.Operation,
    },
}

M.PutAlarmInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.PutInstancePublicPortsInput = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.RebootInstanceInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.RebootRelationalDatabaseInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.RegisterContainerImageInput = {
    type = "structure",
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
    members = {
        containerImage = M.ContainerImage,
    },
}

M.ReleaseStaticIpInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.ResetDistributionCacheInput = {
    type = "structure",
    members = {
        distributionName = {
            type = "string",
        },
    },
}

M.ResetDistributionCacheOutput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.SetIpAddressTypeInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.SetupInstanceHttpsInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.StartGUISessionInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.StartInstanceInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.StartRelationalDatabaseInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.StopGUISessionInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.StopInstanceInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.StopRelationalDatabaseInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.TestAlarmInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UnpeerVpcInput = {
    type = "structure",
}

M.UnpeerVpcOutput = {
    type = "structure",
    members = {
        operation = M.Operation,
    },
}

M.UntagResourceInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UpdateBucketInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UpdateContainerServiceInput = {
    type = "structure",
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
    members = {
        containerService = M.ContainerService,
    },
}

M.UpdateDistributionInput = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.UpdateDistributionBundleInput = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.UpdateDomainEntryInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UpdateInstanceMetadataOptionsInput = {
    type = "structure",
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
    members = {
        operation = M.Operation,
    },
}

M.UpdateLoadBalancerAttributeInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UpdateRelationalDatabaseInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

M.UpdateRelationalDatabaseParametersInput = {
    type = "structure",
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
    members = {
        operations = {
            type = "list",
            member = M.Operation,
        },
    },
}

return M
