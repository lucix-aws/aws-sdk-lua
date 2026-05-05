local M = {}

M.ComputePlatform = {
    SERVER = "Server",
    LAMBDA = "Lambda",
    ECS = "ECS",
}

M.ApplicationRevisionSortBy = {
    RegisterTime = "registerTime",
    FirstUsedTime = "firstUsedTime",
    LastUsedTime = "lastUsedTime",
}

M.AutoRollbackEvent = {
    DEPLOYMENT_FAILURE = "DEPLOYMENT_FAILURE",
    DEPLOYMENT_STOP_ON_ALARM = "DEPLOYMENT_STOP_ON_ALARM",
    DEPLOYMENT_STOP_ON_REQUEST = "DEPLOYMENT_STOP_ON_REQUEST",
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

M.DeploymentReadyAction = {
    CONTINUE_DEPLOYMENT = "CONTINUE_DEPLOYMENT",
    STOP_DEPLOYMENT = "STOP_DEPLOYMENT",
}

M.GreenFleetProvisioningAction = {
    DISCOVER_EXISTING = "DISCOVER_EXISTING",
    COPY_AUTO_SCALING_GROUP = "COPY_AUTO_SCALING_GROUP",
}

M.InstanceAction = {
    TERMINATE = "TERMINATE",
    KEEP_ALIVE = "KEEP_ALIVE",
}

M.DeploymentOption = {
    WITH_TRAFFIC_CONTROL = "WITH_TRAFFIC_CONTROL",
    WITHOUT_TRAFFIC_CONTROL = "WITHOUT_TRAFFIC_CONTROL",
}

M.DeploymentType = {
    IN_PLACE = "IN_PLACE",
    BLUE_GREEN = "BLUE_GREEN",
}

M.EC2TagFilterType = {
    KEY_ONLY = "KEY_ONLY",
    VALUE_ONLY = "VALUE_ONLY",
    KEY_AND_VALUE = "KEY_AND_VALUE",
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

M.TagFilterType = {
    KEY_ONLY = "KEY_ONLY",
    VALUE_ONLY = "VALUE_ONLY",
    KEY_AND_VALUE = "KEY_AND_VALUE",
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

M.LifecycleEventStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    SUCCEEDED = "Succeeded",
    FAILED = "Failed",
    SKIPPED = "Skipped",
    UNKNOWN = "Unknown",
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

M.FileExistsBehavior = {
    DISALLOW = "DISALLOW",
    OVERWRITE = "OVERWRITE",
    RETAIN = "RETAIN",
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

M.DeploymentWaitType = {
    READY_WAIT = "READY_WAIT",
    TERMINATION_WAIT = "TERMINATION_WAIT",
}

M.MinimumHealthyHostsType = {
    HOST_COUNT = "HOST_COUNT",
    FLEET_PERCENT = "FLEET_PERCENT",
}

M.TrafficRoutingType = {
    TimeBasedCanary = "TimeBasedCanary",
    TimeBasedLinear = "TimeBasedLinear",
    AllAtOnce = "AllAtOnce",
}

M.MinimumHealthyHostsPerZoneType = {
    HOST_COUNT = "HOST_COUNT",
    FLEET_PERCENT = "FLEET_PERCENT",
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

M.TargetFilterName = {
    TARGET_STATUS = "TargetStatus",
    SERVER_INSTANCE_LABEL = "ServerInstanceLabel",
}

M.RegistrationStatus = {
    Registered = "Registered",
    Deregistered = "Deregistered",
}

M.StopStatus = {
    PENDING = "Pending",
    SUCCEEDED = "Succeeded",
}

return M
