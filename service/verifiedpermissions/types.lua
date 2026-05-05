local M = {}

M.AliasState = {
    ACTIVE = "Active",
    PENDING_DELETION = "PendingDeletion",
}

M.BatchGetPolicyErrorCode = {
    POLICY_STORE_NOT_FOUND = "POLICY_STORE_NOT_FOUND",
    POLICY_NOT_FOUND = "POLICY_NOT_FOUND",
    POLICY_STORE_ALIAS_NOT_FOUND = "POLICY_STORE_ALIAS_NOT_FOUND",
}

M.PolicyType = {
    STATIC = "STATIC",
    TEMPLATE_LINKED = "TEMPLATE_LINKED",
}

M.Decision = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.ResourceType = {
    IDENTITY_SOURCE = "IDENTITY_SOURCE",
    POLICY_STORE = "POLICY_STORE",
    POLICY = "POLICY",
    POLICY_TEMPLATE = "POLICY_TEMPLATE",
    SCHEMA = "SCHEMA",
    POLICY_STORE_ALIAS = "POLICY_STORE_ALIAS",
}

M.CedarVersion = {
    CEDAR_2 = "CEDAR_2",
    CEDAR_4 = "CEDAR_4",
}

M.PolicyEffect = {
    PERMIT = "Permit",
    FORBID = "Forbid",
}

M.DeletionProtection = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ValidationMode = {
    OFF = "OFF",
    STRICT = "STRICT",
}

M.OpenIdIssuer = {
    COGNITO = "COGNITO",
}

return M
