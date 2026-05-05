local M = {}

M.Operation = {
    ADD = "ADD",
    SUBTRACT = "SUBTRACT",
    MULTIPLY = "MULTIPLY",
    DIVIDE = "DIVIDE",
}

M.OptimizationMetric = {
    WAPE = "WAPE",
    RMSE = "RMSE",
    AverageWeightedQuantileLoss = "AverageWeightedQuantileLoss",
    MASE = "MASE",
    MAPE = "MAPE",
}

M.DayOfWeek = {
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
    SUNDAY = "SUNDAY",
}

M.Month = {
    JANUARY = "JANUARY",
    FEBRUARY = "FEBRUARY",
    MARCH = "MARCH",
    APRIL = "APRIL",
    MAY = "MAY",
    JUNE = "JUNE",
    JULY = "JULY",
    AUGUST = "AUGUST",
    SEPTEMBER = "SEPTEMBER",
    OCTOBER = "OCTOBER",
    NOVEMBER = "NOVEMBER",
    DECEMBER = "DECEMBER",
}

M.DatasetType = {
    TARGET_TIME_SERIES = "TARGET_TIME_SERIES",
    RELATED_TIME_SERIES = "RELATED_TIME_SERIES",
    ITEM_METADATA = "ITEM_METADATA",
}

M.Domain = {
    RETAIL = "RETAIL",
    CUSTOM = "CUSTOM",
    INVENTORY_PLANNING = "INVENTORY_PLANNING",
    EC2_CAPACITY = "EC2_CAPACITY",
    WORK_FORCE = "WORK_FORCE",
    WEB_TRAFFIC = "WEB_TRAFFIC",
    METRICS = "METRICS",
}

M.AttributeType = {
    STRING = "string",
    INTEGER = "integer",
    FLOAT = "float",
    TIMESTAMP = "timestamp",
    GEOLOCATION = "geolocation",
}

M.ImportMode = {
    FULL = "FULL",
    INCREMENTAL = "INCREMENTAL",
}

M.TimePointGranularity = {
    ALL = "ALL",
    SPECIFIC = "SPECIFIC",
}

M.TimeSeriesGranularity = {
    ALL = "ALL",
    SPECIFIC = "SPECIFIC",
}

M.AutoMLOverrideStrategy = {
    LatencyOptimized = "LatencyOptimized",
    AccuracyOptimized = "AccuracyOptimized",
}

M.FeaturizationMethodName = {
    filling = "filling",
}

M.ScalingType = {
    Auto = "Auto",
    Linear = "Linear",
    Logarithmic = "Logarithmic",
    ReverseLogarithmic = "ReverseLogarithmic",
}

M.Condition = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
    LESS_THAN = "LESS_THAN",
    GREATER_THAN = "GREATER_THAN",
}

M.State = {
    Active = "Active",
    Deleted = "Deleted",
}

M.EvaluationType = {
    SUMMARY = "SUMMARY",
    COMPUTED = "COMPUTED",
}

M.FilterConditionString = {
    IS = "IS",
    IS_NOT = "IS_NOT",
}

return M
