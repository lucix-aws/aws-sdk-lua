local M = {}

M.SeverityLabel = {
    INFORMATIONAL = "INFORMATIONAL",
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    CRITICAL = "CRITICAL",
}

M.VerificationState = {
    UNKNOWN = "UNKNOWN",
    TRUE_POSITIVE = "TRUE_POSITIVE",
    FALSE_POSITIVE = "FALSE_POSITIVE",
    BENIGN_POSITIVE = "BENIGN_POSITIVE",
}

M.WorkflowStatus = {
    NEW = "NEW",
    NOTIFIED = "NOTIFIED",
    RESOLVED = "RESOLVED",
    SUPPRESSED = "SUPPRESSED",
}

M.AutomationRulesActionType = {
    FINDING_FIELDS_UPDATE = "FINDING_FIELDS_UPDATE",
}

M.ActorSessionMfaStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AdminStatus = {
    ENABLED = "ENABLED",
    DISABLE_IN_PROGRESS = "DISABLE_IN_PROGRESS",
}

M.AllowedOperators = {
    AND = "AND",
    OR = "OR",
}

M.ConfigurationPolicyAssociationStatus = {
    PENDING = "PENDING",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
}

M.AssociationType = {
    INHERITED = "INHERITED",
    APPLIED = "APPLIED",
}

M.AssociationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AutoEnableStandards = {
    NONE = "NONE",
    DEFAULT = "DEFAULT",
}

M.AutomationRulesActionTypeV2 = {
    FINDING_FIELDS_UPDATE = "FINDING_FIELDS_UPDATE",
    EXTERNAL_INTEGRATION = "EXTERNAL_INTEGRATION",
}

M.StringFilterComparison = {
    EQUALS = "EQUALS",
    PREFIX = "PREFIX",
    NOT_EQUALS = "NOT_EQUALS",
    PREFIX_NOT_EQUALS = "PREFIX_NOT_EQUALS",
    CONTAINS = "CONTAINS",
    NOT_CONTAINS = "NOT_CONTAINS",
    CONTAINS_WORD = "CONTAINS_WORD",
}

M.DateRangeUnit = {
    DAYS = "DAYS",
}

M.MapFilterComparison = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    CONTAINS = "CONTAINS",
    NOT_CONTAINS = "NOT_CONTAINS",
}

M.RuleStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.RuleStatusV2 = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AwsIamAccessKeyStatus = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
}

M.AwsS3BucketNotificationConfigurationS3KeyFilterRuleName = {
    PREFIX = "Prefix",
    SUFFIX = "Suffix",
}

M.ComplianceStatus = {
    PASSED = "PASSED",
    WARNING = "WARNING",
    FAILED = "FAILED",
    NOT_AVAILABLE = "NOT_AVAILABLE",
}

M.ConnectionDirection = {
    INBOUND = "INBOUND",
    OUTBOUND = "OUTBOUND",
}

M.MalwareState = {
    OBSERVED = "OBSERVED",
    REMOVAL_FAILED = "REMOVAL_FAILED",
    REMOVED = "REMOVED",
}

M.MalwareType = {
    ADWARE = "ADWARE",
    BLENDED_THREAT = "BLENDED_THREAT",
    BOTNET_AGENT = "BOTNET_AGENT",
    COIN_MINER = "COIN_MINER",
    EXPLOIT_KIT = "EXPLOIT_KIT",
    KEYLOGGER = "KEYLOGGER",
    MACRO = "MACRO",
    POTENTIALLY_UNWANTED = "POTENTIALLY_UNWANTED",
    SPYWARE = "SPYWARE",
    RANSOMWARE = "RANSOMWARE",
    REMOTE_ACCESS = "REMOTE_ACCESS",
    ROOTKIT = "ROOTKIT",
    TROJAN = "TROJAN",
    VIRUS = "VIRUS",
    WORM = "WORM",
}

M.NetworkDirection = {
    IN = "IN",
    OUT = "OUT",
}

M.RecordState = {
    ACTIVE = "ACTIVE",
    ARCHIVED = "ARCHIVED",
}

M.Partition = {
    AWS = "aws",
    AWS_CN = "aws-cn",
    AWS_US_GOV = "aws-us-gov",
}

M.ThreatIntelIndicatorCategory = {
    BACKDOOR = "BACKDOOR",
    CARD_STEALER = "CARD_STEALER",
    COMMAND_AND_CONTROL = "COMMAND_AND_CONTROL",
    DROP_SITE = "DROP_SITE",
    EXPLOIT_SITE = "EXPLOIT_SITE",
    KEYLOGGER = "KEYLOGGER",
}

M.ThreatIntelIndicatorType = {
    DOMAIN = "DOMAIN",
    EMAIL_ADDRESS = "EMAIL_ADDRESS",
    HASH_MD5 = "HASH_MD5",
    HASH_SHA1 = "HASH_SHA1",
    HASH_SHA256 = "HASH_SHA256",
    HASH_SHA512 = "HASH_SHA512",
    IPV4_ADDRESS = "IPV4_ADDRESS",
    IPV6_ADDRESS = "IPV6_ADDRESS",
    MUTEX = "MUTEX",
    PROCESS = "PROCESS",
    URL = "URL",
}

M.VulnerabilityExploitAvailable = {
    YES = "YES",
    NO = "NO",
}

M.VulnerabilityFixAvailable = {
    YES = "YES",
    NO = "NO",
    PARTIAL = "PARTIAL",
}

M.WorkflowState = {
    NEW = "NEW",
    ASSIGNED = "ASSIGNED",
    IN_PROGRESS = "IN_PROGRESS",
    DEFERRED = "DEFERRED",
    RESOLVED = "RESOLVED",
}

M.StandardsControlsUpdatable = {
    READY_FOR_UPDATES = "READY_FOR_UPDATES",
    NOT_READY_FOR_UPDATES = "NOT_READY_FOR_UPDATES",
}

M.StandardsStatus = {
    PENDING = "PENDING",
    READY = "READY",
    FAILED = "FAILED",
    DELETING = "DELETING",
    INCOMPLETE = "INCOMPLETE",
}

M.StatusReasonCode = {
    NO_AVAILABLE_CONFIGURATION_RECORDER = "NO_AVAILABLE_CONFIGURATION_RECORDER",
    MAXIMUM_NUMBER_OF_CONFIG_RULES_EXCEEDED = "MAXIMUM_NUMBER_OF_CONFIG_RULES_EXCEEDED",
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.TargetType = {
    ACCOUNT = "ACCOUNT",
    ORGANIZATIONAL_UNIT = "ORGANIZATIONAL_UNIT",
    ROOT = "ROOT",
}

M.ParameterValueType = {
    DEFAULT = "DEFAULT",
    CUSTOM = "CUSTOM",
}

M.ControlStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SeverityRating = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
    CRITICAL = "CRITICAL",
}

M.UpdateStatus = {
    READY = "READY",
    UPDATING = "UPDATING",
}

M.UnprocessedErrorCode = {
    INVALID_INPUT = "INVALID_INPUT",
    ACCESS_DENIED = "ACCESS_DENIED",
    NOT_FOUND = "NOT_FOUND",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    LIMIT_EXCEEDED = "LIMIT_EXCEEDED",
}

M.BatchUpdateFindingsV2UnprocessedFindingErrorCode = {
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
    InternalServerException = "InternalServerException",
    ConflictException = "ConflictException",
}

M.OcsfBooleanField = {
    COMPLIANCE_ASSESSMENTS_MEETS_CRITERIA = "compliance.assessments.meets_criteria",
    VULNERABILITIES_IS_EXPLOIT_AVAILABLE = "vulnerabilities.is_exploit_available",
    VULNERABILITIES_IS_FIX_AVAILABLE = "vulnerabilities.is_fix_available",
}

M.OcsfDateField = {
    FINDING_INFO_CREATED_TIME_DT = "finding_info.created_time_dt",
    FINDING_INFO_FIRST_SEEN_TIME_DT = "finding_info.first_seen_time_dt",
    FINDING_INFO_LAST_SEEN_TIME_DT = "finding_info.last_seen_time_dt",
    FINDING_INFO_MODIFIED_TIME_DT = "finding_info.modified_time_dt",
    RESOURCES_IMAGE_CREATED_TIME_DT = "resources.image.created_time_dt",
    RESOURCES_IMAGE_LAST_USED_TIME_DT = "resources.image.last_used_time_dt",
    RESOURCES_MODIFIED_TIME_DT = "resources.modified_time_dt",
}

M.OcsfIpField = {
    EVIDENCES_DST_ENDPOINT_IP = "evidences.dst_endpoint.ip",
    EVIDENCES_SRC_ENDPOINT_IP = "evidences.src_endpoint.ip",
}

M.OcsfMapField = {
    RESOURCES_TAGS = "resources.tags",
    COMPLIANCE_CONTROL_PARAMETERS = "compliance.control_parameters",
    DATABUCKET_TAGS = "databucket.tags",
    FINDING_INFO_TAGS = "finding_info.tags",
}

M.OcsfNumberField = {
    ACTIVITY_ID = "activity_id",
    COMPLIANCE_STATUS_ID = "compliance.status_id",
    CONFIDENCE_SCORE = "confidence_score",
    SEVERITY_ID = "severity_id",
    STATUS_ID = "status_id",
    FINDING_INFO_RELATED_EVENTS_COUNT = "finding_info.related_events_count",
    EVIDENCES_API_RESPONSE_CODE = "evidences.api.response.code",
    EVIDENCES_DST_ENDPOINT_AUTONOMOUS_SYSTEM_NUMBER = "evidences.dst_endpoint.autonomous_system.number",
    EVIDENCES_DST_ENDPOINT_PORT = "evidences.dst_endpoint.port",
    EVIDENCES_SRC_ENDPOINT_AUTONOMOUS_SYSTEM_NUMBER = "evidences.src_endpoint.autonomous_system.number",
    EVIDENCES_SRC_ENDPOINT_PORT = "evidences.src_endpoint.port",
    RESOURCES_IMAGE_IN_USE_COUNT = "resources.image.in_use_count",
    VULNERABILITIES_CVE_CVSS_BASE_SCORE = "vulnerabilities.cve.cvss.base_score",
    VENDOR_ATTRIBUTES_SEVERITY_ID = "vendor_attributes.severity_id",
}

M.OcsfStringField = {
    METADATA_UID = "metadata.uid",
    ACTIVITY_NAME = "activity_name",
    CLOUD_ACCOUNT_UID = "cloud.account.uid",
    CLOUD_PROVIDER = "cloud.provider",
    CLOUD_REGION = "cloud.region",
    COMPLIANCE_ASSESSMENTS_CATEGORY = "compliance.assessments.category",
    COMPLIANCE_ASSESSMENTS_NAME = "compliance.assessments.name",
    COMPLIANCE_CONTROL = "compliance.control",
    COMPLIANCE_STATUS = "compliance.status",
    COMPLIANCE_STANDARDS = "compliance.standards",
    FINDING_INFO_DESC = "finding_info.desc",
    FINDING_INFO_SRC_URL = "finding_info.src_url",
    FINDING_INFO_TITLE = "finding_info.title",
    FINDING_INFO_TYPES = "finding_info.types",
    FINDING_INFO_UID = "finding_info.uid",
    FINDING_INFO_RELATED_EVENTS_TRAITS_CATEGORY = "finding_info.related_events.traits.category",
    FINDING_INFO_RELATED_EVENTS_UID = "finding_info.related_events.uid",
    FINDING_INFO_RELATED_EVENTS_PRODUCT_UID = "finding_info.related_events.product.uid",
    FINDING_INFO_RELATED_EVENTS_TITLE = "finding_info.related_events.title",
    METADATA_PRODUCT_NAME = "metadata.product.name",
    METADATA_PRODUCT_UID = "metadata.product.uid",
    METADATA_PRODUCT_VENDOR_NAME = "metadata.product.vendor_name",
    REMEDIATION_DESC = "remediation.desc",
    REMEDIATION_REFERENCES = "remediation.references",
    RESOURCES_CLOUD_PARTITION = "resources.cloud_partition",
    RESOURCES_REGION = "resources.region",
    RESOURCES_TYPE = "resources.type",
    RESOURCES_UID = "resources.uid",
    SEVERITY = "severity",
    STATUS = "status",
    COMMENT = "comment",
    VULNERABILITIES_FIX_COVERAGE = "vulnerabilities.fix_coverage",
    CLASS_NAME = "class_name",
    DATABUCKET_ENCRYPTION_DETAILS_ALGORITHM = "databucket.encryption_details.algorithm",
    DATABUCKET_ENCRYPTION_DETAILS_KEY_UID = "databucket.encryption_details.key_uid",
    DATABUCKET_FILE_DATA_CLASSIFICATIONS_CLASSIFIER_DETAILS_TYPE = "databucket.file.data_classifications.classifier_details.type",
    EVIDENCES_ACTOR_USER_ACCOUNT_UID = "evidences.actor.user.account.uid",
    EVIDENCES_API_OPERATION = "evidences.api.operation",
    EVIDENCES_API_RESPONSE_ERROR_MESSAGE = "evidences.api.response.error_message",
    EVIDENCES_API_SERVICE_NAME = "evidences.api.service.name",
    EVIDENCES_CONNECTION_INFO_DIRECTION = "evidences.connection_info.direction",
    EVIDENCES_CONNECTION_INFO_PROTOCOL_NAME = "evidences.connection_info.protocol_name",
    EVIDENCES_DST_ENDPOINT_AUTONOMOUS_SYSTEM_NAME = "evidences.dst_endpoint.autonomous_system.name",
    EVIDENCES_DST_ENDPOINT_LOCATION_CITY = "evidences.dst_endpoint.location.city",
    EVIDENCES_DST_ENDPOINT_LOCATION_COUNTRY = "evidences.dst_endpoint.location.country",
    EVIDENCES_SRC_ENDPOINT_AUTONOMOUS_SYSTEM_NAME = "evidences.src_endpoint.autonomous_system.name",
    EVIDENCES_SRC_ENDPOINT_HOSTNAME = "evidences.src_endpoint.hostname",
    EVIDENCES_SRC_ENDPOINT_LOCATION_CITY = "evidences.src_endpoint.location.city",
    EVIDENCES_SRC_ENDPOINT_LOCATION_COUNTRY = "evidences.src_endpoint.location.country",
    FINDING_INFO_ANALYTIC_NAME = "finding_info.analytic.name",
    MALWARE_NAME = "malware.name",
    MALWARE_SCAN_INFO_UID = "malware_scan_info.uid",
    MALWARE_SEVERITY = "malware.severity",
    RESOURCES_CLOUD_FUNCTION_LAYERS_UID_ALT = "resources.cloud_function.layers.uid_alt",
    RESOURCES_CLOUD_FUNCTION_RUNTIME = "resources.cloud_function.runtime",
    RESOURCES_CLOUD_FUNCTION_USER_UID = "resources.cloud_function.user.uid",
    RESOURCES_DEVICE_ENCRYPTION_DETAILS_KEY_UID = "resources.device.encryption_details.key_uid",
    RESOURCES_DEVICE_IMAGE_UID = "resources.device.image.uid",
    RESOURCES_IMAGE_ARCHITECTURE = "resources.image.architecture",
    RESOURCES_IMAGE_REGISTRY_UID = "resources.image.registry_uid",
    RESOURCES_IMAGE_REPOSITORY_NAME = "resources.image.repository_name",
    RESOURCES_IMAGE_UID = "resources.image.uid",
    RESOURCES_SUBNET_INFO_UID = "resources.subnet_info.uid",
    RESOURCES_VPC_UID = "resources.vpc_uid",
    VULNERABILITIES_AFFECTED_CODE_FILE_PATH = "vulnerabilities.affected_code.file.path",
    VULNERABILITIES_AFFECTED_PACKAGES_NAME = "vulnerabilities.affected_packages.name",
    VULNERABILITIES_CVE_EPSS_SCORE = "vulnerabilities.cve.epss.score",
    VULNERABILITIES_CVE_UID = "vulnerabilities.cve.uid",
    VULNERABILITIES_RELATED_VULNERABILITIES = "vulnerabilities.related_vulnerabilities",
    CLOUD_ACCOUNT_NAME = "cloud.account.name",
    VENDOR_ATTRIBUTES_SEVERITY = "vendor_attributes.severity",
}

M.ConnectorAuthStatus = {
    ACTIVE = "ACTIVE",
    FAILED = "FAILED",
}

M.ConnectorProviderName = {
    JIRA_CLOUD = "JIRA_CLOUD",
    SERVICENOW = "SERVICENOW",
}

M.ConnectorStatus = {
    CONNECTED = "CONNECTED",
    FAILED_TO_CONNECT = "FAILED_TO_CONNECT",
    PENDING_CONFIGURATION = "PENDING_CONFIGURATION",
    PENDING_AUTHORIZATION = "PENDING_AUTHORIZATION",
}

M.ControlFindingGenerator = {
    STANDARD_CONTROL = "STANDARD_CONTROL",
    SECURITY_CONTROL = "SECURITY_CONTROL",
}

M.TicketCreationMode = {
    DRYRUN = "DRYRUN",
}

M.SecurityControlProperty = {
    Parameters = "Parameters",
}

M.OrganizationConfigurationConfigurationType = {
    CENTRAL = "CENTRAL",
    LOCAL = "LOCAL",
}

M.OrganizationConfigurationStatus = {
    PENDING = "PENDING",
    ENABLED = "ENABLED",
    FAILED = "FAILED",
}

M.IntegrationType = {
    SEND_FINDINGS_TO_SECURITY_HUB = "SEND_FINDINGS_TO_SECURITY_HUB",
    RECEIVE_FINDINGS_FROM_SECURITY_HUB = "RECEIVE_FINDINGS_FROM_SECURITY_HUB",
    UPDATE_FINDINGS_IN_SECURITY_HUB = "UPDATE_FINDINGS_IN_SECURITY_HUB",
}

M.IntegrationV2Type = {
    SEND_FINDINGS_TO_SECURITY_HUB = "SEND_FINDINGS_TO_SECURITY_HUB",
    RECEIVE_FINDINGS_FROM_SECURITY_HUB = "RECEIVE_FINDINGS_FROM_SECURITY_HUB",
    UPDATE_FINDINGS_IN_SECURITY_HUB = "UPDATE_FINDINGS_IN_SECURITY_HUB",
    EXTENDED_PLAN = "EXTENDED_PLAN",
}

M.SecurityHubFeature = {
    SECURITY_HUB = "SecurityHub",
    SECURITY_HUB_V2 = "SecurityHubV2",
}

M.FindingHistoryUpdateSourceType = {
    BATCH_UPDATE_FINDINGS = "BATCH_UPDATE_FINDINGS",
    BATCH_IMPORT_FINDINGS = "BATCH_IMPORT_FINDINGS",
}

M.FindingsTrendsStringField = {
    ACCOUNT_ID = "account_id",
    REGION = "region",
    FINDING_TYPE = "finding_types",
    FINDING_STATUS = "finding_status",
    CVE_ID = "finding_cve_ids",
    COMPLIANCE_STATUS = "finding_compliance_status",
    COMPLIANCE_CONTROL = "finding_control_id",
    FINDING_CLASS = "finding_class_name",
    PROVIDER_NAME = "finding_provider",
    FINDING_ACTIVITY_NAME = "finding_activity_name",
}

M.SortOrder = {
    ASCENDING = "asc",
    DESCENDING = "desc",
}

M.GroupByField = {
    ACTIVITY_NAME = "activity_name",
    CLOUD_ACCOUNT_UID = "cloud.account.uid",
    CLOUD_PROVIDER = "cloud.provider",
    CLOUD_REGION = "cloud.region",
    COMPLIANCE_ASSESSMENTS_NAME = "compliance.assessments.name",
    COMPLIANCE_STATUS = "compliance.status",
    COMPLIANCE_CONTROL = "compliance.control",
    FINDING_INFO_TITLE = "finding_info.title",
    FINDING_INFO_RELATED_EVENTS_TRAITS_CATEGORY = "finding_info.related_events.traits.category",
    FINDING_INFO_TYPES = "finding_info.types",
    METADATA_PRODUCT_NAME = "metadata.product.name",
    METADATA_PRODUCT_UID = "metadata.product.uid",
    RESOURCES_TYPE = "resources.type",
    RESOURCES_UID = "resources.uid",
    SEVERITY = "severity",
    STATUS = "status",
    VULNERABILITIES_FIX_COVERAGE = "vulnerabilities.fix_coverage",
    CLASS_NAME = "class_name",
    VULNERABILITIES_AFFECTED_PACKAGES_NAME = "vulnerabilities.affected_packages.name",
    FINDING_INFO_ANALYTIC_NAME = "finding_info.analytic.name",
    COMPLIANCE_STANDARDS = "compliance.standards",
    CLOUD_ACCOUNT_NAME = "cloud.account.name",
    VENDOR_ATTRIBUTES_SEVERITY = "vendor_attributes.severity",
    METADATA_PRODUCT_VENDOR_NAME = "metadata.product.vendor_name",
}

M.GranularityField = {
    DAILY = "Daily",
    WEEKLY = "Weekly",
    MONTHLY = "Monthly",
}

M.ResourcesDateField = {
    RESOURCE_DETAIL_CAPTURE_TIME_DT = "ResourceDetailCaptureTime",
    RESOURCE_CREATION_TIME_DT = "ResourceCreationTime",
}

M.ResourcesMapField = {
    TAG = "ResourceTags",
}

M.ResourcesNumberField = {
    TOTAL_FINDINGS = "FindingsSummary.TotalFindings",
    SEVERITY_OTHER = "FindingsSummary.Severities.Other",
    SEVERITY_FATAL = "FindingsSummary.Severities.Fatal",
    SEVERITY_CRITICAL = "FindingsSummary.Severities.Critical",
    SEVERITY_HIGH = "FindingsSummary.Severities.High",
    SEVERITY_MEDIUM = "FindingsSummary.Severities.Medium",
    SEVERITY_LOW = "FindingsSummary.Severities.Low",
    SEVERITY_INFORMATIONAL = "FindingsSummary.Severities.Informational",
    SEVERITY_UNKNOWN = "FindingsSummary.Severities.Unknown",
}

M.ResourcesStringField = {
    RESOURCE_GUID = "ResourceGuid",
    RESOURCE_ID = "ResourceId",
    ACCOUNT_ID = "AccountId",
    REGION = "Region",
    RESOURCE_CATEGORY = "ResourceCategory",
    RESOURCE_TYPE = "ResourceType",
    RESOURCE_NAME = "ResourceName",
    FINDING_TYPE = "FindingsSummary.FindingType",
    PRODUCT_NAME = "FindingsSummary.ProductName",
}

M.ResourceGroupByField = {
    ACCOUNT_ID = "AccountId",
    REGION = "Region",
    RESOURCE_CATEGORY = "ResourceCategory",
    RESOURCE_TYPE = "ResourceType",
    RESOURCE_NAME = "ResourceName",
    FINDING_TYPE = "FindingsSummary.FindingType",
}

M.ResourcesTrendsStringField = {
    ACCOUNT_ID = "account_id",
    REGION = "region",
    RESOURCE_TYPE = "resource_type",
    RESOURCE_CATEGORY = "resource_category",
}

M.ResourceCategory = {
    COMPUTE = "Compute",
    DATABASE = "Database",
    STORAGE = "Storage",
    CODE = "Code",
    AI_ML = "AI/ML",
    IDENTITY = "Identity",
    NETWORK = "Network",
    OTHER = "Other",
}

M.RegionAvailabilityStatus = {
    AVAILABLE = "AVAILABLE",
    UNAVAILABLE = "UNAVAILABLE",
}

return M
