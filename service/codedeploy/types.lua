local M = {}

M.Tag = {
    type = "structure",
    id = "Tag",
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
    id = "AddTagsToOnPremisesInstancesInput",
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
    id = "AddTagsToOnPremisesInstancesOutput",
}

M.InstanceLimitExceededException = {
    type = "structure",
    id = "InstanceLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InstanceNameRequiredException = {
    type = "structure",
    id = "InstanceNameRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InstanceNotRegisteredException = {
    type = "structure",
    id = "InstanceNotRegisteredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidInstanceNameException = {
    type = "structure",
    id = "InvalidInstanceNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTagException = {
    type = "structure",
    id = "InvalidTagException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagLimitExceededException = {
    type = "structure",
    id = "TagLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagRequiredException = {
    type = "structure",
    id = "TagRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Alarm = {
    type = "structure",
    id = "Alarm",
    members = {
        name = {
            type = "string",
        },
    },
}

M.AlarmConfiguration = {
    type = "structure",
    id = "AlarmConfiguration",
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
    id = "AlarmsLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplicationAlreadyExistsException = {
    type = "structure",
    id = "ApplicationAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplicationDoesNotExistException = {
    type = "structure",
    id = "ApplicationDoesNotExistException",
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
    id = "ApplicationInfo",
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
    id = "ApplicationLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ApplicationNameRequiredException = {
    type = "structure",
    id = "ApplicationNameRequiredException",
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
    id = "AppSpecContent",
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
    id = "ArnNotSupportedException",
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
    id = "AutoRollbackConfiguration",
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
    id = "AutoScalingGroup",
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
    id = "GitHubLocation",
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
    id = "S3Location",
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
    id = "RawString",
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
    id = "RevisionLocation",
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
    id = "BatchGetApplicationRevisionsInput",
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
    id = "GenericRevisionInfo",
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
    id = "RevisionInfo",
    members = {
        revisionLocation = M.RevisionLocation,
        genericRevisionInfo = M.GenericRevisionInfo,
    },
}

M.BatchGetApplicationRevisionsOutput = {
    type = "structure",
    id = "BatchGetApplicationRevisionsOutput",
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
    id = "BatchLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidApplicationNameException = {
    type = "structure",
    id = "InvalidApplicationNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRevisionException = {
    type = "structure",
    id = "InvalidRevisionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RevisionRequiredException = {
    type = "structure",
    id = "RevisionRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetApplicationsInput = {
    type = "structure",
    id = "BatchGetApplicationsInput",
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
    id = "BatchGetApplicationsOutput",
    members = {
        applicationsInfo = {
            type = "list",
            member = M.ApplicationInfo,
        },
    },
}

M.BatchGetDeploymentGroupsInput = {
    type = "structure",
    id = "BatchGetDeploymentGroupsInput",
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
    id = "DeploymentReadyOption",
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
    id = "GreenFleetProvisioningOption",
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
    id = "BlueInstanceTerminationOption",
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
    id = "BlueGreenDeploymentConfiguration",
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
    id = "DeploymentStyle",
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
    id = "EC2TagFilter",
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
    id = "EC2TagSet",
    members = {
        ec2TagSetList = {
            type = "list",
            member = { type = "list" },
        },
    },
}

M.ECSService = {
    type = "structure",
    id = "ECSService",
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
    id = "LastDeploymentInfo",
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
    id = "ELBInfo",
    members = {
        name = {
            type = "string",
        },
    },
}

M.TargetGroupInfo = {
    type = "structure",
    id = "TargetGroupInfo",
    members = {
        name = {
            type = "string",
        },
    },
}

M.TrafficRoute = {
    type = "structure",
    id = "TrafficRoute",
    members = {
        listenerArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TargetGroupPairInfo = {
    type = "structure",
    id = "TargetGroupPairInfo",
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
    id = "LoadBalancerInfo",
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
    id = "TagFilter",
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
    id = "OnPremisesTagSet",
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
    id = "TriggerConfig",
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
    id = "DeploymentGroupInfo",
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
    id = "BatchGetDeploymentGroupsOutput",
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
    id = "DeploymentConfigDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentGroupNameRequiredException = {
    type = "structure",
    id = "DeploymentGroupNameRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentGroupNameException = {
    type = "structure",
    id = "InvalidDeploymentGroupNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetDeploymentInstancesInput = {
    type = "structure",
    id = "BatchGetDeploymentInstancesInput",
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
    id = "Diagnostics",
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
    id = "LifecycleEvent",
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
    id = "InstanceSummary",
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
    id = "BatchGetDeploymentInstancesOutput",
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
    id = "DeploymentDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentIdRequiredException = {
    type = "structure",
    id = "DeploymentIdRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InstanceIdRequiredException = {
    type = "structure",
    id = "InstanceIdRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidComputePlatformException = {
    type = "structure",
    id = "InvalidComputePlatformException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentIdException = {
    type = "structure",
    id = "InvalidDeploymentIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetDeploymentsInput = {
    type = "structure",
    id = "BatchGetDeploymentsInput",
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
    id = "DeploymentOverview",
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
    id = "ErrorInformation",
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
    id = "RelatedDeployments",
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
    id = "RollbackInfo",
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
    id = "TargetInstances",
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
    id = "DeploymentInfo",
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
    id = "BatchGetDeploymentsOutput",
    members = {
        deploymentsInfo = {
            type = "list",
            member = M.DeploymentInfo,
        },
    },
}

M.BatchGetDeploymentTargetsInput = {
    type = "structure",
    id = "BatchGetDeploymentTargetsInput",
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
    id = "CloudFormationTarget",
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
    id = "ECSTaskSet",
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
    id = "ECSTarget",
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
    id = "InstanceTarget",
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
    id = "LambdaFunctionInfo",
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
    id = "LambdaTarget",
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
    id = "DeploymentTarget",
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
    id = "BatchGetDeploymentTargetsOutput",
    members = {
        deploymentTargets = {
            type = "list",
            member = M.DeploymentTarget,
        },
    },
}

M.DeploymentNotStartedException = {
    type = "structure",
    id = "DeploymentNotStartedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentTargetDoesNotExistException = {
    type = "structure",
    id = "DeploymentTargetDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentTargetIdRequiredException = {
    type = "structure",
    id = "DeploymentTargetIdRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentTargetListSizeExceededException = {
    type = "structure",
    id = "DeploymentTargetListSizeExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InstanceDoesNotExistException = {
    type = "structure",
    id = "InstanceDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentTargetIdException = {
    type = "structure",
    id = "InvalidDeploymentTargetIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BatchGetOnPremisesInstancesInput = {
    type = "structure",
    id = "BatchGetOnPremisesInstancesInput",
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
    id = "InstanceInfo",
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
    id = "BatchGetOnPremisesInstancesOutput",
    members = {
        instanceInfos = {
            type = "list",
            member = M.InstanceInfo,
        },
    },
}

M.BucketNameFilterRequiredException = {
    type = "structure",
    id = "BucketNameFilterRequiredException",
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
    id = "ContinueDeploymentInput",
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
    id = "ContinueDeploymentOutput",
}

M.DeploymentAlreadyCompletedException = {
    type = "structure",
    id = "DeploymentAlreadyCompletedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentIsNotInReadyStateException = {
    type = "structure",
    id = "DeploymentIsNotInReadyStateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentStatusException = {
    type = "structure",
    id = "InvalidDeploymentStatusException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentWaitTypeException = {
    type = "structure",
    id = "InvalidDeploymentWaitTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedActionForDeploymentTypeException = {
    type = "structure",
    id = "UnsupportedActionForDeploymentTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    id = "CreateApplicationInput",
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
    id = "CreateApplicationOutput",
    members = {
        applicationId = {
            type = "string",
        },
    },
}

M.InvalidTagsToAddException = {
    type = "structure",
    id = "InvalidTagsToAddException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDeploymentInput = {
    type = "structure",
    id = "CreateDeploymentInput",
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
    id = "CreateDeploymentOutput",
    members = {
        deploymentId = {
            type = "string",
        },
    },
}

M.DeploymentGroupDoesNotExistException = {
    type = "structure",
    id = "DeploymentGroupDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentLimitExceededException = {
    type = "structure",
    id = "DeploymentLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescriptionTooLongException = {
    type = "structure",
    id = "DescriptionTooLongException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAlarmConfigException = {
    type = "structure",
    id = "InvalidAlarmConfigException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAutoRollbackConfigException = {
    type = "structure",
    id = "InvalidAutoRollbackConfigException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidAutoScalingGroupException = {
    type = "structure",
    id = "InvalidAutoScalingGroupException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentConfigNameException = {
    type = "structure",
    id = "InvalidDeploymentConfigNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidFileExistsBehaviorException = {
    type = "structure",
    id = "InvalidFileExistsBehaviorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidGitHubAccountTokenException = {
    type = "structure",
    id = "InvalidGitHubAccountTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidIgnoreApplicationStopFailuresValueException = {
    type = "structure",
    id = "InvalidIgnoreApplicationStopFailuresValueException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLoadBalancerInfoException = {
    type = "structure",
    id = "InvalidLoadBalancerInfoException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRoleException = {
    type = "structure",
    id = "InvalidRoleException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTargetInstancesException = {
    type = "structure",
    id = "InvalidTargetInstancesException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTrafficRoutingConfigurationException = {
    type = "structure",
    id = "InvalidTrafficRoutingConfigurationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidUpdateOutdatedInstancesOnlyValueException = {
    type = "structure",
    id = "InvalidUpdateOutdatedInstancesOnlyValueException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RevisionDoesNotExistException = {
    type = "structure",
    id = "RevisionDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.MinimumHealthyHostsType = {
    HOST_COUNT = "HOST_COUNT",
    FLEET_PERCENT = "FLEET_PERCENT",
}

M.MinimumHealthyHosts = {
    type = "structure",
    id = "MinimumHealthyHosts",
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
    id = "TimeBasedCanary",
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
    id = "TimeBasedLinear",
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
    id = "TrafficRoutingConfig",
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
    id = "MinimumHealthyHostsPerZone",
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
    id = "ZonalConfig",
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
    id = "CreateDeploymentConfigInput",
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
    id = "CreateDeploymentConfigOutput",
    members = {
        deploymentConfigId = {
            type = "string",
        },
    },
}

M.DeploymentConfigAlreadyExistsException = {
    type = "structure",
    id = "DeploymentConfigAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentConfigLimitExceededException = {
    type = "structure",
    id = "DeploymentConfigLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentConfigNameRequiredException = {
    type = "structure",
    id = "DeploymentConfigNameRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidMinimumHealthyHostValueException = {
    type = "structure",
    id = "InvalidMinimumHealthyHostValueException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidZonalDeploymentConfigurationException = {
    type = "structure",
    id = "InvalidZonalDeploymentConfigurationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateDeploymentGroupInput = {
    type = "structure",
    id = "CreateDeploymentGroupInput",
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
    id = "CreateDeploymentGroupOutput",
    members = {
        deploymentGroupId = {
            type = "string",
        },
    },
}

M.DeploymentGroupAlreadyExistsException = {
    type = "structure",
    id = "DeploymentGroupAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeploymentGroupLimitExceededException = {
    type = "structure",
    id = "DeploymentGroupLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ECSServiceMappingLimitExceededException = {
    type = "structure",
    id = "ECSServiceMappingLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidBlueGreenDeploymentConfigurationException = {
    type = "structure",
    id = "InvalidBlueGreenDeploymentConfigurationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeploymentStyleException = {
    type = "structure",
    id = "InvalidDeploymentStyleException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidEC2TagCombinationException = {
    type = "structure",
    id = "InvalidEC2TagCombinationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidEC2TagException = {
    type = "structure",
    id = "InvalidEC2TagException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidECSServiceException = {
    type = "structure",
    id = "InvalidECSServiceException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidOnPremisesTagCombinationException = {
    type = "structure",
    id = "InvalidOnPremisesTagCombinationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTargetGroupPairException = {
    type = "structure",
    id = "InvalidTargetGroupPairException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTriggerConfigException = {
    type = "structure",
    id = "InvalidTriggerConfigException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LifecycleHookLimitExceededException = {
    type = "structure",
    id = "LifecycleHookLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RoleRequiredException = {
    type = "structure",
    id = "RoleRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagSetListLimitExceededException = {
    type = "structure",
    id = "TagSetListLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TriggerTargetsLimitExceededException = {
    type = "structure",
    id = "TriggerTargetsLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    id = "DeleteApplicationInput",
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
    id = "DeleteApplicationOutput",
}

M.DeleteDeploymentConfigInput = {
    type = "structure",
    id = "DeleteDeploymentConfigInput",
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
    id = "DeleteDeploymentConfigOutput",
}

M.DeploymentConfigInUseException = {
    type = "structure",
    id = "DeploymentConfigInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
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

M.DeleteDeploymentGroupInput = {
    type = "structure",
    id = "DeleteDeploymentGroupInput",
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
    id = "DeleteDeploymentGroupOutput",
    members = {
        hooksNotCleanedUp = {
            type = "list",
            member = M.AutoScalingGroup,
        },
    },
}

M.DeleteGitHubAccountTokenInput = {
    type = "structure",
    id = "DeleteGitHubAccountTokenInput",
    members = {
        tokenName = {
            type = "string",
        },
    },
}

M.DeleteGitHubAccountTokenOutput = {
    type = "structure",
    id = "DeleteGitHubAccountTokenOutput",
    members = {
        tokenName = {
            type = "string",
        },
    },
}

M.GitHubAccountTokenDoesNotExistException = {
    type = "structure",
    id = "GitHubAccountTokenDoesNotExistException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GitHubAccountTokenNameRequiredException = {
    type = "structure",
    id = "GitHubAccountTokenNameRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidGitHubAccountTokenNameException = {
    type = "structure",
    id = "InvalidGitHubAccountTokenNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OperationNotSupportedException = {
    type = "structure",
    id = "OperationNotSupportedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceValidationException = {
    type = "structure",
    id = "ResourceValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteResourcesByExternalIdInput = {
    type = "structure",
    id = "DeleteResourcesByExternalIdInput",
    members = {
        externalId = {
            type = "string",
        },
    },
}

M.DeleteResourcesByExternalIdOutput = {
    type = "structure",
    id = "DeleteResourcesByExternalIdOutput",
}

M.DeregisterOnPremisesInstanceInput = {
    type = "structure",
    id = "DeregisterOnPremisesInstanceInput",
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
    id = "DeregisterOnPremisesInstanceOutput",
}

M.GetApplicationInput = {
    type = "structure",
    id = "GetApplicationInput",
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
    id = "GetApplicationOutput",
    members = {
        application = M.ApplicationInfo,
    },
}

M.GetApplicationRevisionInput = {
    type = "structure",
    id = "GetApplicationRevisionInput",
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
    id = "GetApplicationRevisionOutput",
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
    id = "GetDeploymentInput",
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
    id = "GetDeploymentOutput",
    members = {
        deploymentInfo = M.DeploymentInfo,
    },
}

M.GetDeploymentConfigInput = {
    type = "structure",
    id = "GetDeploymentConfigInput",
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
    id = "DeploymentConfigInfo",
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
    id = "GetDeploymentConfigOutput",
    members = {
        deploymentConfigInfo = M.DeploymentConfigInfo,
    },
}

M.GetDeploymentGroupInput = {
    type = "structure",
    id = "GetDeploymentGroupInput",
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
    id = "GetDeploymentGroupOutput",
    members = {
        deploymentGroupInfo = M.DeploymentGroupInfo,
    },
}

M.GetDeploymentInstanceInput = {
    type = "structure",
    id = "GetDeploymentInstanceInput",
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
    id = "GetDeploymentInstanceOutput",
    members = {
        instanceSummary = M.InstanceSummary,
    },
}

M.GetDeploymentTargetInput = {
    type = "structure",
    id = "GetDeploymentTargetInput",
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
    id = "GetDeploymentTargetOutput",
    members = {
        deploymentTarget = M.DeploymentTarget,
    },
}

M.GetOnPremisesInstanceInput = {
    type = "structure",
    id = "GetOnPremisesInstanceInput",
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
    id = "GetOnPremisesInstanceOutput",
    members = {
        instanceInfo = M.InstanceInfo,
    },
}

M.InvalidBucketNameFilterException = {
    type = "structure",
    id = "InvalidBucketNameFilterException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDeployedStateFilterException = {
    type = "structure",
    id = "InvalidDeployedStateFilterException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidKeyPrefixFilterException = {
    type = "structure",
    id = "InvalidKeyPrefixFilterException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSortByException = {
    type = "structure",
    id = "InvalidSortByException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidSortOrderException = {
    type = "structure",
    id = "InvalidSortOrderException",
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
    id = "ListApplicationRevisionsInput",
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
    id = "ListApplicationRevisionsOutput",
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
    id = "ListApplicationsInput",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    id = "ListApplicationsOutput",
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
    id = "ListDeploymentConfigsInput",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.ListDeploymentConfigsOutput = {
    type = "structure",
    id = "ListDeploymentConfigsOutput",
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
    id = "ListDeploymentGroupsInput",
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
    id = "ListDeploymentGroupsOutput",
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
    id = "InvalidDeploymentInstanceTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidInstanceStatusException = {
    type = "structure",
    id = "InvalidInstanceStatusException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidInstanceTypeException = {
    type = "structure",
    id = "InvalidInstanceTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTargetFilterNameException = {
    type = "structure",
    id = "InvalidTargetFilterNameException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListDeploymentInstancesInput = {
    type = "structure",
    id = "ListDeploymentInstancesInput",
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
    id = "ListDeploymentInstancesOutput",
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
    id = "InvalidExternalIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTimeRangeException = {
    type = "structure",
    id = "InvalidTimeRangeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TimeRange = {
    type = "structure",
    id = "TimeRange",
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
    id = "ListDeploymentsInput",
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
    id = "ListDeploymentsOutput",
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
    id = "ListDeploymentTargetsInput",
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
    id = "ListDeploymentTargetsOutput",
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
    id = "ListGitHubAccountTokenNamesInput",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.ListGitHubAccountTokenNamesOutput = {
    type = "structure",
    id = "ListGitHubAccountTokenNamesOutput",
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
    id = "InvalidRegistrationStatusException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTagFilterException = {
    type = "structure",
    id = "InvalidTagFilterException",
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
    id = "ListOnPremisesInstancesInput",
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
    id = "ListOnPremisesInstancesOutput",
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
    id = "InvalidArnException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "ResourceArnRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLifecycleEventHookExecutionIdException = {
    type = "structure",
    id = "InvalidLifecycleEventHookExecutionIdException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLifecycleEventHookExecutionStatusException = {
    type = "structure",
    id = "InvalidLifecycleEventHookExecutionStatusException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LifecycleEventAlreadyCompletedException = {
    type = "structure",
    id = "LifecycleEventAlreadyCompletedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutLifecycleEventHookExecutionStatusInput = {
    type = "structure",
    id = "PutLifecycleEventHookExecutionStatusInput",
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
    id = "PutLifecycleEventHookExecutionStatusOutput",
    members = {
        lifecycleEventHookExecutionId = {
            type = "string",
        },
    },
}

M.RegisterApplicationRevisionInput = {
    type = "structure",
    id = "RegisterApplicationRevisionInput",
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
    id = "RegisterApplicationRevisionOutput",
}

M.IamArnRequiredException = {
    type = "structure",
    id = "IamArnRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IamSessionArnAlreadyRegisteredException = {
    type = "structure",
    id = "IamSessionArnAlreadyRegisteredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IamUserArnAlreadyRegisteredException = {
    type = "structure",
    id = "IamUserArnAlreadyRegisteredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IamUserArnRequiredException = {
    type = "structure",
    id = "IamUserArnRequiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InstanceNameAlreadyRegisteredException = {
    type = "structure",
    id = "InstanceNameAlreadyRegisteredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidIamSessionArnException = {
    type = "structure",
    id = "InvalidIamSessionArnException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidIamUserArnException = {
    type = "structure",
    id = "InvalidIamUserArnException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MultipleIamArnsProvidedException = {
    type = "structure",
    id = "MultipleIamArnsProvidedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterOnPremisesInstanceInput = {
    type = "structure",
    id = "RegisterOnPremisesInstanceInput",
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
    id = "RegisterOnPremisesInstanceOutput",
}

M.RemoveTagsFromOnPremisesInstancesInput = {
    type = "structure",
    id = "RemoveTagsFromOnPremisesInstancesInput",
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
    id = "RemoveTagsFromOnPremisesInstancesOutput",
}

M.SkipWaitTimeForInstanceTerminationInput = {
    type = "structure",
    id = "SkipWaitTimeForInstanceTerminationInput",
    members = {
        deploymentId = {
            type = "string",
        },
    },
}

M.SkipWaitTimeForInstanceTerminationOutput = {
    type = "structure",
    id = "SkipWaitTimeForInstanceTerminationOutput",
}

M.StopDeploymentInput = {
    type = "structure",
    id = "StopDeploymentInput",
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
    id = "StopDeploymentOutput",
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
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateApplicationInput = {
    type = "structure",
    id = "UpdateApplicationInput",
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
    id = "UpdateApplicationOutput",
}

M.UpdateDeploymentGroupInput = {
    type = "structure",
    id = "UpdateDeploymentGroupInput",
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
    id = "UpdateDeploymentGroupOutput",
    members = {
        hooksNotCleanedUp = {
            type = "list",
            member = M.AutoScalingGroup,
        },
    },
}

return M
