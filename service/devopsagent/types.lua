local M = {}

M.GithubRepoOwnerType = {
    ORGANIZATION = "organization",
    USER = "user",
}

M.GitLabTokenType = {
    PERSONAL = "personal",
    GROUP = "group",
}

M.MCPServerAuthorizationMethod = {
    OAUTH_CLIENT_CREDENTIALS = "oauth-client-credentials",
    OAUTH_3LO = "oauth-3lo",
    API_KEY = "api-key",
    BEARER_TOKEN = "bearer-token",
}

M.NewRelicRegion = {
    US = "US",
    EU = "EU",
}

M.MonitorAccountType = {
    MONITOR = "monitor",
}

M.SourceAccountType = {
    SOURCE = "source",
}

M.ValidationStatus = {
    VALID = "valid",
    INVALID = "invalid",
    PENDING_CONFIRMATION = "pending-confirmation",
}

M.WebhookType = {
    HMAC = "hmac",
    API_KEY = "apikey",
    GITLAB = "gitlab",
    PAGERDUTY = "pagerduty",
}

M.AuthFlow = {
    IAM = "iam",
    IDC = "idc",
    IDP = "idp",
}

M.Priority = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
    MINIMAL = "MINIMAL",
}

M.TaskType = {
    INVESTIGATION = "INVESTIGATION",
    EVALUATION = "EVALUATION",
}

M.TaskStatus = {
    PENDING_TRIAGE = "PENDING_TRIAGE",
    LINKED = "LINKED",
    PENDING_START = "PENDING_START",
    IN_PROGRESS = "IN_PROGRESS",
    PENDING_CUSTOMER_APPROVAL = "PENDING_CUSTOMER_APPROVAL",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    CANCELED = "CANCELED",
}

M.UserType = {
    IAM = "IAM",
    IDC = "IDC",
    IDP = "IDP",
}

M.IpAddressType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
    DUAL_STACK = "DUAL_STACK",
}

M.PrivateConnectionStatus = {
    ACTIVE = "ACTIVE",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.PrivateConnectionType = {
    SELF_MANAGED = "SELF_MANAGED",
    SERVICE_MANAGED = "SERVICE_MANAGED",
}

M.RecommendationPriority = {
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.RecommendationStatus = {
    PROPOSED = "PROPOSED",
    ACCEPTED = "ACCEPTED",
    REJECTED = "REJECTED",
    CLOSED = "CLOSED",
    COMPLETED = "COMPLETED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
}

M.TaskSortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.TaskSortField = {
    CREATED_AT = "CREATED_AT",
    PRIORITY = "PRIORITY",
}

M.ExecutionStatus = {
    FAILED = "FAILED",
    RUNNING = "RUNNING",
    STOPPED = "STOPPED",
    CANCELED = "CANCELED",
    TIMED_OUT = "TIMED_OUT",
}

M.GoalType = {
    CUSTOMER_DEFINED = "CUSTOMER_DEFINED",
    ONCALL_REPORT = "ONCALL_REPORT",
}

M.GoalStatus = {
    ACTIVE = "ACTIVE",
    PAUSED = "PAUSED",
    COMPLETE = "COMPLETE",
}

M.SchedulerState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.OrderType = {
    ASC = "ASC",
    DESC = "DESC",
}

M.Service = {
    GITHUB = "github",
    SLACK = "slack",
    AZURE = "azure",
    AZURE_DEVOPS = "azuredevops",
    DYNATRACE = "dynatrace",
    SERVICENOW = "servicenow",
    PAGERDUTY = "pagerduty",
    GITLAB = "gitlab",
    EVENTCHANNEL = "eventChannel",
    MCP_SERVER_NEWRELIC = "mcpservernewrelic",
    MCP_SERVER_GRAFANA = "mcpservergrafana",
    MCP_SERVER_DATADOG = "mcpserverdatadog",
    MCP_SERVER = "mcpserver",
    MCP_SERVER_SPLUNK = "mcpserversplunk",
    AZURE_IDENTITY = "azureidentity",
}

M.PostRegisterServiceSupportedService = {
    DYNATRACE = "dynatrace",
    SERVICENOW = "servicenow",
    PAGERDUTY = "pagerduty",
    GITLAB = "gitlab",
    EVENTCHANNEL = "eventChannel",
    MCP_SERVER_NEWRELIC = "mcpservernewrelic",
    MCP_SERVER_GRAFANA = "mcpservergrafana",
    MCP_SERVER_DATADOG = "mcpserverdatadog",
    MCP_SERVER = "mcpserver",
    MCP_SERVER_SPLUNK = "mcpserversplunk",
    AZURE_IDENTITY = "azureidentity",
}

M.EventChannelType = {
    WEBHOOK = "webhook",
}

return M
