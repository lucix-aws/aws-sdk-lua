local M = {}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AddTagsToOnPremisesInstancesInput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
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

M.AddTagsToOnPremisesInstancesOutput = {
    type = "structure",
}

M.InstanceLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InstanceNameRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InstanceNotRegisteredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidInstanceNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTagException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Alarm = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
    },
}

M.AlarmConfiguration = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ignorePollAlarmFailure = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        alarms = {
            type = "list",
            member = M.Alarm,
        },
    },
}

M.AlarmsLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplicationAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplicationDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ComputePlatform = {
    SERVER = "Server",
    LAMBDA = "Lambda",
    ECS = "ECS",
}

M.ApplicationInfo = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
        },
        applicationName = {
            type = "string",
        },
        createTime = {
            type = "timestamp",
        },
        linkedToGitHub = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        gitHubAccountName = {
            type = "string",
        },
        computePlatform = {
            type = "string",
        },
    },
}

M.ApplicationLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplicationNameRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplicationRevisionSortBy = {
    RegisterTime = "registerTime",
    FirstUsedTime = "firstUsedTime",
    LastUsedTime = "lastUsedTime",
}

M.AppSpecContent = {
    type = "structure",
    members = {
        content = {
            type = "string",
        },
        sha256 = {
            type = "string",
        },
    },
}

M.ArnNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AutoRollbackEvent = {
    DEPLOYMENT_FAILURE = "DEPLOYMENT_FAILURE",
    DEPLOYMENT_STOP_ON_ALARM = "DEPLOYMENT_STOP_ON_ALARM",
    DEPLOYMENT_STOP_ON_REQUEST = "DEPLOYMENT_STOP_ON_REQUEST",
}

M.AutoRollbackConfiguration = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        events = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AutoScalingGroup = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        hook = {
            type = "string",
        },
        terminationHook = {
            type = "string",
        },
    },
}

M.GitHubLocation = {
    type = "structure",
    members = {
        repository = {
            type = "string",
        },
        commitId = {
            type = "string",
        },
    },
}

M.RevisionLocationType = {
    S3 = "S3",
    GitHub = "GitHub",
    String = "String",
    AppSpecContent = "AppSpecContent",
}

M.BundleType = {
    Tar = "tar",
    TarGZip = "tgz",
    Zip = "zip",
    YAML = "YAML",
    JSON = "JSON",
}

M.S3Location = {
    type = "structure",
    members = {
        bucket = {
            type = "string",
        },
        key = {
            type = "string",
        },
        bundleType = {
            type = "string",
        },
        version = {
            type = "string",
        },
        eTag = {
            type = "string",
        },
    },
}

M.RawString = {
    type = "structure",
    members = {
        content = {
            type = "string",
        },
        sha256 = {
            type = "string",
        },
    },
}

M.RevisionLocation = {
    type = "structure",
    members = {
        revisionType = {
            type = "string",
        },
        s3Location = M.S3Location,
        gitHubLocation = M.GitHubLocation,
        string = M.RawString,
        appSpecContent = M.AppSpecContent,
    },
}

M.BatchGetApplicationRevisionsInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisions = {
            type = "list",
            member = M.RevisionLocation,
            traits = {
                required = true,
            },
        },
    },
}

M.GenericRevisionInfo = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        deploymentGroups = {
            type = "list",
            member = { type = "string" },
        },
        firstUsedTime = {
            type = "timestamp",
        },
        lastUsedTime = {
            type = "timestamp",
        },
        registerTime = {
            type = "timestamp",
        },
    },
}

M.RevisionInfo = {
    type = "structure",
    members = {
        revisionLocation = M.RevisionLocation,
        genericRevisionInfo = M.GenericRevisionInfo,
    },
}

M.BatchGetApplicationRevisionsOutput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        revisions = {
            type = "list",
            member = M.RevisionInfo,
        },
    },
}

M.BatchLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidApplicationNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRevisionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RevisionRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetApplicationsInput = {
    type = "structure",
    members = {
        applicationNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetApplicationsOutput = {
    type = "structure",
    members = {
        applicationsInfo = {
            type = "list",
            member = M.ApplicationInfo,
        },
    },
}

M.BatchGetDeploymentGroupsInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentGroupNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentReadyAction = {
    CONTINUE_DEPLOYMENT = "CONTINUE_DEPLOYMENT",
    STOP_DEPLOYMENT = "STOP_DEPLOYMENT",
}

M.DeploymentReadyOption = {
    type = "structure",
    members = {
        actionOnTimeout = {
            type = "string",
        },
        waitTimeInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GreenFleetProvisioningAction = {
    DISCOVER_EXISTING = "DISCOVER_EXISTING",
    COPY_AUTO_SCALING_GROUP = "COPY_AUTO_SCALING_GROUP",
}

M.GreenFleetProvisioningOption = {
    type = "structure",
    members = {
        action = {
            type = "string",
        },
    },
}

M.InstanceAction = {
    TERMINATE = "TERMINATE",
    KEEP_ALIVE = "KEEP_ALIVE",
}

M.BlueInstanceTerminationOption = {
    type = "structure",
    members = {
        action = {
            type = "string",
        },
        terminationWaitTimeInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.BlueGreenDeploymentConfiguration = {
    type = "structure",
    members = {
        terminateBlueInstancesOnDeploymentSuccess = M.BlueInstanceTerminationOption,
        deploymentReadyOption = M.DeploymentReadyOption,
        greenFleetProvisioningOption = M.GreenFleetProvisioningOption,
    },
}

M.DeploymentOption = {
    WITH_TRAFFIC_CONTROL = "WITH_TRAFFIC_CONTROL",
    WITHOUT_TRAFFIC_CONTROL = "WITHOUT_TRAFFIC_CONTROL",
}

M.DeploymentType = {
    IN_PLACE = "IN_PLACE",
    BLUE_GREEN = "BLUE_GREEN",
}

M.DeploymentStyle = {
    type = "structure",
    members = {
        deploymentType = {
            type = "string",
        },
        deploymentOption = {
            type = "string",
        },
    },
}

M.EC2TagFilterType = {
    KEY_ONLY = "KEY_ONLY",
    VALUE_ONLY = "VALUE_ONLY",
    KEY_AND_VALUE = "KEY_AND_VALUE",
}

M.EC2TagFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.EC2TagSet = {
    type = "structure",
    members = {
        ec2TagSetList = {
            type = "list",
            member = { type = "list" },
        },
    },
}

M.ECSService = {
    type = "structure",
    members = {
        serviceName = {
            type = "string",
        },
        clusterName = {
            type = "string",
        },
    },
}

M.DeploymentStatus = {
    CREATED = "Created",
    QUEUED = "Queued",
    IN_PROGRESS = "InProgress",
    BAKING = "Baking",
    SUCCEEDED = "Succeeded",
    FAILED = "Failed",
    STOPPED = "Stopped",
    READY = "Ready",
}

M.LastDeploymentInfo = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        endTime = {
            type = "timestamp",
        },
        createTime = {
            type = "timestamp",
        },
    },
}

M.ELBInfo = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
    },
}

M.TargetGroupInfo = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
    },
}

M.TrafficRoute = {
    type = "structure",
    members = {
        listenerArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TargetGroupPairInfo = {
    type = "structure",
    members = {
        targetGroups = {
            type = "list",
            member = M.TargetGroupInfo,
        },
        prodTrafficRoute = M.TrafficRoute,
        testTrafficRoute = M.TrafficRoute,
    },
}

M.LoadBalancerInfo = {
    type = "structure",
    members = {
        elbInfoList = {
            type = "list",
            member = M.ELBInfo,
        },
        targetGroupInfoList = {
            type = "list",
            member = M.TargetGroupInfo,
        },
        targetGroupPairInfoList = {
            type = "list",
            member = M.TargetGroupPairInfo,
        },
    },
}

M.TagFilterType = {
    KEY_ONLY = "KEY_ONLY",
    VALUE_ONLY = "VALUE_ONLY",
    KEY_AND_VALUE = "KEY_AND_VALUE",
}

M.TagFilter = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.OnPremisesTagSet = {
    type = "structure",
    members = {
        onPremisesTagSetList = {
            type = "list",
            member = { type = "list" },
        },
    },
}

M.OutdatedInstancesStrategy = {
    Update = "UPDATE",
    Ignore = "IGNORE",
}

M.TriggerEventType = {
    DEPLOYMENT_START = "DeploymentStart",
    DEPLOYMENT_SUCCESS = "DeploymentSuccess",
    DEPLOYMENT_FAILURE = "DeploymentFailure",
    DEPLOYMENT_STOP = "DeploymentStop",
    DEPLOYMENT_ROLLBACK = "DeploymentRollback",
    DEPLOYMENT_READY = "DeploymentReady",
    INSTANCE_START = "InstanceStart",
    INSTANCE_SUCCESS = "InstanceSuccess",
    INSTANCE_FAILURE = "InstanceFailure",
    INSTANCE_READY = "InstanceReady",
}

M.TriggerConfig = {
    type = "structure",
    members = {
        triggerName = {
            type = "string",
        },
        triggerTargetArn = {
            type = "string",
        },
        triggerEvents = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeploymentGroupInfo = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
        },
        deploymentGroupId = {
            type = "string",
        },
        deploymentGroupName = {
            type = "string",
        },
        deploymentConfigName = {
            type = "string",
        },
        ec2TagFilters = {
            type = "list",
            member = M.EC2TagFilter,
        },
        onPremisesInstanceTagFilters = {
            type = "list",
            member = M.TagFilter,
        },
        autoScalingGroups = {
            type = "list",
            member = M.AutoScalingGroup,
        },
        serviceRoleArn = {
            type = "string",
        },
        targetRevision = M.RevisionLocation,
        triggerConfigurations = {
            type = "list",
            member = M.TriggerConfig,
        },
        alarmConfiguration = M.AlarmConfiguration,
        autoRollbackConfiguration = M.AutoRollbackConfiguration,
        deploymentStyle = M.DeploymentStyle,
        outdatedInstancesStrategy = {
            type = "string",
        },
        blueGreenDeploymentConfiguration = M.BlueGreenDeploymentConfiguration,
        loadBalancerInfo = M.LoadBalancerInfo,
        lastSuccessfulDeployment = M.LastDeploymentInfo,
        lastAttemptedDeployment = M.LastDeploymentInfo,
        ec2TagSet = M.EC2TagSet,
        onPremisesTagSet = M.OnPremisesTagSet,
        computePlatform = {
            type = "string",
        },
        ecsServices = {
            type = "list",
            member = M.ECSService,
        },
        terminationHookEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.BatchGetDeploymentGroupsOutput = {
    type = "structure",
    members = {
        deploymentGroupsInfo = {
            type = "list",
            member = M.DeploymentGroupInfo,
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.DeploymentConfigDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentGroupNameRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentGroupNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetDeploymentInstancesInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceType = {
    BLUE = "Blue",
    GREEN = "Green",
}

M.LifecycleErrorCode = {
    SUCCESS = "Success",
    SCRIPT_MISSING = "ScriptMissing",
    SCRIPT_NOT_EXECUTABLE = "ScriptNotExecutable",
    SCRIPT_TIMED_OUT = "ScriptTimedOut",
    SCRIPT_FAILED = "ScriptFailed",
    UNKNOWN_ERROR = "UnknownError",
}

M.Diagnostics = {
    type = "structure",
    members = {
        errorCode = {
            type = "string",
        },
        scriptName = {
            type = "string",
        },
        message = {
            type = "string",
        },
        logTail = {
            type = "string",
        },
    },
}

M.LifecycleEventStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    SUCCEEDED = "Succeeded",
    FAILED = "Failed",
    SKIPPED = "Skipped",
    UNKNOWN = "Unknown",
}

M.LifecycleEvent = {
    type = "structure",
    members = {
        lifecycleEventName = {
            type = "string",
        },
        diagnostics = M.Diagnostics,
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
    },
}

M.InstanceStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    SUCCEEDED = "Succeeded",
    FAILED = "Failed",
    SKIPPED = "Skipped",
    UNKNOWN = "Unknown",
    READY = "Ready",
}

M.InstanceSummary = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        instanceId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        lifecycleEvents = {
            type = "list",
            member = M.LifecycleEvent,
        },
        instanceType = {
            type = "string",
        },
    },
}

M.BatchGetDeploymentInstancesOutput = {
    type = "structure",
    members = {
        instancesSummary = {
            type = "list",
            member = M.InstanceSummary,
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.DeploymentDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentIdRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InstanceIdRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidComputePlatformException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentIdException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetDeploymentsInput = {
    type = "structure",
    members = {
        deploymentIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentCreator = {
    User = "user",
    Autoscaling = "autoscaling",
    CodeDeployRollback = "codeDeployRollback",
    CodeDeploy = "CodeDeploy",
    CodeDeployAutoUpdate = "CodeDeployAutoUpdate",
    CloudFormation = "CloudFormation",
    CloudFormationRollback = "CloudFormationRollback",
    AutoscalingTermination = "autoscalingTermination",
}

M.DeploymentOverview = {
    type = "structure",
    members = {
        Pending = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        InProgress = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Succeeded = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Failed = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Skipped = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        Ready = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ErrorCode = {
    AGENT_ISSUE = "AGENT_ISSUE",
    ALARM_ACTIVE = "ALARM_ACTIVE",
    APPLICATION_MISSING = "APPLICATION_MISSING",
    AUTOSCALING_VALIDATION_ERROR = "AUTOSCALING_VALIDATION_ERROR",
    AUTO_SCALING_CONFIGURATION = "AUTO_SCALING_CONFIGURATION",
    AUTO_SCALING_IAM_ROLE_PERMISSIONS = "AUTO_SCALING_IAM_ROLE_PERMISSIONS",
    CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND = "CODEDEPLOY_RESOURCE_CANNOT_BE_FOUND",
    CUSTOMER_APPLICATION_UNHEALTHY = "CUSTOMER_APPLICATION_UNHEALTHY",
    DEPLOYMENT_GROUP_MISSING = "DEPLOYMENT_GROUP_MISSING",
    ECS_UPDATE_ERROR = "ECS_UPDATE_ERROR",
    ELASTIC_LOAD_BALANCING_INVALID = "ELASTIC_LOAD_BALANCING_INVALID",
    ELB_INVALID_INSTANCE = "ELB_INVALID_INSTANCE",
    HEALTH_CONSTRAINTS = "HEALTH_CONSTRAINTS",
    HEALTH_CONSTRAINTS_INVALID = "HEALTH_CONSTRAINTS_INVALID",
    HOOK_EXECUTION_FAILURE = "HOOK_EXECUTION_FAILURE",
    IAM_ROLE_MISSING = "IAM_ROLE_MISSING",
    IAM_ROLE_PERMISSIONS = "IAM_ROLE_PERMISSIONS",
    INTERNAL_ERROR = "INTERNAL_ERROR",
    INVALID_ECS_SERVICE = "INVALID_ECS_SERVICE",
    INVALID_LAMBDA_CONFIGURATION = "INVALID_LAMBDA_CONFIGURATION",
    INVALID_LAMBDA_FUNCTION = "INVALID_LAMBDA_FUNCTION",
    INVALID_REVISION = "INVALID_REVISION",
    MANUAL_STOP = "MANUAL_STOP",
    MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION = "MISSING_BLUE_GREEN_DEPLOYMENT_CONFIGURATION",
    MISSING_ELB_INFORMATION = "MISSING_ELB_INFORMATION",
    MISSING_GITHUB_TOKEN = "MISSING_GITHUB_TOKEN",
    NO_EC2_SUBSCRIPTION = "NO_EC2_SUBSCRIPTION",
    NO_INSTANCES = "NO_INSTANCES",
    OVER_MAX_INSTANCES = "OVER_MAX_INSTANCES",
    RESOURCE_LIMIT_EXCEEDED = "RESOURCE_LIMIT_EXCEEDED",
    REVISION_MISSING = "REVISION_MISSING",
    THROTTLED = "THROTTLED",
    TIMEOUT = "TIMEOUT",
    CLOUDFORMATION_STACK_FAILURE = "CLOUDFORMATION_STACK_FAILURE",
}

M.ErrorInformation = {
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

M.FileExistsBehavior = {
    DISALLOW = "DISALLOW",
    OVERWRITE = "OVERWRITE",
    RETAIN = "RETAIN",
}

M.RelatedDeployments = {
    type = "structure",
    members = {
        autoUpdateOutdatedInstancesRootDeploymentId = {
            type = "string",
        },
        autoUpdateOutdatedInstancesDeploymentIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RollbackInfo = {
    type = "structure",
    members = {
        rollbackDeploymentId = {
            type = "string",
        },
        rollbackTriggeringDeploymentId = {
            type = "string",
        },
        rollbackMessage = {
            type = "string",
        },
    },
}

M.TargetInstances = {
    type = "structure",
    members = {
        tagFilters = {
            type = "list",
            member = M.EC2TagFilter,
        },
        autoScalingGroups = {
            type = "list",
            member = { type = "string" },
        },
        ec2TagSet = M.EC2TagSet,
    },
}

M.DeploymentInfo = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
        },
        deploymentGroupName = {
            type = "string",
        },
        deploymentConfigName = {
            type = "string",
        },
        deploymentId = {
            type = "string",
        },
        previousRevision = M.RevisionLocation,
        revision = M.RevisionLocation,
        status = {
            type = "string",
        },
        errorInformation = M.ErrorInformation,
        createTime = {
            type = "timestamp",
        },
        startTime = {
            type = "timestamp",
        },
        completeTime = {
            type = "timestamp",
        },
        deploymentOverview = M.DeploymentOverview,
        description = {
            type = "string",
        },
        creator = {
            type = "string",
        },
        ignoreApplicationStopFailures = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        autoRollbackConfiguration = M.AutoRollbackConfiguration,
        updateOutdatedInstancesOnly = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        rollbackInfo = M.RollbackInfo,
        deploymentStyle = M.DeploymentStyle,
        targetInstances = M.TargetInstances,
        instanceTerminationWaitTimeStarted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        blueGreenDeploymentConfiguration = M.BlueGreenDeploymentConfiguration,
        loadBalancerInfo = M.LoadBalancerInfo,
        additionalDeploymentStatusInfo = {
            type = "string",
        },
        fileExistsBehavior = {
            type = "string",
        },
        deploymentStatusMessages = {
            type = "list",
            member = { type = "string" },
        },
        computePlatform = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        relatedDeployments = M.RelatedDeployments,
        overrideAlarmConfiguration = M.AlarmConfiguration,
    },
}

M.BatchGetDeploymentsOutput = {
    type = "structure",
    members = {
        deploymentsInfo = {
            type = "list",
            member = M.DeploymentInfo,
        },
    },
}

M.BatchGetDeploymentTargetsInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TargetStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    SUCCEEDED = "Succeeded",
    FAILED = "Failed",
    SKIPPED = "Skipped",
    UNKNOWN = "Unknown",
    READY = "Ready",
}

M.CloudFormationTarget = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        targetId = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        lifecycleEvents = {
            type = "list",
            member = M.LifecycleEvent,
        },
        status = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        targetVersionWeight = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.DeploymentTargetType = {
    INSTANCE_TARGET = "InstanceTarget",
    LAMBDA_TARGET = "LambdaTarget",
    ECS_TARGET = "ECSTarget",
    CLOUDFORMATION_TARGET = "CloudFormationTarget",
}

M.TargetLabel = {
    BLUE = "Blue",
    GREEN = "Green",
}

M.ECSTaskSet = {
    type = "structure",
    members = {
        identifer = {
            type = "string",
        },
        desiredCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        pendingCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        runningCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        status = {
            type = "string",
        },
        trafficWeight = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        targetGroup = M.TargetGroupInfo,
        taskSetLabel = {
            type = "string",
        },
    },
}

M.ECSTarget = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        targetId = {
            type = "string",
        },
        targetArn = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        lifecycleEvents = {
            type = "list",
            member = M.LifecycleEvent,
        },
        status = {
            type = "string",
        },
        taskSetsInfo = {
            type = "list",
            member = M.ECSTaskSet,
        },
    },
}

M.InstanceTarget = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        targetId = {
            type = "string",
        },
        targetArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        lifecycleEvents = {
            type = "list",
            member = M.LifecycleEvent,
        },
        instanceLabel = {
            type = "string",
        },
    },
}

M.LambdaFunctionInfo = {
    type = "structure",
    members = {
        functionName = {
            type = "string",
        },
        functionAlias = {
            type = "string",
        },
        currentVersion = {
            type = "string",
        },
        targetVersion = {
            type = "string",
        },
        targetVersionWeight = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.LambdaTarget = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        targetId = {
            type = "string",
        },
        targetArn = {
            type = "string",
        },
        status = {
            type = "string",
        },
        lastUpdatedAt = {
            type = "timestamp",
        },
        lifecycleEvents = {
            type = "list",
            member = M.LifecycleEvent,
        },
        lambdaFunctionInfo = M.LambdaFunctionInfo,
    },
}

M.DeploymentTarget = {
    type = "structure",
    members = {
        deploymentTargetType = {
            type = "string",
        },
        instanceTarget = M.InstanceTarget,
        lambdaTarget = M.LambdaTarget,
        ecsTarget = M.ECSTarget,
        cloudFormationTarget = M.CloudFormationTarget,
    },
}

M.BatchGetDeploymentTargetsOutput = {
    type = "structure",
    members = {
        deploymentTargets = {
            type = "list",
            member = M.DeploymentTarget,
        },
    },
}

M.DeploymentNotStartedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentTargetDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentTargetIdRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentTargetListSizeExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InstanceDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentTargetIdException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetOnPremisesInstancesInput = {
    type = "structure",
    members = {
        instanceNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceInfo = {
    type = "structure",
    members = {
        instanceName = {
            type = "string",
        },
        iamSessionArn = {
            type = "string",
        },
        iamUserArn = {
            type = "string",
        },
        instanceArn = {
            type = "string",
        },
        registerTime = {
            type = "timestamp",
        },
        deregisterTime = {
            type = "timestamp",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.BatchGetOnPremisesInstancesOutput = {
    type = "structure",
    members = {
        instanceInfos = {
            type = "list",
            member = M.InstanceInfo,
        },
    },
}

M.BucketNameFilterRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentWaitType = {
    READY_WAIT = "READY_WAIT",
    TERMINATION_WAIT = "TERMINATION_WAIT",
}

M.ContinueDeploymentInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        deploymentWaitType = {
            type = "string",
        },
    },
}

M.ContinueDeploymentOutput = {
    type = "structure",
}

M.DeploymentAlreadyCompletedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentIsNotInReadyStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentStatusException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentWaitTypeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedActionForDeploymentTypeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computePlatform = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
        },
    },
}

M.InvalidTagsToAddException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDeploymentInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentGroupName = {
            type = "string",
        },
        revision = M.RevisionLocation,
        deploymentConfigName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        ignoreApplicationStopFailures = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        targetInstances = M.TargetInstances,
        autoRollbackConfiguration = M.AutoRollbackConfiguration,
        updateOutdatedInstancesOnly = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        fileExistsBehavior = {
            type = "string",
        },
        overrideAlarmConfiguration = M.AlarmConfiguration,
    },
}

M.CreateDeploymentOutput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
    },
}

M.DeploymentGroupDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescriptionTooLongException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAlarmConfigException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAutoRollbackConfigException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAutoScalingGroupException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentConfigNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidFileExistsBehaviorException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidGitHubAccountTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidIgnoreApplicationStopFailuresValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLoadBalancerInfoException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRoleException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTargetInstancesException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTrafficRoutingConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidUpdateOutdatedInstancesOnlyValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RevisionDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MinimumHealthyHostsType = {
    HOST_COUNT = "HOST_COUNT",
    FLEET_PERCENT = "FLEET_PERCENT",
}

M.MinimumHealthyHosts = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        value = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.TimeBasedCanary = {
    type = "structure",
    members = {
        canaryPercentage = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        canaryInterval = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.TimeBasedLinear = {
    type = "structure",
    members = {
        linearPercentage = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        linearInterval = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.TrafficRoutingType = {
    TimeBasedCanary = "TimeBasedCanary",
    TimeBasedLinear = "TimeBasedLinear",
    AllAtOnce = "AllAtOnce",
}

M.TrafficRoutingConfig = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        timeBasedCanary = M.TimeBasedCanary,
        timeBasedLinear = M.TimeBasedLinear,
    },
}

M.MinimumHealthyHostsPerZoneType = {
    HOST_COUNT = "HOST_COUNT",
    FLEET_PERCENT = "FLEET_PERCENT",
}

M.MinimumHealthyHostsPerZone = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        value = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ZonalConfig = {
    type = "structure",
    members = {
        firstZoneMonitorDurationInSeconds = {
            type = "long",
        },
        monitorDurationInSeconds = {
            type = "long",
        },
        minimumHealthyHostsPerZone = M.MinimumHealthyHostsPerZone,
    },
}

M.CreateDeploymentConfigInput = {
    type = "structure",
    members = {
        deploymentConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minimumHealthyHosts = M.MinimumHealthyHosts,
        trafficRoutingConfig = M.TrafficRoutingConfig,
        computePlatform = {
            type = "string",
        },
        zonalConfig = M.ZonalConfig,
    },
}

M.CreateDeploymentConfigOutput = {
    type = "structure",
    members = {
        deploymentConfigId = {
            type = "string",
        },
    },
}

M.DeploymentConfigAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentConfigLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentConfigNameRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidMinimumHealthyHostValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidZonalDeploymentConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDeploymentGroupInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentConfigName = {
            type = "string",
        },
        ec2TagFilters = {
            type = "list",
            member = M.EC2TagFilter,
        },
        onPremisesInstanceTagFilters = {
            type = "list",
            member = M.TagFilter,
        },
        autoScalingGroups = {
            type = "list",
            member = { type = "string" },
        },
        serviceRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        triggerConfigurations = {
            type = "list",
            member = M.TriggerConfig,
        },
        alarmConfiguration = M.AlarmConfiguration,
        autoRollbackConfiguration = M.AutoRollbackConfiguration,
        outdatedInstancesStrategy = {
            type = "string",
        },
        deploymentStyle = M.DeploymentStyle,
        blueGreenDeploymentConfiguration = M.BlueGreenDeploymentConfiguration,
        loadBalancerInfo = M.LoadBalancerInfo,
        ec2TagSet = M.EC2TagSet,
        ecsServices = {
            type = "list",
            member = M.ECSService,
        },
        onPremisesTagSet = M.OnPremisesTagSet,
        tags = {
            type = "list",
            member = M.Tag,
        },
        terminationHookEnabled = {
            type = "boolean",
        },
    },
}

M.CreateDeploymentGroupOutput = {
    type = "structure",
    members = {
        deploymentGroupId = {
            type = "string",
        },
    },
}

M.DeploymentGroupAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentGroupLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ECSServiceMappingLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidBlueGreenDeploymentConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentStyleException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidEC2TagCombinationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidEC2TagException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidECSServiceException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidOnPremisesTagCombinationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTargetGroupPairException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTriggerConfigException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LifecycleHookLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RoleRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagSetListLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TriggerTargetsLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
}

M.DeleteDeploymentConfigInput = {
    type = "structure",
    members = {
        deploymentConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDeploymentConfigOutput = {
    type = "structure",
}

M.DeploymentConfigInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
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

M.DeleteDeploymentGroupInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDeploymentGroupOutput = {
    type = "structure",
    members = {
        hooksNotCleanedUp = {
            type = "list",
            member = M.AutoScalingGroup,
        },
    },
}

M.DeleteGitHubAccountTokenInput = {
    type = "structure",
    members = {
        tokenName = {
            type = "string",
        },
    },
}

M.DeleteGitHubAccountTokenOutput = {
    type = "structure",
    members = {
        tokenName = {
            type = "string",
        },
    },
}

M.GitHubAccountTokenDoesNotExistException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GitHubAccountTokenNameRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidGitHubAccountTokenNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OperationNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteResourcesByExternalIdInput = {
    type = "structure",
    members = {
        externalId = {
            type = "string",
        },
    },
}

M.DeleteResourcesByExternalIdOutput = {
    type = "structure",
}

M.DeregisterOnPremisesInstanceInput = {
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

M.DeregisterOnPremisesInstanceOutput = {
    type = "structure",
}

M.GetApplicationInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetApplicationOutput = {
    type = "structure",
    members = {
        application = M.ApplicationInfo,
    },
}

M.GetApplicationRevisionInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revision = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RevisionLocation }),
    },
}

M.GetApplicationRevisionOutput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
        },
        revision = M.RevisionLocation,
        revisionInfo = M.GenericRevisionInfo,
    },
}

M.GetDeploymentInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDeploymentOutput = {
    type = "structure",
    members = {
        deploymentInfo = M.DeploymentInfo,
    },
}

M.GetDeploymentConfigInput = {
    type = "structure",
    members = {
        deploymentConfigName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeploymentConfigInfo = {
    type = "structure",
    members = {
        deploymentConfigId = {
            type = "string",
        },
        deploymentConfigName = {
            type = "string",
        },
        minimumHealthyHosts = M.MinimumHealthyHosts,
        createTime = {
            type = "timestamp",
        },
        computePlatform = {
            type = "string",
        },
        trafficRoutingConfig = M.TrafficRoutingConfig,
        zonalConfig = M.ZonalConfig,
    },
}

M.GetDeploymentConfigOutput = {
    type = "structure",
    members = {
        deploymentConfigInfo = M.DeploymentConfigInfo,
    },
}

M.GetDeploymentGroupInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deploymentGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDeploymentGroupOutput = {
    type = "structure",
    members = {
        deploymentGroupInfo = M.DeploymentGroupInfo,
    },
}

M.GetDeploymentInstanceInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDeploymentInstanceOutput = {
    type = "structure",
    members = {
        instanceSummary = M.InstanceSummary,
    },
}

M.GetDeploymentTargetInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDeploymentTargetOutput = {
    type = "structure",
    members = {
        deploymentTarget = M.DeploymentTarget,
    },
}

M.GetOnPremisesInstanceInput = {
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

M.GetOnPremisesInstanceOutput = {
    type = "structure",
    members = {
        instanceInfo = M.InstanceInfo,
    },
}

M.InvalidBucketNameFilterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeployedStateFilterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidKeyPrefixFilterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSortByException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSortOrderException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListStateFilterAction = {
    Include = "include",
    Exclude = "exclude",
    Ignore = "ignore",
}

M.SortOrder = {
    Ascending = "ascending",
    Descending = "descending",
}

M.ListApplicationRevisionsInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortBy = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
        s3Bucket = {
            type = "string",
        },
        s3KeyPrefix = {
            type = "string",
        },
        deployed = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListApplicationRevisionsOutput = {
    type = "structure",
    members = {
        revisions = {
            type = "list",
            member = M.RevisionLocation,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        applications = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeploymentConfigsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeploymentConfigsOutput = {
    type = "structure",
    members = {
        deploymentConfigsList = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeploymentGroupsInput = {
    type = "structure",
    members = {
        applicationName = {
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

M.ListDeploymentGroupsOutput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
        },
        deploymentGroups = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidDeploymentInstanceTypeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidInstanceStatusException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidInstanceTypeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTargetFilterNameException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListDeploymentInstancesInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        instanceStatusFilter = {
            type = "list",
            member = { type = "string" },
        },
        instanceTypeFilter = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListDeploymentInstancesOutput = {
    type = "structure",
    members = {
        instancesList = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidExternalIdException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTimeRangeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TimeRange = {
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

M.ListDeploymentsInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
        },
        deploymentGroupName = {
            type = "string",
        },
        externalId = {
            type = "string",
        },
        includeOnlyStatuses = {
            type = "list",
            member = { type = "string" },
        },
        createTimeRange = M.TimeRange,
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeploymentsOutput = {
    type = "structure",
    members = {
        deployments = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TargetFilterName = {
    TARGET_STATUS = "TargetStatus",
    SERVER_INSTANCE_LABEL = "ServerInstanceLabel",
}

M.ListDeploymentTargetsInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        targetFilters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.ListDeploymentTargetsOutput = {
    type = "structure",
    members = {
        targetIds = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListGitHubAccountTokenNamesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.ListGitHubAccountTokenNamesOutput = {
    type = "structure",
    members = {
        tokenNameList = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidRegistrationStatusException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTagFilterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegistrationStatus = {
    Registered = "Registered",
    Deregistered = "Deregistered",
}

M.ListOnPremisesInstancesInput = {
    type = "structure",
    members = {
        registrationStatus = {
            type = "string",
        },
        tagFilters = {
            type = "list",
            member = M.TagFilter,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListOnPremisesInstancesOutput = {
    type = "structure",
    members = {
        instanceNames = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidArnException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceArnRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLifecycleEventHookExecutionIdException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLifecycleEventHookExecutionStatusException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LifecycleEventAlreadyCompletedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutLifecycleEventHookExecutionStatusInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
        lifecycleEventHookExecutionId = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.PutLifecycleEventHookExecutionStatusOutput = {
    type = "structure",
    members = {
        lifecycleEventHookExecutionId = {
            type = "string",
        },
    },
}

M.RegisterApplicationRevisionInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        revision = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RevisionLocation }),
    },
}

M.RegisterApplicationRevisionOutput = {
    type = "structure",
}

M.IamArnRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IamSessionArnAlreadyRegisteredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IamUserArnAlreadyRegisteredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IamUserArnRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InstanceNameAlreadyRegisteredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidIamSessionArnException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidIamUserArnException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MultipleIamArnsProvidedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterOnPremisesInstanceInput = {
    type = "structure",
    members = {
        instanceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        iamSessionArn = {
            type = "string",
        },
        iamUserArn = {
            type = "string",
        },
    },
}

M.RegisterOnPremisesInstanceOutput = {
    type = "structure",
}

M.RemoveTagsFromOnPremisesInstancesInput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
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

M.RemoveTagsFromOnPremisesInstancesOutput = {
    type = "structure",
}

M.SkipWaitTimeForInstanceTerminationInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
        },
    },
}

M.SkipWaitTimeForInstanceTerminationOutput = {
    type = "structure",
}

M.StopDeploymentInput = {
    type = "structure",
    members = {
        deploymentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        autoRollbackEnabled = {
            type = "boolean",
        },
    },
}

M.StopStatus = {
    PENDING = "Pending",
    SUCCEEDED = "Succeeded",
}

M.StopDeploymentOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
}

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
        },
        newApplicationName = {
            type = "string",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
}

M.UpdateDeploymentGroupInput = {
    type = "structure",
    members = {
        applicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currentDeploymentGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        newDeploymentGroupName = {
            type = "string",
        },
        deploymentConfigName = {
            type = "string",
        },
        ec2TagFilters = {
            type = "list",
            member = M.EC2TagFilter,
        },
        onPremisesInstanceTagFilters = {
            type = "list",
            member = M.TagFilter,
        },
        autoScalingGroups = {
            type = "list",
            member = { type = "string" },
        },
        serviceRoleArn = {
            type = "string",
        },
        triggerConfigurations = {
            type = "list",
            member = M.TriggerConfig,
        },
        alarmConfiguration = M.AlarmConfiguration,
        autoRollbackConfiguration = M.AutoRollbackConfiguration,
        outdatedInstancesStrategy = {
            type = "string",
        },
        deploymentStyle = M.DeploymentStyle,
        blueGreenDeploymentConfiguration = M.BlueGreenDeploymentConfiguration,
        loadBalancerInfo = M.LoadBalancerInfo,
        ec2TagSet = M.EC2TagSet,
        ecsServices = {
            type = "list",
            member = M.ECSService,
        },
        onPremisesTagSet = M.OnPremisesTagSet,
        terminationHookEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateDeploymentGroupOutput = {
    type = "structure",
    members = {
        hooksNotCleanedUp = {
            type = "list",
            member = M.AutoScalingGroup,
        },
    },
}

return M
