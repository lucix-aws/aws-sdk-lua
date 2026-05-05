local M = {}

M.AccountTargeting = {
    SINGLE_ACCOUNT = "single-account",
    MULTI_ACCOUNT = "multi-account",
}

M.ActionsMode = {
    SKIP_ALL = "skip-all",
    RUN_ALL = "run-all",
}

M.EmptyTargetResolutionMode = {
    FAIL = "fail",
    SKIP = "skip",
}

M.ExperimentActionStatus = {
    pending = "pending",
    initiating = "initiating",
    running = "running",
    completed = "completed",
    cancelled = "cancelled",
    stopping = "stopping",
    stopped = "stopped",
    failed = "failed",
    skipped = "skipped",
}

M.ExperimentReportStatus = {
    pending = "pending",
    running = "running",
    completed = "completed",
    cancelled = "cancelled",
    failed = "failed",
}

M.ExperimentStatus = {
    pending = "pending",
    initiating = "initiating",
    running = "running",
    completed = "completed",
    stopping = "stopping",
    stopped = "stopped",
    failed = "failed",
    cancelled = "cancelled",
}

M.SafetyLeverStatus = {
    DISENGAGED = "disengaged",
    ENGAGED = "engaged",
    ENGAGING = "engaging",
}

M.SafetyLeverStatusInput = {
    DISENGAGED = "disengaged",
    ENGAGED = "engaged",
}

return M
