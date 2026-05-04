local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AlternateSoftwareMetadata = {
    type = "structure",
    members = {
        Version = {
            type = "string",
        },
    },
}

M.ApplicationInstanceHealthStatus = {
    RUNNING = "RUNNING",
    ERROR = "ERROR",
    NOT_AVAILABLE = "NOT_AVAILABLE",
}

M.DesiredState = {
    RUNNING = "RUNNING",
    STOPPED = "STOPPED",
    REMOVED = "REMOVED",
}

M.DeviceReportedStatus = {
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    STOP_ERROR = "STOP_ERROR",
    REMOVAL_FAILED = "REMOVAL_FAILED",
    REMOVAL_IN_PROGRESS = "REMOVAL_IN_PROGRESS",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    INSTALL_ERROR = "INSTALL_ERROR",
    LAUNCHED = "LAUNCHED",
    LAUNCH_ERROR = "LAUNCH_ERROR",
    INSTALL_IN_PROGRESS = "INSTALL_IN_PROGRESS",
}

M.ReportedRuntimeContextState = {
    type = "structure",
    members = {
        DesiredState = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuntimeContextName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceReportedStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceReportedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationInstanceStatus = {
    DEPLOYMENT_PENDING = "DEPLOYMENT_PENDING",
    DEPLOYMENT_REQUESTED = "DEPLOYMENT_REQUESTED",
    DEPLOYMENT_IN_PROGRESS = "DEPLOYMENT_IN_PROGRESS",
    DEPLOYMENT_ERROR = "DEPLOYMENT_ERROR",
    DEPLOYMENT_SUCCEEDED = "DEPLOYMENT_SUCCEEDED",
    REMOVAL_PENDING = "REMOVAL_PENDING",
    REMOVAL_REQUESTED = "REMOVAL_REQUESTED",
    REMOVAL_IN_PROGRESS = "REMOVAL_IN_PROGRESS",
    REMOVAL_FAILED = "REMOVAL_FAILED",
    REMOVAL_SUCCEEDED = "REMOVAL_SUCCEEDED",
    DEPLOYMENT_FAILED = "DEPLOYMENT_FAILED",
}

M.ApplicationInstance = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ApplicationInstanceId = {
            type = "string",
        },
        DefaultRuntimeContextDevice = {
            type = "string",
        },
        DefaultRuntimeContextDeviceName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        HealthStatus = {
            type = "string",
        },
        StatusDescription = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        Arn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RuntimeContextStates = {
            type = "list",
            member = M.ReportedRuntimeContextState,
        },
    },
}

M.ConflictExceptionErrorArgument = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorId = {
            type = "string",
        },
        ErrorArguments = {
            type = "list",
            member = M.ConflictExceptionErrorArgument,
        },
    },
}

M.ConnectionType = {
    STATIC_IP = "STATIC_IP",
    DHCP = "DHCP",
}

M.ManifestOverridesPayload = {
    type = "union",
    members = {
        PayloadData = {
            type = "string",
        },
    },
}

M.ManifestPayload = {
    type = "union",
    members = {
        PayloadData = {
            type = "string",
        },
    },
}

M.CreateApplicationInstanceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ManifestPayload = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ManifestPayload }),
        ManifestOverridesPayload = M.ManifestOverridesPayload,
        ApplicationInstanceIdToReplace = {
            type = "string",
        },
        RuntimeRoleArn = {
            type = "string",
        },
        DefaultRuntimeContextDevice = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateApplicationInstanceOutput = {
    type = "structure",
    members = {
        ApplicationInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionErrorArgument = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
        ErrorId = {
            type = "string",
        },
        ErrorArguments = {
            type = "list",
            member = M.ValidationExceptionErrorArgument,
        },
        Fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.OTAJobConfig = {
    type = "structure",
    members = {
        ImageVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowMajorVersionUpdate = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeviceJobConfig = {
    type = "structure",
    members = {
        OTAJobConfig = M.OTAJobConfig,
    },
}

M.JobType = {
    OTA = "OTA",
    REBOOT = "REBOOT",
}

M.CreateJobForDevicesInput = {
    type = "structure",
    members = {
        DeviceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        DeviceJobConfig = M.DeviceJobConfig,
        JobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Job = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        DeviceId = {
            type = "string",
        },
    },
}

M.CreateJobForDevicesOutput = {
    type = "structure",
    members = {
        Jobs = {
            type = "list",
            member = M.Job,
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobResourceType = {
    PACKAGE = "PACKAGE",
}

M.JobResourceTags = {
    type = "structure",
    members = {
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateType = {
    RTSP_CAMERA_STREAM = "RTSP_CAMERA_STREAM",
}

M.CreateNodeFromTemplateJobInput = {
    type = "structure",
    members = {
        TemplateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputPackageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputPackageVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeDescription = {
            type = "string",
        },
        TemplateParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        JobTags = {
            type = "list",
            member = M.JobResourceTags,
        },
    },
}

M.CreateNodeFromTemplateJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePackageInput = {
    type = "structure",
    members = {
        PackageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StorageLocation = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RepoPrefixLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GeneratedPrefixLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BinaryPrefixLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManifestPrefixLocation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePackageOutput = {
    type = "structure",
    members = {
        PackageId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        StorageLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageLocation }),
    },
}

M.S3Location = {
    type = "structure",
    members = {
        Region = {
            type = "string",
        },
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PackageVersionInputConfig = {
    type = "structure",
    members = {
        S3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
    },
}

M.PackageImportJobInputConfig = {
    type = "structure",
    members = {
        PackageVersionInputConfig = M.PackageVersionInputConfig,
    },
}

M.PackageImportJobType = {
    NODE_PACKAGE_VERSION = "NODE_PACKAGE_VERSION",
    MARKETPLACE_NODE_PACKAGE_VERSION = "MARKETPLACE_NODE_PACKAGE_VERSION",
}

M.PackageVersionOutputConfig = {
    type = "structure",
    members = {
        PackageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MarkLatest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PackageImportJobOutputConfig = {
    type = "structure",
    members = {
        PackageVersionOutputConfig = M.PackageVersionOutputConfig,
    },
}

M.CreatePackageImportJobInput = {
    type = "structure",
    members = {
        JobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PackageImportJobInputConfig }),
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PackageImportJobOutputConfig }),
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobTags = {
            type = "list",
            member = M.JobResourceTags,
        },
    },
}

M.CreatePackageImportJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDeviceInput = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDeviceOutput = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
        },
    },
}

M.DeletePackageInput = {
    type = "structure",
    members = {
        PackageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ForceDelete = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "ForceDelete",
            },
        },
    },
}

M.DeletePackageOutput = {
    type = "structure",
}

M.DeregisterPackageVersionInput = {
    type = "structure",
    members = {
        OwnerAccount = {
            type = "string",
            traits = {
                http_query = "OwnerAccount",
            },
        },
        PackageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PackageVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PatchVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        UpdatedLatestPatchVersion = {
            type = "string",
            traits = {
                http_query = "UpdatedLatestPatchVersion",
            },
        },
    },
}

M.DeregisterPackageVersionOutput = {
    type = "structure",
}

M.DescribeApplicationInstanceInput = {
    type = "structure",
    members = {
        ApplicationInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeApplicationInstanceOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefaultRuntimeContextDevice = {
            type = "string",
        },
        DefaultRuntimeContextDeviceName = {
            type = "string",
        },
        ApplicationInstanceIdToReplace = {
            type = "string",
        },
        RuntimeRoleArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        HealthStatus = {
            type = "string",
        },
        StatusDescription = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        ApplicationInstanceId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RuntimeContextStates = {
            type = "list",
            member = M.ReportedRuntimeContextState,
        },
    },
}

M.DescribeApplicationInstanceDetailsInput = {
    type = "structure",
    members = {
        ApplicationInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeApplicationInstanceDetailsOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DefaultRuntimeContextDevice = {
            type = "string",
        },
        ManifestPayload = M.ManifestPayload,
        ManifestOverridesPayload = M.ManifestOverridesPayload,
        ApplicationInstanceIdToReplace = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        ApplicationInstanceId = {
            type = "string",
        },
    },
}

M.DescribeDeviceInput = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeviceBrand = {
    AWS_PANORAMA = "AWS_PANORAMA",
    LENOVO = "LENOVO",
}

M.NetworkConnectionStatus = {
    CONNECTED = "CONNECTED",
    NOT_CONNECTED = "NOT_CONNECTED",
    CONNECTING = "CONNECTING",
}

M.EthernetStatus = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
        },
        ConnectionStatus = {
            type = "string",
        },
        HwAddress = {
            type = "string",
        },
    },
}

M.NtpStatus = {
    type = "structure",
    members = {
        ConnectionStatus = {
            type = "string",
        },
        IpAddress = {
            type = "string",
        },
        NtpServerName = {
            type = "string",
        },
    },
}

M.NetworkStatus = {
    type = "structure",
    members = {
        Ethernet0Status = M.EthernetStatus,
        Ethernet1Status = M.EthernetStatus,
        NtpStatus = M.NtpStatus,
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.DeviceAggregatedStatus = {
    ERROR = "ERROR",
    AWAITING_PROVISIONING = "AWAITING_PROVISIONING",
    PENDING = "PENDING",
    FAILED = "FAILED",
    DELETING = "DELETING",
    ONLINE = "ONLINE",
    OFFLINE = "OFFLINE",
    LEASE_EXPIRED = "LEASE_EXPIRED",
    UPDATE_NEEDED = "UPDATE_NEEDED",
    REBOOTING = "REBOOTING",
}

M.DeviceConnectionStatus = {
    ONLINE = "ONLINE",
    OFFLINE = "OFFLINE",
    AWAITING_CREDENTIALS = "AWAITING_CREDENTIALS",
    NOT_AVAILABLE = "NOT_AVAILABLE",
    ERROR = "ERROR",
}

M.UpdateProgress = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    VERIFYING = "VERIFYING",
    REBOOTING = "REBOOTING",
    DOWNLOADING = "DOWNLOADING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.LatestDeviceJob = {
    type = "structure",
    members = {
        ImageVersion = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        JobType = {
            type = "string",
        },
    },
}

M.StaticIpConnectionInfo = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mask = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        DefaultGateway = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EthernetPayload = {
    type = "structure",
    members = {
        ConnectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StaticIpConnectionInfo = M.StaticIpConnectionInfo,
    },
}

M.NtpPayload = {
    type = "structure",
    members = {
        NtpServers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkPayload = {
    type = "structure",
    members = {
        Ethernet0 = M.EthernetPayload,
        Ethernet1 = M.EthernetPayload,
        Ntp = M.NtpPayload,
    },
}

M.DeviceStatus = {
    AWAITING_PROVISIONING = "AWAITING_PROVISIONING",
    PENDING = "PENDING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    ERROR = "ERROR",
    DELETING = "DELETING",
}

M.DeviceType = {
    PANORAMA_APPLIANCE_DEVELOPER_KIT = "PANORAMA_APPLIANCE_DEVELOPER_KIT",
    PANORAMA_APPLIANCE = "PANORAMA_APPLIANCE",
}

M.DescribeDeviceOutput = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        DeviceConnectionStatus = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        ProvisioningStatus = {
            type = "string",
        },
        LatestSoftware = {
            type = "string",
        },
        CurrentSoftware = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NetworkingConfiguration = M.NetworkPayload,
        CurrentNetworkingStatus = M.NetworkStatus,
        LeaseExpirationTime = {
            type = "timestamp",
        },
        AlternateSoftwares = {
            type = "list",
            member = M.AlternateSoftwareMetadata,
        },
        LatestAlternateSoftware = {
            type = "string",
        },
        Brand = {
            type = "string",
        },
        LatestDeviceJob = M.LatestDeviceJob,
        DeviceAggregatedStatus = {
            type = "string",
        },
    },
}

M.DescribeDeviceJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeDeviceJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        DeviceId = {
            type = "string",
        },
        DeviceArn = {
            type = "string",
        },
        DeviceName = {
            type = "string",
        },
        DeviceType = {
            type = "string",
        },
        ImageVersion = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        JobType = {
            type = "string",
        },
    },
}

M.DescribeNodeInput = {
    type = "structure",
    members = {
        NodeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        OwnerAccount = {
            type = "string",
            traits = {
                http_query = "OwnerAccount",
            },
        },
    },
}

M.NodeCategory = {
    BUSINESS_LOGIC = "BUSINESS_LOGIC",
    ML_MODEL = "ML_MODEL",
    MEDIA_SOURCE = "MEDIA_SOURCE",
    MEDIA_SINK = "MEDIA_SINK",
}

M.PortType = {
    BOOLEAN = "BOOLEAN",
    STRING = "STRING",
    INT32 = "INT32",
    FLOAT32 = "FLOAT32",
    MEDIA = "MEDIA",
}

M.NodeInputPort = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        DefaultValue = {
            type = "string",
        },
        MaxConnections = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.NodeOutputPort = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.NodeInterface = {
    type = "structure",
    members = {
        Inputs = {
            type = "list",
            member = M.NodeInputPort,
            traits = {
                required = true,
            },
        },
        Outputs = {
            type = "list",
            member = M.NodeOutputPort,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeNodeOutput = {
    type = "structure",
    members = {
        NodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OwnerAccount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageArn = {
            type = "string",
        },
        PackageVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatchVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeInterface = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NodeInterface }),
        AssetName = {
            type = "string",
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeNodeFromTemplateJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.NodeFromTemplateJobStatus = {
    PENDING = "PENDING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.DescribeNodeFromTemplateJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        OutputPackageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputPackageVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeDescription = {
            type = "string",
        },
        TemplateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TemplateParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        JobTags = {
            type = "list",
            member = M.JobResourceTags,
        },
    },
}

M.DescribePackageInput = {
    type = "structure",
    members = {
        PackageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribePackageOutput = {
    type = "structure",
    members = {
        PackageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StorageLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageLocation }),
        ReadAccessPrincipalArns = {
            type = "list",
            member = { type = "string" },
        },
        WriteAccessPrincipalArns = {
            type = "list",
            member = { type = "string" },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePackageImportJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.OutPutS3Location = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PackageImportJobOutput = {
    type = "structure",
    members = {
        PackageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatchVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutPutS3Location }),
    },
}

M.PackageImportJobStatus = {
    PENDING = "PENDING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.DescribePackageImportJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        JobType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PackageImportJobInputConfig }),
        OutputConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PackageImportJobOutputConfig }),
        Output = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PackageImportJobOutput }),
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobTags = {
            type = "list",
            member = M.JobResourceTags,
        },
    },
}

M.DescribePackageVersionInput = {
    type = "structure",
    members = {
        OwnerAccount = {
            type = "string",
            traits = {
                http_query = "OwnerAccount",
            },
        },
        PackageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PackageVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PatchVersion = {
            type = "string",
            traits = {
                http_query = "PatchVersion",
            },
        },
    },
}

M.PackageVersionStatus = {
    REGISTER_PENDING = "REGISTER_PENDING",
    REGISTER_COMPLETED = "REGISTER_COMPLETED",
    FAILED = "FAILED",
    DELETING = "DELETING",
}

M.DescribePackageVersionOutput = {
    type = "structure",
    members = {
        OwnerAccount = {
            type = "string",
        },
        PackageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageArn = {
            type = "string",
        },
        PackageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatchVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsLatestPatch = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StatusDescription = {
            type = "string",
        },
        RegisteredTime = {
            type = "timestamp",
        },
    },
}

M.Device = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        ProvisioningStatus = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        LeaseExpirationTime = {
            type = "timestamp",
        },
        Brand = {
            type = "string",
        },
        CurrentSoftware = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Type = {
            type = "string",
        },
        LatestDeviceJob = M.LatestDeviceJob,
        DeviceAggregatedStatus = {
            type = "string",
        },
    },
}

M.DeviceJob = {
    type = "structure",
    members = {
        DeviceName = {
            type = "string",
        },
        DeviceId = {
            type = "string",
        },
        JobId = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        JobType = {
            type = "string",
        },
    },
}

M.ListApplicationInstanceDependenciesInput = {
    type = "structure",
    members = {
        ApplicationInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.PackageObject = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatchVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListApplicationInstanceDependenciesOutput = {
    type = "structure",
    members = {
        PackageObjects = {
            type = "list",
            member = M.PackageObject,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationInstanceNodeInstancesInput = {
    type = "structure",
    members = {
        ApplicationInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.NodeInstanceStatus = {
    RUNNING = "RUNNING",
    ERROR = "ERROR",
    NOT_AVAILABLE = "NOT_AVAILABLE",
    PAUSED = "PAUSED",
}

M.NodeInstance = {
    type = "structure",
    members = {
        NodeInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeId = {
            type = "string",
        },
        PackageName = {
            type = "string",
        },
        PackageVersion = {
            type = "string",
        },
        PackagePatchVersion = {
            type = "string",
        },
        NodeName = {
            type = "string",
        },
        CurrentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListApplicationInstanceNodeInstancesOutput = {
    type = "structure",
    members = {
        NodeInstances = {
            type = "list",
            member = M.NodeInstance,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StatusFilter = {
    DEPLOYMENT_SUCCEEDED = "DEPLOYMENT_SUCCEEDED",
    DEPLOYMENT_ERROR = "DEPLOYMENT_ERROR",
    REMOVAL_SUCCEEDED = "REMOVAL_SUCCEEDED",
    REMOVAL_FAILED = "REMOVAL_FAILED",
    PROCESSING_DEPLOYMENT = "PROCESSING_DEPLOYMENT",
    PROCESSING_REMOVAL = "PROCESSING_REMOVAL",
    DEPLOYMENT_FAILED = "DEPLOYMENT_FAILED",
}

M.ListApplicationInstancesInput = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                http_query = "deviceId",
            },
        },
        StatusFilter = {
            type = "string",
            traits = {
                http_query = "statusFilter",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListApplicationInstancesOutput = {
    type = "structure",
    members = {
        ApplicationInstances = {
            type = "list",
            member = M.ApplicationInstance,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDevicesSortBy = {
    DEVICE_ID = "DEVICE_ID",
    CREATED_TIME = "CREATED_TIME",
    NAME = "NAME",
    DEVICE_AGGREGATED_STATUS = "DEVICE_AGGREGATED_STATUS",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ListDevicesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "MaxResults",
            },
        },
        SortBy = {
            type = "string",
            traits = {
                http_query = "SortBy",
            },
        },
        SortOrder = {
            type = "string",
            traits = {
                http_query = "SortOrder",
            },
        },
        NameFilter = {
            type = "string",
            traits = {
                http_query = "NameFilter",
            },
        },
        DeviceAggregatedStatusFilter = {
            type = "string",
            traits = {
                http_query = "DeviceAggregatedStatusFilter",
            },
        },
    },
}

M.ListDevicesOutput = {
    type = "structure",
    members = {
        Devices = {
            type = "list",
            member = M.Device,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDevicesJobsInput = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                http_query = "DeviceId",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "MaxResults",
            },
        },
    },
}

M.ListDevicesJobsOutput = {
    type = "structure",
    members = {
        DeviceJobs = {
            type = "list",
            member = M.DeviceJob,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListNodeFromTemplateJobsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "MaxResults",
            },
        },
    },
}

M.NodeFromTemplateJob = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        TemplateType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        NodeName = {
            type = "string",
        },
    },
}

M.ListNodeFromTemplateJobsOutput = {
    type = "structure",
    members = {
        NodeFromTemplateJobs = {
            type = "list",
            member = M.NodeFromTemplateJob,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListNodesInput = {
    type = "structure",
    members = {
        Category = {
            type = "string",
            traits = {
                http_query = "category",
            },
        },
        OwnerAccount = {
            type = "string",
            traits = {
                http_query = "ownerAccount",
            },
        },
        PackageName = {
            type = "string",
            traits = {
                http_query = "packageName",
            },
        },
        PackageVersion = {
            type = "string",
            traits = {
                http_query = "packageVersion",
            },
        },
        PatchVersion = {
            type = "string",
            traits = {
                http_query = "patchVersion",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.Node = {
    type = "structure",
    members = {
        NodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Category = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OwnerAccount = {
            type = "string",
        },
        PackageName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PackageArn = {
            type = "string",
        },
        PackageVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatchVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListNodesOutput = {
    type = "structure",
    members = {
        Nodes = {
            type = "list",
            member = M.Node,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPackageImportJobsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "MaxResults",
            },
        },
    },
}

M.PackageImportJob = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        JobType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.ListPackageImportJobsOutput = {
    type = "structure",
    members = {
        PackageImportJobs = {
            type = "list",
            member = M.PackageImportJob,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPackagesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.PackageListItem = {
    type = "structure",
    members = {
        PackageId = {
            type = "string",
        },
        PackageName = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListPackagesOutput = {
    type = "structure",
    members = {
        Packages = {
            type = "list",
            member = M.PackageListItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.NodeSignalValue = {
    PAUSE = "PAUSE",
    RESUME = "RESUME",
}

M.NodeSignal = {
    type = "structure",
    members = {
        NodeInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Signal = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProvisionDeviceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        NetworkingConfiguration = M.NetworkPayload,
    },
}

M.ProvisionDeviceOutput = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Certificates = {
            type = "blob",
        },
        IotThingName = {
            type = "string",
        },
    },
}

M.RegisterPackageVersionInput = {
    type = "structure",
    members = {
        OwnerAccount = {
            type = "string",
        },
        PackageId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PackageVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        PatchVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MarkLatest = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.RegisterPackageVersionOutput = {
    type = "structure",
}

M.RemoveApplicationInstanceInput = {
    type = "structure",
    members = {
        ApplicationInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveApplicationInstanceOutput = {
    type = "structure",
}

M.SignalApplicationInstanceNodeInstancesInput = {
    type = "structure",
    members = {
        ApplicationInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NodeSignals = {
            type = "list",
            member = M.NodeSignal,
            traits = {
                required = true,
            },
        },
    },
}

M.SignalApplicationInstanceNodeInstancesOutput = {
    type = "structure",
    members = {
        ApplicationInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateDeviceMetadataInput = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateDeviceMetadataOutput = {
    type = "structure",
    members = {
        DeviceId = {
            type = "string",
        },
    },
}

return M
