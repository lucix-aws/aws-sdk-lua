local M = {}

M.ConnectionMode = {
    DIRECT = "DIRECT",
    VPC_ENDPOINT = "VPC_ENDPOINT",
}

M.InboundConnectionStatusCode = {
    PENDING_ACCEPTANCE = "PENDING_ACCEPTANCE",
    APPROVED = "APPROVED",
    PROVISIONING = "PROVISIONING",
    ACTIVE = "ACTIVE",
    REJECTING = "REJECTING",
    REJECTED = "REJECTED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.OptionState = {
    RequiresIndexDocuments = "RequiresIndexDocuments",
    Processing = "Processing",
    Active = "Active",
}

M.ActionSeverity = {
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.ActionStatus = {
    PENDING_UPDATE = "PENDING_UPDATE",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
    NOT_ELIGIBLE = "NOT_ELIGIBLE",
    ELIGIBLE = "ELIGIBLE",
}

M.ActionType = {
    SERVICE_SOFTWARE_UPDATE = "SERVICE_SOFTWARE_UPDATE",
    JVM_HEAP_SIZE_TUNING = "JVM_HEAP_SIZE_TUNING",
    JVM_YOUNG_GEN_TUNING = "JVM_YOUNG_GEN_TUNING",
}

M.NaturalLanguageQueryGenerationDesiredState = {
    Enabled = "ENABLED",
    Disabled = "DISABLED",
}

M.NaturalLanguageQueryGenerationCurrentState = {
    NotEnabled = "NOT_ENABLED",
    EnableComplete = "ENABLE_COMPLETE",
    EnableInProgress = "ENABLE_IN_PROGRESS",
    EnableFailed = "ENABLE_FAILED",
    DisableComplete = "DISABLE_COMPLETE",
    DisableInProgress = "DISABLE_IN_PROGRESS",
    DisableFailed = "DISABLE_FAILED",
}

M.DomainPackageStatus = {
    ASSOCIATING = "ASSOCIATING",
    ASSOCIATION_FAILED = "ASSOCIATION_FAILED",
    ACTIVE = "ACTIVE",
    DISSOCIATING = "DISSOCIATING",
    DISSOCIATION_FAILED = "DISSOCIATION_FAILED",
}

M.PackageType = {
    TXT_DICTIONARY = "TXT-DICTIONARY",
    ZIP_PLUGIN = "ZIP-PLUGIN",
    PACKAGE_LICENSE = "PACKAGE-LICENSE",
    PACKAGE_CONFIG = "PACKAGE-CONFIG",
}

M.AWSServicePrincipal = {
    application_opensearchservice_amazonaws_com = "application.opensearchservice.amazonaws.com",
}

M.PrincipalType = {
    AWS_ACCOUNT = "AWS_ACCOUNT",
    AWS_SERVICE = "AWS_SERVICE",
}

M.DeploymentStatus = {
    PENDING_UPDATE = "PENDING_UPDATE",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    NOT_ELIGIBLE = "NOT_ELIGIBLE",
    ELIGIBLE = "ELIGIBLE",
}

M.AppConfigType = {
    OpensearchDashboardAdminUsers = "opensearchDashboards.dashboardAdmin.users",
    OpensearchDashboardAdminGroups = "opensearchDashboards.dashboardAdmin.groups",
}

M.AutoTuneDesiredState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TimeUnit = {
    HOURS = "HOURS",
}

M.OpenSearchPartitionInstanceType = {
    m3_medium_search = "m3.medium.search",
    m3_large_search = "m3.large.search",
    m3_xlarge_search = "m3.xlarge.search",
    m3_2xlarge_search = "m3.2xlarge.search",
    m4_large_search = "m4.large.search",
    m4_xlarge_search = "m4.xlarge.search",
    m4_2xlarge_search = "m4.2xlarge.search",
    m4_4xlarge_search = "m4.4xlarge.search",
    m4_10xlarge_search = "m4.10xlarge.search",
    m5_large_search = "m5.large.search",
    m5_xlarge_search = "m5.xlarge.search",
    m5_2xlarge_search = "m5.2xlarge.search",
    m5_4xlarge_search = "m5.4xlarge.search",
    m5_12xlarge_search = "m5.12xlarge.search",
    m5_24xlarge_search = "m5.24xlarge.search",
    r5_large_search = "r5.large.search",
    r5_xlarge_search = "r5.xlarge.search",
    r5_2xlarge_search = "r5.2xlarge.search",
    r5_4xlarge_search = "r5.4xlarge.search",
    r5_12xlarge_search = "r5.12xlarge.search",
    r5_24xlarge_search = "r5.24xlarge.search",
    c5_large_search = "c5.large.search",
    c5_xlarge_search = "c5.xlarge.search",
    c5_2xlarge_search = "c5.2xlarge.search",
    c5_4xlarge_search = "c5.4xlarge.search",
    c5_9xlarge_search = "c5.9xlarge.search",
    c5_18xlarge_search = "c5.18xlarge.search",
    t3_nano_search = "t3.nano.search",
    t3_micro_search = "t3.micro.search",
    t3_small_search = "t3.small.search",
    t3_medium_search = "t3.medium.search",
    t3_large_search = "t3.large.search",
    t3_xlarge_search = "t3.xlarge.search",
    t3_2xlarge_search = "t3.2xlarge.search",
    or1_medium_search = "or1.medium.search",
    or1_large_search = "or1.large.search",
    or1_xlarge_search = "or1.xlarge.search",
    or1_2xlarge_search = "or1.2xlarge.search",
    or1_4xlarge_search = "or1.4xlarge.search",
    or1_8xlarge_search = "or1.8xlarge.search",
    or1_12xlarge_search = "or1.12xlarge.search",
    or1_16xlarge_search = "or1.16xlarge.search",
    ultrawarm1_medium_search = "ultrawarm1.medium.search",
    ultrawarm1_large_search = "ultrawarm1.large.search",
    ultrawarm1_xlarge_search = "ultrawarm1.xlarge.search",
    t2_micro_search = "t2.micro.search",
    t2_small_search = "t2.small.search",
    t2_medium_search = "t2.medium.search",
    r3_large_search = "r3.large.search",
    r3_xlarge_search = "r3.xlarge.search",
    r3_2xlarge_search = "r3.2xlarge.search",
    r3_4xlarge_search = "r3.4xlarge.search",
    r3_8xlarge_search = "r3.8xlarge.search",
    i2_xlarge_search = "i2.xlarge.search",
    i2_2xlarge_search = "i2.2xlarge.search",
    d2_xlarge_search = "d2.xlarge.search",
    d2_2xlarge_search = "d2.2xlarge.search",
    d2_4xlarge_search = "d2.4xlarge.search",
    d2_8xlarge_search = "d2.8xlarge.search",
    c4_large_search = "c4.large.search",
    c4_xlarge_search = "c4.xlarge.search",
    c4_2xlarge_search = "c4.2xlarge.search",
    c4_4xlarge_search = "c4.4xlarge.search",
    c4_8xlarge_search = "c4.8xlarge.search",
    r4_large_search = "r4.large.search",
    r4_xlarge_search = "r4.xlarge.search",
    r4_2xlarge_search = "r4.2xlarge.search",
    r4_4xlarge_search = "r4.4xlarge.search",
    r4_8xlarge_search = "r4.8xlarge.search",
    r4_16xlarge_search = "r4.16xlarge.search",
    i3_large_search = "i3.large.search",
    i3_xlarge_search = "i3.xlarge.search",
    i3_2xlarge_search = "i3.2xlarge.search",
    i3_4xlarge_search = "i3.4xlarge.search",
    i3_8xlarge_search = "i3.8xlarge.search",
    i3_16xlarge_search = "i3.16xlarge.search",
    r6g_large_search = "r6g.large.search",
    r6g_xlarge_search = "r6g.xlarge.search",
    r6g_2xlarge_search = "r6g.2xlarge.search",
    r6g_4xlarge_search = "r6g.4xlarge.search",
    r6g_8xlarge_search = "r6g.8xlarge.search",
    r6g_12xlarge_search = "r6g.12xlarge.search",
    m6g_large_search = "m6g.large.search",
    m6g_xlarge_search = "m6g.xlarge.search",
    m6g_2xlarge_search = "m6g.2xlarge.search",
    m6g_4xlarge_search = "m6g.4xlarge.search",
    m6g_8xlarge_search = "m6g.8xlarge.search",
    m6g_12xlarge_search = "m6g.12xlarge.search",
    c6g_large_search = "c6g.large.search",
    c6g_xlarge_search = "c6g.xlarge.search",
    c6g_2xlarge_search = "c6g.2xlarge.search",
    c6g_4xlarge_search = "c6g.4xlarge.search",
    c6g_8xlarge_search = "c6g.8xlarge.search",
    c6g_12xlarge_search = "c6g.12xlarge.search",
    r6gd_large_search = "r6gd.large.search",
    r6gd_xlarge_search = "r6gd.xlarge.search",
    r6gd_2xlarge_search = "r6gd.2xlarge.search",
    r6gd_4xlarge_search = "r6gd.4xlarge.search",
    r6gd_8xlarge_search = "r6gd.8xlarge.search",
    r6gd_12xlarge_search = "r6gd.12xlarge.search",
    r6gd_16xlarge_search = "r6gd.16xlarge.search",
    t4g_small_search = "t4g.small.search",
    t4g_medium_search = "t4g.medium.search",
}

M.NodeOptionsNodeType = {
    COORDINATOR = "coordinator",
}

M.OpenSearchWarmPartitionInstanceType = {
    ultrawarm1_medium_search = "ultrawarm1.medium.search",
    ultrawarm1_large_search = "ultrawarm1.large.search",
    ultrawarm1_xlarge_search = "ultrawarm1.xlarge.search",
}

M.DeploymentStrategy = {
    DEFAULT = "Default",
    CAPACITY_OPTIMIZED = "CapacityOptimized",
}

M.TLSSecurityPolicy = {
    POLICY_MIN_TLS_1_0_2019_07 = "Policy-Min-TLS-1-0-2019-07",
    POLICY_MIN_TLS_1_2_2019_07 = "Policy-Min-TLS-1-2-2019-07",
    POLICY_MIN_TLS_1_2_PFS_2023_10 = "Policy-Min-TLS-1-2-PFS-2023-10",
    POLICY_MIN_TLS_1_2_RFC9151_FIPS_2024_08 = "Policy-Min-TLS-1-2-RFC9151-FIPS-2024-08",
}

M.VolumeType = {
    standard = "standard",
    gp2 = "gp2",
    io1 = "io1",
    gp3 = "gp3",
}

M.RolesKeyIdCOption = {
    GroupName = "GroupName",
    GroupId = "GroupId",
}

M.SubjectKeyIdCOption = {
    UserName = "UserName",
    UserId = "UserId",
    Email = "Email",
}

M.IPAddressType = {
    IPV4 = "ipv4",
    DUALSTACK = "dualstack",
}

M.LogType = {
    INDEX_SLOW_LOGS = "INDEX_SLOW_LOGS",
    SEARCH_SLOW_LOGS = "SEARCH_SLOW_LOGS",
    ES_APPLICATION_LOGS = "ES_APPLICATION_LOGS",
    AUDIT_LOGS = "AUDIT_LOGS",
}

M.AutoTuneState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ENABLE_IN_PROGRESS = "ENABLE_IN_PROGRESS",
    DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS",
    DISABLED_AND_ROLLBACK_SCHEDULED = "DISABLED_AND_ROLLBACK_SCHEDULED",
    DISABLED_AND_ROLLBACK_IN_PROGRESS = "DISABLED_AND_ROLLBACK_IN_PROGRESS",
    DISABLED_AND_ROLLBACK_COMPLETE = "DISABLED_AND_ROLLBACK_COMPLETE",
    DISABLED_AND_ROLLBACK_ERROR = "DISABLED_AND_ROLLBACK_ERROR",
    ERROR = "ERROR",
}

M.ConfigChangeStatus = {
    PENDING = "Pending",
    INITIALIZING = "Initializing",
    VALIDATING = "Validating",
    VALIDATION_FAILED = "ValidationFailed",
    APPLYING_CHANGES = "ApplyingChanges",
    COMPLETED = "Completed",
    PENDING_USER_INPUT = "PendingUserInput",
    CANCELLED = "Cancelled",
}

M.InitiatedBy = {
    CUSTOMER = "CUSTOMER",
    SERVICE = "SERVICE",
}

M.DomainProcessingStatusType = {
    CREATING = "Creating",
    ACTIVE = "Active",
    MODIFYING = "Modifying",
    UPGRADING = "UpgradingEngineVersion",
    UPDATING = "UpdatingServiceSoftware",
    ISOLATED = "Isolated",
    DELETING = "Deleting",
}

M.PropertyValueType = {
    PLAIN_TEXT = "PLAIN_TEXT",
    STRINGIFIED_JSON = "STRINGIFIED_JSON",
}

M.IndexStatus = {
    CREATED = "CREATED",
    UPDATED = "UPDATED",
    DELETED = "DELETED",
}

M.SkipUnavailableStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.OutboundConnectionStatusCode = {
    VALIDATING = "VALIDATING",
    VALIDATION_FAILED = "VALIDATION_FAILED",
    PENDING_ACCEPTANCE = "PENDING_ACCEPTANCE",
    APPROVED = "APPROVED",
    PROVISIONING = "PROVISIONING",
    ACTIVE = "ACTIVE",
    REJECTING = "REJECTING",
    REJECTED = "REJECTED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.RequirementLevel = {
    REQUIRED = "REQUIRED",
    OPTIONAL = "OPTIONAL",
    NONE = "NONE",
}

M.PackageStatus = {
    COPYING = "COPYING",
    COPY_FAILED = "COPY_FAILED",
    VALIDATING = "VALIDATING",
    VALIDATION_FAILED = "VALIDATION_FAILED",
    AVAILABLE = "AVAILABLE",
    DELETING = "DELETING",
    DELETED = "DELETED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.VpcEndpointStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.CapabilityStatus = {
    CREATING = "creating",
    CREATE_FAILED = "create_failed",
    ACTIVE = "active",
    UPDATING = "updating",
    UPDATE_FAILED = "update_failed",
    DELETING = "deleting",
    DELETE_FAILED = "delete_failed",
}

M.ScheduledAutoTuneActionType = {
    JVM_HEAP_SIZE_TUNING = "JVM_HEAP_SIZE_TUNING",
    JVM_YOUNG_GEN_TUNING = "JVM_YOUNG_GEN_TUNING",
}

M.ScheduledAutoTuneSeverityType = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.AutoTuneType = {
    SCHEDULED_ACTION = "SCHEDULED_ACTION",
}

M.OverallChangeStatus = {
    PENDING = "PENDING",
    PROCESSING = "PROCESSING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.RollbackOnDisable = {
    NO_ROLLBACK = "NO_ROLLBACK",
    DEFAULT_ROLLBACK = "DEFAULT_ROLLBACK",
}

M.DomainHealth = {
    Red = "Red",
    Yellow = "Yellow",
    Green = "Green",
    NotAvailable = "NotAvailable",
}

M.DomainState = {
    Active = "Active",
    Processing = "Processing",
    NotAvailable = "NotAvailable",
}

M.ZoneStatus = {
    Active = "Active",
    StandBy = "StandBy",
    NotAvailable = "NotAvailable",
}

M.MasterNodeStatus = {
    Available = "Available",
    UnAvailable = "UnAvailable",
}

M.NodeStatus = {
    Active = "Active",
    StandBy = "StandBy",
    NotAvailable = "NotAvailable",
}

M.NodeType = {
    Data = "Data",
    Ultrawarm = "Ultrawarm",
    Master = "Master",
    Warm = "Warm",
}

M.InsightEntityType = {
    ACCOUNT = "Account",
    DOMAIN = "DomainName",
}

M.InsightFieldType = {
    TEXT = "text",
    METRIC = "metric",
}

M.DescribePackagesFilterName = {
    PackageID = "PackageID",
    PackageName = "PackageName",
    PackageStatus = "PackageStatus",
    PackageType = "PackageType",
    EngineVersion = "EngineVersion",
    PackageOwner = "PackageOwner",
}

M.ReservedInstancePaymentOption = {
    ALL_UPFRONT = "ALL_UPFRONT",
    PARTIAL_UPFRONT = "PARTIAL_UPFRONT",
    NO_UPFRONT = "NO_UPFRONT",
}

M.VpcEndpointErrorCode = {
    ENDPOINT_NOT_FOUND = "ENDPOINT_NOT_FOUND",
    SERVER_ERROR = "SERVER_ERROR",
}

M.ApplicationStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.CapabilityFailureReason = {
    KMS_KEY_INSUFFICIENT_PERMISSION = "KMS_KEY_INSUFFICIENT_PERMISSION",
}

M.DataSourceStatus = {
    ACTIVE = "ACTIVE",
    DISABLED = "DISABLED",
}

M.MaintenanceType = {
    REBOOT_NODE = "REBOOT_NODE",
    RESTART_SEARCH_PROCESS = "RESTART_SEARCH_PROCESS",
    RESTART_DASHBOARD = "RESTART_DASHBOARD",
}

M.MaintenanceStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
}

M.UpgradeStep = {
    PRE_UPGRADE_CHECK = "PRE_UPGRADE_CHECK",
    SNAPSHOT = "SNAPSHOT",
    UPGRADE = "UPGRADE",
}

M.UpgradeStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    SUCCEEDED_WITH_ISSUES = "SUCCEEDED_WITH_ISSUES",
    FAILED = "FAILED",
}

M.EngineType = {
    OpenSearch = "OpenSearch",
    Elasticsearch = "Elasticsearch",
}

M.InsightSortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.InsightPriorityLevel = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.InsightStatus = {
    ACTIVE = "ACTIVE",
    RESOLVED = "RESOLVED",
    DISMISSED = "DISMISSED",
}

M.InsightType = {
    EVENT = "EVENT",
    RECOMMENDATION = "RECOMMENDATION",
}

M.ScheduledBy = {
    CUSTOMER = "CUSTOMER",
    SYSTEM = "SYSTEM",
}

M.ScheduleAt = {
    NOW = "NOW",
    TIMESTAMP = "TIMESTAMP",
    OFF_PEAK_WINDOW = "OFF_PEAK_WINDOW",
}

M.DryRunMode = {
    Basic = "Basic",
    Verbose = "Verbose",
}

M.PackageScopeOperationEnum = {
    ADD = "ADD",
    OVERRIDE = "OVERRIDE",
    REMOVE = "REMOVE",
}

return M
