local M = {}

M.OperatorType = {
    Equal = "EQ",
    ReferenceEqual = "REF_EQ",
    LessThanOrEqual = "LE",
    GreaterThanOrEqual = "GE",
    Between = "BETWEEN",
}

M.TaskStatus = {
    FINISHED = "FINISHED",
    FAILED = "FAILED",
    FALSE = "FALSE",
}

return M
