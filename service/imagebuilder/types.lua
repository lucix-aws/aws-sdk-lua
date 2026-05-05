local M = {}

M.ImageStatus = {
    PENDING = "PENDING",
    CREATING = "CREATING",
    BUILDING = "BUILDING",
    TESTING = "TESTING",
    DISTRIBUTING = "DISTRIBUTING",
    INTEGRATING = "INTEGRATING",
    AVAILABLE = "AVAILABLE",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    DEPRECATED = "DEPRECATED",
    DELETED = "DELETED",
    DISABLED = "DISABLED",
}

M.BuildType = {
    USER_INITIATED = "USER_INITIATED",
    SCHEDULED = "SCHEDULED",
    IMPORT = "IMPORT",
    IMPORT_ISO = "IMPORT_ISO",
}

M.Platform = {
    WINDOWS = "Windows",
    LINUX = "Linux",
    MACOS = "macOS",
}

M.ProductCodeType = {
    MARKETPLACE = "marketplace",
}

M.ComponentStatus = {
    DEPRECATED = "DEPRECATED",
    DISABLED = "DISABLED",
    ACTIVE = "ACTIVE",
}

M.ComponentType = {
    BUILD = "BUILD",
    TEST = "TEST",
}

M.ComponentFormat = {
    SHELL = "SHELL",
}

M.ContainerRepositoryService = {
    ECR = "ECR",
}

M.ContainerType = {
    DOCKER = "DOCKER",
}

M.EbsVolumeType = {
    STANDARD = "standard",
    IO1 = "io1",
    IO2 = "io2",
    GP2 = "gp2",
    GP3 = "gp3",
    SC1 = "sc1",
    ST1 = "st1",
}

M.DiskImageFormat = {
    VMDK = "VMDK",
    RAW = "RAW",
    VHD = "VHD",
}

M.SsmParameterDataType = {
    TEXT = "text",
    AWS_EC2_IMAGE = "aws:ec2:image",
}

M.OnWorkflowFailure = {
    CONTINUE = "CONTINUE",
    ABORT = "ABORT",
}

M.PipelineExecutionStartCondition = {
    EXPRESSION_MATCH_ONLY = "EXPRESSION_MATCH_ONLY",
    EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE = "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE",
}

M.PipelineStatus = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.TenancyType = {
    DEFAULT = "default",
    DEDICATED = "dedicated",
    HOST = "host",
}

M.LifecyclePolicyDetailActionType = {
    DELETE = "DELETE",
    DEPRECATE = "DEPRECATE",
    DISABLE = "DISABLE",
}

M.LifecyclePolicyTimeUnit = {
    DAYS = "DAYS",
    WEEKS = "WEEKS",
    MONTHS = "MONTHS",
    YEARS = "YEARS",
}

M.LifecyclePolicyDetailFilterType = {
    AGE = "AGE",
    COUNT = "COUNT",
}

M.LifecyclePolicyResourceType = {
    AMI_IMAGE = "AMI_IMAGE",
    CONTAINER_IMAGE = "CONTAINER_IMAGE",
}

M.LifecyclePolicyStatus = {
    DISABLED = "DISABLED",
    ENABLED = "ENABLED",
}

M.WorkflowType = {
    BUILD = "BUILD",
    TEST = "TEST",
    DISTRIBUTION = "DISTRIBUTION",
}

M.ImageType = {
    AMI = "AMI",
    DOCKER = "DOCKER",
}

M.ImageSource = {
    AMAZON_MANAGED = "AMAZON_MANAGED",
    AWS_MARKETPLACE = "AWS_MARKETPLACE",
    IMPORTED = "IMPORTED",
    CUSTOM = "CUSTOM",
}

M.ImageScanStatus = {
    PENDING = "PENDING",
    SCANNING = "SCANNING",
    COLLECTING = "COLLECTING",
    COMPLETED = "COMPLETED",
    ABANDONED = "ABANDONED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
}

M.LifecycleExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    CANCELLED = "CANCELLED",
    CANCELLING = "CANCELLING",
    FAILED = "FAILED",
    SUCCESS = "SUCCESS",
    PENDING = "PENDING",
}

M.MarketplaceResourceType = {
    COMPONENT_DATA = "COMPONENT_DATA",
    COMPONENT_ARTIFACT = "COMPONENT_ARTIFACT",
}

M.WorkflowStatus = {
    DEPRECATED = "DEPRECATED",
}

M.WorkflowExecutionStatus = {
    PENDING = "PENDING",
    SKIPPED = "SKIPPED",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS",
    ROLLBACK_COMPLETED = "ROLLBACK_COMPLETED",
    CANCELLED = "CANCELLED",
}

M.WorkflowStepExecutionRollbackStatus = {
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    SKIPPED = "SKIPPED",
    FAILED = "FAILED",
}

M.WorkflowStepExecutionStatus = {
    PENDING = "PENDING",
    SKIPPED = "SKIPPED",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.Ownership = {
    SELF = "Self",
    SHARED = "Shared",
    AMAZON = "Amazon",
    THIRDPARTY = "ThirdParty",
    AWS_MARKETPLACE = "AWSMarketplace",
}

M.LifecycleExecutionResourceActionName = {
    AVAILABLE = "AVAILABLE",
    DELETE = "DELETE",
    DEPRECATE = "DEPRECATE",
    DISABLE = "DISABLE",
}

M.LifecycleExecutionResourceStatus = {
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    SKIPPED = "SKIPPED",
    SUCCESS = "SUCCESS",
}

M.WorkflowStepActionType = {
    RESUME = "RESUME",
    STOP = "STOP",
}

M.ResourceStatus = {
    AVAILABLE = "AVAILABLE",
    DELETED = "DELETED",
    DEPRECATED = "DEPRECATED",
    DISABLED = "DISABLED",
}

return M
