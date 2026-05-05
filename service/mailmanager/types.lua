local M = {}

M.AcceptAction = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.ActionFailurePolicy = {
    CONTINUE = "CONTINUE",
    DROP = "DROP",
}

M.ArchiveState = {
    ACTIVE = "ACTIVE",
    PENDING_DELETION = "PENDING_DELETION",
}

M.ArchiveBooleanEmailAttribute = {
    HAS_ATTACHMENTS = "HAS_ATTACHMENTS",
}

M.ArchiveBooleanOperator = {
    IS_TRUE = "IS_TRUE",
    IS_FALSE = "IS_FALSE",
}

M.ArchiveStringEmailAttribute = {
    TO = "TO",
    FROM = "FROM",
    CC = "CC",
    SUBJECT = "SUBJECT",
    ENVELOPE_TO = "ENVELOPE_TO",
    ENVELOPE_FROM = "ENVELOPE_FROM",
}

M.ArchiveStringOperator = {
    CONTAINS = "CONTAINS",
}

M.RetentionPeriod = {
    THREE_MONTHS = "THREE_MONTHS",
    SIX_MONTHS = "SIX_MONTHS",
    NINE_MONTHS = "NINE_MONTHS",
    ONE_YEAR = "ONE_YEAR",
    EIGHTEEN_MONTHS = "EIGHTEEN_MONTHS",
    TWO_YEARS = "TWO_YEARS",
    THIRTY_MONTHS = "THIRTY_MONTHS",
    THREE_YEARS = "THREE_YEARS",
    FOUR_YEARS = "FOUR_YEARS",
    FIVE_YEARS = "FIVE_YEARS",
    SIX_YEARS = "SIX_YEARS",
    SEVEN_YEARS = "SEVEN_YEARS",
    EIGHT_YEARS = "EIGHT_YEARS",
    NINE_YEARS = "NINE_YEARS",
    TEN_YEARS = "TEN_YEARS",
    PERMANENT = "PERMANENT",
}

M.ImportDataType = {
    CSV = "CSV",
    JSON = "JSON",
}

M.IpType = {
    IPV4 = "IPV4",
    DUAL_STACK = "DUAL_STACK",
}

M.TlsPolicy = {
    REQUIRED = "REQUIRED",
    OPTIONAL = "OPTIONAL",
    FIPS = "FIPS",
}

M.IngressPointType = {
    OPEN = "OPEN",
    AUTH = "AUTH",
    MTLS = "MTLS",
}

M.LambdaInvocationType = {
    EVENT = "EVENT",
    REQUEST_RESPONSE = "REQUEST_RESPONSE",
}

M.SnsNotificationEncoding = {
    UTF_8 = "UTF-8",
    BASE64 = "BASE64",
}

M.SnsNotificationPayloadType = {
    HEADERS = "HEADERS",
    CONTENT = "CONTENT",
}

M.MailFrom = {
    REPLACE = "REPLACE",
    PRESERVE = "PRESERVE",
}

M.RuleBooleanEmailAttribute = {
    READ_RECEIPT_REQUESTED = "READ_RECEIPT_REQUESTED",
    TLS = "TLS",
    TLS_WRAPPED = "TLS_WRAPPED",
}

M.RuleAddressListEmailAttribute = {
    RECIPIENT = "RECIPIENT",
    MAIL_FROM = "MAIL_FROM",
    SENDER = "SENDER",
    FROM = "FROM",
    TO = "TO",
    CC = "CC",
}

M.RuleBooleanOperator = {
    IS_TRUE = "IS_TRUE",
    IS_FALSE = "IS_FALSE",
}

M.RuleDmarcOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
}

M.RuleDmarcPolicy = {
    NONE = "NONE",
    QUARANTINE = "QUARANTINE",
    REJECT = "REJECT",
}

M.RuleIpEmailAttribute = {
    SOURCE_IP = "SOURCE_IP",
}

M.RuleIpOperator = {
    CIDR_MATCHES = "CIDR_MATCHES",
    NOT_CIDR_MATCHES = "NOT_CIDR_MATCHES",
}

M.RuleNumberEmailAttribute = {
    MESSAGE_SIZE = "MESSAGE_SIZE",
}

M.RuleNumberOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN_OR_EQUAL = "LESS_THAN_OR_EQUAL",
    GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL",
}

M.RuleStringEmailAttribute = {
    MAIL_FROM = "MAIL_FROM",
    HELO = "HELO",
    RECIPIENT = "RECIPIENT",
    SENDER = "SENDER",
    FROM = "FROM",
    SUBJECT = "SUBJECT",
    TO = "TO",
    CC = "CC",
}

M.RuleClientCertificateAttribute = {
    CN = "CN",
    SAN_RFC822_NAME = "SAN_RFC822_NAME",
    SAN_DNS_NAME = "SAN_DNS_NAME",
    SAN_DIRECTORY_NAME = "SAN_DIRECTORY_NAME",
    SAN_UNIFORM_RESOURCE_IDENTIFIER = "SAN_UNIFORM_RESOURCE_IDENTIFIER",
    SAN_IP_ADDRESS = "SAN_IP_ADDRESS",
    SAN_REGISTERED_ID = "SAN_REGISTERED_ID",
    SERIAL_NUMBER = "SERIAL_NUMBER",
}

M.RuleStringOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
    CONTAINS = "CONTAINS",
}

M.RuleVerdictAttribute = {
    SPF = "SPF",
    DKIM = "DKIM",
}

M.RuleVerdictOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
}

M.RuleVerdict = {
    PASS = "PASS",
    FAIL = "FAIL",
    GRAY = "GRAY",
    PROCESSING_FAILED = "PROCESSING_FAILED",
}

M.IngressAddressListEmailAttribute = {
    RECIPIENT = "RECIPIENT",
}

M.IngressBooleanOperator = {
    IS_TRUE = "IS_TRUE",
    IS_FALSE = "IS_FALSE",
}

M.IngressIpv4Attribute = {
    SENDER_IP = "SENDER_IP",
}

M.IngressIpOperator = {
    CIDR_MATCHES = "CIDR_MATCHES",
    NOT_CIDR_MATCHES = "NOT_CIDR_MATCHES",
}

M.IngressIpv6Attribute = {
    SENDER_IPV6 = "SENDER_IPV6",
}

M.IngressStringEmailAttribute = {
    RECIPIENT = "RECIPIENT",
}

M.IngressStringOperator = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
    CONTAINS = "CONTAINS",
}

M.IngressTlsAttribute = {
    TLS_PROTOCOL = "TLS_PROTOCOL",
}

M.IngressTlsProtocolOperator = {
    MINIMUM_TLS_VERSION = "MINIMUM_TLS_VERSION",
    IS = "IS",
}

M.IngressTlsProtocolAttribute = {
    TLS1_2 = "TLS1_2",
    TLS1_3 = "TLS1_3",
}

M.ExportState = {
    QUEUED = "QUEUED",
    PREPROCESSING = "PREPROCESSING",
    PROCESSING = "PROCESSING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.ImportJobStatus = {
    CREATED = "CREATED",
    PROCESSING = "PROCESSING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
}

M.SearchState = {
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.TrustStoreResponseOption = {
    EXCLUDE = "EXCLUDE",
    INCLUDE = "INCLUDE",
}

M.IngressPointStatus = {
    PROVISIONING = "PROVISIONING",
    DEPROVISIONING = "DEPROVISIONING",
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
    CLOSED = "CLOSED",
    FAILED = "FAILED",
    ASSOCIATED_VPC_ENDPOINT_DOES_NOT_EXIST = "ASSOCIATED_VPC_ENDPOINT_DOES_NOT_EXIST",
}

M.IngressPointStatusToUpdate = {
    ACTIVE = "ACTIVE",
    CLOSED = "CLOSED",
}

return M
