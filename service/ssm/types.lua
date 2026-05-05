local M = {}

M.AccessRequestStatus = {
    APPROVED = "Approved",
    REJECTED = "Rejected",
    REVOKED = "Revoked",
    EXPIRED = "Expired",
    PENDING = "Pending",
}

M.AccessType = {
    STANDARD = "Standard",
    JUSTINTIME = "JustInTime",
}

M.ResourceTypeForTagging = {
    DOCUMENT = "Document",
    MANAGED_INSTANCE = "ManagedInstance",
    MAINTENANCE_WINDOW = "MaintenanceWindow",
    PARAMETER = "Parameter",
    PATCH_BASELINE = "PatchBaseline",
    OPS_ITEM = "OpsItem",
    OPSMETADATA = "OpsMetadata",
    AUTOMATION = "Automation",
    ASSOCIATION = "Association",
}

M.ExternalAlarmState = {
    UNKNOWN = "UNKNOWN",
    ALARM = "ALARM",
}

M.AssociationComplianceSeverity = {
    Critical = "CRITICAL",
    High = "HIGH",
    Medium = "MEDIUM",
    Low = "LOW",
    Unspecified = "UNSPECIFIED",
}

M.AssociationSyncCompliance = {
    Auto = "AUTO",
    Manual = "MANUAL",
}

M.AssociationStatusName = {
    Pending = "Pending",
    Success = "Success",
    Failed = "Failed",
}

M.Fault = {
    Client = "Client",
    Server = "Server",
    Unknown = "Unknown",
}

M.AttachmentsSourceKey = {
    SourceUrl = "SourceUrl",
    S3FileUrl = "S3FileUrl",
    AttachmentReference = "AttachmentReference",
}

M.DocumentFormat = {
    YAML = "YAML",
    JSON = "JSON",
    TEXT = "TEXT",
}

M.DocumentType = {
    Command = "Command",
    Policy = "Policy",
    Automation = "Automation",
    Session = "Session",
    Package = "Package",
    ApplicationConfiguration = "ApplicationConfiguration",
    ApplicationConfigurationSchema = "ApplicationConfigurationSchema",
    DeploymentStrategy = "DeploymentStrategy",
    ChangeCalendar = "ChangeCalendar",
    ChangeTemplate = "Automation.ChangeTemplate",
    ProblemAnalysis = "ProblemAnalysis",
    ProblemAnalysisTemplate = "ProblemAnalysisTemplate",
    CloudFormation = "CloudFormation",
    ConformancePackTemplate = "ConformancePackTemplate",
    QuickSetup = "QuickSetup",
    ManualApprovalPolicy = "ManualApprovalPolicy",
    AutoApprovalPolicy = "AutoApprovalPolicy",
}

M.DocumentHashType = {
    SHA256 = "Sha256",
    SHA1 = "Sha1",
}

M.DocumentParameterType = {
    String = "String",
    StringList = "StringList",
}

M.PlatformType = {
    WINDOWS = "Windows",
    LINUX = "Linux",
    MACOS = "MacOS",
}

M.ReviewStatus = {
    APPROVED = "APPROVED",
    NOT_REVIEWED = "NOT_REVIEWED",
    PENDING = "PENDING",
    REJECTED = "REJECTED",
}

M.DocumentStatus = {
    Creating = "Creating",
    Active = "Active",
    Updating = "Updating",
    Deleting = "Deleting",
    Failed = "Failed",
}

M.OpsItemDataType = {
    SEARCHABLE_STRING = "SearchableString",
    STRING = "String",
}

M.PatchComplianceLevel = {
    Critical = "CRITICAL",
    High = "HIGH",
    Medium = "MEDIUM",
    Low = "LOW",
    Informational = "INFORMATIONAL",
    Unspecified = "UNSPECIFIED",
}

M.PatchFilterKey = {
    Arch = "ARCH",
    AdvisoryId = "ADVISORY_ID",
    BugzillaId = "BUGZILLA_ID",
    PatchSet = "PATCH_SET",
    Product = "PRODUCT",
    ProductFamily = "PRODUCT_FAMILY",
    Classification = "CLASSIFICATION",
    CVEId = "CVE_ID",
    Epoch = "EPOCH",
    MsrcSeverity = "MSRC_SEVERITY",
    Name = "NAME",
    PatchId = "PATCH_ID",
    Section = "SECTION",
    Priority = "PRIORITY",
    Repository = "REPOSITORY",
    Release = "RELEASE",
    Severity = "SEVERITY",
    Security = "SECURITY",
    Version = "VERSION",
}

M.PatchComplianceStatus = {
    Compliant = "COMPLIANT",
    NonCompliant = "NON_COMPLIANT",
}

M.OperatingSystem = {
    Windows = "WINDOWS",
    AmazonLinux = "AMAZON_LINUX",
    AmazonLinux2 = "AMAZON_LINUX_2",
    AmazonLinux2022 = "AMAZON_LINUX_2022",
    Ubuntu = "UBUNTU",
    RedhatEnterpriseLinux = "REDHAT_ENTERPRISE_LINUX",
    Suse = "SUSE",
    CentOS = "CENTOS",
    OracleLinux = "ORACLE_LINUX",
    Debian = "DEBIAN",
    MacOS = "MACOS",
    Raspbian = "RASPBIAN",
    Rocky_Linux = "ROCKY_LINUX",
    AlmaLinux = "ALMA_LINUX",
    AmazonLinux2023 = "AMAZON_LINUX_2023",
}

M.PatchAction = {
    AllowAsDependency = "ALLOW_AS_DEPENDENCY",
    Block = "BLOCK",
}

M.ResourceDataSyncS3Format = {
    JSON_SERDE = "JsonSerDe",
}

M.InventorySchemaDeleteOption = {
    DISABLE_SCHEMA = "DisableSchema",
    DELETE_SCHEMA = "DeleteSchema",
}

M.DescribeActivationsFilterKeys = {
    ACTIVATION_IDS = "ActivationIds",
    DEFAULT_INSTANCE_NAME = "DefaultInstanceName",
    IAM_ROLE = "IamRole",
}

M.AssociationExecutionFilterKey = {
    ExecutionId = "ExecutionId",
    Status = "Status",
    CreatedTime = "CreatedTime",
}

M.AssociationFilterOperatorType = {
    Equal = "EQUAL",
    LessThan = "LESS_THAN",
    GreaterThan = "GREATER_THAN",
}

M.AssociationExecutionTargetsFilterKey = {
    Status = "Status",
    ResourceId = "ResourceId",
    ResourceType = "ResourceType",
}

M.AutomationExecutionFilterKey = {
    DOCUMENT_NAME_PREFIX = "DocumentNamePrefix",
    EXECUTION_STATUS = "ExecutionStatus",
    EXECUTION_ID = "ExecutionId",
    PARENT_EXECUTION_ID = "ParentExecutionId",
    CURRENT_ACTION = "CurrentAction",
    START_TIME_BEFORE = "StartTimeBefore",
    START_TIME_AFTER = "StartTimeAfter",
    AUTOMATION_TYPE = "AutomationType",
    TAG_KEY = "TagKey",
    TARGET_RESOURCE_GROUP = "TargetResourceGroup",
    AUTOMATION_SUBTYPE = "AutomationSubtype",
    OPS_ITEM_ID = "OpsItemId",
}

M.AutomationExecutionStatus = {
    PENDING = "Pending",
    INPROGRESS = "InProgress",
    WAITING = "Waiting",
    SUCCESS = "Success",
    TIMEDOUT = "TimedOut",
    CANCELLING = "Cancelling",
    CANCELLED = "Cancelled",
    FAILED = "Failed",
    PENDING_APPROVAL = "PendingApproval",
    APPROVED = "Approved",
    REJECTED = "Rejected",
    SCHEDULED = "Scheduled",
    RUNBOOK_INPROGRESS = "RunbookInProgress",
    PENDING_CHANGE_CALENDAR_OVERRIDE = "PendingChangeCalendarOverride",
    CHANGE_CALENDAR_OVERRIDE_APPROVED = "ChangeCalendarOverrideApproved",
    CHANGE_CALENDAR_OVERRIDE_REJECTED = "ChangeCalendarOverrideRejected",
    COMPLETED_WITH_SUCCESS = "CompletedWithSuccess",
    COMPLETED_WITH_FAILURE = "CompletedWithFailure",
    EXITED = "Exited",
}

M.AutomationSubtype = {
    ChangeRequest = "ChangeRequest",
    AccessRequest = "AccessRequest",
}

M.AutomationType = {
    CrossAccount = "CrossAccount",
    Local = "Local",
}

M.ExecutionMode = {
    Auto = "Auto",
    Interactive = "Interactive",
}

M.StepExecutionFilterKey = {
    START_TIME_BEFORE = "StartTimeBefore",
    START_TIME_AFTER = "StartTimeAfter",
    STEP_EXECUTION_STATUS = "StepExecutionStatus",
    STEP_EXECUTION_ID = "StepExecutionId",
    STEP_NAME = "StepName",
    ACTION = "Action",
    PARENT_STEP_EXECUTION_ID = "ParentStepExecutionId",
    PARENT_STEP_ITERATION = "ParentStepIteration",
    PARENT_STEP_ITERATOR_VALUE = "ParentStepIteratorValue",
}

M.DocumentPermissionType = {
    SHARE = "Share",
}

M.PatchDeploymentStatus = {
    Approved = "APPROVED",
    PendingApproval = "PENDING_APPROVAL",
    ExplicitApproved = "EXPLICIT_APPROVED",
    ExplicitRejected = "EXPLICIT_REJECTED",
}

M.InstanceInformationFilterKey = {
    INSTANCE_IDS = "InstanceIds",
    AGENT_VERSION = "AgentVersion",
    PING_STATUS = "PingStatus",
    PLATFORM_TYPES = "PlatformTypes",
    ACTIVATION_IDS = "ActivationIds",
    IAM_ROLE = "IamRole",
    RESOURCE_TYPE = "ResourceType",
    ASSOCIATION_STATUS = "AssociationStatus",
}

M.PingStatus = {
    ONLINE = "Online",
    CONNECTION_LOST = "ConnectionLost",
    INACTIVE = "Inactive",
}

M.ResourceType = {
    MANAGED_INSTANCE = "ManagedInstance",
    EC2_INSTANCE = "EC2Instance",
}

M.SourceType = {
    AWS_EC2_INSTANCE = "AWS::EC2::Instance",
    AWS_IOT_THING = "AWS::IoT::Thing",
    AWS_SSM_MANAGEDINSTANCE = "AWS::SSM::ManagedInstance",
}

M.PatchComplianceDataState = {
    Installed = "INSTALLED",
    InstalledOther = "INSTALLED_OTHER",
    InstalledPendingReboot = "INSTALLED_PENDING_REBOOT",
    InstalledRejected = "INSTALLED_REJECTED",
    Missing = "MISSING",
    NotApplicable = "NOT_APPLICABLE",
    Failed = "FAILED",
    AvailableSecurityUpdate = "AVAILABLE_SECURITY_UPDATE",
}

M.PatchOperationType = {
    SCAN = "Scan",
    INSTALL = "Install",
}

M.RebootOption = {
    REBOOT_IF_NEEDED = "RebootIfNeeded",
    NO_REBOOT = "NoReboot",
}

M.InstancePatchStateOperatorType = {
    EQUAL = "Equal",
    NOT_EQUAL = "NotEqual",
    LESS_THAN = "LessThan",
    GREATER_THAN = "GreaterThan",
}

M.InstancePropertyFilterOperator = {
    EQUAL = "Equal",
    NOT_EQUAL = "NotEqual",
    BEGIN_WITH = "BeginWith",
    LESS_THAN = "LessThan",
    GREATER_THAN = "GreaterThan",
}

M.InstancePropertyFilterKey = {
    INSTANCE_IDS = "InstanceIds",
    AGENT_VERSION = "AgentVersion",
    PING_STATUS = "PingStatus",
    PLATFORM_TYPES = "PlatformTypes",
    DOCUMENT_NAME = "DocumentName",
    ACTIVATION_IDS = "ActivationIds",
    IAM_ROLE = "IamRole",
    RESOURCE_TYPE = "ResourceType",
    ASSOCIATION_STATUS = "AssociationStatus",
}

M.InventoryDeletionStatus = {
    IN_PROGRESS = "InProgress",
    COMPLETE = "Complete",
}

M.MaintenanceWindowExecutionStatus = {
    Pending = "PENDING",
    InProgress = "IN_PROGRESS",
    Success = "SUCCESS",
    Failed = "FAILED",
    TimedOut = "TIMED_OUT",
    Cancelling = "CANCELLING",
    Cancelled = "CANCELLED",
    SkippedOverlapping = "SKIPPED_OVERLAPPING",
}

M.MaintenanceWindowTaskType = {
    RunCommand = "RUN_COMMAND",
    Automation = "AUTOMATION",
    StepFunctions = "STEP_FUNCTIONS",
    Lambda = "LAMBDA",
}

M.MaintenanceWindowResourceType = {
    Instance = "INSTANCE",
    ResourceGroup = "RESOURCE_GROUP",
}

M.MaintenanceWindowTaskCutoffBehavior = {
    ContinueTask = "CONTINUE_TASK",
    CancelTask = "CANCEL_TASK",
}

M.OpsItemFilterKey = {
    STATUS = "Status",
    CREATED_BY = "CreatedBy",
    SOURCE = "Source",
    PRIORITY = "Priority",
    TITLE = "Title",
    OPSITEM_ID = "OpsItemId",
    CREATED_TIME = "CreatedTime",
    LAST_MODIFIED_TIME = "LastModifiedTime",
    ACTUAL_START_TIME = "ActualStartTime",
    ACTUAL_END_TIME = "ActualEndTime",
    PLANNED_START_TIME = "PlannedStartTime",
    PLANNED_END_TIME = "PlannedEndTime",
    OPERATIONAL_DATA = "OperationalData",
    OPERATIONAL_DATA_KEY = "OperationalDataKey",
    OPERATIONAL_DATA_VALUE = "OperationalDataValue",
    RESOURCE_ID = "ResourceId",
    AUTOMATION_ID = "AutomationId",
    CATEGORY = "Category",
    SEVERITY = "Severity",
    OPSITEM_TYPE = "OpsItemType",
    ACCESS_REQUEST_REQUESTER_ARN = "AccessRequestByRequesterArn",
    ACCESS_REQUEST_REQUESTER_ID = "AccessRequestByRequesterId",
    ACCESS_REQUEST_APPROVER_ARN = "AccessRequestByApproverArn",
    ACCESS_REQUEST_APPROVER_ID = "AccessRequestByApproverId",
    ACCESS_REQUEST_SOURCE_ACCOUNT_ID = "AccessRequestBySourceAccountId",
    ACCESS_REQUEST_SOURCE_OPS_ITEM_ID = "AccessRequestBySourceOpsItemId",
    ACCESS_REQUEST_SOURCE_REGION = "AccessRequestBySourceRegion",
    ACCESS_REQUEST_IS_REPLICA = "AccessRequestByIsReplica",
    ACCESS_REQUEST_TARGET_RESOURCE_ID = "AccessRequestByTargetResourceId",
    CHANGE_REQUEST_REQUESTER_ARN = "ChangeRequestByRequesterArn",
    CHANGE_REQUEST_REQUESTER_NAME = "ChangeRequestByRequesterName",
    CHANGE_REQUEST_APPROVER_ARN = "ChangeRequestByApproverArn",
    CHANGE_REQUEST_APPROVER_NAME = "ChangeRequestByApproverName",
    CHANGE_REQUEST_TEMPLATE = "ChangeRequestByTemplate",
    CHANGE_REQUEST_TARGETS_RESOURCE_GROUP = "ChangeRequestByTargetsResourceGroup",
    INSIGHT_TYPE = "InsightByType",
    ACCOUNT_ID = "AccountId",
}

M.OpsItemFilterOperator = {
    EQUAL = "Equal",
    CONTAINS = "Contains",
    GREATER_THAN = "GreaterThan",
    LESS_THAN = "LessThan",
}

M.OpsItemStatus = {
    OPEN = "Open",
    IN_PROGRESS = "InProgress",
    RESOLVED = "Resolved",
    PENDING = "Pending",
    TIMED_OUT = "TimedOut",
    CANCELLING = "Cancelling",
    CANCELLED = "Cancelled",
    FAILED = "Failed",
    COMPLETED_WITH_SUCCESS = "CompletedWithSuccess",
    COMPLETED_WITH_FAILURE = "CompletedWithFailure",
    SCHEDULED = "Scheduled",
    RUNBOOK_IN_PROGRESS = "RunbookInProgress",
    PENDING_CHANGE_CALENDAR_OVERRIDE = "PendingChangeCalendarOverride",
    CHANGE_CALENDAR_OVERRIDE_APPROVED = "ChangeCalendarOverrideApproved",
    CHANGE_CALENDAR_OVERRIDE_REJECTED = "ChangeCalendarOverrideRejected",
    PENDING_APPROVAL = "PendingApproval",
    APPROVED = "Approved",
    REVOKED = "Revoked",
    REJECTED = "Rejected",
    CLOSED = "Closed",
}

M.ParametersFilterKey = {
    NAME = "Name",
    TYPE = "Type",
    KEY_ID = "KeyId",
}

M.ParameterTier = {
    STANDARD = "Standard",
    ADVANCED = "Advanced",
    INTELLIGENT_TIERING = "Intelligent-Tiering",
}

M.ParameterType = {
    STRING = "String",
    STRING_LIST = "StringList",
    SECURE_STRING = "SecureString",
}

M.PatchSet = {
    Os = "OS",
    Application = "APPLICATION",
}

M.PatchProperty = {
    Product = "PRODUCT",
    PatchProductFamily = "PRODUCT_FAMILY",
    PatchClassification = "CLASSIFICATION",
    PatchMsrcSeverity = "MSRC_SEVERITY",
    PatchPriority = "PRIORITY",
    PatchSeverity = "SEVERITY",
}

M.SessionFilterKey = {
    INVOKED_AFTER = "InvokedAfter",
    INVOKED_BEFORE = "InvokedBefore",
    TARGET_ID = "Target",
    OWNER = "Owner",
    STATUS = "Status",
    SESSION_ID = "SessionId",
    ACCESS_TYPE = "AccessType",
}

M.SessionState = {
    ACTIVE = "Active",
    HISTORY = "History",
}

M.SessionStatus = {
    CONNECTED = "Connected",
    CONNECTING = "Connecting",
    DISCONNECTED = "Disconnected",
    TERMINATED = "Terminated",
    TERMINATING = "Terminating",
    FAILED = "Failed",
}

M.CalendarState = {
    OPEN = "OPEN",
    CLOSED = "CLOSED",
}

M.CommandInvocationStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    DELAYED = "Delayed",
    SUCCESS = "Success",
    CANCELLED = "Cancelled",
    TIMED_OUT = "TimedOut",
    FAILED = "Failed",
    CANCELLING = "Cancelling",
}

M.ConnectionStatus = {
    CONNECTED = "connected",
    NOT_CONNECTED = "notconnected",
}

M.AttachmentHashType = {
    SHA256 = "Sha256",
}

M.ImpactType = {
    MUTATING = "Mutating",
    NON_MUTATING = "NonMutating",
    UNDETERMINED = "Undetermined",
}

M.ExecutionPreviewStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    FAILED = "Failed",
}

M.InventoryQueryOperatorType = {
    EQUAL = "Equal",
    NOT_EQUAL = "NotEqual",
    BEGIN_WITH = "BeginWith",
    LESS_THAN = "LessThan",
    GREATER_THAN = "GreaterThan",
    EXISTS = "Exists",
}

M.InventoryAttributeDataType = {
    STRING = "string",
    NUMBER = "number",
}

M.NotificationEvent = {
    ALL = "All",
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    TIMED_OUT = "TimedOut",
    CANCELLED = "Cancelled",
    FAILED = "Failed",
}

M.NotificationType = {
    Command = "Command",
    Invocation = "Invocation",
}

M.OpsFilterOperatorType = {
    EQUAL = "Equal",
    NOT_EQUAL = "NotEqual",
    BEGIN_WITH = "BeginWith",
    LESS_THAN = "LessThan",
    GREATER_THAN = "GreaterThan",
    EXISTS = "Exists",
}

M.AssociationFilterKey = {
    InstanceId = "InstanceId",
    Name = "Name",
    AssociationId = "AssociationId",
    Status = "AssociationStatusName",
    LastExecutedBefore = "LastExecutedBefore",
    LastExecutedAfter = "LastExecutedAfter",
    AssociationName = "AssociationName",
    ResourceGroupName = "ResourceGroupName",
}

M.CommandFilterKey = {
    INVOKED_AFTER = "InvokedAfter",
    INVOKED_BEFORE = "InvokedBefore",
    STATUS = "Status",
    EXECUTION_STAGE = "ExecutionStage",
    DOCUMENT_NAME = "DocumentName",
}

M.CommandPluginStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    TIMED_OUT = "TimedOut",
    CANCELLED = "Cancelled",
    FAILED = "Failed",
}

M.CommandStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    CANCELLED = "Cancelled",
    FAILED = "Failed",
    TIMED_OUT = "TimedOut",
    CANCELLING = "Cancelling",
}

M.ComplianceQueryOperatorType = {
    Equal = "EQUAL",
    NotEqual = "NOT_EQUAL",
    BeginWith = "BEGIN_WITH",
    LessThan = "LESS_THAN",
    GreaterThan = "GREATER_THAN",
}

M.ComplianceSeverity = {
    Critical = "CRITICAL",
    High = "HIGH",
    Medium = "MEDIUM",
    Low = "LOW",
    Informational = "INFORMATIONAL",
    Unspecified = "UNSPECIFIED",
}

M.ComplianceStatus = {
    Compliant = "COMPLIANT",
    NonCompliant = "NON_COMPLIANT",
}

M.DocumentMetadataEnum = {
    DocumentReviews = "DocumentReviews",
}

M.DocumentReviewCommentType = {
    Comment = "Comment",
}

M.DocumentFilterKey = {
    Name = "Name",
    Owner = "Owner",
    PlatformTypes = "PlatformTypes",
    DocumentType = "DocumentType",
}

M.NodeFilterKey = {
    AGENT_TYPE = "AgentType",
    AGENT_VERSION = "AgentVersion",
    COMPUTER_NAME = "ComputerName",
    INSTANCE_ID = "InstanceId",
    INSTANCE_STATUS = "InstanceStatus",
    IP_ADDRESS = "IpAddress",
    MANAGED_STATUS = "ManagedStatus",
    PLATFORM_NAME = "PlatformName",
    PLATFORM_TYPE = "PlatformType",
    PLATFORM_VERSION = "PlatformVersion",
    RESOURCE_TYPE = "ResourceType",
    ORGANIZATIONAL_UNIT_ID = "OrganizationalUnitId",
    ORGANIZATIONAL_UNIT_PATH = "OrganizationalUnitPath",
    REGION = "Region",
    ACCOUNT_ID = "AccountId",
}

M.NodeFilterOperatorType = {
    EQUAL = "Equal",
    NOT_EQUAL = "NotEqual",
    BEGIN_WITH = "BeginWith",
}

M.ManagedStatus = {
    ALL = "All",
    MANAGED = "Managed",
    UNMANAGED = "Unmanaged",
}

M.NodeAggregatorType = {
    COUNT = "Count",
}

M.NodeAttributeName = {
    AGENT_VERSION = "AgentVersion",
    PLATFORM_NAME = "PlatformName",
    PLATFORM_TYPE = "PlatformType",
    PLATFORM_VERSION = "PlatformVersion",
    REGION = "Region",
    RESOURCE_TYPE = "ResourceType",
}

M.NodeTypeName = {
    INSTANCE = "Instance",
}

M.OpsItemEventFilterKey = {
    OPSITEM_ID = "OpsItemId",
}

M.OpsItemEventFilterOperator = {
    EQUAL = "Equal",
}

M.OpsItemRelatedItemsFilterKey = {
    RESOURCE_TYPE = "ResourceType",
    ASSOCIATION_ID = "AssociationId",
    RESOURCE_URI = "ResourceUri",
}

M.OpsItemRelatedItemsFilterOperator = {
    EQUAL = "Equal",
}

M.LastResourceDataSyncStatus = {
    SUCCESSFUL = "Successful",
    FAILED = "Failed",
    INPROGRESS = "InProgress",
}

M.ComplianceUploadType = {
    Complete = "COMPLETE",
    Partial = "PARTIAL",
}

M.SignalType = {
    APPROVE = "Approve",
    REJECT = "Reject",
    START_STEP = "StartStep",
    STOP_STEP = "StopStep",
    RESUME = "Resume",
    REVOKE = "Revoke",
}

M.StopType = {
    COMPLETE = "Complete",
    CANCEL = "Cancel",
}

M.DocumentReviewAction = {
    SendForReview = "SendForReview",
    UpdateReview = "UpdateReview",
    Approve = "Approve",
    Reject = "Reject",
}

return M
