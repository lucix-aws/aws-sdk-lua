local M = {}

M.ResourceMappingType = {
    CFN_STACK = "CfnStack",
    RESOURCE = "Resource",
    APP_REGISTRY_APP = "AppRegistryApp",
    RESOURCE_GROUP = "ResourceGroup",
    TERRAFORM = "Terraform",
    EKS = "EKS",
}

M.PhysicalIdentifierType = {
    ARN = "Arn",
    NATIVE = "Native",
}

M.ExcludeRecommendationReason = {
    ALREADY_IMPLEMENTED = "AlreadyImplemented",
    NOT_RELEVANT = "NotRelevant",
    COMPLEXITY_OF_IMPLEMENTATION = "ComplexityOfImplementation",
}

M.RecommendationStatus = {
    IMPLEMENTED = "Implemented",
    INACTIVE = "Inactive",
    NOT_IMPLEMENTED = "NotImplemented",
    EXCLUDED = "Excluded",
}

M.AlarmType = {
    METRIC = "Metric",
    COMPOSITE = "Composite",
    CANARY = "Canary",
    LOGS = "Logs",
    EVENT = "Event",
}

M.AppAssessmentScheduleType = {
    DISABLED = "Disabled",
    DAILY = "Daily",
}

M.AppComplianceStatusType = {
    POLICY_BREACHED = "PolicyBreached",
    POLICY_MET = "PolicyMet",
    NOT_ASSESSED = "NotAssessed",
    CHANGES_DETECTED = "ChangesDetected",
    NOT_APPLICABLE = "NotApplicable",
    MISSING_POLICY = "MissingPolicy",
}

M.AppDriftStatusType = {
    NOT_CHECKED = "NotChecked",
    NOT_DETECTED = "NotDetected",
    DETECTED = "Detected",
}

M.EventType = {
    SCHEDULED_ASSESSMENT_FAILURE = "ScheduledAssessmentFailure",
    DRIFT_DETECTED = "DriftDetected",
}

M.PermissionModelType = {
    LEGACY_IAM_USER = "LegacyIAMUser",
    ROLE_BASED = "RoleBased",
}

M.AppStatusType = {
    ACTIVE = "Active",
    DELETING = "Deleting",
}

M.AssessmentStatus = {
    PENDING = "Pending",
    INPROGRESS = "InProgress",
    FAILED = "Failed",
    SUCCESS = "Success",
}

M.DisruptionType = {
    SOFTWARE = "Software",
    HARDWARE = "Hardware",
    AZ = "AZ",
    REGION = "Region",
}

M.ComplianceStatus = {
    POLICY_BREACHED = "PolicyBreached",
    POLICY_MET = "PolicyMet",
    NOT_APPLICABLE = "NotApplicable",
    MISSING_POLICY = "MissingPolicy",
}

M.CostFrequency = {
    HOURLY = "Hourly",
    DAILY = "Daily",
    MONTHLY = "Monthly",
    YEARLY = "Yearly",
}

M.DriftStatus = {
    NOT_CHECKED = "NotChecked",
    NOT_DETECTED = "NotDetected",
    DETECTED = "Detected",
}

M.AssessmentInvoker = {
    USER = "User",
    SYSTEM = "System",
}

M.DataLocationConstraint = {
    ANY_LOCATION = "AnyLocation",
    SAME_CONTINENT = "SameContinent",
    SAME_COUNTRY = "SameCountry",
}

M.EstimatedCostTier = {
    L1 = "L1",
    L2 = "L2",
    L3 = "L3",
    L4 = "L4",
}

M.ResiliencyPolicyTier = {
    MISSION_CRITICAL = "MissionCritical",
    CRITICAL = "Critical",
    IMPORTANT = "Important",
    CORE_SERVICES = "CoreServices",
    NON_CRITICAL = "NonCritical",
    NOT_APPLICABLE = "NotApplicable",
}

M.ResiliencyScoreType = {
    COMPLIANCE = "Compliance",
    TEST = "Test",
    ALARM = "Alarm",
    SOP = "Sop",
}

M.ResourceSourceType = {
    APP_TEMPLATE = "AppTemplate",
    DISCOVERED = "Discovered",
}

M.TemplateFormat = {
    CFN_YAML = "CfnYaml",
    CFN_JSON = "CfnJson",
}

M.RenderRecommendationType = {
    ALARM = "Alarm",
    SOP = "Sop",
    TEST = "Test",
}

M.RecommendationTemplateStatus = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    SUCCESS = "Success",
}

M.ResourceResolutionStatusType = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    SUCCESS = "Success",
}

M.ResourceImportStatusType = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    SUCCESS = "Success",
}

M.MetricsExportStatusType = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    SUCCESS = "Success",
}

M.ResourcesGroupingRecGenStatusType = {
    PENDING = "Pending",
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    SUCCESS = "Success",
}

M.ResourceImportStrategyType = {
    ADD_ONLY = "AddOnly",
    REPLACE_ALL = "ReplaceAll",
}

M.DifferenceType = {
    NOT_EQUAL = "NotEqual",
    ADDED = "Added",
    REMOVED = "Removed",
}

M.DriftType = {
    APPLICATION_COMPLIANCE = "ApplicationCompliance",
    APP_COMPONENT_RESILIENCY_COMPLIANCE_STATUS = "AppComponentResiliencyComplianceStatus",
}

M.HaArchitecture = {
    MULTI_SITE = "MultiSite",
    WARM_STANDBY = "WarmStandby",
    PILOT_LIGHT = "PilotLight",
    BACKUP_AND_RESTORE = "BackupAndRestore",
    NO_RECOVERY_PLAN = "NoRecoveryPlan",
}

M.ConfigRecommendationOptimizationType = {
    LEAST_COST = "LeastCost",
    LEAST_CHANGE = "LeastChange",
    BEST_AZ_RECOVERY = "BestAZRecovery",
    LEAST_ERRORS = "LeastErrors",
    BEST_ATTAINABLE = "BestAttainable",
    BEST_REGION_RECOVERY = "BestRegionRecovery",
}

M.RecommendationComplianceStatus = {
    BREACHED_UNATTAINABLE = "BreachedUnattainable",
    BREACHED_CAN_MEET = "BreachedCanMeet",
    MET_CAN_IMPROVE = "MetCanImprove",
    MISSING_POLICY = "MissingPolicy",
}

M.ConditionOperatorType = {
    EQUALS = "Equals",
    NOT_EQUALS = "NotEquals",
    GREATER_THEN = "GreaterThen",
    GREATER_OR_EQUALS = "GreaterOrEquals",
    LESS_THEN = "LessThen",
    LESS_OR_EQUALS = "LessOrEquals",
}

M.FieldAggregationType = {
    MIN = "Min",
    MAX = "Max",
    SUM = "Sum",
    AVG = "Avg",
    COUNT = "Count",
}

M.GroupingRecommendationConfidenceLevel = {
    HIGH = "High",
    MEDIUM = "Medium",
}

M.GroupingRecommendationRejectionReason = {
    DISTINCT_BUSINESS_PURPOSE = "DistinctBusinessPurpose",
    SEPARATE_DATA_CONCERN = "SeparateDataConcern",
    DISTINCT_USER_GROUP_HANDLING = "DistinctUserGroupHandling",
    OTHER = "Other",
}

M.GroupingRecommendationStatusType = {
    ACCEPTED = "Accepted",
    REJECTED = "Rejected",
    PENDING_DECISION = "PendingDecision",
}

M.SopServiceType = {
    SSM = "SSM",
}

M.TestRisk = {
    SMALL = "Small",
    MEDIUM = "Medium",
    HIGH = "High",
}

M.TestType = {
    SOFTWARE = "Software",
    HARDWARE = "Hardware",
    AZ = "AZ",
    REGION = "Region",
}

return M
