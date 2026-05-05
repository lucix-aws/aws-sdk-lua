local M = {}

M.NetworkType = {
    IPV4 = "IPV4",
    DUALSTACK = "DUALSTACK",
}

M.Status = {
    PENDING = "PENDING",
    DEPLOYED = "DEPLOYED",
    PENDING_DELETION = "PENDING_DELETION",
}

M.RuleType = {
    ATLEAST = "ATLEAST",
    AND = "AND",
    OR = "OR",
}

return M
