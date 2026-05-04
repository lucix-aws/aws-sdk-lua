local M = {}

M.TrialMinutes = {
    type = "structure",
    id = "TrialMinutes",
    members = {
        total = {
            type = "double",
        },
        remaining = {
            type = "double",
        },
    },
}

M.DevicePlatform = {
    ANDROID = "ANDROID",
    IOS = "IOS",
}

M.AccountSettings = {
    type = "structure",
    id = "AccountSettings",
    members = {
        awsAccountNumber = {
            type = "string",
        },
        unmeteredDevices = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        unmeteredRemoteAccessDevices = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        maxJobTimeoutMinutes = {
            type = "integer",
        },
        trialMinutes = M.TrialMinutes,
        maxSlots = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        defaultJobTimeoutMinutes = {
            type = "integer",
        },
        skipAppResign = {
            type = "boolean",
        },
    },
}

M.ArgumentException = {
    type = "structure",
    id = "ArgumentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ArtifactType = {
    UNKNOWN = "UNKNOWN",
    SCREENSHOT = "SCREENSHOT",
    DEVICE_LOG = "DEVICE_LOG",
    MESSAGE_LOG = "MESSAGE_LOG",
    VIDEO_LOG = "VIDEO_LOG",
    RESULT_LOG = "RESULT_LOG",
    SERVICE_LOG = "SERVICE_LOG",
    WEBKIT_LOG = "WEBKIT_LOG",
    INSTRUMENTATION_OUTPUT = "INSTRUMENTATION_OUTPUT",
    EXERCISER_MONKEY_OUTPUT = "EXERCISER_MONKEY_OUTPUT",
    CALABASH_JSON_OUTPUT = "CALABASH_JSON_OUTPUT",
    CALABASH_PRETTY_OUTPUT = "CALABASH_PRETTY_OUTPUT",
    CALABASH_STANDARD_OUTPUT = "CALABASH_STANDARD_OUTPUT",
    CALABASH_JAVA_XML_OUTPUT = "CALABASH_JAVA_XML_OUTPUT",
    AUTOMATION_OUTPUT = "AUTOMATION_OUTPUT",
    APPIUM_SERVER_OUTPUT = "APPIUM_SERVER_OUTPUT",
    APPIUM_JAVA_OUTPUT = "APPIUM_JAVA_OUTPUT",
    APPIUM_JAVA_XML_OUTPUT = "APPIUM_JAVA_XML_OUTPUT",
    APPIUM_PYTHON_OUTPUT = "APPIUM_PYTHON_OUTPUT",
    APPIUM_PYTHON_XML_OUTPUT = "APPIUM_PYTHON_XML_OUTPUT",
    EXPLORER_EVENT_LOG = "EXPLORER_EVENT_LOG",
    EXPLORER_SUMMARY_LOG = "EXPLORER_SUMMARY_LOG",
    APPLICATION_CRASH_REPORT = "APPLICATION_CRASH_REPORT",
    XCTEST_LOG = "XCTEST_LOG",
    VIDEO = "VIDEO",
    CUSTOMER_ARTIFACT = "CUSTOMER_ARTIFACT",
    CUSTOMER_ARTIFACT_LOG = "CUSTOMER_ARTIFACT_LOG",
    TESTSPEC_OUTPUT = "TESTSPEC_OUTPUT",
}

M.Artifact = {
    type = "structure",
    id = "Artifact",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        extension = {
            type = "string",
        },
        url = {
            type = "string",
        },
    },
}

M.ArtifactCategory = {
    SCREENSHOT = "SCREENSHOT",
    FILE = "FILE",
    LOG = "LOG",
}

M.BillingMethod = {
    METERED = "METERED",
    UNMETERED = "UNMETERED",
}

M.CannotDeleteException = {
    type = "structure",
    id = "CannotDeleteException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Counters = {
    type = "structure",
    id = "Counters",
    members = {
        total = {
            type = "integer",
        },
        passed = {
            type = "integer",
        },
        failed = {
            type = "integer",
        },
        warned = {
            type = "integer",
        },
        errored = {
            type = "integer",
        },
        stopped = {
            type = "integer",
        },
        skipped = {
            type = "integer",
        },
    },
}

M.CPU = {
    type = "structure",
    id = "CPU",
    members = {
        frequency = {
            type = "string",
        },
        architecture = {
            type = "string",
        },
        clock = {
            type = "double",
        },
    },
}

M.DeviceAttribute = {
    ARN = "ARN",
    PLATFORM = "PLATFORM",
    FORM_FACTOR = "FORM_FACTOR",
    MANUFACTURER = "MANUFACTURER",
    REMOTE_ACCESS_ENABLED = "REMOTE_ACCESS_ENABLED",
    REMOTE_DEBUG_ENABLED = "REMOTE_DEBUG_ENABLED",
    APPIUM_VERSION = "APPIUM_VERSION",
    INSTANCE_ARN = "INSTANCE_ARN",
    INSTANCE_LABELS = "INSTANCE_LABELS",
    FLEET_TYPE = "FLEET_TYPE",
    OS_VERSION = "OS_VERSION",
    MODEL = "MODEL",
    AVAILABILITY = "AVAILABILITY",
}

M.RuleOperator = {
    EQUALS = "EQUALS",
    LESS_THAN = "LESS_THAN",
    LESS_THAN_OR_EQUALS = "LESS_THAN_OR_EQUALS",
    GREATER_THAN = "GREATER_THAN",
    GREATER_THAN_OR_EQUALS = "GREATER_THAN_OR_EQUALS",
    IN = "IN",
    NOT_IN = "NOT_IN",
    CONTAINS = "CONTAINS",
}

M.Rule = {
    type = "structure",
    id = "Rule",
    members = {
        attribute = {
            type = "string",
        },
        operator = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.CreateDevicePoolInput = {
    type = "structure",
    id = "CreateDevicePoolInput",
    members = {
        projectArn = {
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
        description = {
            type = "string",
        },
        rules = {
            type = "list",
            member = M.Rule,
            traits = {
                required = true,
            },
        },
        maxDevices = {
            type = "integer",
        },
    },
}

M.DevicePoolType = {
    CURATED = "CURATED",
    PRIVATE = "PRIVATE",
}

M.DevicePool = {
    type = "structure",
    id = "DevicePool",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
        },
        rules = {
            type = "list",
            member = M.Rule,
        },
        maxDevices = {
            type = "integer",
        },
    },
}

M.CreateDevicePoolOutput = {
    type = "structure",
    id = "CreateDevicePoolOutput",
    members = {
        devicePool = M.DevicePool,
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
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

M.ServiceAccountException = {
    type = "structure",
    id = "ServiceAccountException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateInstanceProfileInput = {
    type = "structure",
    id = "CreateInstanceProfileInput",
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
        packageCleanup = {
            type = "boolean",
        },
        excludeAppPackagesFromCleanup = {
            type = "list",
            member = { type = "string" },
        },
        rebootAfterUse = {
            type = "boolean",
        },
    },
}

M.InstanceProfile = {
    type = "structure",
    id = "InstanceProfile",
    members = {
        arn = {
            type = "string",
        },
        packageCleanup = {
            type = "boolean",
        },
        excludeAppPackagesFromCleanup = {
            type = "list",
            member = { type = "string" },
        },
        rebootAfterUse = {
            type = "boolean",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.CreateInstanceProfileOutput = {
    type = "structure",
    id = "CreateInstanceProfileOutput",
    members = {
        instanceProfile = M.InstanceProfile,
    },
}

M.NetworkProfileType = {
    CURATED = "CURATED",
    PRIVATE = "PRIVATE",
}

M.CreateNetworkProfileInput = {
    type = "structure",
    id = "CreateNetworkProfileInput",
    members = {
        projectArn = {
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
        description = {
            type = "string",
        },
        type = {
            type = "string",
        },
        uplinkBandwidthBits = {
            type = "long",
        },
        downlinkBandwidthBits = {
            type = "long",
        },
        uplinkDelayMs = {
            type = "long",
        },
        downlinkDelayMs = {
            type = "long",
        },
        uplinkJitterMs = {
            type = "long",
        },
        downlinkJitterMs = {
            type = "long",
        },
        uplinkLossPercent = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        downlinkLossPercent = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.NetworkProfile = {
    type = "structure",
    id = "NetworkProfile",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
        },
        uplinkBandwidthBits = {
            type = "long",
        },
        downlinkBandwidthBits = {
            type = "long",
        },
        uplinkDelayMs = {
            type = "long",
        },
        downlinkDelayMs = {
            type = "long",
        },
        uplinkJitterMs = {
            type = "long",
        },
        downlinkJitterMs = {
            type = "long",
        },
        uplinkLossPercent = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        downlinkLossPercent = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.CreateNetworkProfileOutput = {
    type = "structure",
    id = "CreateNetworkProfileOutput",
    members = {
        networkProfile = M.NetworkProfile,
    },
}

M.EnvironmentVariable = {
    type = "structure",
    id = "EnvironmentVariable",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VpcConfig = {
    type = "structure",
    id = "VpcConfig",
    members = {
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateProjectInput = {
    type = "structure",
    id = "CreateProjectInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultJobTimeoutMinutes = {
            type = "integer",
        },
        vpcConfig = M.VpcConfig,
        environmentVariables = {
            type = "list",
            member = M.EnvironmentVariable,
        },
        executionRoleArn = {
            type = "string",
        },
    },
}

M.Project = {
    type = "structure",
    id = "Project",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        defaultJobTimeoutMinutes = {
            type = "integer",
        },
        created = {
            type = "timestamp",
        },
        vpcConfig = M.VpcConfig,
        environmentVariables = {
            type = "list",
            member = M.EnvironmentVariable,
        },
        executionRoleArn = {
            type = "string",
        },
    },
}

M.CreateProjectOutput = {
    type = "structure",
    id = "CreateProjectOutput",
    members = {
        project = M.Project,
    },
}

M.TagOperationException = {
    type = "structure",
    id = "TagOperationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
    },
}

M.DeviceProxy = {
    type = "structure",
    id = "DeviceProxy",
    members = {
        host = {
            type = "string",
            traits = {
                required = true,
            },
        },
        port = {
            type = "integer",
            traits = {
                default = 3128,
                required = true,
            },
        },
    },
}

M.CreateRemoteAccessSessionConfiguration = {
    type = "structure",
    id = "CreateRemoteAccessSessionConfiguration",
    members = {
        auxiliaryApps = {
            type = "list",
            member = { type = "string" },
        },
        billingMethod = {
            type = "string",
        },
        vpceConfigurationArns = {
            type = "list",
            member = { type = "string" },
        },
        deviceProxy = M.DeviceProxy,
    },
}

M.InteractionMode = {
    INTERACTIVE = "INTERACTIVE",
    NO_VIDEO = "NO_VIDEO",
    VIDEO_ONLY = "VIDEO_ONLY",
}

M.CreateRemoteAccessSessionInput = {
    type = "structure",
    id = "CreateRemoteAccessSessionInput",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appArn = {
            type = "string",
        },
        instanceArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        configuration = M.CreateRemoteAccessSessionConfiguration,
        interactionMode = {
            type = "string",
        },
        skipAppResign = {
            type = "boolean",
        },
    },
}

M.DeviceAvailability = {
    TEMPORARY_NOT_AVAILABLE = "TEMPORARY_NOT_AVAILABLE",
    BUSY = "BUSY",
    AVAILABLE = "AVAILABLE",
    HIGHLY_AVAILABLE = "HIGHLY_AVAILABLE",
}

M.DeviceFormFactor = {
    PHONE = "PHONE",
    TABLET = "TABLET",
}

M.InstanceStatus = {
    IN_USE = "IN_USE",
    PREPARING = "PREPARING",
    AVAILABLE = "AVAILABLE",
    NOT_AVAILABLE = "NOT_AVAILABLE",
}

M.DeviceInstance = {
    type = "structure",
    id = "DeviceInstance",
    members = {
        arn = {
            type = "string",
        },
        deviceArn = {
            type = "string",
        },
        labels = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
        },
        udid = {
            type = "string",
        },
        instanceProfile = M.InstanceProfile,
    },
}

M.Resolution = {
    type = "structure",
    id = "Resolution",
    members = {
        width = {
            type = "integer",
        },
        height = {
            type = "integer",
        },
    },
}

M.Device = {
    type = "structure",
    id = "Device",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        manufacturer = {
            type = "string",
        },
        model = {
            type = "string",
        },
        modelId = {
            type = "string",
        },
        formFactor = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        os = {
            type = "string",
        },
        cpu = M.CPU,
        resolution = M.Resolution,
        heapSize = {
            type = "long",
        },
        memory = {
            type = "long",
        },
        image = {
            type = "string",
        },
        carrier = {
            type = "string",
        },
        radio = {
            type = "string",
        },
        remoteAccessEnabled = {
            type = "boolean",
        },
        remoteDebugEnabled = {
            type = "boolean",
        },
        fleetType = {
            type = "string",
        },
        fleetName = {
            type = "string",
        },
        instances = {
            type = "list",
            member = M.DeviceInstance,
        },
        availability = {
            type = "string",
        },
    },
}

M.DeviceMinutes = {
    type = "structure",
    id = "DeviceMinutes",
    members = {
        total = {
            type = "double",
        },
        metered = {
            type = "double",
        },
        unmetered = {
            type = "double",
        },
    },
}

M.RemoteAccessEndpoints = {
    type = "structure",
    id = "RemoteAccessEndpoints",
    members = {
        remoteDriverEndpoint = {
            type = "string",
        },
        interactiveEndpoint = {
            type = "string",
        },
    },
}

M.ExecutionResult = {
    PENDING = "PENDING",
    PASSED = "PASSED",
    WARNED = "WARNED",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
    ERRORED = "ERRORED",
    STOPPED = "STOPPED",
}

M.ExecutionStatus = {
    PENDING = "PENDING",
    PENDING_CONCURRNECY = "PENDING_CONCURRENCY",
    PENDING_DEVICE = "PENDING_DEVICE",
    PROCESSING = "PROCESSING",
    SCHEDULING = "SCHEDULING",
    PREPARING = "PREPARING",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    STOPPING = "STOPPING",
}

M.RemoteAccessSession = {
    type = "structure",
    id = "RemoteAccessSession",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        result = {
            type = "string",
        },
        message = {
            type = "string",
        },
        started = {
            type = "timestamp",
        },
        stopped = {
            type = "timestamp",
        },
        device = M.Device,
        instanceArn = {
            type = "string",
        },
        billingMethod = {
            type = "string",
        },
        deviceMinutes = M.DeviceMinutes,
        endpoint = {
            type = "string",
        },
        deviceUdid = {
            type = "string",
        },
        interactionMode = {
            type = "string",
        },
        skipAppResign = {
            type = "boolean",
        },
        vpcConfig = M.VpcConfig,
        deviceProxy = M.DeviceProxy,
        appUpload = {
            type = "string",
        },
        endpoints = M.RemoteAccessEndpoints,
    },
}

M.CreateRemoteAccessSessionOutput = {
    type = "structure",
    id = "CreateRemoteAccessSessionOutput",
    members = {
        remoteAccessSession = M.RemoteAccessSession,
    },
}

M.TestGridVpcConfig = {
    type = "structure",
    id = "TestGridVpcConfig",
    members = {
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTestGridProjectInput = {
    type = "structure",
    id = "CreateTestGridProjectInput",
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
        vpcConfig = M.TestGridVpcConfig,
    },
}

M.TestGridProject = {
    type = "structure",
    id = "TestGridProject",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        vpcConfig = M.TestGridVpcConfig,
        created = {
            type = "timestamp",
        },
    },
}

M.CreateTestGridProjectOutput = {
    type = "structure",
    id = "CreateTestGridProjectOutput",
    members = {
        testGridProject = M.TestGridProject,
    },
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateTestGridUrlInput = {
    type = "structure",
    id = "CreateTestGridUrlInput",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiresInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTestGridUrlOutput = {
    type = "structure",
    id = "CreateTestGridUrlOutput",
    members = {
        url = {
            type = "string",
        },
        expires = {
            type = "timestamp",
        },
    },
}

M.UploadType = {
    ANDROID_APP = "ANDROID_APP",
    IOS_APP = "IOS_APP",
    WEB_APP = "WEB_APP",
    EXTERNAL_DATA = "EXTERNAL_DATA",
    APPIUM_JAVA_JUNIT_TEST_PACKAGE = "APPIUM_JAVA_JUNIT_TEST_PACKAGE",
    APPIUM_JAVA_TESTNG_TEST_PACKAGE = "APPIUM_JAVA_TESTNG_TEST_PACKAGE",
    APPIUM_PYTHON_TEST_PACKAGE = "APPIUM_PYTHON_TEST_PACKAGE",
    APPIUM_NODE_TEST_PACKAGE = "APPIUM_NODE_TEST_PACKAGE",
    APPIUM_RUBY_TEST_PACKAGE = "APPIUM_RUBY_TEST_PACKAGE",
    APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE = "APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE",
    APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE = "APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE",
    APPIUM_WEB_PYTHON_TEST_PACKAGE = "APPIUM_WEB_PYTHON_TEST_PACKAGE",
    APPIUM_WEB_NODE_TEST_PACKAGE = "APPIUM_WEB_NODE_TEST_PACKAGE",
    APPIUM_WEB_RUBY_TEST_PACKAGE = "APPIUM_WEB_RUBY_TEST_PACKAGE",
    CALABASH_TEST_PACKAGE = "CALABASH_TEST_PACKAGE",
    INSTRUMENTATION_TEST_PACKAGE = "INSTRUMENTATION_TEST_PACKAGE",
    UIAUTOMATION_TEST_PACKAGE = "UIAUTOMATION_TEST_PACKAGE",
    UIAUTOMATOR_TEST_PACKAGE = "UIAUTOMATOR_TEST_PACKAGE",
    XCTEST_TEST_PACKAGE = "XCTEST_TEST_PACKAGE",
    XCTEST_UI_TEST_PACKAGE = "XCTEST_UI_TEST_PACKAGE",
    APPIUM_JAVA_JUNIT_TEST_SPEC = "APPIUM_JAVA_JUNIT_TEST_SPEC",
    APPIUM_JAVA_TESTNG_TEST_SPEC = "APPIUM_JAVA_TESTNG_TEST_SPEC",
    APPIUM_PYTHON_TEST_SPEC = "APPIUM_PYTHON_TEST_SPEC",
    APPIUM_NODE_TEST_SPEC = "APPIUM_NODE_TEST_SPEC",
    APPIUM_RUBY_TEST_SPEC = "APPIUM_RUBY_TEST_SPEC",
    APPIUM_WEB_JAVA_JUNIT_TEST_SPEC = "APPIUM_WEB_JAVA_JUNIT_TEST_SPEC",
    APPIUM_WEB_JAVA_TESTNG_TEST_SPEC = "APPIUM_WEB_JAVA_TESTNG_TEST_SPEC",
    APPIUM_WEB_PYTHON_TEST_SPEC = "APPIUM_WEB_PYTHON_TEST_SPEC",
    APPIUM_WEB_NODE_TEST_SPEC = "APPIUM_WEB_NODE_TEST_SPEC",
    APPIUM_WEB_RUBY_TEST_SPEC = "APPIUM_WEB_RUBY_TEST_SPEC",
    INSTRUMENTATION_TEST_SPEC = "INSTRUMENTATION_TEST_SPEC",
    XCTEST_UI_TEST_SPEC = "XCTEST_UI_TEST_SPEC",
}

M.CreateUploadInput = {
    type = "structure",
    id = "CreateUploadInput",
    members = {
        projectArn = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentType = {
            type = "string",
        },
    },
}

M.UploadCategory = {
    CURATED = "CURATED",
    PRIVATE = "PRIVATE",
}

M.UploadStatus = {
    INITIALIZED = "INITIALIZED",
    PROCESSING = "PROCESSING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.Upload = {
    type = "structure",
    id = "Upload",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        type = {
            type = "string",
        },
        status = {
            type = "string",
        },
        url = {
            type = "string",
        },
        metadata = {
            type = "string",
        },
        contentType = {
            type = "string",
        },
        message = {
            type = "string",
        },
        category = {
            type = "string",
        },
    },
}

M.CreateUploadOutput = {
    type = "structure",
    id = "CreateUploadOutput",
    members = {
        upload = M.Upload,
    },
}

M.CreateVPCEConfigurationInput = {
    type = "structure",
    id = "CreateVPCEConfigurationInput",
    members = {
        vpceConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpceServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceDnsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpceConfigurationDescription = {
            type = "string",
        },
    },
}

M.VPCEConfiguration = {
    type = "structure",
    id = "VPCEConfiguration",
    members = {
        arn = {
            type = "string",
        },
        vpceConfigurationName = {
            type = "string",
        },
        vpceServiceName = {
            type = "string",
        },
        serviceDnsName = {
            type = "string",
        },
        vpceConfigurationDescription = {
            type = "string",
        },
    },
}

M.CreateVPCEConfigurationOutput = {
    type = "structure",
    id = "CreateVPCEConfigurationOutput",
    members = {
        vpceConfiguration = M.VPCEConfiguration,
    },
}

M.CurrencyCode = {
    USD = "USD",
}

M.CustomerArtifactPaths = {
    type = "structure",
    id = "CustomerArtifactPaths",
    members = {
        iosPaths = {
            type = "list",
            member = { type = "string" },
        },
        androidPaths = {
            type = "list",
            member = { type = "string" },
        },
        deviceHostPaths = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeleteDevicePoolInput = {
    type = "structure",
    id = "DeleteDevicePoolInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDevicePoolOutput = {
    type = "structure",
    id = "DeleteDevicePoolOutput",
}

M.DeleteInstanceProfileInput = {
    type = "structure",
    id = "DeleteInstanceProfileInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInstanceProfileOutput = {
    type = "structure",
    id = "DeleteInstanceProfileOutput",
}

M.DeleteNetworkProfileInput = {
    type = "structure",
    id = "DeleteNetworkProfileInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNetworkProfileOutput = {
    type = "structure",
    id = "DeleteNetworkProfileOutput",
}

M.DeleteProjectInput = {
    type = "structure",
    id = "DeleteProjectInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProjectOutput = {
    type = "structure",
    id = "DeleteProjectOutput",
}

M.DeleteRemoteAccessSessionInput = {
    type = "structure",
    id = "DeleteRemoteAccessSessionInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRemoteAccessSessionOutput = {
    type = "structure",
    id = "DeleteRemoteAccessSessionOutput",
}

M.DeleteRunInput = {
    type = "structure",
    id = "DeleteRunInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRunOutput = {
    type = "structure",
    id = "DeleteRunOutput",
}

M.DeleteTestGridProjectInput = {
    type = "structure",
    id = "DeleteTestGridProjectInput",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTestGridProjectOutput = {
    type = "structure",
    id = "DeleteTestGridProjectOutput",
}

M.DeleteUploadInput = {
    type = "structure",
    id = "DeleteUploadInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUploadOutput = {
    type = "structure",
    id = "DeleteUploadOutput",
}

M.DeleteVPCEConfigurationInput = {
    type = "structure",
    id = "DeleteVPCEConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVPCEConfigurationOutput = {
    type = "structure",
    id = "DeleteVPCEConfigurationOutput",
}

M.InvalidOperationException = {
    type = "structure",
    id = "InvalidOperationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetAccountSettingsInput = {
    type = "structure",
    id = "GetAccountSettingsInput",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    id = "GetAccountSettingsOutput",
    members = {
        accountSettings = M.AccountSettings,
    },
}

M.GetDeviceInput = {
    type = "structure",
    id = "GetDeviceInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDeviceOutput = {
    type = "structure",
    id = "GetDeviceOutput",
    members = {
        device = M.Device,
    },
}

M.GetDeviceInstanceInput = {
    type = "structure",
    id = "GetDeviceInstanceInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDeviceInstanceOutput = {
    type = "structure",
    id = "GetDeviceInstanceOutput",
    members = {
        deviceInstance = M.DeviceInstance,
    },
}

M.GetDevicePoolInput = {
    type = "structure",
    id = "GetDevicePoolInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDevicePoolOutput = {
    type = "structure",
    id = "GetDevicePoolOutput",
    members = {
        devicePool = M.DevicePool,
    },
}

M.Location = {
    type = "structure",
    id = "Location",
    members = {
        latitude = {
            type = "double",
            traits = {
                required = true,
            },
        },
        longitude = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.Radios = {
    type = "structure",
    id = "Radios",
    members = {
        wifi = {
            type = "boolean",
        },
        bluetooth = {
            type = "boolean",
        },
        nfc = {
            type = "boolean",
        },
        gps = {
            type = "boolean",
        },
    },
}

M.ScheduleRunConfiguration = {
    type = "structure",
    id = "ScheduleRunConfiguration",
    members = {
        extraDataPackageArn = {
            type = "string",
        },
        networkProfileArn = {
            type = "string",
        },
        locale = {
            type = "string",
        },
        location = M.Location,
        vpceConfigurationArns = {
            type = "list",
            member = { type = "string" },
        },
        deviceProxy = M.DeviceProxy,
        customerArtifactPaths = M.CustomerArtifactPaths,
        radios = M.Radios,
        auxiliaryApps = {
            type = "list",
            member = { type = "string" },
        },
        billingMethod = {
            type = "string",
        },
        environmentVariables = {
            type = "list",
            member = M.EnvironmentVariable,
        },
        executionRoleArn = {
            type = "string",
        },
    },
}

M.TestType = {
    BUILTIN_FUZZ = "BUILTIN_FUZZ",
    APPIUM_JAVA_JUNIT = "APPIUM_JAVA_JUNIT",
    APPIUM_JAVA_TESTNG = "APPIUM_JAVA_TESTNG",
    APPIUM_PYTHON = "APPIUM_PYTHON",
    APPIUM_NODE = "APPIUM_NODE",
    APPIUM_RUBY = "APPIUM_RUBY",
    APPIUM_WEB_JAVA_JUNIT = "APPIUM_WEB_JAVA_JUNIT",
    APPIUM_WEB_JAVA_TESTNG = "APPIUM_WEB_JAVA_TESTNG",
    APPIUM_WEB_PYTHON = "APPIUM_WEB_PYTHON",
    APPIUM_WEB_NODE = "APPIUM_WEB_NODE",
    APPIUM_WEB_RUBY = "APPIUM_WEB_RUBY",
    INSTRUMENTATION = "INSTRUMENTATION",
    XCTEST = "XCTEST",
    XCTEST_UI = "XCTEST_UI",
}

M.ScheduleRunTest = {
    type = "structure",
    id = "ScheduleRunTest",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        testPackageArn = {
            type = "string",
        },
        testSpecArn = {
            type = "string",
        },
        filter = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDevicePoolCompatibilityInput = {
    type = "structure",
    id = "GetDevicePoolCompatibilityInput",
    members = {
        devicePoolArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appArn = {
            type = "string",
        },
        testType = {
            type = "string",
        },
        test = M.ScheduleRunTest,
        configuration = M.ScheduleRunConfiguration,
        projectArn = {
            type = "string",
        },
    },
}

M.IncompatibilityMessage = {
    type = "structure",
    id = "IncompatibilityMessage",
    members = {
        message = {
            type = "string",
        },
        type = {
            type = "string",
        },
    },
}

M.DevicePoolCompatibilityResult = {
    type = "structure",
    id = "DevicePoolCompatibilityResult",
    members = {
        device = M.Device,
        compatible = {
            type = "boolean",
        },
        incompatibilityMessages = {
            type = "list",
            member = M.IncompatibilityMessage,
        },
    },
}

M.GetDevicePoolCompatibilityOutput = {
    type = "structure",
    id = "GetDevicePoolCompatibilityOutput",
    members = {
        compatibleDevices = {
            type = "list",
            member = M.DevicePoolCompatibilityResult,
        },
        incompatibleDevices = {
            type = "list",
            member = M.DevicePoolCompatibilityResult,
        },
    },
}

M.GetInstanceProfileInput = {
    type = "structure",
    id = "GetInstanceProfileInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetInstanceProfileOutput = {
    type = "structure",
    id = "GetInstanceProfileOutput",
    members = {
        instanceProfile = M.InstanceProfile,
    },
}

M.GetJobInput = {
    type = "structure",
    id = "GetJobInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Job = {
    type = "structure",
    id = "Job",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        result = {
            type = "string",
        },
        started = {
            type = "timestamp",
        },
        stopped = {
            type = "timestamp",
        },
        counters = M.Counters,
        message = {
            type = "string",
        },
        device = M.Device,
        instanceArn = {
            type = "string",
        },
        deviceMinutes = M.DeviceMinutes,
        videoEndpoint = {
            type = "string",
        },
        videoCapture = {
            type = "boolean",
        },
    },
}

M.GetJobOutput = {
    type = "structure",
    id = "GetJobOutput",
    members = {
        job = M.Job,
    },
}

M.GetNetworkProfileInput = {
    type = "structure",
    id = "GetNetworkProfileInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetNetworkProfileOutput = {
    type = "structure",
    id = "GetNetworkProfileOutput",
    members = {
        networkProfile = M.NetworkProfile,
    },
}

M.GetOfferingStatusInput = {
    type = "structure",
    id = "GetOfferingStatusInput",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.MonetaryAmount = {
    type = "structure",
    id = "MonetaryAmount",
    members = {
        amount = {
            type = "double",
        },
        currencyCode = {
            type = "string",
        },
    },
}

M.RecurringChargeFrequency = {
    MONTHLY = "MONTHLY",
}

M.RecurringCharge = {
    type = "structure",
    id = "RecurringCharge",
    members = {
        cost = M.MonetaryAmount,
        frequency = {
            type = "string",
        },
    },
}

M.OfferingType = {
    RECURRING = "RECURRING",
}

M.Offering = {
    type = "structure",
    id = "Offering",
    members = {
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        recurringCharges = {
            type = "list",
            member = M.RecurringCharge,
        },
    },
}

M.OfferingTransactionType = {
    PURCHASE = "PURCHASE",
    RENEW = "RENEW",
    SYSTEM = "SYSTEM",
}

M.OfferingStatus = {
    type = "structure",
    id = "OfferingStatus",
    members = {
        type = {
            type = "string",
        },
        offering = M.Offering,
        quantity = {
            type = "integer",
        },
        effectiveOn = {
            type = "timestamp",
        },
    },
}

M.GetOfferingStatusOutput = {
    type = "structure",
    id = "GetOfferingStatusOutput",
    members = {
        current = {
            type = "map",
            key = { type = "string" },
            value = M.OfferingStatus,
        },
        nextPeriod = {
            type = "map",
            key = { type = "string" },
            value = M.OfferingStatus,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NotEligibleException = {
    type = "structure",
    id = "NotEligibleException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetProjectInput = {
    type = "structure",
    id = "GetProjectInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetProjectOutput = {
    type = "structure",
    id = "GetProjectOutput",
    members = {
        project = M.Project,
    },
}

M.GetRemoteAccessSessionInput = {
    type = "structure",
    id = "GetRemoteAccessSessionInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRemoteAccessSessionOutput = {
    type = "structure",
    id = "GetRemoteAccessSessionOutput",
    members = {
        remoteAccessSession = M.RemoteAccessSession,
    },
}

M.GetRunInput = {
    type = "structure",
    id = "GetRunInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceFilterAttribute = {
    ARN = "ARN",
    PLATFORM = "PLATFORM",
    OS_VERSION = "OS_VERSION",
    MODEL = "MODEL",
    AVAILABILITY = "AVAILABILITY",
    FORM_FACTOR = "FORM_FACTOR",
    MANUFACTURER = "MANUFACTURER",
    REMOTE_ACCESS_ENABLED = "REMOTE_ACCESS_ENABLED",
    REMOTE_DEBUG_ENABLED = "REMOTE_DEBUG_ENABLED",
    INSTANCE_ARN = "INSTANCE_ARN",
    INSTANCE_LABELS = "INSTANCE_LABELS",
    FLEET_TYPE = "FLEET_TYPE",
}

M.DeviceFilter = {
    type = "structure",
    id = "DeviceFilter",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceSelectionResult = {
    type = "structure",
    id = "DeviceSelectionResult",
    members = {
        filters = {
            type = "list",
            member = M.DeviceFilter,
        },
        matchedDevicesCount = {
            type = "integer",
        },
        maxDevices = {
            type = "integer",
        },
    },
}

M.ExecutionResultCode = {
    PARSING_FAILED = "PARSING_FAILED",
    VPC_ENDPOINT_SETUP_FAILED = "VPC_ENDPOINT_SETUP_FAILED",
}

M.Run = {
    type = "structure",
    id = "Run",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        platform = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        result = {
            type = "string",
        },
        started = {
            type = "timestamp",
        },
        stopped = {
            type = "timestamp",
        },
        counters = M.Counters,
        message = {
            type = "string",
        },
        totalJobs = {
            type = "integer",
        },
        completedJobs = {
            type = "integer",
        },
        billingMethod = {
            type = "string",
        },
        deviceMinutes = M.DeviceMinutes,
        networkProfile = M.NetworkProfile,
        deviceProxy = M.DeviceProxy,
        parsingResultUrl = {
            type = "string",
        },
        resultCode = {
            type = "string",
        },
        seed = {
            type = "integer",
        },
        appUpload = {
            type = "string",
        },
        eventCount = {
            type = "integer",
        },
        jobTimeoutMinutes = {
            type = "integer",
        },
        devicePoolArn = {
            type = "string",
        },
        locale = {
            type = "string",
        },
        radios = M.Radios,
        location = M.Location,
        customerArtifactPaths = M.CustomerArtifactPaths,
        webUrl = {
            type = "string",
        },
        skipAppResign = {
            type = "boolean",
        },
        testSpecArn = {
            type = "string",
        },
        deviceSelectionResult = M.DeviceSelectionResult,
        vpcConfig = M.VpcConfig,
        executionRoleArn = {
            type = "string",
        },
        environmentVariables = {
            type = "list",
            member = M.EnvironmentVariable,
        },
    },
}

M.GetRunOutput = {
    type = "structure",
    id = "GetRunOutput",
    members = {
        run = M.Run,
    },
}

M.GetSuiteInput = {
    type = "structure",
    id = "GetSuiteInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Suite = {
    type = "structure",
    id = "Suite",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        result = {
            type = "string",
        },
        started = {
            type = "timestamp",
        },
        stopped = {
            type = "timestamp",
        },
        counters = M.Counters,
        message = {
            type = "string",
        },
        deviceMinutes = M.DeviceMinutes,
    },
}

M.GetSuiteOutput = {
    type = "structure",
    id = "GetSuiteOutput",
    members = {
        suite = M.Suite,
    },
}

M.GetTestInput = {
    type = "structure",
    id = "GetTestInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Test = {
    type = "structure",
    id = "Test",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        type = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        result = {
            type = "string",
        },
        started = {
            type = "timestamp",
        },
        stopped = {
            type = "timestamp",
        },
        counters = M.Counters,
        message = {
            type = "string",
        },
        deviceMinutes = M.DeviceMinutes,
    },
}

M.GetTestOutput = {
    type = "structure",
    id = "GetTestOutput",
    members = {
        test = M.Test,
    },
}

M.GetTestGridProjectInput = {
    type = "structure",
    id = "GetTestGridProjectInput",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTestGridProjectOutput = {
    type = "structure",
    id = "GetTestGridProjectOutput",
    members = {
        testGridProject = M.TestGridProject,
    },
}

M.GetTestGridSessionInput = {
    type = "structure",
    id = "GetTestGridSessionInput",
    members = {
        projectArn = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
        sessionArn = {
            type = "string",
        },
    },
}

M.TestGridSessionStatus = {
    ACTIVE = "ACTIVE",
    CLOSED = "CLOSED",
    ERRORED = "ERRORED",
}

M.TestGridSession = {
    type = "structure",
    id = "TestGridSession",
    members = {
        arn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        created = {
            type = "timestamp",
        },
        ended = {
            type = "timestamp",
        },
        billingMinutes = {
            type = "double",
        },
        seleniumProperties = {
            type = "string",
        },
    },
}

M.GetTestGridSessionOutput = {
    type = "structure",
    id = "GetTestGridSessionOutput",
    members = {
        testGridSession = M.TestGridSession,
    },
}

M.GetUploadInput = {
    type = "structure",
    id = "GetUploadInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetUploadOutput = {
    type = "structure",
    id = "GetUploadOutput",
    members = {
        upload = M.Upload,
    },
}

M.GetVPCEConfigurationInput = {
    type = "structure",
    id = "GetVPCEConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetVPCEConfigurationOutput = {
    type = "structure",
    id = "GetVPCEConfigurationOutput",
    members = {
        vpceConfiguration = M.VPCEConfiguration,
    },
}

M.InstallToRemoteAccessSessionInput = {
    type = "structure",
    id = "InstallToRemoteAccessSessionInput",
    members = {
        remoteAccessSessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InstallToRemoteAccessSessionOutput = {
    type = "structure",
    id = "InstallToRemoteAccessSessionOutput",
    members = {
        appUpload = M.Upload,
    },
}

M.ListArtifactsInput = {
    type = "structure",
    id = "ListArtifactsInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListArtifactsOutput = {
    type = "structure",
    id = "ListArtifactsOutput",
    members = {
        artifacts = {
            type = "list",
            member = M.Artifact,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeviceInstancesInput = {
    type = "structure",
    id = "ListDeviceInstancesInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeviceInstancesOutput = {
    type = "structure",
    id = "ListDeviceInstancesOutput",
    members = {
        deviceInstances = {
            type = "list",
            member = M.DeviceInstance,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDevicePoolsInput = {
    type = "structure",
    id = "ListDevicePoolsInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDevicePoolsOutput = {
    type = "structure",
    id = "ListDevicePoolsOutput",
    members = {
        devicePools = {
            type = "list",
            member = M.DevicePool,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDevicesInput = {
    type = "structure",
    id = "ListDevicesInput",
    members = {
        arn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.DeviceFilter,
        },
    },
}

M.ListDevicesOutput = {
    type = "structure",
    id = "ListDevicesOutput",
    members = {
        devices = {
            type = "list",
            member = M.Device,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListInstanceProfilesInput = {
    type = "structure",
    id = "ListInstanceProfilesInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListInstanceProfilesOutput = {
    type = "structure",
    id = "ListInstanceProfilesOutput",
    members = {
        instanceProfiles = {
            type = "list",
            member = M.InstanceProfile,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    id = "ListJobsInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    id = "ListJobsOutput",
    members = {
        jobs = {
            type = "list",
            member = M.Job,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkProfilesInput = {
    type = "structure",
    id = "ListNetworkProfilesInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkProfilesOutput = {
    type = "structure",
    id = "ListNetworkProfilesOutput",
    members = {
        networkProfiles = {
            type = "list",
            member = M.NetworkProfile,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListOfferingPromotionsInput = {
    type = "structure",
    id = "ListOfferingPromotionsInput",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.OfferingPromotion = {
    type = "structure",
    id = "OfferingPromotion",
    members = {
        id = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ListOfferingPromotionsOutput = {
    type = "structure",
    id = "ListOfferingPromotionsOutput",
    members = {
        offeringPromotions = {
            type = "list",
            member = M.OfferingPromotion,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListOfferingsInput = {
    type = "structure",
    id = "ListOfferingsInput",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.ListOfferingsOutput = {
    type = "structure",
    id = "ListOfferingsOutput",
    members = {
        offerings = {
            type = "list",
            member = M.Offering,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListOfferingTransactionsInput = {
    type = "structure",
    id = "ListOfferingTransactionsInput",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.OfferingTransaction = {
    type = "structure",
    id = "OfferingTransaction",
    members = {
        offeringStatus = M.OfferingStatus,
        transactionId = {
            type = "string",
        },
        offeringPromotionId = {
            type = "string",
        },
        createdOn = {
            type = "timestamp",
        },
        cost = M.MonetaryAmount,
    },
}

M.ListOfferingTransactionsOutput = {
    type = "structure",
    id = "ListOfferingTransactionsOutput",
    members = {
        offeringTransactions = {
            type = "list",
            member = M.OfferingTransaction,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProjectsInput = {
    type = "structure",
    id = "ListProjectsInput",
    members = {
        arn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProjectsOutput = {
    type = "structure",
    id = "ListProjectsOutput",
    members = {
        projects = {
            type = "list",
            member = M.Project,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRemoteAccessSessionsInput = {
    type = "structure",
    id = "ListRemoteAccessSessionsInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRemoteAccessSessionsOutput = {
    type = "structure",
    id = "ListRemoteAccessSessionsOutput",
    members = {
        remoteAccessSessions = {
            type = "list",
            member = M.RemoteAccessSession,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRunsInput = {
    type = "structure",
    id = "ListRunsInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRunsOutput = {
    type = "structure",
    id = "ListRunsOutput",
    members = {
        runs = {
            type = "list",
            member = M.Run,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSamplesInput = {
    type = "structure",
    id = "ListSamplesInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SampleType = {
    CPU = "CPU",
    MEMORY = "MEMORY",
    THREADS = "THREADS",
    RX_RATE = "RX_RATE",
    TX_RATE = "TX_RATE",
    RX = "RX",
    TX = "TX",
    NATIVE_FRAMES = "NATIVE_FRAMES",
    NATIVE_FPS = "NATIVE_FPS",
    NATIVE_MIN_DRAWTIME = "NATIVE_MIN_DRAWTIME",
    NATIVE_AVG_DRAWTIME = "NATIVE_AVG_DRAWTIME",
    NATIVE_MAX_DRAWTIME = "NATIVE_MAX_DRAWTIME",
    OPENGL_FRAMES = "OPENGL_FRAMES",
    OPENGL_FPS = "OPENGL_FPS",
    OPENGL_MIN_DRAWTIME = "OPENGL_MIN_DRAWTIME",
    OPENGL_AVG_DRAWTIME = "OPENGL_AVG_DRAWTIME",
    OPENGL_MAX_DRAWTIME = "OPENGL_MAX_DRAWTIME",
}

M.Sample = {
    type = "structure",
    id = "Sample",
    members = {
        arn = {
            type = "string",
        },
        type = {
            type = "string",
        },
        url = {
            type = "string",
        },
    },
}

M.ListSamplesOutput = {
    type = "structure",
    id = "ListSamplesOutput",
    members = {
        samples = {
            type = "list",
            member = M.Sample,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSuitesInput = {
    type = "structure",
    id = "ListSuitesInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSuitesOutput = {
    type = "structure",
    id = "ListSuitesOutput",
    members = {
        suites = {
            type = "list",
            member = M.Suite,
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
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTestGridProjectsInput = {
    type = "structure",
    id = "ListTestGridProjectsInput",
    members = {
        maxResult = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestGridProjectsOutput = {
    type = "structure",
    id = "ListTestGridProjectsOutput",
    members = {
        testGridProjects = {
            type = "list",
            member = M.TestGridProject,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestGridSessionActionsInput = {
    type = "structure",
    id = "ListTestGridSessionActionsInput",
    members = {
        sessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResult = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TestGridSessionAction = {
    type = "structure",
    id = "TestGridSessionAction",
    members = {
        action = {
            type = "string",
        },
        started = {
            type = "timestamp",
        },
        duration = {
            type = "long",
        },
        statusCode = {
            type = "string",
        },
        requestMethod = {
            type = "string",
        },
    },
}

M.ListTestGridSessionActionsOutput = {
    type = "structure",
    id = "ListTestGridSessionActionsOutput",
    members = {
        actions = {
            type = "list",
            member = M.TestGridSessionAction,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TestGridSessionArtifactCategory = {
    VIDEO = "VIDEO",
    LOG = "LOG",
}

M.ListTestGridSessionArtifactsInput = {
    type = "structure",
    id = "ListTestGridSessionArtifactsInput",
    members = {
        sessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
        maxResult = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TestGridSessionArtifactType = {
    UNKNOWN = "UNKNOWN",
    VIDEO = "VIDEO",
    SELENIUM_LOG = "SELENIUM_LOG",
}

M.TestGridSessionArtifact = {
    type = "structure",
    id = "TestGridSessionArtifact",
    members = {
        filename = {
            type = "string",
        },
        type = {
            type = "string",
        },
        url = {
            type = "string",
        },
    },
}

M.ListTestGridSessionArtifactsOutput = {
    type = "structure",
    id = "ListTestGridSessionArtifactsOutput",
    members = {
        artifacts = {
            type = "list",
            member = M.TestGridSessionArtifact,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestGridSessionsInput = {
    type = "structure",
    id = "ListTestGridSessionsInput",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
        },
        creationTimeAfter = {
            type = "timestamp",
        },
        creationTimeBefore = {
            type = "timestamp",
        },
        endTimeAfter = {
            type = "timestamp",
        },
        endTimeBefore = {
            type = "timestamp",
        },
        maxResult = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestGridSessionsOutput = {
    type = "structure",
    id = "ListTestGridSessionsOutput",
    members = {
        testGridSessions = {
            type = "list",
            member = M.TestGridSession,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestsInput = {
    type = "structure",
    id = "ListTestsInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestsOutput = {
    type = "structure",
    id = "ListTestsOutput",
    members = {
        tests = {
            type = "list",
            member = M.Test,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListUniqueProblemsInput = {
    type = "structure",
    id = "ListUniqueProblemsInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ProblemDetail = {
    type = "structure",
    id = "ProblemDetail",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.Problem = {
    type = "structure",
    id = "Problem",
    members = {
        run = M.ProblemDetail,
        job = M.ProblemDetail,
        suite = M.ProblemDetail,
        test = M.ProblemDetail,
        device = M.Device,
        result = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.UniqueProblem = {
    type = "structure",
    id = "UniqueProblem",
    members = {
        message = {
            type = "string",
        },
        problems = {
            type = "list",
            member = M.Problem,
        },
    },
}

M.ListUniqueProblemsOutput = {
    type = "structure",
    id = "ListUniqueProblemsOutput",
    members = {
        uniqueProblems = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListUploadsInput = {
    type = "structure",
    id = "ListUploadsInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListUploadsOutput = {
    type = "structure",
    id = "ListUploadsOutput",
    members = {
        uploads = {
            type = "list",
            member = M.Upload,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListVPCEConfigurationsInput = {
    type = "structure",
    id = "ListVPCEConfigurationsInput",
    members = {
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListVPCEConfigurationsOutput = {
    type = "structure",
    id = "ListVPCEConfigurationsOutput",
    members = {
        vpceConfigurations = {
            type = "list",
            member = M.VPCEConfiguration,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PurchaseOfferingInput = {
    type = "structure",
    id = "PurchaseOfferingInput",
    members = {
        offeringId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        offeringPromotionId = {
            type = "string",
        },
    },
}

M.PurchaseOfferingOutput = {
    type = "structure",
    id = "PurchaseOfferingOutput",
    members = {
        offeringTransaction = M.OfferingTransaction,
    },
}

M.RenewOfferingInput = {
    type = "structure",
    id = "RenewOfferingInput",
    members = {
        offeringId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.RenewOfferingOutput = {
    type = "structure",
    id = "RenewOfferingOutput",
    members = {
        offeringTransaction = M.OfferingTransaction,
    },
}

M.IdempotencyException = {
    type = "structure",
    id = "IdempotencyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeviceSelectionConfiguration = {
    type = "structure",
    id = "DeviceSelectionConfiguration",
    members = {
        filters = {
            type = "list",
            member = M.DeviceFilter,
            traits = {
                required = true,
            },
        },
        maxDevices = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionConfiguration = {
    type = "structure",
    id = "ExecutionConfiguration",
    members = {
        jobTimeoutMinutes = {
            type = "integer",
        },
        accountsCleanup = {
            type = "boolean",
        },
        appPackagesCleanup = {
            type = "boolean",
        },
        videoCapture = {
            type = "boolean",
        },
        skipAppResign = {
            type = "boolean",
        },
    },
}

M.ScheduleRunInput = {
    type = "structure",
    id = "ScheduleRunInput",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        appArn = {
            type = "string",
        },
        devicePoolArn = {
            type = "string",
        },
        deviceSelectionConfiguration = M.DeviceSelectionConfiguration,
        name = {
            type = "string",
        },
        test = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScheduleRunTest }),
        configuration = M.ScheduleRunConfiguration,
        executionConfiguration = M.ExecutionConfiguration,
    },
}

M.ScheduleRunOutput = {
    type = "structure",
    id = "ScheduleRunOutput",
    members = {
        run = M.Run,
    },
}

M.StopJobInput = {
    type = "structure",
    id = "StopJobInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopJobOutput = {
    type = "structure",
    id = "StopJobOutput",
    members = {
        job = M.Job,
    },
}

M.StopRemoteAccessSessionInput = {
    type = "structure",
    id = "StopRemoteAccessSessionInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopRemoteAccessSessionOutput = {
    type = "structure",
    id = "StopRemoteAccessSessionOutput",
    members = {
        remoteAccessSession = M.RemoteAccessSession,
    },
}

M.StopRunInput = {
    type = "structure",
    id = "StopRunInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StopRunOutput = {
    type = "structure",
    id = "StopRunOutput",
    members = {
        run = M.Run,
    },
}

M.TagPolicyException = {
    type = "structure",
    id = "TagPolicyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
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
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateDeviceInstanceInput = {
    type = "structure",
    id = "UpdateDeviceInstanceInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        profileArn = {
            type = "string",
        },
        labels = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateDeviceInstanceOutput = {
    type = "structure",
    id = "UpdateDeviceInstanceOutput",
    members = {
        deviceInstance = M.DeviceInstance,
    },
}

M.UpdateDevicePoolInput = {
    type = "structure",
    id = "UpdateDevicePoolInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        rules = {
            type = "list",
            member = M.Rule,
        },
        maxDevices = {
            type = "integer",
        },
        clearMaxDevices = {
            type = "boolean",
        },
    },
}

M.UpdateDevicePoolOutput = {
    type = "structure",
    id = "UpdateDevicePoolOutput",
    members = {
        devicePool = M.DevicePool,
    },
}

M.UpdateInstanceProfileInput = {
    type = "structure",
    id = "UpdateInstanceProfileInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        packageCleanup = {
            type = "boolean",
        },
        excludeAppPackagesFromCleanup = {
            type = "list",
            member = { type = "string" },
        },
        rebootAfterUse = {
            type = "boolean",
        },
    },
}

M.UpdateInstanceProfileOutput = {
    type = "structure",
    id = "UpdateInstanceProfileOutput",
    members = {
        instanceProfile = M.InstanceProfile,
    },
}

M.UpdateNetworkProfileInput = {
    type = "structure",
    id = "UpdateNetworkProfileInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
        },
        uplinkBandwidthBits = {
            type = "long",
        },
        downlinkBandwidthBits = {
            type = "long",
        },
        uplinkDelayMs = {
            type = "long",
        },
        downlinkDelayMs = {
            type = "long",
        },
        uplinkJitterMs = {
            type = "long",
        },
        downlinkJitterMs = {
            type = "long",
        },
        uplinkLossPercent = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        downlinkLossPercent = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.UpdateNetworkProfileOutput = {
    type = "structure",
    id = "UpdateNetworkProfileOutput",
    members = {
        networkProfile = M.NetworkProfile,
    },
}

M.UpdateProjectInput = {
    type = "structure",
    id = "UpdateProjectInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        defaultJobTimeoutMinutes = {
            type = "integer",
        },
        vpcConfig = M.VpcConfig,
        environmentVariables = {
            type = "list",
            member = M.EnvironmentVariable,
        },
        executionRoleArn = {
            type = "string",
        },
    },
}

M.UpdateProjectOutput = {
    type = "structure",
    id = "UpdateProjectOutput",
    members = {
        project = M.Project,
    },
}

M.UpdateTestGridProjectInput = {
    type = "structure",
    id = "UpdateTestGridProjectInput",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        vpcConfig = M.TestGridVpcConfig,
    },
}

M.UpdateTestGridProjectOutput = {
    type = "structure",
    id = "UpdateTestGridProjectOutput",
    members = {
        testGridProject = M.TestGridProject,
    },
}

M.UpdateUploadInput = {
    type = "structure",
    id = "UpdateUploadInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        contentType = {
            type = "string",
        },
        editContent = {
            type = "boolean",
        },
    },
}

M.UpdateUploadOutput = {
    type = "structure",
    id = "UpdateUploadOutput",
    members = {
        upload = M.Upload,
    },
}

M.UpdateVPCEConfigurationInput = {
    type = "structure",
    id = "UpdateVPCEConfigurationInput",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpceConfigurationName = {
            type = "string",
        },
        vpceServiceName = {
            type = "string",
        },
        serviceDnsName = {
            type = "string",
        },
        vpceConfigurationDescription = {
            type = "string",
        },
    },
}

M.UpdateVPCEConfigurationOutput = {
    type = "structure",
    id = "UpdateVPCEConfigurationOutput",
    members = {
        vpceConfiguration = M.VPCEConfiguration,
    },
}

return M
