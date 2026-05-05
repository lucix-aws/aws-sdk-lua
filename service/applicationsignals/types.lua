local M = {}

M.ServiceLevelObjectiveBudgetStatus = {
    OK = "OK",
    WARNING = "WARNING",
    BREACHED = "BREACHED",
    INSUFFICIENT_DATA = "INSUFFICIENT_DATA",
}

M.EvaluationType = {
    PERIOD_BASED = "PeriodBased",
    REQUEST_BASED = "RequestBased",
}

M.DurationUnit = {
    MINUTE = "MINUTE",
    HOUR = "HOUR",
    DAY = "DAY",
    MONTH = "MONTH",
}

M.ServiceLevelIndicatorComparisonOperator = {
    GREATER_THAN_OR_EQUAL_TO = "GreaterThanOrEqualTo",
    GREATER_THAN = "GreaterThan",
    LESS_THAN = "LessThan",
    LESS_THAN_OR_EQUAL_TO = "LessThanOrEqualTo",
}

M.SelectionType = {
    EXPLICIT = "EXPLICIT",
    PREFIX = "PREFIX",
    REGEX = "REGEX",
}

M.ServiceLevelIndicatorMetricType = {
    LATENCY = "LATENCY",
    AVAILABILITY = "AVAILABILITY",
}

M.StandardUnit = {
    MICROSECONDS = "Microseconds",
    MILLISECONDS = "Milliseconds",
    SECONDS = "Seconds",
    BYTES = "Bytes",
    KILOBYTES = "Kilobytes",
    MEGABYTES = "Megabytes",
    GIGABYTES = "Gigabytes",
    TERABYTES = "Terabytes",
    BITS = "Bits",
    KILOBITS = "Kilobits",
    MEGABITS = "Megabits",
    GIGABITS = "Gigabits",
    TERABITS = "Terabits",
    PERCENT = "Percent",
    COUNT = "Count",
    BYTES_SECOND = "Bytes/Second",
    KILOBYTES_SECOND = "Kilobytes/Second",
    MEGABYTES_SECOND = "Megabytes/Second",
    GIGABYTES_SECOND = "Gigabytes/Second",
    TERABYTES_SECOND = "Terabytes/Second",
    BITS_SECOND = "Bits/Second",
    KILOBITS_SECOND = "Kilobits/Second",
    MEGABITS_SECOND = "Megabits/Second",
    GIGABITS_SECOND = "Gigabits/Second",
    TERABITS_SECOND = "Terabits/Second",
    COUNT_SECOND = "Count/Second",
    NONE = "None",
}

M.DetailLevel = {
    BRIEF = "BRIEF",
    DETAILED = "DETAILED",
}

M.Severity = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
    NONE = "NONE",
}

M.ConnectionType = {
    INDIRECT = "INDIRECT",
    DIRECT = "DIRECT",
}

M.ChangeEventType = {
    DEPLOYMENT = "DEPLOYMENT",
    CONFIGURATION = "CONFIGURATION",
}

M.MetricSourceType = {
    SERVICE_OPERATION = "ServiceOperation",
    CLOUDWATCH_METRIC = "CloudWatchMetric",
    SERVICE_DEPENDENCY = "ServiceDependency",
    APPMONITOR = "AppMonitor",
    CANARY = "Canary",
    SERVICE = "Service",
}

return M
