local M = {}

M.TrialMinutes = {
    type = "structure",
    members = {
        total = {
            type = "number",
        },
        remaining = {
            type = "number",
        },
    },
}

M.DevicePlatform = {
    ANDROID = "ANDROID",
    IOS = "IOS",
}

M.AccountSettings = {
    type = "structure",
    members = {
        awsAccountNumber = {
            type = "string",
        },
        unmeteredDevices = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        unmeteredRemoteAccessDevices = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        maxJobTimeoutMinutes = {
            type = "number",
        },
        trialMinutes = {
            type = "structure",
        },
        maxSlots = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        defaultJobTimeoutMinutes = {
            type = "number",
        },
        skipAppResign = {
            type = "boolean",
        },
    },
}

M.ArgumentException = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Counters = {
    type = "structure",
    members = {
        total = {
            type = "number",
        },
        passed = {
            type = "number",
        },
        failed = {
            type = "number",
        },
        warned = {
            type = "number",
        },
        errored = {
            type = "number",
        },
        stopped = {
            type = "number",
        },
        skipped = {
            type = "number",
        },
    },
}

M.CPU = {
    type = "structure",
    members = {
        frequency = {
            type = "string",
        },
        architecture = {
            type = "string",
        },
        clock = {
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        maxDevices = {
            type = "number",
        },
    },
}

M.DevicePoolType = {
    CURATED = "CURATED",
    PRIVATE = "PRIVATE",
}

M.DevicePool = {
    type = "structure",
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
            member_type = "structure",
        },
        maxDevices = {
            type = "number",
        },
    },
}

M.CreateDevicePoolOutput = {
    type = "structure",
    members = {
        devicePool = {
            type = "structure",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
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

M.ServiceAccountException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateInstanceProfileInput = {
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
        packageCleanup = {
            type = "boolean",
        },
        excludeAppPackagesFromCleanup = {
            type = "list",
            member_type = "string",
        },
        rebootAfterUse = {
            type = "boolean",
        },
    },
}

M.InstanceProfile = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        packageCleanup = {
            type = "boolean",
        },
        excludeAppPackagesFromCleanup = {
            type = "list",
            member_type = "string",
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
    members = {
        instanceProfile = {
            type = "structure",
        },
    },
}

M.NetworkProfileType = {
    CURATED = "CURATED",
    PRIVATE = "PRIVATE",
}

M.CreateNetworkProfileInput = {
    type = "structure",
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
            type = "number",
        },
        downlinkBandwidthBits = {
            type = "number",
        },
        uplinkDelayMs = {
            type = "number",
        },
        downlinkDelayMs = {
            type = "number",
        },
        uplinkJitterMs = {
            type = "number",
        },
        downlinkJitterMs = {
            type = "number",
        },
        uplinkLossPercent = {
            type = "number",
        },
        downlinkLossPercent = {
            type = "number",
        },
    },
}

M.NetworkProfile = {
    type = "structure",
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
            type = "number",
        },
        downlinkBandwidthBits = {
            type = "number",
        },
        uplinkDelayMs = {
            type = "number",
        },
        downlinkDelayMs = {
            type = "number",
        },
        uplinkJitterMs = {
            type = "number",
        },
        downlinkJitterMs = {
            type = "number",
        },
        uplinkLossPercent = {
            type = "number",
        },
        downlinkLossPercent = {
            type = "number",
        },
    },
}

M.CreateNetworkProfileOutput = {
    type = "structure",
    members = {
        networkProfile = {
            type = "structure",
        },
    },
}

M.EnvironmentVariable = {
    type = "structure",
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
    members = {
        securityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
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
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultJobTimeoutMinutes = {
            type = "number",
        },
        vpcConfig = {
            type = "structure",
        },
        environmentVariables = {
            type = "list",
            member_type = "structure",
        },
        executionRoleArn = {
            type = "string",
        },
    },
}

M.Project = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        defaultJobTimeoutMinutes = {
            type = "number",
        },
        created = {
            type = "timestamp",
        },
        vpcConfig = {
            type = "structure",
        },
        environmentVariables = {
            type = "list",
            member_type = "structure",
        },
        executionRoleArn = {
            type = "string",
        },
    },
}

M.CreateProjectOutput = {
    type = "structure",
    members = {
        project = {
            type = "structure",
        },
    },
}

M.TagOperationException = {
    type = "structure",
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
    members = {
        host = {
            type = "string",
            traits = {
                required = true,
            },
        },
        port = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRemoteAccessSessionConfiguration = {
    type = "structure",
    members = {
        auxiliaryApps = {
            type = "list",
            member_type = "string",
        },
        billingMethod = {
            type = "string",
        },
        vpceConfigurationArns = {
            type = "list",
            member_type = "string",
        },
        deviceProxy = {
            type = "structure",
        },
    },
}

M.InteractionMode = {
    INTERACTIVE = "INTERACTIVE",
    NO_VIDEO = "NO_VIDEO",
    VIDEO_ONLY = "VIDEO_ONLY",
}

M.CreateRemoteAccessSessionInput = {
    type = "structure",
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
        configuration = {
            type = "structure",
        },
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
    members = {
        arn = {
            type = "string",
        },
        deviceArn = {
            type = "string",
        },
        labels = {
            type = "list",
            member_type = "string",
        },
        status = {
            type = "string",
        },
        udid = {
            type = "string",
        },
        instanceProfile = {
            type = "structure",
        },
    },
}

M.Resolution = {
    type = "structure",
    members = {
        width = {
            type = "number",
        },
        height = {
            type = "number",
        },
    },
}

M.Device = {
    type = "structure",
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
        cpu = {
            type = "structure",
        },
        resolution = {
            type = "structure",
        },
        heapSize = {
            type = "number",
        },
        memory = {
            type = "number",
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
            member_type = "structure",
        },
        availability = {
            type = "string",
        },
    },
}

M.DeviceMinutes = {
    type = "structure",
    members = {
        total = {
            type = "number",
        },
        metered = {
            type = "number",
        },
        unmetered = {
            type = "number",
        },
    },
}

M.RemoteAccessEndpoints = {
    type = "structure",
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
        device = {
            type = "structure",
        },
        instanceArn = {
            type = "string",
        },
        billingMethod = {
            type = "string",
        },
        deviceMinutes = {
            type = "structure",
        },
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
        vpcConfig = {
            type = "structure",
        },
        deviceProxy = {
            type = "structure",
        },
        appUpload = {
            type = "string",
        },
        endpoints = {
            type = "structure",
        },
    },
}

M.CreateRemoteAccessSessionOutput = {
    type = "structure",
    members = {
        remoteAccessSession = {
            type = "structure",
        },
    },
}

M.TestGridVpcConfig = {
    type = "structure",
    members = {
        securityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
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
        vpcConfig = {
            type = "structure",
        },
    },
}

M.TestGridProject = {
    type = "structure",
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
        vpcConfig = {
            type = "structure",
        },
        created = {
            type = "timestamp",
        },
    },
}

M.CreateTestGridProjectOutput = {
    type = "structure",
    members = {
        testGridProject = {
            type = "structure",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateTestGridUrlInput = {
    type = "structure",
    members = {
        projectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiresInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTestGridUrlOutput = {
    type = "structure",
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
    members = {
        upload = {
            type = "structure",
        },
    },
}

M.CreateVPCEConfigurationInput = {
    type = "structure",
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
    members = {
        vpceConfiguration = {
            type = "structure",
        },
    },
}

M.CurrencyCode = {
    USD = "USD",
}

M.CustomerArtifactPaths = {
    type = "structure",
    members = {
        iosPaths = {
            type = "list",
            member_type = "string",
        },
        androidPaths = {
            type = "list",
            member_type = "string",
        },
        deviceHostPaths = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DeleteDevicePoolInput = {
    type = "structure",
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
}

M.DeleteInstanceProfileInput = {
    type = "structure",
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
}

M.DeleteNetworkProfileInput = {
    type = "structure",
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
}

M.DeleteProjectInput = {
    type = "structure",
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
}

M.DeleteRemoteAccessSessionInput = {
    type = "structure",
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
}

M.DeleteRunInput = {
    type = "structure",
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
}

M.DeleteTestGridProjectInput = {
    type = "structure",
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
}

M.DeleteUploadInput = {
    type = "structure",
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
}

M.DeleteVPCEConfigurationInput = {
    type = "structure",
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
}

M.InvalidOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetAccountSettingsInput = {
    type = "structure",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    members = {
        accountSettings = {
            type = "structure",
        },
    },
}

M.GetDeviceInput = {
    type = "structure",
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
    members = {
        device = {
            type = "structure",
        },
    },
}

M.GetDeviceInstanceInput = {
    type = "structure",
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
    members = {
        deviceInstance = {
            type = "structure",
        },
    },
}

M.GetDevicePoolInput = {
    type = "structure",
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
    members = {
        devicePool = {
            type = "structure",
        },
    },
}

M.Location = {
    type = "structure",
    members = {
        latitude = {
            type = "number",
            traits = {
                required = true,
            },
        },
        longitude = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.Radios = {
    type = "structure",
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
        location = {
            type = "structure",
        },
        vpceConfigurationArns = {
            type = "list",
            member_type = "string",
        },
        deviceProxy = {
            type = "structure",
        },
        customerArtifactPaths = {
            type = "structure",
        },
        radios = {
            type = "structure",
        },
        auxiliaryApps = {
            type = "list",
            member_type = "string",
        },
        billingMethod = {
            type = "string",
        },
        environmentVariables = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetDevicePoolCompatibilityInput = {
    type = "structure",
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
        test = {
            type = "structure",
        },
        configuration = {
            type = "structure",
        },
        projectArn = {
            type = "string",
        },
    },
}

M.IncompatibilityMessage = {
    type = "structure",
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
    members = {
        device = {
            type = "structure",
        },
        compatible = {
            type = "boolean",
        },
        incompatibilityMessages = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetDevicePoolCompatibilityOutput = {
    type = "structure",
    members = {
        compatibleDevices = {
            type = "list",
            member_type = "structure",
        },
        incompatibleDevices = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetInstanceProfileInput = {
    type = "structure",
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
    members = {
        instanceProfile = {
            type = "structure",
        },
    },
}

M.GetJobInput = {
    type = "structure",
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
        counters = {
            type = "structure",
        },
        message = {
            type = "string",
        },
        device = {
            type = "structure",
        },
        instanceArn = {
            type = "string",
        },
        deviceMinutes = {
            type = "structure",
        },
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
    members = {
        job = {
            type = "structure",
        },
    },
}

M.GetNetworkProfileInput = {
    type = "structure",
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
    members = {
        networkProfile = {
            type = "structure",
        },
    },
}

M.GetOfferingStatusInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.MonetaryAmount = {
    type = "structure",
    members = {
        amount = {
            type = "number",
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
    members = {
        cost = {
            type = "structure",
        },
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
            member_type = "structure",
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
    members = {
        type = {
            type = "string",
        },
        offering = {
            type = "structure",
        },
        quantity = {
            type = "number",
        },
        effectiveOn = {
            type = "timestamp",
        },
    },
}

M.GetOfferingStatusOutput = {
    type = "structure",
    members = {
        current = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        nextPeriod = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.NotEligibleException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetProjectInput = {
    type = "structure",
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
    members = {
        project = {
            type = "structure",
        },
    },
}

M.GetRemoteAccessSessionInput = {
    type = "structure",
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
    members = {
        remoteAccessSession = {
            type = "structure",
        },
    },
}

M.GetRunInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceSelectionResult = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        matchedDevicesCount = {
            type = "number",
        },
        maxDevices = {
            type = "number",
        },
    },
}

M.ExecutionResultCode = {
    PARSING_FAILED = "PARSING_FAILED",
    VPC_ENDPOINT_SETUP_FAILED = "VPC_ENDPOINT_SETUP_FAILED",
}

M.Run = {
    type = "structure",
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
        counters = {
            type = "structure",
        },
        message = {
            type = "string",
        },
        totalJobs = {
            type = "number",
        },
        completedJobs = {
            type = "number",
        },
        billingMethod = {
            type = "string",
        },
        deviceMinutes = {
            type = "structure",
        },
        networkProfile = {
            type = "structure",
        },
        deviceProxy = {
            type = "structure",
        },
        parsingResultUrl = {
            type = "string",
        },
        resultCode = {
            type = "string",
        },
        seed = {
            type = "number",
        },
        appUpload = {
            type = "string",
        },
        eventCount = {
            type = "number",
        },
        jobTimeoutMinutes = {
            type = "number",
        },
        devicePoolArn = {
            type = "string",
        },
        locale = {
            type = "string",
        },
        radios = {
            type = "structure",
        },
        location = {
            type = "structure",
        },
        customerArtifactPaths = {
            type = "structure",
        },
        webUrl = {
            type = "string",
        },
        skipAppResign = {
            type = "boolean",
        },
        testSpecArn = {
            type = "string",
        },
        deviceSelectionResult = {
            type = "structure",
        },
        vpcConfig = {
            type = "structure",
        },
        executionRoleArn = {
            type = "string",
        },
        environmentVariables = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetRunOutput = {
    type = "structure",
    members = {
        run = {
            type = "structure",
        },
    },
}

M.GetSuiteInput = {
    type = "structure",
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
        counters = {
            type = "structure",
        },
        message = {
            type = "string",
        },
        deviceMinutes = {
            type = "structure",
        },
    },
}

M.GetSuiteOutput = {
    type = "structure",
    members = {
        suite = {
            type = "structure",
        },
    },
}

M.GetTestInput = {
    type = "structure",
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
        counters = {
            type = "structure",
        },
        message = {
            type = "string",
        },
        deviceMinutes = {
            type = "structure",
        },
    },
}

M.GetTestOutput = {
    type = "structure",
    members = {
        test = {
            type = "structure",
        },
    },
}

M.GetTestGridProjectInput = {
    type = "structure",
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
    members = {
        testGridProject = {
            type = "structure",
        },
    },
}

M.GetTestGridSessionInput = {
    type = "structure",
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
            type = "number",
        },
        seleniumProperties = {
            type = "string",
        },
    },
}

M.GetTestGridSessionOutput = {
    type = "structure",
    members = {
        testGridSession = {
            type = "structure",
        },
    },
}

M.GetUploadInput = {
    type = "structure",
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
    members = {
        upload = {
            type = "structure",
        },
    },
}

M.GetVPCEConfigurationInput = {
    type = "structure",
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
    members = {
        vpceConfiguration = {
            type = "structure",
        },
    },
}

M.InstallToRemoteAccessSessionInput = {
    type = "structure",
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
    members = {
        appUpload = {
            type = "structure",
        },
    },
}

M.ListArtifactsInput = {
    type = "structure",
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
    members = {
        artifacts = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeviceInstancesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeviceInstancesOutput = {
    type = "structure",
    members = {
        deviceInstances = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDevicePoolsInput = {
    type = "structure",
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
    members = {
        devicePools = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDevicesInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDevicesOutput = {
    type = "structure",
    members = {
        devices = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListInstanceProfilesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListInstanceProfilesOutput = {
    type = "structure",
    members = {
        instanceProfiles = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
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
    members = {
        jobs = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListNetworkProfilesInput = {
    type = "structure",
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
    members = {
        networkProfiles = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListOfferingPromotionsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.OfferingPromotion = {
    type = "structure",
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
    members = {
        offeringPromotions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListOfferingsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.ListOfferingsOutput = {
    type = "structure",
    members = {
        offerings = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListOfferingTransactionsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.OfferingTransaction = {
    type = "structure",
    members = {
        offeringStatus = {
            type = "structure",
        },
        transactionId = {
            type = "string",
        },
        offeringPromotionId = {
            type = "string",
        },
        createdOn = {
            type = "timestamp",
        },
        cost = {
            type = "structure",
        },
    },
}

M.ListOfferingTransactionsOutput = {
    type = "structure",
    members = {
        offeringTransactions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProjectsInput = {
    type = "structure",
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
    members = {
        projects = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRemoteAccessSessionsInput = {
    type = "structure",
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
    members = {
        remoteAccessSessions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRunsInput = {
    type = "structure",
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
    members = {
        runs = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSamplesInput = {
    type = "structure",
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
    members = {
        samples = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSuitesInput = {
    type = "structure",
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
    members = {
        suites = {
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
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTestGridProjectsInput = {
    type = "structure",
    members = {
        maxResult = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestGridProjectsOutput = {
    type = "structure",
    members = {
        testGridProjects = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestGridSessionActionsInput = {
    type = "structure",
    members = {
        sessionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResult = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TestGridSessionAction = {
    type = "structure",
    members = {
        action = {
            type = "string",
        },
        started = {
            type = "timestamp",
        },
        duration = {
            type = "number",
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
    members = {
        actions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
    members = {
        artifacts = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestGridSessionsInput = {
    type = "structure",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestGridSessionsOutput = {
    type = "structure",
    members = {
        testGridSessions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestsInput = {
    type = "structure",
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
    members = {
        tests = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListUniqueProblemsInput = {
    type = "structure",
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
    members = {
        run = {
            type = "structure",
        },
        job = {
            type = "structure",
        },
        suite = {
            type = "structure",
        },
        test = {
            type = "structure",
        },
        device = {
            type = "structure",
        },
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
    members = {
        message = {
            type = "string",
        },
        problems = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListUniqueProblemsOutput = {
    type = "structure",
    members = {
        uniqueProblems = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListUploadsInput = {
    type = "structure",
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
    members = {
        uploads = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListVPCEConfigurationsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListVPCEConfigurationsOutput = {
    type = "structure",
    members = {
        vpceConfigurations = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PurchaseOfferingInput = {
    type = "structure",
    members = {
        offeringId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quantity = {
            type = "number",
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
    members = {
        offeringTransaction = {
            type = "structure",
        },
    },
}

M.RenewOfferingInput = {
    type = "structure",
    members = {
        offeringId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RenewOfferingOutput = {
    type = "structure",
    members = {
        offeringTransaction = {
            type = "structure",
        },
    },
}

M.IdempotencyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeviceSelectionConfiguration = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        maxDevices = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionConfiguration = {
    type = "structure",
    members = {
        jobTimeoutMinutes = {
            type = "number",
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
        deviceSelectionConfiguration = {
            type = "structure",
        },
        name = {
            type = "string",
        },
        test = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "structure",
        },
        executionConfiguration = {
            type = "structure",
        },
    },
}

M.ScheduleRunOutput = {
    type = "structure",
    members = {
        run = {
            type = "structure",
        },
    },
}

M.StopJobInput = {
    type = "structure",
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
    members = {
        job = {
            type = "structure",
        },
    },
}

M.StopRemoteAccessSessionInput = {
    type = "structure",
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
    members = {
        remoteAccessSession = {
            type = "structure",
        },
    },
}

M.StopRunInput = {
    type = "structure",
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
    members = {
        run = {
            type = "structure",
        },
    },
}

M.TagPolicyException = {
    type = "structure",
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
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.TooManyTagsException = {
    type = "structure",
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
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateDeviceInstanceInput = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.UpdateDeviceInstanceOutput = {
    type = "structure",
    members = {
        deviceInstance = {
            type = "structure",
        },
    },
}

M.UpdateDevicePoolInput = {
    type = "structure",
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
            member_type = "structure",
        },
        maxDevices = {
            type = "number",
        },
        clearMaxDevices = {
            type = "boolean",
        },
    },
}

M.UpdateDevicePoolOutput = {
    type = "structure",
    members = {
        devicePool = {
            type = "structure",
        },
    },
}

M.UpdateInstanceProfileInput = {
    type = "structure",
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
            member_type = "string",
        },
        rebootAfterUse = {
            type = "boolean",
        },
    },
}

M.UpdateInstanceProfileOutput = {
    type = "structure",
    members = {
        instanceProfile = {
            type = "structure",
        },
    },
}

M.UpdateNetworkProfileInput = {
    type = "structure",
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
            type = "number",
        },
        downlinkBandwidthBits = {
            type = "number",
        },
        uplinkDelayMs = {
            type = "number",
        },
        downlinkDelayMs = {
            type = "number",
        },
        uplinkJitterMs = {
            type = "number",
        },
        downlinkJitterMs = {
            type = "number",
        },
        uplinkLossPercent = {
            type = "number",
        },
        downlinkLossPercent = {
            type = "number",
        },
    },
}

M.UpdateNetworkProfileOutput = {
    type = "structure",
    members = {
        networkProfile = {
            type = "structure",
        },
    },
}

M.UpdateProjectInput = {
    type = "structure",
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
            type = "number",
        },
        vpcConfig = {
            type = "structure",
        },
        environmentVariables = {
            type = "list",
            member_type = "structure",
        },
        executionRoleArn = {
            type = "string",
        },
    },
}

M.UpdateProjectOutput = {
    type = "structure",
    members = {
        project = {
            type = "structure",
        },
    },
}

M.UpdateTestGridProjectInput = {
    type = "structure",
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
        vpcConfig = {
            type = "structure",
        },
    },
}

M.UpdateTestGridProjectOutput = {
    type = "structure",
    members = {
        testGridProject = {
            type = "structure",
        },
    },
}

M.UpdateUploadInput = {
    type = "structure",
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
    members = {
        upload = {
            type = "structure",
        },
    },
}

M.UpdateVPCEConfigurationInput = {
    type = "structure",
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
    members = {
        vpceConfiguration = {
            type = "structure",
        },
    },
}

return M
