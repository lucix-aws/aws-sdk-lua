local M = {}

M.AbortAction = {
    CANCEL = "CANCEL",
}

M.JobExecutionFailureType = {
    FAILED = "FAILED",
    REJECTED = "REJECTED",
    TIMED_OUT = "TIMED_OUT",
    ALL = "ALL",
}

M.DynamoKeyType = {
    STRING = "STRING",
    NUMBER = "NUMBER",
}

M.CannedAccessControlList = {
    Private = "private",
    PublicRead = "public-read",
    PublicReadWrite = "public-read-write",
    AwsExecRead = "aws-exec-read",
    AuthenticatedRead = "authenticated-read",
    BucketOwnerRead = "bucket-owner-read",
    BucketOwnerFullControl = "bucket-owner-full-control",
    LogDeliveryWrite = "log-delivery-write",
}

M.MessageFormat = {
    RAW = "RAW",
    JSON = "JSON",
}

M.ActionType = {
    PUBLISH = "PUBLISH",
    SUBSCRIBE = "SUBSCRIBE",
    RECEIVE = "RECEIVE",
    CONNECT = "CONNECT",
}

M.ComparisonOperator = {
    LESS_THAN = "less-than",
    LESS_THAN_EQUALS = "less-than-equals",
    GREATER_THAN = "greater-than",
    GREATER_THAN_EQUALS = "greater-than-equals",
    IN_CIDR_SET = "in-cidr-set",
    NOT_IN_CIDR_SET = "not-in-cidr-set",
    IN_PORT_SET = "in-port-set",
    NOT_IN_PORT_SET = "not-in-port-set",
    IN_SET = "in-set",
    NOT_IN_SET = "not-in-set",
}

M.ConfidenceLevel = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.DimensionValueOperator = {
    IN = "IN",
    NOT_IN = "NOT_IN",
}

M.VerificationState = {
    FALSE_POSITIVE = "FALSE_POSITIVE",
    BENIGN_POSITIVE = "BENIGN_POSITIVE",
    TRUE_POSITIVE = "TRUE_POSITIVE",
    UNKNOWN = "UNKNOWN",
}

M.AggregationTypeName = {
    STATISTICS = "Statistics",
    PERCENTILES = "Percentiles",
    CARDINALITY = "Cardinality",
}

M.AlertTargetType = {
    SNS = "SNS",
}

M.ApplicationProtocol = {
    SECURE_MQTT = "SECURE_MQTT",
    MQTT_WSS = "MQTT_WSS",
    HTTPS = "HTTPS",
    DEFAULT = "DEFAULT",
}

M.SbomValidationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.ThingPrincipalType = {
    EXCLUSIVE_THING = "EXCLUSIVE_THING",
    NON_EXCLUSIVE_THING = "NON_EXCLUSIVE_THING",
}

M.ConfigName = {
    CERT_AGE_THRESHOLD_IN_DAYS = "CERT_AGE_THRESHOLD_IN_DAYS",
    CERT_EXPIRATION_THRESHOLD_IN_DAYS = "CERT_EXPIRATION_THRESHOLD_IN_DAYS",
}

M.AuditCheckRunStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    WAITING_FOR_DATA_COLLECTION = "WAITING_FOR_DATA_COLLECTION",
    CANCELED = "CANCELED",
    COMPLETED_COMPLIANT = "COMPLETED_COMPLIANT",
    COMPLETED_NON_COMPLIANT = "COMPLETED_NON_COMPLIANT",
    FAILED = "FAILED",
}

M.ResourceType = {
    DEVICE_CERTIFICATE = "DEVICE_CERTIFICATE",
    CA_CERTIFICATE = "CA_CERTIFICATE",
    IOT_POLICY = "IOT_POLICY",
    COGNITO_IDENTITY_POOL = "COGNITO_IDENTITY_POOL",
    CLIENT_ID = "CLIENT_ID",
    ACCOUNT_SETTINGS = "ACCOUNT_SETTINGS",
    ROLE_ALIAS = "ROLE_ALIAS",
    IAM_ROLE = "IAM_ROLE",
    ISSUER_CERTIFICATE = "ISSUER_CERTIFICATE",
}

M.AuditFindingSeverity = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.AuditFrequency = {
    DAILY = "DAILY",
    WEEKLY = "WEEKLY",
    BIWEEKLY = "BIWEEKLY",
    MONTHLY = "MONTHLY",
}

M.AuditMitigationActionsExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
    SKIPPED = "SKIPPED",
    PENDING = "PENDING",
}

M.AuditMitigationActionsTaskStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
}

M.AuditNotificationType = {
    SNS = "SNS",
}

M.AuditTaskStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
}

M.AuditTaskType = {
    ON_DEMAND_AUDIT_TASK = "ON_DEMAND_AUDIT_TASK",
    SCHEDULED_AUDIT_TASK = "SCHEDULED_AUDIT_TASK",
}

M.AuthDecision = {
    ALLOWED = "ALLOWED",
    EXPLICIT_DENY = "EXPLICIT_DENY",
    IMPLICIT_DENY = "IMPLICIT_DENY",
}

M.AuthenticationType = {
    CUSTOM_AUTH_X509 = "CUSTOM_AUTH_X509",
    CUSTOM_AUTH = "CUSTOM_AUTH",
    AWS_X509 = "AWS_X509",
    AWS_SIGV4 = "AWS_SIGV4",
    DEFAULT = "DEFAULT",
}

M.AuthorizerStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.AutoRegistrationStatus = {
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
}

M.CertificateProviderOperation = {
    CreateCertificateFromCsr = "CreateCertificateFromCsr",
}

M.CommandParameterType = {
    STRING = "STRING",
    INTEGER = "INTEGER",
    DOUBLE = "DOUBLE",
    LONG = "LONG",
    UNSIGNEDLONG = "UNSIGNEDLONG",
    BOOLEAN = "BOOLEAN",
    BINARY = "BINARY",
}

M.CommandParameterValueComparisonOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    LESS_THAN = "LESS_THAN",
    LESS_THAN_EQUALS = "LESS_THAN_EQUALS",
    GREATER_THAN = "GREATER_THAN",
    GREATER_THAN_EQUALS = "GREATER_THAN_EQUALS",
    IN_SET = "IN_SET",
    NOT_IN_SET = "NOT_IN_SET",
    IN_RANGE = "IN_RANGE",
    NOT_IN_RANGE = "NOT_IN_RANGE",
}

M.CommandNamespace = {
    AWSIoT = "AWS-IoT",
    AWSIoTFleetWise = "AWS-IoT-FleetWise",
}

M.OutputFormat = {
    JSON = "JSON",
    CBOR = "CBOR",
}

M.CustomMetricType = {
    STRING_LIST = "string-list",
    IP_ADDRESS_LIST = "ip-address-list",
    NUMBER_LIST = "number-list",
    NUMBER = "number",
}

M.DimensionType = {
    TOPIC_FILTER = "TOPIC_FILTER",
}

M.ServiceType = {
    DATA = "DATA",
    CREDENTIAL_PROVIDER = "CREDENTIAL_PROVIDER",
    JOBS = "JOBS",
}

M.FleetMetricUnit = {
    Seconds = "Seconds",
    Microseconds = "Microseconds",
    Milliseconds = "Milliseconds",
    Bytes = "Bytes",
    Kilobytes = "Kilobytes",
    Megabytes = "Megabytes",
    Gigabytes = "Gigabytes",
    Terabytes = "Terabytes",
    Bits = "Bits",
    Kilobits = "Kilobits",
    Megabits = "Megabits",
    Gigabits = "Gigabits",
    Terabits = "Terabits",
    Percent = "Percent",
    Count = "Count",
    BytesSecond = "Bytes/Second",
    KilobytesSecond = "Kilobytes/Second",
    MegabytesSecond = "Megabytes/Second",
    GigabytesSecond = "Gigabytes/Second",
    TerabytesSecond = "Terabytes/Second",
    BitsSecond = "Bits/Second",
    KilobitsSecond = "Kilobits/Second",
    MegabitsSecond = "Megabits/Second",
    GigabitsSecond = "Gigabits/Second",
    TerabitsSecond = "Terabits/Second",
    CountSecond = "Count/Second",
    None = "None",
}

M.RetryableFailureType = {
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    ALL = "ALL",
}

M.JobEndBehavior = {
    STOP_ROLLOUT = "STOP_ROLLOUT",
    CANCEL = "CANCEL",
    FORCE_CANCEL = "FORCE_CANCEL",
}

M.TargetSelection = {
    CONTINUOUS = "CONTINUOUS",
    SNAPSHOT = "SNAPSHOT",
}

M.LogLevel = {
    DEBUG = "DEBUG",
    INFO = "INFO",
    ERROR = "ERROR",
    WARN = "WARN",
    DISABLED = "DISABLED",
}

M.PolicyTemplateName = {
    BLANK_POLICY = "BLANK_POLICY",
}

M.CACertificateUpdateAction = {
    DEACTIVATE = "DEACTIVATE",
}

M.DeviceCertificateUpdateAction = {
    DEACTIVATE = "DEACTIVATE",
}

M.AwsJobAbortCriteriaAbortAction = {
    CANCEL = "CANCEL",
}

M.AwsJobAbortCriteriaFailureType = {
    FAILED = "FAILED",
    REJECTED = "REJECTED",
    TIMED_OUT = "TIMED_OUT",
    ALL = "ALL",
}

M.Protocol = {
    MQTT = "MQTT",
    HTTP = "HTTP",
}

M.OTAUpdateStatus = {
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.PackageVersionStatus = {
    DRAFT = "DRAFT",
    PUBLISHED = "PUBLISHED",
    DEPRECATED = "DEPRECATED",
}

M.TemplateType = {
    FLEET_PROVISIONING = "FLEET_PROVISIONING",
    JITP = "JITP",
}

M.DayOfWeek = {
    SUN = "SUN",
    MON = "MON",
    TUE = "TUE",
    WED = "WED",
    THU = "THU",
    FRI = "FRI",
    SAT = "SAT",
}

M.TopicRuleDestinationStatus = {
    ENABLED = "ENABLED",
    IN_PROGRESS = "IN_PROGRESS",
    DISABLED = "DISABLED",
    ERROR = "ERROR",
    DELETING = "DELETING",
}

M.LogTargetType = {
    DEFAULT = "DEFAULT",
    THING_GROUP = "THING_GROUP",
    CLIENT_ID = "CLIENT_ID",
    SOURCE_IP = "SOURCE_IP",
    PRINCIPAL_ID = "PRINCIPAL_ID",
}

M.CertificateMode = {
    DEFAULT = "DEFAULT",
    SNI_ONLY = "SNI_ONLY",
}

M.CACertificateStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.CertificateStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    REVOKED = "REVOKED",
    PENDING_TRANSFER = "PENDING_TRANSFER",
    REGISTER_INACTIVE = "REGISTER_INACTIVE",
    PENDING_ACTIVATION = "PENDING_ACTIVATION",
}

M.DetectMitigationActionsTaskStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESSFUL = "SUCCESSFUL",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
}

M.DomainConfigurationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DomainType = {
    ENDPOINT = "ENDPOINT",
    AWS_MANAGED = "AWS_MANAGED",
    CUSTOMER_MANAGED = "CUSTOMER_MANAGED",
}

M.ServerCertificateStatus = {
    INVALID = "INVALID",
    VALID = "VALID",
}

M.ConfigurationStatus = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.EncryptionType = {
    CUSTOMER_MANAGED_KMS_KEY = "CUSTOMER_MANAGED_KMS_KEY",
    AWS_OWNED_KMS_KEY = "AWS_OWNED_KMS_KEY",
}

M.EventType = {
    THING = "THING",
    THING_GROUP = "THING_GROUP",
    THING_TYPE = "THING_TYPE",
    THING_GROUP_MEMBERSHIP = "THING_GROUP_MEMBERSHIP",
    THING_GROUP_HIERARCHY = "THING_GROUP_HIERARCHY",
    THING_TYPE_ASSOCIATION = "THING_TYPE_ASSOCIATION",
    JOB = "JOB",
    JOB_EXECUTION = "JOB_EXECUTION",
    POLICY = "POLICY",
    CERTIFICATE = "CERTIFICATE",
    CA_CERTIFICATE = "CA_CERTIFICATE",
}

M.IndexStatus = {
    ACTIVE = "ACTIVE",
    BUILDING = "BUILDING",
    REBUILDING = "REBUILDING",
}

M.JobStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    CANCELED = "CANCELED",
    COMPLETED = "COMPLETED",
    DELETION_IN_PROGRESS = "DELETION_IN_PROGRESS",
    SCHEDULED = "SCHEDULED",
}

M.JobExecutionStatus = {
    QUEUED = "QUEUED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    REJECTED = "REJECTED",
    REMOVED = "REMOVED",
    CANCELED = "CANCELED",
}

M.MitigationActionType = {
    UPDATE_DEVICE_CERTIFICATE = "UPDATE_DEVICE_CERTIFICATE",
    UPDATE_CA_CERTIFICATE = "UPDATE_CA_CERTIFICATE",
    ADD_THINGS_TO_THING_GROUP = "ADD_THINGS_TO_THING_GROUP",
    REPLACE_DEFAULT_POLICY_VERSION = "REPLACE_DEFAULT_POLICY_VERSION",
    ENABLE_IOT_LOGGING = "ENABLE_IOT_LOGGING",
    PUBLISH_FINDING_TO_SNS = "PUBLISH_FINDING_TO_SNS",
}

M.DynamicGroupStatus = {
    ACTIVE = "ACTIVE",
    BUILDING = "BUILDING",
    REBUILDING = "REBUILDING",
}

M.Status = {
    InProgress = "InProgress",
    Completed = "Completed",
    Failed = "Failed",
    Cancelled = "Cancelled",
    Cancelling = "Cancelling",
}

M.ModelStatus = {
    PENDING_BUILD = "PENDING_BUILD",
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
}

M.CommandExecutionStatus = {
    CREATED = "CREATED",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    REJECTED = "REJECTED",
    TIMED_OUT = "TIMED_OUT",
}

M.FieldType = {
    NUMBER = "Number",
    STRING = "String",
    BOOLEAN = "Boolean",
}

M.ThingGroupIndexingMode = {
    OFF = "OFF",
    ON = "ON",
}

M.DeviceDefenderIndexingMode = {
    OFF = "OFF",
    VIOLATIONS = "VIOLATIONS",
}

M.TargetFieldOrder = {
    LatLon = "LatLon",
    LonLat = "LonLat",
}

M.NamedShadowIndexingMode = {
    OFF = "OFF",
    ON = "ON",
}

M.ThingConnectivityIndexingMode = {
    OFF = "OFF",
    STATUS = "STATUS",
}

M.ThingIndexingMode = {
    OFF = "OFF",
    REGISTRY = "REGISTRY",
    REGISTRY_AND_SHADOW = "REGISTRY_AND_SHADOW",
}

M.DisconnectReasonValue = {
    AUTH_ERROR = "AUTH_ERROR",
    CLIENT_INITIATED_DISCONNECT = "CLIENT_INITIATED_DISCONNECT",
    CLIENT_ERROR = "CLIENT_ERROR",
    CONNECTION_LOST = "CONNECTION_LOST",
    DUPLICATE_CLIENTID = "DUPLICATE_CLIENTID",
    FORBIDDEN_ACCESS = "FORBIDDEN_ACCESS",
    MQTT_KEEP_ALIVE_TIMEOUT = "MQTT_KEEP_ALIVE_TIMEOUT",
    SERVER_ERROR = "SERVER_ERROR",
    SERVER_INITIATED_DISCONNECT = "SERVER_INITIATED_DISCONNECT",
    THROTTLED = "THROTTLED",
    WEBSOCKET_TTL_EXPIRATION = "WEBSOCKET_TTL_EXPIRATION",
    CUSTOMAUTH_TTL_EXPIRATION = "CUSTOMAUTH_TTL_EXPIRATION",
    UNKNOWN = "UNKNOWN",
    NONE = "NONE",
}

M.BehaviorCriteriaType = {
    STATIC = "STATIC",
    STATISTICAL = "STATISTICAL",
    MACHINE_LEARNING = "MACHINE_LEARNING",
}

M.SortOrder = {
    Ascending = "ASCENDING",
    Descending = "DESCENDING",
}

M.DetectMitigationActionExecutionStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESSFUL = "SUCCESSFUL",
    FAILED = "FAILED",
    SKIPPED = "SKIPPED",
}

M.SbomValidationResult = {
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.SbomValidationErrorCode = {
    INCOMPATIBLE_FORMAT = "INCOMPATIBLE_FORMAT",
    FILE_SIZE_LIMIT_EXCEEDED = "FILE_SIZE_LIMIT_EXCEEDED",
}

M.ReportType = {
    ERRORS = "ERRORS",
    RESULTS = "RESULTS",
}

M.ViolationEventType = {
    IN_ALARM = "in-alarm",
    ALARM_CLEARED = "alarm-cleared",
    ALARM_INVALIDATED = "alarm-invalidated",
}

M.PackageVersionAction = {
    PUBLISH = "PUBLISH",
    DEPRECATE = "DEPRECATE",
}

return M
